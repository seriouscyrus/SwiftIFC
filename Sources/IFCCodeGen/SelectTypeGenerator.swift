import Foundation

struct SelectTypeGenerator {
    let schema: IFCSchema

    func generate() -> String {
        var output = fileHeader("IFCSelectTypes.swift")
        output += "import Foundation\n\n"
        output += "extension IFC4X3 {\n"

        let sortedGroups = schema.groups.values.sorted { $0.name < $1.name }

        for group in sortedGroups {
            output += "    public enum \(group.name): Sendable {\n"

            for member in group.members {
                let typeName = member.unwrappedTypeName
                let caseName = selectCaseName(typeName)
                let swiftType = resolveSelectMemberType(member)
                output += "        case \(caseName)(\(swiftType))\n"
            }

            output += "    }\n\n"
        }

        output += "}\n"
        return output
    }

    private func resolveSelectMemberType(_ member: GroupMember) -> String {
        let typeName = member.unwrappedTypeName
        // "logical" is emitted as IfcLogical enum
        if typeName == "logical" {
            return "IfcLogical"
        }
        if member.isWrapper {
            // It's a simple type wrapper — resolve to the underlying Swift type
            return resolveSwiftType(typeName, schema: schema)
        }
        // It's an entity class reference
        return typeName
    }
}
