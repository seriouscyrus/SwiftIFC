import Foundation

// MARK: - Top-level schema container

struct IFCSchema {
    var simpleTypes: [String: IFCSimpleType] = [:]
    var complexTypes: [String: IFCComplexType] = [:]
    var groups: [String: IFCGroup] = [:]
    var wrapperElements: Set<String> = []
    var elementSubstitutions: [String: String] = [:]
}

// MARK: - Simple Types

struct IFCSimpleType {
    let name: String
    let kind: SimpleTypeKind
}

enum SimpleTypeKind {
    case enumeration(values: [String])
    case typeAlias(swiftType: String, xsdBase: String)
    case derived(baseName: String)
    case list(itemTypeName: String, minLength: Int?, maxLength: Int?)
}

// MARK: - Complex Types (Entities)

struct IFCComplexType {
    let name: String
    var baseName: String?
    let isAbstract: Bool
    var attributes: [IFCAttribute]
    var sequenceElements: [IFCSequenceElement]
    var isRestriction: Bool
}

struct IFCAttribute {
    let name: String
    let typeName: String
    let isOptional: Bool
}

struct IFCSequenceElement {
    let name: String
    let kind: SequenceElementKind
}

enum SequenceElementKind {
    case singleEntity(typeName: String, isOptional: Bool)
    case collection(elementTypeName: String, collectionType: String, isOptional: Bool)
    case selectRef(groupName: String, isOptional: Bool)
}

// MARK: - Groups (SELECT types)

struct IFCGroup {
    let name: String
    let members: [GroupMember]
}

struct GroupMember {
    let elementRef: String
    let isWrapper: Bool
    let unwrappedTypeName: String
}

// MARK: - Skip set

let infrastructureTypes: Set<String> = [
    "uos", "ifcXML", "Entity", "hexBinary", "aggregateType",
    "Seq-anyURI", "Seq-IfcPositiveInteger"
]
