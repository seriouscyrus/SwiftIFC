import Foundation

struct STEPSelectEncodingGenerator {
    let schema: IFCSchema

    /// Check if a "wrapper" member is actually an entity class
    private func isEntityClass(_ typeName: String) -> Bool {
        schema.complexTypes[typeName] != nil
    }

    /// True if this member should be treated as a simple type wrapper (not an entity ref)
    private func isTrueWrapper(_ member: GroupMember) -> Bool {
        member.isWrapper && !isEntityClass(member.unwrappedTypeName)
    }

    /// Check if a type name corresponds to an enum
    private func isEnumType(_ typeName: String) -> Bool {
        if typeName == "IfcLogical" || typeName == "logical" { return true }
        if let st = schema.simpleTypes[typeName], case .enumeration = st.kind { return true }
        return false
    }

    func generate() -> String {
        var output = fileHeader("STEPSelectEncoding.swift")
        output += "import Foundation\n\n"

        let sortedGroups = schema.groups.keys.sorted()
        for groupName in sortedGroups {
            guard let group = schema.groups[groupName] else { continue }

            output += "extension IFC4X3.\(groupName) {\n"

            // stepEncode()
            output += "    public func stepEncode() -> STEPValue {\n"
            output += "        switch self {\n"
            for member in group.members {
                let caseName = selectCaseName(member.unwrappedTypeName)
                if isTrueWrapper(member) {
                    // Simple type wrapper — wrap with type name
                    let stepTypeName = member.unwrappedTypeName.uppercased()
                    // Handle special wrapper types
                    if isEnumType(member.unwrappedTypeName) {
                        output += "        case .\(caseName)(let v): return .select(typeName: \"\(stepTypeName)\", value: .enumeration(v.rawValue))\n"
                    } else {
                        let resolved = resolveSwiftType(member.unwrappedTypeName, schema: schema)
                        let valueExpr = simpleTypeValueExpr("v", resolved)
                        output += "        case .\(caseName)(let v): return .select(typeName: \"\(stepTypeName)\", value: \(valueExpr))\n"
                    }
                } else {
                    // Entity reference (including "wrapper" types that are actually entity classes)
                    output += "        case .\(caseName)(let e): return .entityRef(e)\n"
                }
            }
            output += "        }\n"
            output += "    }\n\n"

            // stepDecode(_:)
            output += "    public static func stepDecode(_ value: STEPValue) -> Self? {\n"

            // Check entity ref cases first
            let entityMembers = group.members.filter { !isTrueWrapper($0) }
            let wrapperMembers = group.members.filter { isTrueWrapper($0) }

            if !entityMembers.isEmpty {
                output += "        if let entity = value.entityValue {\n"
                for member in entityMembers {
                    let caseName = selectCaseName(member.unwrappedTypeName)
                    let typeName = member.unwrappedTypeName
                    output += "            if let v = entity as? IFC4X3.\(typeName) { return .\(caseName)(v) }\n"
                }
                output += "        }\n"
            }

            if !wrapperMembers.isEmpty {
                output += "        if case .select(let typeName, let inner) = value {\n"
                output += "            switch typeName {\n"
                for member in wrapperMembers {
                    let caseName = selectCaseName(member.unwrappedTypeName)
                    let stepTypeName = member.unwrappedTypeName.uppercased()
                    let resolved = resolveSwiftType(member.unwrappedTypeName, schema: schema)
                    // Handle enums specially — decode via rawValue
                    if isEnumType(member.unwrappedTypeName) {
                        let enumSwiftName = member.unwrappedTypeName == "logical" ? "IfcLogical" : member.unwrappedTypeName
                        output += "            case \"\(stepTypeName)\": if case .enumeration(let s) = inner, let v = IFC4X3.\(enumSwiftName)(rawValue: s) { return .\(caseName)(v) }\n"
                    } else {
                        let extractor = simpleTypeExtractor("inner", resolved)
                        output += "            case \"\(stepTypeName)\": if let v = \(extractor) { return .\(caseName)(v) }\n"
                    }
                }
                output += "            default: break\n"
                output += "            }\n"
                output += "        }\n"
            }

            output += "        return nil\n"
            output += "    }\n"

            output += "}\n\n"
        }

        return output
    }

    private func simpleTypeValueExpr(_ varName: String, _ swiftType: String) -> String {
        switch swiftType {
        case "Double": return ".real(\(varName))"
        case "Int": return ".integer(\(varName))"
        case "String": return ".string(\(varName))"
        case "Bool": return ".boolean(\(varName))"
        case "Data": return ".binary(\(varName))"
        default:
            if swiftType.hasPrefix("[") { return ".list(\(varName).map { .real($0) })" }
            return ".string(String(describing: \(varName)))"
        }
    }

    private func simpleTypeExtractor(_ varName: String, _ swiftType: String) -> String {
        switch swiftType {
        case "Double": return "\(varName).realValue"
        case "Int": return "\(varName).integerValue"
        case "String": return "\(varName).stringValue"
        case "Bool": return "\(varName).boolValue"
        case "Data": return "\(varName).dataValue"
        default:
            return "\(varName).stringValue"
        }
    }
}
