import Foundation

// MARK: - XSD to Swift type resolution

func resolveSwiftType(_ typeName: String, schema: IFCSchema) -> String {
    // "logical" enum is emitted as "IfcLogical"
    if typeName == "logical" { return "IfcLogical" }

    // Check if it's an XSD primitive
    if typeName.hasPrefix("xs:") {
        return xsdPrimitiveToSwift(typeName)
    }

    // Check if it's a known simple type (typealias or enum)
    if let simpleType = schema.simpleTypes[typeName] {
        switch simpleType.kind {
        case .typeAlias(let swiftType, _):
            return swiftType
        case .derived(let baseName):
            return resolveSwiftType(baseName, schema: schema)
        case .enumeration:
            return typeName
        case .list(let itemType, _, _):
            let resolved = resolveSwiftType(itemType, schema: schema)
            return "[\(resolved)]"
        }
    }

    // Check if it's a known complex type (entity class)
    if schema.complexTypes[typeName] != nil {
        return typeName
    }

    // Check if it's a known group (SELECT type)
    if schema.groups[typeName] != nil {
        return typeName
    }

    // Default: use as-is
    return typeName
}

func xsdPrimitiveToSwift(_ xsdType: String) -> String {
    switch xsdType {
    case "xs:double": return "Double"
    case "xs:long": return "Int"
    case "xs:integer": return "Int"
    case "xs:normalizedString": return "String"
    case "xs:string": return "String"
    case "xs:boolean": return "Bool"
    case "xs:hexBinary": return "Data"
    case "xs:anyURI": return "String"
    default: return "String"
    }
}

// MARK: - Name conversion

/// Converts PascalCase property name to lowerCamelCase
func swiftPropertyName(_ xsdName: String) -> String {
    guard !xsdName.isEmpty else { return xsdName }
    let first = xsdName.prefix(1).lowercased()
    let rest = String(xsdName.dropFirst())
    let name = first + rest
    return escapeSwiftKeyword(name)
}

/// Converts an IFC type name to a Swift enum case name for SELECT types
func selectCaseName(_ typeName: String) -> String {
    var name = typeName
    // Strip "Ifc" prefix if present
    if name.hasPrefix("Ifc") {
        name = String(name.dropFirst(3))
    }
    // lowerCamelCase
    let first = name.prefix(1).lowercased()
    name = first + name.dropFirst()
    return escapeSwiftKeyword(name)
}

/// Converts an XSD enum value to a valid Swift enum case name
func swiftEnumCaseName(_ xsdValue: String) -> String {
    var name = xsdValue
        .replacingOccurrences(of: ".", with: "")
        .replacingOccurrences(of: "-", with: "_")
        .replacingOccurrences(of: " ", with: "_")

    // Handle values that start with a digit
    if let first = name.first, first.isNumber {
        name = "_" + name
    }

    return escapeSwiftKeyword(name)
}

private let swiftKeywords: Set<String> = [
    "as", "break", "case", "catch", "class", "continue", "default", "defer",
    "do", "else", "enum", "extension", "fallthrough", "false", "for", "func",
    "guard", "if", "import", "in", "init", "inout", "internal", "is", "let",
    "nil", "operator", "private", "protocol", "public", "repeat", "rethrows",
    "return", "self", "Self", "static", "struct", "subscript", "super",
    "switch", "throw", "throws", "true", "try", "typealias", "var", "where",
    "while", "type"
]

func escapeSwiftKeyword(_ name: String) -> String {
    if swiftKeywords.contains(name) {
        return "`\(name)`"
    }
    return name
}

// MARK: - File header

func fileHeader(_ fileName: String) -> String {
    """
    // \(fileName)
    // Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT

    """
}
