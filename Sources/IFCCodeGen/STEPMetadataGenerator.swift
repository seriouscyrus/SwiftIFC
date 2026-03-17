import Foundation

struct STEPMetadataGenerator {
    let xsdSchema: IFCSchema
    let expressSchema: EXPRESSSchema

    func generate() -> String {
        var output = fileHeader("STEPEntityConformances.swift")
        output += "import Foundation\n\n"

        // Generate the descriptor registry as a computed property
        output += "extension IFC4X3 {\n"
        output += "    public static let stepDescriptors: [ObjectIdentifier: STEPEntityDescriptor] = {\n"
        output += "        var d: [ObjectIdentifier: STEPEntityDescriptor] = [:]\n\n"

        let sortedTypes = xsdSchema.complexTypes.keys.sorted()
        for typeName in sortedTypes {
            guard let ct = xsdSchema.complexTypes[typeName] else { continue }
            guard !infrastructureTypes.contains(typeName) else { continue }

            let stepTypeName = typeName.uppercased()
            let expressEntity = expressSchema.entities[typeName]

            // Collect own direct attributes in EXPRESS order
            let ownAttributes = buildOwnSTEPAttributes(
                for: ct,
                expressEntity: expressEntity,
                typeName: typeName
            )

            // Collect derive overrides
            let deriveOverrides = expressEntity?.deriveOverrides ?? []

            // Build attribute descriptors array
            var attrLines: [String] = []
            for attr in ownAttributes {
                attrLines.append("STEPAttributeDescriptor(name: \"\(attr.swiftName)\", kind: .\(attr.kind), isOptional: \(attr.isOptional))")
            }

            // Build derive overrides set
            let overridesStr: String
            if !deriveOverrides.isEmpty {
                let names = deriveOverrides.map { "\"\(swiftPropertyName($0.attributeName))\"" }
                overridesStr = "[\(names.joined(separator: ", "))]"
            } else {
                overridesStr = "[]"
            }

            output += "        d[ObjectIdentifier(\(typeName).self)] = STEPEntityDescriptor(\n"
            output += "            stepTypeName: \"\(stepTypeName)\",\n"
            output += "            ownAttributes: [\(attrLines.joined(separator: ", "))],\n"
            output += "            derivedOverrides: \(overridesStr),\n"

            // Getter closure
            output += "            getter: { entity, index in\n"
            output += "                guard let e = entity as? \(typeName) else { return .null }\n"
            if ownAttributes.isEmpty {
                output += "                return .null\n"
            } else {
                output += "                switch index {\n"
                for (i, attr) in ownAttributes.enumerated() {
                    output += "                case \(i): return \(generateGetter(attr, varPrefix: "e"))\n"
                }
                output += "                default: return .null\n"
                output += "                }\n"
            }
            output += "            },\n"

            // Setter closure
            output += "            setter: { entity, value, index in\n"
            output += "                guard let e = entity as? \(typeName) else { return }\n"
            if !ownAttributes.isEmpty {
                output += "                switch index {\n"
                for (i, attr) in ownAttributes.enumerated() {
                    output += "                case \(i): \(generateSetter(attr, varPrefix: "e"))\n"
                }
                output += "                default: break\n"
                output += "                }\n"
            }
            output += "            }\n"

            output += "        )\n\n"
        }

        output += "        return d\n"
        output += "    }()\n"
        output += "}\n"

        return output
    }

    // MARK: - Attribute Collection

    struct STEPAttribute {
        let swiftName: String
        let swiftType: String
        let kind: String          // STEPAttributeKind case name
        let isOptional: Bool
        let isCollection: Bool
        let expressName: String
    }

    private func buildOwnSTEPAttributes(
        for ct: IFCComplexType,
        expressEntity: EXPRESSEntity?,
        typeName: String
    ) -> [STEPAttribute] {
        guard !ct.isRestriction else { return [] }

        // Get all XSD-defined own properties (attributes + sequence elements)
        let xsdProperties = collectOwnXSDProperties(for: ct)

        // If we have EXPRESS data, use EXPRESS ordering and filter out INVERSE
        guard let express = expressEntity else {
            // Fallback: use XSD order, all properties
            return xsdProperties
        }

        // Build a lookup from lowercase property name to XSD property
        var xsdLookup: [String: STEPAttribute] = [:]
        for prop in xsdProperties {
            xsdLookup[prop.swiftName.lowercased()] = prop
            xsdLookup[prop.expressName.lowercased()] = prop
        }

        // Use EXPRESS direct attributes in EXPRESS order
        var result: [STEPAttribute] = []
        for expressAttr in express.directAttributes {
            // Skip own derived attributes (Pattern B - they don't appear in STEP)
            if express.ownDerivedAttributeNames.contains(expressAttr.name) {
                continue
            }

            let swiftName = swiftPropertyName(expressAttr.name)
            if let xsdProp = xsdLookup[swiftName.lowercased()] ?? xsdLookup[expressAttr.name.lowercased()] {
                result.append(xsdProp)
            } else {
                // EXPRESS attribute has no XSD counterpart (e.g. RelatingObject
                // on IfcRelAggregates). Synthesize a STEPAttribute from EXPRESS.
                let kind = synthesizeAttributeKind(expressAttr)
                result.append(STEPAttribute(
                    swiftName: swiftName,
                    swiftType: expressAttr.typeName,
                    kind: kind,
                    isOptional: expressAttr.isOptional,
                    isCollection: expressAttr.isCollection,
                    expressName: expressAttr.name
                ))
            }
        }

        return result
    }

    private func collectOwnXSDProperties(for ct: IFCComplexType) -> [STEPAttribute] {
        var properties: [STEPAttribute] = []

        for attr in ct.attributes {
            let swiftName = swiftPropertyName(attr.name)
            let rawType = attr.typeName
            let isCollection = rawType.hasPrefix("[")
            // For inline list attributes like [IfcInteger], extract the element type
            let elementType: String
            if isCollection {
                elementType = String(rawType.dropFirst().dropLast()) // strip [ and ]
            } else {
                elementType = rawType
            }
            let kind = classifyAttributeKind(elementType, isCollection: isCollection)
            properties.append(STEPAttribute(
                swiftName: swiftName,
                swiftType: elementType,
                kind: kind,
                isOptional: attr.isOptional,
                isCollection: isCollection,
                expressName: attr.name
            ))
        }

        for elem in ct.sequenceElements {
            let swiftName = swiftPropertyName(elem.name)
            switch elem.kind {
            case .singleEntity(let typeName, let isOptional):
                let kind = classifyAttributeKind(typeName, isCollection: false)
                properties.append(STEPAttribute(
                    swiftName: swiftName,
                    swiftType: typeName,
                    kind: kind,
                    isOptional: isOptional,
                    isCollection: false,
                    expressName: elem.name
                ))
            case .collection(let elementType, let collectionType, _):
                let isNested = collectionType == "list list"
                let kind = isNested ? "nestedList" : "list"
                properties.append(STEPAttribute(
                    swiftName: swiftName,
                    swiftType: elementType,
                    kind: kind,
                    isOptional: false,
                    isCollection: true,
                    expressName: elem.name
                ))
            case .selectRef(let groupName, let isOptional):
                properties.append(STEPAttribute(
                    swiftName: swiftName,
                    swiftType: groupName,
                    kind: "select",
                    isOptional: isOptional,
                    isCollection: false,
                    expressName: elem.name
                ))
            }
        }

        return properties
    }

    private func classifyAttributeKind(_ typeName: String, isCollection: Bool) -> String {
        if isCollection { return "list" }
        if xsdSchema.complexTypes[typeName] != nil { return "entityRef" }
        if xsdSchema.groups[typeName] != nil { return "select" }
        if let st = xsdSchema.simpleTypes[typeName], case .enumeration = st.kind {
            return "enumeration"
        }
        if typeName == "IfcLogical" { return "logical" }

        let resolved = resolveSwiftType(typeName, schema: xsdSchema)
        switch resolved {
        case "Double": return "real"
        case "Int": return "integer"
        case "String": return "string"
        case "Bool": return "boolean"
        case "Data": return "binary"
        default:
            if resolved.hasPrefix("[") { return "list" }
            return "string"
        }
    }

    /// Determines the STEP attribute kind for an EXPRESS attribute that has no
    /// XSD counterpart (e.g. RelatingObject, RelatingStructure).
    private func synthesizeAttributeKind(_ expressAttr: EXPRESSAttribute) -> String {
        if expressAttr.isCollection {
            return "list"
        }
        return classifyAttributeKind(expressAttr.typeName, isCollection: false)
    }

    private func guessAttributeKind(_ expressType: String) -> String {
        switch expressType {
        case "REAL", "IfcReal", "IfcLengthMeasure", "IfcPositiveLengthMeasure",
             "IfcPlaneAngleMeasure", "IfcAreaMeasure", "IfcVolumeMeasure":
            return "real"
        case "INTEGER", "IfcInteger", "IfcTimeStamp":
            return "integer"
        case "STRING", "IfcLabel", "IfcText", "IfcIdentifier",
             "IfcGloballyUniqueId", "IfcURIReference":
            return "string"
        case "BOOLEAN", "IfcBoolean":
            return "boolean"
        case "LOGICAL", "IfcLogical":
            return "logical"
        default:
            return classifyAttributeKind(expressType, isCollection: false)
        }
    }

    // MARK: - Code Generation Helpers

    private func generateGetter(_ attr: STEPAttribute, varPrefix: String) -> String {
        let prop = "\(varPrefix).\(attr.swiftName)"

        if attr.isCollection {
            if attr.kind == "nestedList" {
                return ".list(\(prop).map { .list($0.map { \(singleValueWrapper("$0", attr)) }) })"
            }
            let innerKind = classifyAttributeKind(attr.swiftType, isCollection: false)
            let mapper = listItemMapper(innerKind)
            return ".list(\(prop).map { \(mapper) })"
        }

        // All non-collection properties are now optional in Swift
        return "\(prop).map { \(singleValueWrapper("$0", attr)) } ?? .null"
    }

    private func singleValueWrapper(_ expr: String, _ attr: STEPAttribute) -> String {
        switch attr.kind {
        case "string": return ".string(\(expr))"
        case "real": return ".real(\(expr))"
        case "integer": return ".integer(\(expr))"
        case "boolean": return ".boolean(\(expr))"
        case "logical": return ".logical(\(expr))"
        case "enumeration": return ".enumeration(\(expr).rawValue)"
        case "entityRef": return ".entityRef(\(expr))"
        case "select": return "\(expr).stepEncode()"
        case "binary": return ".binary(\(expr))"
        default: return ".string(String(describing: \(expr)))"
        }
    }

    private func listItemMapper(_ innerKind: String) -> String {
        switch innerKind {
        case "string": return ".string($0)"
        case "real": return ".real($0)"
        case "integer": return ".integer($0)"
        case "boolean": return ".boolean($0)"
        case "logical": return ".logical($0)"
        case "enumeration": return ".enumeration($0.rawValue)"
        case "entityRef": return ".entityRef($0)"
        case "select": return "$0.stepEncode()"
        case "binary": return ".binary($0)"
        default: return ".string(String(describing: $0))"
        }
    }

    private func generateSetter(_ attr: STEPAttribute, varPrefix: String) -> String {
        let prop = "\(varPrefix).\(attr.swiftName)"

        if attr.isCollection {
            let innerKind = classifyAttributeKind(attr.swiftType, isCollection: false)
            if attr.kind == "nestedList" {
                return "if case .list(let outer) = value { \(prop) = outer.compactMap { if case .list(let inner) = $0 { return inner.compactMap { \(listItemExtractor(innerKind, attr.swiftType)) } } else { return nil } } }"
            }
            return "if case .list(let items) = value { \(prop) = items.compactMap { \(listItemExtractor(innerKind, attr.swiftType)) } }"
        }

        // All non-collection properties are now optional in Swift
        return "\(prop) = value.isNull ? nil : \(singleValueExtractor(attr))"
    }

    private func singleValueExtractor(_ attr: STEPAttribute) -> String {
        switch attr.kind {
        case "string": return "value.stringValue"
        case "real": return "value.realValue"
        case "integer": return "value.integerValue"
        case "boolean": return "value.boolValue"
        case "logical": return "value.logicalValue"
        case "enumeration": return "value.stringValue.flatMap { IFC4X3.\(attr.swiftType)(rawValue: $0) }"
        case "entityRef": return "value.entityValue as? IFC4X3.\(attr.swiftType)"
        case "select": return "IFC4X3.\(attr.swiftType).stepDecode(value)"
        case "binary": return "value.dataValue"
        default: return "value.stringValue"
        }
    }

    private func listItemExtractor(_ innerKind: String, _ innerType: String) -> String {
        switch innerKind {
        case "string": return "$0.stringValue"
        case "real": return "$0.realValue"
        case "integer": return "$0.integerValue"
        case "boolean": return "$0.boolValue"
        case "logical": return "$0.logicalValue"
        case "enumeration": return "{ if case .enumeration(let s) = $0 { return IFC4X3.\(innerType)(rawValue: s) } else { return nil } }($0)"
        case "entityRef": return "$0.entityValue as? IFC4X3.\(innerType)"
        case "select": return "IFC4X3.\(innerType).stepDecode($0)"
        case "binary": return "$0.dataValue"
        default: return "$0.stringValue"
        }
    }
}
