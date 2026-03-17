import Foundation

struct STEPRegistryGenerator {
    let schema: IFCSchema

    func generate() -> String {
        var output = fileHeader("STEPEntityRegistry.swift")
        output += "import Foundation\n\n"
        output += "extension IFC4X3 {\n"
        output += "    public nonisolated(unsafe) static let stepEntityRegistry: [String: () -> Entity] = [\n"

        let sortedTypes = schema.complexTypes.keys.sorted()
        var entries: [String] = []
        for typeName in sortedTypes {
            guard schema.complexTypes[typeName] != nil else { continue }
            guard !infrastructureTypes.contains(typeName) else { continue }
            // Note: abstract types are included because real-world IFC files
            // (especially older schema versions) may contain them directly
            let stepName = typeName.uppercased()
            entries.append("        \"\(stepName)\": { \(typeName)() }")
        }
        output += entries.joined(separator: ",\n")
        output += "\n    ]\n"
        output += "}\n"
        return output
    }
}
