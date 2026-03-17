import Foundation

struct EntityGenerator {
    let schema: IFCSchema
    let expressSchema: EXPRESSSchema?

    // MARK: - Generate base Entity class file

    func generateEntityBase() -> String {
        var output = fileHeader("IFCEntityBase.swift")
        output += "import Foundation\n\n"
        output += "public enum IFC4X3 {}\n\n"
        output += "extension IFC4X3 {\n"
        output += "    public class Entity: @unchecked Sendable {\n"
        output += "        public init() {}\n"
        output += "    }\n"
        output += "}\n"
        return output
    }

    // MARK: - Generate a single entity class file

    func generate(for typeName: String) -> String? {
        guard let ct = schema.complexTypes[typeName] else { return nil }
        guard !infrastructureTypes.contains(typeName) else { return nil }

        var output = fileHeader("\(typeName).swift")
        output += "import Foundation\n\n"
        output += "extension IFC4X3 {\n"

        let abstractComment = ct.isAbstract ? " // ABSTRACT" : ""
        let baseName = ct.baseName ?? "Entity"
        // Subclasses must restate @unchecked Sendable conformance
        let sendableConformance = baseName != "Entity" ? ", @unchecked Sendable" : ""
        output += "    public class \(typeName): \(baseName)\(sendableConformance) {\(abstractComment)\n"

        // Restriction types only narrow inherited properties — no own properties
        let properties = ct.isRestriction ? [] : buildProperties(for: ct)

        for prop in properties {
            output += "        public var \(prop.name): \(prop.type)\(prop.defaultValue)\n"
        }

        // Generate init if there are own properties
        if !properties.isEmpty {
            output += "\n"
            output += generateInit(for: ct, ownProperties: properties, baseName: baseName)
        }

        output += "    }\n"
        output += "}\n"
        return output
    }

    // MARK: - Property building

    struct Property {
        let name: String
        let type: String
        let defaultValue: String
        let isInherited: Bool
    }

    private func buildProperties(for ct: IFCComplexType) -> [Property] {
        var properties: [Property] = []

        for attr in ct.attributes {
            let swiftType = mapAttributeType(attr.typeName)
            let propName = swiftPropertyName(attr.name)
            // List-typed attributes (from inline xs:list) use array default
            if swiftType.hasPrefix("[") {
                properties.append(Property(
                    name: propName,
                    type: swiftType,
                    defaultValue: " = []",
                    isInherited: false
                ))
            } else if attr.isOptional {
                properties.append(Property(
                    name: propName,
                    type: "\(swiftType)?",
                    defaultValue: " = nil",
                    isInherited: false
                ))
            } else {
                // Make non-optional simple attributes optional with nil default
                // to support STEP decoding (create empty, then populate)
                properties.append(Property(
                    name: propName,
                    type: "\(swiftType)?",
                    defaultValue: " = nil",
                    isInherited: false
                ))
            }
        }

        for elem in ct.sequenceElements {
            let propName = swiftPropertyName(elem.name)
            switch elem.kind {
            case .singleEntity(let typeName, let isOptional):
                let swiftType = mapEntityType(typeName)
                // All entity refs are optional to support STEP decoding
                let _ = isOptional  // Kept for reference; all are now optional
                properties.append(Property(
                    name: propName,
                    type: "\(swiftType)?",
                    defaultValue: " = nil",
                    isInherited: false
                ))

            case .collection(let elementType, let collectionType, _):
                let swiftType = mapEntityType(elementType)
                // "list list" means nested array (e.g., [[Double]])
                let arrayType = collectionType == "list list" ? "[[\(swiftType)]]" : "[\(swiftType)]"
                let defaultVal = collectionType == "list list" ? " = [[]]" : " = []"
                properties.append(Property(
                    name: propName,
                    type: arrayType,
                    defaultValue: defaultVal,
                    isInherited: false
                ))

            case .selectRef(let groupName, let isOptional):
                // All SELECT refs are optional to support STEP decoding
                let _ = isOptional  // Kept for reference; all are now optional
                properties.append(Property(
                    name: propName,
                    type: "\(groupName)?",
                    defaultValue: " = nil",
                    isInherited: false
                ))
            }
        }

        // Add EXPRESS-only attributes not present in XSD.
        // The XSD omits some direct EXPRESS attributes (e.g. RelatingObject on
        // IfcRelAggregates) by modelling them as inverse relationships on target
        // entities. These must still appear as Swift properties for STEP decoding.
        if let express = expressSchema?.entities[ct.name] {
            let existingNames = Set(properties.map { $0.name })
            for expressAttr in express.directAttributes {
                if express.ownDerivedAttributeNames.contains(expressAttr.name) {
                    continue
                }
                let propName = swiftPropertyName(expressAttr.name)
                guard !existingNames.contains(propName) else { continue }

                let swiftType = resolveExpressType(expressAttr)
                if expressAttr.isCollection {
                    properties.append(Property(
                        name: propName,
                        type: "[\(swiftType)]",
                        defaultValue: " = []",
                        isInherited: false
                    ))
                } else {
                    properties.append(Property(
                        name: propName,
                        type: "\(swiftType)?",
                        defaultValue: " = nil",
                        isInherited: false
                    ))
                }
            }
        }

        return properties
    }

    /// Maps an EXPRESS attribute type name to a Swift type name.
    private func resolveExpressType(_ attr: EXPRESSAttribute) -> String {
        let typeName = attr.typeName
        // Check if it's a known XSD complex type (entity class)
        if schema.complexTypes[typeName] != nil { return typeName }
        // Check if it's a known simple type (enum or alias)
        if schema.simpleTypes[typeName] != nil { return typeName }
        // Check if it's a known group (SELECT type)
        if schema.groups[typeName] != nil { return typeName }
        // Resolve common EXPRESS primitive types
        switch typeName {
        case "REAL", "NUMBER": return "Double"
        case "INTEGER": return "Int"
        case "STRING": return "String"
        case "BOOLEAN": return "Bool"
        case "LOGICAL": return "Bool"
        case "BINARY": return "Data"
        default: return typeName
        }
    }

    private func mapAttributeType(_ typeName: String) -> String {
        if typeName.hasPrefix("xs:") {
            return xsdPrimitiveToSwift(typeName)
        }
        // Check if it's an enum
        if let st = schema.simpleTypes[typeName], case .enumeration = st.kind {
            return typeName
        }
        // Check if it's a type alias — use the alias name (not resolved)
        if schema.simpleTypes[typeName] != nil {
            return typeName
        }
        return typeName
    }

    private func mapEntityType(_ typeName: String) -> String {
        if schema.complexTypes[typeName] != nil {
            return typeName
        }
        if schema.simpleTypes[typeName] != nil {
            return typeName
        }
        if schema.groups[typeName] != nil {
            return typeName
        }
        return typeName
    }

    // MARK: - Init generation

    private func generateInit(
        for ct: IFCComplexType,
        ownProperties: [Property],
        baseName: String
    ) -> String {
        // Collect inherited properties up the chain
        let inheritedProperties = collectInheritedProperties(from: baseName)
        let allParams = inheritedProperties + ownProperties

        // If the only properties are all defaulted, we can still make a simpler init
        var output = "        public init(\n"

        var params: [String] = []
        for prop in allParams {
            if prop.defaultValue.isEmpty {
                params.append("            \(prop.name): \(prop.type)")
            } else {
                params.append("            \(prop.name): \(prop.type)\(prop.defaultValue)")
            }
        }
        output += params.joined(separator: ",\n")
        output += "\n        ) {\n"

        // Set own properties
        for prop in ownProperties {
            output += "            self.\(prop.name) = \(prop.name)\n"
        }

        // Call super.init
        if baseName != "Entity" && !inheritedProperties.isEmpty {
            let superArgs = inheritedProperties.map { "\($0.name): \($0.name)" }
            output += "            super.init(\n"
            output += "                " + superArgs.joined(separator: ",\n                ")
            output += "\n            )\n"
        } else {
            output += "            super.init()\n"
        }

        output += "        }\n"
        return output
    }

    private func collectInheritedProperties(from baseName: String) -> [Property] {
        guard baseName != "Entity" else { return [] }
        guard let baseType = schema.complexTypes[baseName] else { return [] }

        let parentProps = collectInheritedProperties(from: baseType.baseName ?? "Entity")
        let ownProps = buildProperties(for: baseType)
        return parentProps + ownProps
    }
}
