import Foundation

// MARK: - EXPRESS Schema Container

struct EXPRESSSchema {
    var entities: [String: EXPRESSEntity] = [:]
}

// MARK: - EXPRESS Entity

struct EXPRESSEntity {
    let name: String
    var supertypeName: String?
    var isAbstract: Bool = false
    var directAttributes: [EXPRESSAttribute] = []
    var inverseAttributeNames: Set<String> = []
    var deriveOverrides: [EXPRESSDeriveOverride] = []
    var ownDerivedAttributeNames: Set<String> = []
}

struct EXPRESSAttribute {
    let name: String          // "OwningUser"
    let typeName: String      // "IfcPersonAndOrganization"
    let isOptional: Bool
    let isCollection: Bool    // LIST, SET, ARRAY
}

struct EXPRESSDeriveOverride {
    let attributeName: String   // "Dimensions"
    let parentEntityName: String // "IfcNamedUnit"
}
