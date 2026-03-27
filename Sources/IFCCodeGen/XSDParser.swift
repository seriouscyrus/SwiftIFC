import Foundation

final class XSDParser: NSObject, XMLParserDelegate {
    private var schema = IFCSchema()

    // MARK: - Parser state

    // Every didStartElement MUST push exactly one context.
    // Every didEndElement MUST pop exactly one context.
    private enum Context {
        case root                   // xs:schema level
        case simpleType(name: String)
        case simpleTypeRestriction(simpleTypeName: String, base: String)
        case simpleTypeList(simpleTypeName: String)
        case nestedSimpleType       // anonymous simpleType inside restriction (compound types)
        case complexType(name: String, isAbstract: Bool)
        case complexContent(complexTypeName: String)
        case extensionEl(complexTypeName: String, base: String)
        case restrictionEl(complexTypeName: String, base: String)
        case sequence(complexTypeName: String)
        case sequenceElement(complexTypeName: String, elementName: String, isOptional: Bool)
        case inlineComplexType(complexTypeName: String, elementName: String, isOptional: Bool)
        case inlineSequence(complexTypeName: String, elementName: String, isOptional: Bool)
        case group(name: String)
        case groupChoice(groupName: String)
        case inlineAttrType(attrIndex: Int)  // inline simpleType inside xs:attribute
        case leaf                   // elements that don't have meaningful children
        case ignored                // subtrees we skip
    }

    private var contextStack: [Context] = []
    private var ignoreDepth = 0

    // Builders
    private var enumValues: [String] = []
    private var listItemType: String?
    private var listMinLength: Int?
    private var listMaxLength: Int?
    private var currentAttributes: [IFCAttribute] = []
    private var currentSequenceElements: [IFCSequenceElement] = []
    private var currentGroupMembers: [GroupMember] = []
    private var currentInlineCType: String?
    private var currentInlineRefs: [String] = []
    private var currentInlineGroupRef: String?

    // MARK: - Public

    func parse(contentsOf url: URL) throws -> IFCSchema {
        let parser = XMLParser(contentsOf: url)!
        parser.delegate = self
        parser.shouldProcessNamespaces = false
        parser.shouldReportNamespacePrefixes = false
        guard parser.parse() else {
            throw parser.parserError ?? NSError(domain: "XSDParser", code: 1)
        }
        postProcess()
        return schema
    }

    // MARK: - Helpers

    private func stripPrefix(_ value: String) -> String {
        if value.hasPrefix("ifc:") { return String(value.dropFirst(4)) }
        return value
    }

    private var currentContext: Context {
        contextStack.last ?? .root
    }

    private func push(_ ctx: Context) {
        contextStack.append(ctx)
    }

    @discardableResult
    private func pop() -> Context? {
        contextStack.popLast()
    }

    private func localName(_ elementName: String) -> String {
        // Strip xs: prefix
        if let colonIndex = elementName.firstIndex(of: ":") {
            return String(elementName[elementName.index(after: colonIndex)...])
        }
        return elementName
    }

    // MARK: - XMLParserDelegate

    func parser(
        _ parser: XMLParser,
        didStartElement elementName: String,
        namespaceURI: String?,
        qualifiedName: String?,
        attributes attrs: [String: String]
    ) {
        // If we're in an ignored subtree, just count depth
        if ignoreDepth > 0 {
            ignoreDepth += 1
            return
        }

        let name = localName(elementName)

        switch (name, currentContext) {

        // MARK: Schema root
        case ("schema", _):
            push(.root)
            return

        // MARK: Top-level xs:simpleType
        case ("simpleType", .root):
            if let typeName = attrs["name"] {
                if infrastructureTypes.contains(typeName) || typeName.hasPrefix("List-") {
                    startIgnoring()
                    return
                }
                enumValues = []
                listItemType = nil
                listMinLength = nil
                listMaxLength = nil
                push(.simpleType(name: typeName))
            } else {
                startIgnoring()
            }
            return

        case ("restriction", .simpleType(let stName)):
            let base = stripPrefix(attrs["base"] ?? "xs:string")
            push(.simpleTypeRestriction(simpleTypeName: stName, base: base))
            return

        case ("enumeration", .simpleTypeRestriction(_, _)):
            if let value = attrs["value"] {
                enumValues.append(value)
            }
            push(.leaf)
            return

        case ("minLength", .simpleTypeRestriction(_, _)):
            if let v = attrs["value"] { listMinLength = Int(v) }
            push(.leaf)
            return

        case ("maxLength", .simpleTypeRestriction(_, _)):
            if let v = attrs["value"] { listMaxLength = Int(v) }
            push(.leaf)
            return

        case ("simpleType", .simpleTypeRestriction(_, _)):
            // Nested anonymous simpleType (compound list types)
            push(.nestedSimpleType)
            return

        case ("list", .simpleType(_)):
            if let itemType = attrs["itemType"] {
                listItemType = stripPrefix(itemType)
            }
            push(.simpleTypeList(simpleTypeName: ""))
            return

        case ("list", .simpleTypeRestriction(_, _)):
            if let itemType = attrs["itemType"] {
                listItemType = stripPrefix(itemType)
            }
            push(.leaf)
            return

        case ("list", .nestedSimpleType):
            if let itemType = attrs["itemType"] {
                listItemType = stripPrefix(itemType)
            }
            push(.leaf)
            return

        // MARK: Top-level xs:complexType
        case ("complexType", .root):
            if let typeName = attrs["name"] {
                if infrastructureTypes.contains(typeName) {
                    startIgnoring()
                    return
                }
                let isAbstract = attrs["abstract"] == "true"
                currentAttributes = []
                currentSequenceElements = []
                push(.complexType(name: typeName, isAbstract: isAbstract))
            } else {
                startIgnoring()
            }
            return

        case ("complexContent", .complexType(let ctName, _)):
            push(.complexContent(complexTypeName: ctName))
            return

        case ("simpleContent", .complexType(_, _)):
            // e.g., IfcComplexNumber, IfcCompoundPlaneAngleMeasure — skip
            startIgnoring()
            return

        case ("extension", .complexContent(let ctName)):
            let base = stripPrefix(attrs["base"] ?? "")
            push(.extensionEl(complexTypeName: ctName, base: base))
            return

        case ("restriction", .complexContent(let ctName)):
            let base = stripPrefix(attrs["base"] ?? "")
            currentAttributes = []
            currentSequenceElements = []
            push(.restrictionEl(complexTypeName: ctName, base: base))
            return

        case ("sequence", .extensionEl(let ctName, _)):
            push(.sequence(complexTypeName: ctName))
            return

        case ("sequence", .restrictionEl(let ctName, _)):
            push(.sequence(complexTypeName: ctName))
            return

        case ("sequence", .complexType(let ctName, _)):
            push(.sequence(complexTypeName: ctName))
            return

        case ("choice", .extensionEl(let ctName, _)):
            // Some types use xs:choice instead of xs:sequence (e.g., ifcXML)
            push(.sequence(complexTypeName: ctName))
            return

        // MARK: xs:attribute inside extension/restriction/complexType
        case ("attribute", .extensionEl(_, _)),
             ("attribute", .restrictionEl(_, _)),
             ("attribute", .complexType(_, _)):
            if let attrName = attrs["name"] {
                let typeName = resolveAttributeType(attrs)
                let isOptional = attrs["use"] != "required"
                currentAttributes.append(IFCAttribute(
                    name: attrName,
                    typeName: typeName,
                    isOptional: isOptional
                ))
                if attrs["type"] == nil {
                    // Has inline simpleType children — parse to find list itemType
                    push(.inlineAttrType(attrIndex: currentAttributes.count - 1))
                } else {
                    push(.leaf)
                }
            } else {
                push(.leaf)
            }
            return

        // MARK: xs:element inside sequence
        case ("element", .sequence(let ctName)):
            let elName = attrs["name"] ?? ""
            let isOptional = attrs["minOccurs"] == "0"
            let maxOccurs = attrs["maxOccurs"]
            let isUnbounded = maxOccurs == "unbounded" || (maxOccurs != nil && maxOccurs != "1")
            if let typeName = attrs["type"] {
                // Direct typed element
                let stripped = stripPrefix(typeName)
                let nillable = attrs["nillable"] == "true"
                if isUnbounded {
                    // maxOccurs > 1 means this is a collection (e.g. HasOpenings SET [0:?])
                    currentSequenceElements.append(IFCSequenceElement(
                        name: elName,
                        kind: .collection(elementTypeName: stripped, collectionType: "list", isOptional: isOptional)
                    ))
                } else {
                    currentSequenceElements.append(IFCSequenceElement(
                        name: elName,
                        kind: .singleEntity(typeName: stripped, isOptional: isOptional || nillable)
                    ))
                }
                // There might be no children, or there might be nested content — use ignored
                startIgnoring()
            } else if attrs["ref"] != nil {
                // Reference element inside a sequence (e.g., in IfcAdvancedBrepWithVoids)
                // These are handled as part of inline collection
                if let ref = attrs["ref"] {
                    currentInlineRefs.append(stripPrefix(ref))
                }
                push(.leaf)
            } else {
                // Inline complexType will follow
                currentInlineCType = nil
                currentInlineRefs = []
                currentInlineGroupRef = nil
                push(.sequenceElement(complexTypeName: ctName, elementName: elName, isOptional: isOptional))
            }
            return

        // MARK: Inline complexType inside sequence element
        case ("complexType", .sequenceElement(let ctName, let elName, let isOptional)):
            push(.inlineComplexType(complexTypeName: ctName, elementName: elName, isOptional: isOptional))
            return

        case ("sequence", .inlineComplexType(let ctName, let elName, let isOptional)):
            push(.inlineSequence(complexTypeName: ctName, elementName: elName, isOptional: isOptional))
            return

        case ("element", .inlineSequence(_, _, _)):
            if let ref = attrs["ref"] {
                currentInlineRefs.append(stripPrefix(ref))
            }
            push(.leaf)
            return

        case ("attribute", .inlineComplexType(_, _, _)):
            if let refAttr = attrs["ref"], refAttr == "ifc:cType" {
                if let fixed = attrs["fixed"] {
                    currentInlineCType = fixed
                }
            }
            push(.leaf)
            return

        case ("group", .inlineComplexType(_, _, _)):
            if let ref = attrs["ref"] {
                currentInlineGroupRef = stripPrefix(ref)
            }
            push(.leaf)
            return

        // MARK: Top-level xs:group
        case ("group", .root):
            if let groupName = attrs["name"] {
                currentGroupMembers = []
                push(.group(name: groupName))
            } else {
                startIgnoring()
            }
            return

        case ("choice", .group(let groupName)):
            push(.groupChoice(groupName: groupName))
            return

        case ("element", .groupChoice(_)):
            if let ref = attrs["ref"] {
                let stripped = stripPrefix(ref)
                let isWrapper = stripped.hasSuffix("-wrapper")
                let unwrapped = isWrapper ? String(stripped.dropLast(8)) : stripped
                currentGroupMembers.append(GroupMember(
                    elementRef: stripped,
                    isWrapper: isWrapper,
                    unwrappedTypeName: unwrapped
                ))
            }
            push(.leaf)
            return

        // MARK: Top-level xs:element (wrapper detection + substitution groups)
        case ("element", .root):
            if let elName = attrs["name"] {
                if elName.hasSuffix("-wrapper") {
                    schema.wrapperElements.insert(elName)
                }
                if let subGroup = attrs["substitutionGroup"] {
                    schema.elementSubstitutions[elName] = stripPrefix(subGroup)
                }
            }
            startIgnoring()
            return

        // MARK: Inline simpleType inside xs:attribute — capture list itemType
        case (_, .inlineAttrType(let idx)):
            if name == "list", let itemType = attrs["itemType"] {
                // Found xs:list — update the attribute's type to an array
                let resolved = stripPrefix(itemType)
                currentAttributes[idx] = IFCAttribute(
                    name: currentAttributes[idx].name,
                    typeName: "[" + resolved + "]",
                    isOptional: currentAttributes[idx].isOptional
                )
            }
            // Keep propagating the same context for children at any depth
            push(.inlineAttrType(attrIndex: idx))
            return

        // MARK: Top-level xs:attribute / xs:attributeGroup at schema level
        case ("attribute", .root),
             ("attributeGroup", .root):
            startIgnoring()
            return

        default:
            break
        }

        // Fallback: ignore any unhandled element
        startIgnoring()
    }

    func parser(
        _ parser: XMLParser,
        didEndElement elementName: String,
        namespaceURI: String?,
        qualifiedName: String?
    ) {
        // If we're in an ignored subtree, just count depth
        if ignoreDepth > 0 {
            ignoreDepth -= 1
            return
        }

        let name = localName(elementName)

        switch (name, currentContext) {

        case ("schema", .root):
            pop()

        case ("simpleType", .simpleType(let stName)):
            // If not already finalized by restriction/list, it might be a bare simpleType
            if schema.simpleTypes[stName] == nil {
                if let itemType = listItemType {
                    schema.simpleTypes[stName] = IFCSimpleType(
                        name: stName,
                        kind: .list(itemTypeName: itemType, minLength: listMinLength, maxLength: listMaxLength)
                    )
                }
            }
            pop()

        case ("restriction", .simpleTypeRestriction(let stName, let base)):
            if !enumValues.isEmpty {
                schema.simpleTypes[stName] = IFCSimpleType(
                    name: stName,
                    kind: .enumeration(values: enumValues)
                )
            } else if let itemType = listItemType {
                schema.simpleTypes[stName] = IFCSimpleType(
                    name: stName,
                    kind: .list(itemTypeName: itemType, minLength: listMinLength, maxLength: listMaxLength)
                )
            } else if base.hasPrefix("xs:") {
                let swiftType = xsdToSwiftType(base)
                schema.simpleTypes[stName] = IFCSimpleType(
                    name: stName,
                    kind: .typeAlias(swiftType: swiftType, xsdBase: base)
                )
            } else {
                schema.simpleTypes[stName] = IFCSimpleType(
                    name: stName,
                    kind: .derived(baseName: base)
                )
            }
            pop()

        case ("list", .simpleTypeList(_)):
            pop()

        case ("simpleType", .nestedSimpleType):
            pop()

        case ("complexType", .complexType(let ctName, let isAbstract)):
            // Only save if not already saved by extension/restriction handler
            if schema.complexTypes[ctName] == nil {
                schema.complexTypes[ctName] = IFCComplexType(
                    name: ctName,
                    baseName: nil,
                    isAbstract: isAbstract,
                    attributes: currentAttributes,
                    sequenceElements: currentSequenceElements,
                    isRestriction: false
                )
            }
            pop()

        case ("complexContent", .complexContent(_)):
            pop()

        case ("extension", .extensionEl(let ctName, let base)):
            // Look up the abstract flag — it was set when we entered the complexType
            let isAbstract: Bool
            if case .complexContent = contextStack.dropLast().last,
               case .complexType(_, let abs) = contextStack.dropLast(2).last {
                isAbstract = abs
            } else {
                isAbstract = false
            }
            schema.complexTypes[ctName] = IFCComplexType(
                name: ctName,
                baseName: base,
                isAbstract: isAbstract,
                attributes: currentAttributes,
                sequenceElements: currentSequenceElements,
                isRestriction: false
            )
            pop()

        case ("restriction", .restrictionEl(let ctName, let base)):
            let isAbstract: Bool
            if case .complexContent = contextStack.dropLast().last,
               case .complexType(_, let abs) = contextStack.dropLast(2).last {
                isAbstract = abs
            } else {
                isAbstract = false
            }
            schema.complexTypes[ctName] = IFCComplexType(
                name: ctName,
                baseName: base,
                isAbstract: isAbstract,
                attributes: currentAttributes,
                sequenceElements: currentSequenceElements,
                isRestriction: true
            )
            pop()

        case ("sequence", .sequence(_)):
            pop()

        case ("element", .sequenceElement(_, _, _)):
            // Sequence element that had no inline complexType
            pop()

        case ("complexType", .inlineComplexType(_, let elName, let isOptional)):
            if let groupRef = currentInlineGroupRef {
                currentSequenceElements.append(IFCSequenceElement(
                    name: elName,
                    kind: .selectRef(groupName: groupRef, isOptional: isOptional)
                ))
            } else if !currentInlineRefs.isEmpty {
                var elementType = currentInlineRefs.first ?? "Entity"
                // Strip -wrapper suffix — these are XML wrappers for simple types
                if elementType.hasSuffix("-wrapper") {
                    elementType = String(elementType.dropLast(8))
                }
                let cType = currentInlineCType ?? "list"
                currentSequenceElements.append(IFCSequenceElement(
                    name: elName,
                    kind: .collection(elementTypeName: elementType, collectionType: cType, isOptional: isOptional)
                ))
            }
            pop()

        case ("sequence", .inlineSequence(_, _, _)):
            pop()

        case ("choice", .groupChoice(_)):
            pop()

        case ("group", .group(let groupName)):
            schema.groups[groupName] = IFCGroup(name: groupName, members: currentGroupMembers)
            pop()

        case ("attribute", .inlineAttrType(_)):
            pop()

        default:
            // Pop leaf and inlineAttrType contexts
            if case .leaf = currentContext {
                pop()
            } else if case .inlineAttrType = currentContext {
                pop()
            }
        }
    }

    // MARK: - Ignore helper

    private func startIgnoring() {
        ignoreDepth = 1
    }

    // MARK: - Post-processing

    private func postProcess() {
        // 1. Resolve -temp types
        // -temp types use xs:restriction to narrow a parent, then the real type extends -temp.
        // We just need to fix the baseName — point the real type at the grandparent.
        // Don't copy -temp's attributes/elements since they're inherited from the grandparent.
        let tempNames = schema.complexTypes.keys.filter { $0.hasSuffix("-temp") }
        for tempName in tempNames {
            guard let tempType = schema.complexTypes[tempName] else { continue }
            let realName = String(tempName.dropLast(5))
            if let realType = schema.complexTypes[realName] {
                schema.complexTypes[realName] = IFCComplexType(
                    name: realType.name,
                    baseName: tempType.baseName,
                    isAbstract: realType.isAbstract,
                    attributes: realType.attributes,
                    sequenceElements: realType.sequenceElements,
                    isRestriction: false
                )
            }
            schema.complexTypes.removeValue(forKey: tempName)
        }

        // 2. Remove infrastructure complex types
        for name in infrastructureTypes {
            schema.complexTypes.removeValue(forKey: name)
        }
    }

    // MARK: - Type helpers

    private func resolveAttributeType(_ attrs: [String: String]) -> String {
        if let typeName = attrs["type"] {
            return stripPrefix(typeName)
        }
        // Inline simpleType with list — used for KnotMultiplicities etc.
        // We handle these as the attribute type name for now
        return "xs:string"
    }

    private func xsdToSwiftType(_ xsdType: String) -> String {
        switch xsdType {
        case "xs:double": return "Double"
        case "xs:long": return "Int"
        case "xs:integer": return "Int"
        case "xs:normalizedString": return "String"
        case "xs:string": return "String"
        case "xs:boolean": return "Bool"
        case "xs:hexBinary": return "Data"
        case "xs:anyURI": return "String"
        case "xs:ID": return "String"
        case "xs:IDREF": return "String"
        default: return "String"
        }
    }
}
