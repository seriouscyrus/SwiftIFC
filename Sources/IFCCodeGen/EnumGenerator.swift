import Foundation

struct EnumGenerator {
    let schema: IFCSchema

    func generate() -> String {
        var output = fileHeader("IFCEnumerations.swift")
        output += "import Foundation\n\n"
        output += "extension IFC4X3 {\n"

        let sortedTypes = schema.simpleTypes.values
            .sorted { $0.name < $1.name }

        for st in sortedTypes {
            guard case .enumeration(let values) = st.kind else { continue }

            // The XSD "logical" type (false/true/unknown) is emitted as IfcLogical
            // with a computed boolValue property to preserve the 3-value semantics.
            if st.name == "logical" {
                output += "    public enum IfcLogical: String, Sendable, Codable, CaseIterable {\n"
                output += "        case `true` = \"true\"\n"
                output += "        case `false` = \"false\"\n"
                output += "        case unknown\n\n"
                output += "        public var boolValue: Bool? {\n"
                output += "            switch self {\n"
                output += "            case .true: return true\n"
                output += "            case .false: return false\n"
                output += "            case .unknown: return nil\n"
                output += "            }\n"
                output += "        }\n"
                output += "    }\n\n"
                continue
            }

            output += "    public enum \(st.name): String, Sendable, Codable, CaseIterable {\n"
            for value in values {
                let caseName = swiftEnumCaseName(value)
                if caseName != value && caseName != "`\(value)`" {
                    output += "        case \(caseName) = \"\(value)\"\n"
                } else if caseName.hasPrefix("`") {
                    output += "        case \(caseName) = \"\(value)\"\n"
                } else {
                    output += "        case \(caseName)\n"
                }
            }
            output += "    }\n\n"
        }

        output += "}\n"
        return output
    }
}
