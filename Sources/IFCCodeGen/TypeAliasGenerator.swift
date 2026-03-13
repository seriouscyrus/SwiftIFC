import Foundation

struct TypeAliasGenerator {
    let schema: IFCSchema

    func generate() -> String {
        var output = fileHeader("IFCTypeAliases.swift")
        output += "import Foundation\n\n"
        output += "extension IFC4X3 {\n"

        let sortedTypes = schema.simpleTypes.values
            .sorted { $0.name < $1.name }

        for st in sortedTypes {
            // IfcLogical is emitted as an enum by EnumGenerator (from the "logical" base type)
            if st.name == "IfcLogical" { continue }

            switch st.kind {
            case .typeAlias(let swiftType, _):
                output += "    public typealias \(st.name) = \(swiftType)\n"

            case .derived(let baseName):
                let resolved = resolveUltimateType(baseName)
                output += "    public typealias \(st.name) = \(resolved)\n"

            case .list(let itemType, _, _):
                let resolved = resolveUltimateType(itemType)
                output += "    public typealias \(st.name) = [\(resolved)]\n"

            case .enumeration:
                break // handled by EnumGenerator
            }
        }

        output += "}\n"
        return output
    }

    private func resolveUltimateType(_ typeName: String) -> String {
        // "logical" enum is emitted as "IfcLogical"
        if typeName == "logical" { return "IfcLogical" }

        if typeName.hasPrefix("xs:") {
            return xsdPrimitiveToSwift(typeName)
        }
        if let st = schema.simpleTypes[typeName] {
            switch st.kind {
            case .typeAlias(let swiftType, _):
                return swiftType
            case .derived(let baseName):
                return resolveUltimateType(baseName)
            case .list(let itemType, _, _):
                return "[\(resolveUltimateType(itemType))]"
            case .enumeration:
                return typeName
            }
        }
        return typeName
    }
}
