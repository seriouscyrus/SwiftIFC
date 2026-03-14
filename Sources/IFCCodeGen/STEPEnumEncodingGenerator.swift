import Foundation

struct STEPEnumEncodingGenerator {
    let schema: IFCSchema

    func generate() -> String {
        var output = fileHeader("STEPEnumEncoding.swift")
        output += "import Foundation\n\n"

        let sortedTypes = schema.simpleTypes.values
            .sorted { $0.name < $1.name }

        for st in sortedTypes {
            guard case .enumeration = st.kind else { continue }

            // IfcLogical is handled separately via STEPValue.logical
            let enumName = st.name == "logical" ? "IfcLogical" : st.name

            output += "extension IFC4X3.\(enumName) {\n"
            output += "    public var stepEncoded: String {\n"
            output += "        return \".\" + rawValue.uppercased() + \".\"\n"
            output += "    }\n\n"
            output += "    public static func stepDecode(_ string: String) -> Self? {\n"
            output += "        let clean = string.replacingOccurrences(of: \".\", with: \"\").lowercased()\n"
            output += "        return Self(rawValue: clean)\n"
            output += "    }\n"
            output += "}\n\n"
        }

        return output
    }
}
