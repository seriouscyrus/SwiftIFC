import Foundation

struct STEPProtocolGenerator {
    func generate() -> String {
        var output = fileHeader("STEPProtocol.swift")
        output += "import Foundation\n\n"
        output += """
        // MARK: - STEPValue

        public indirect enum STEPValue: @unchecked Sendable {
            case string(String)
            case integer(Int)
            case real(Double)
            case boolean(Bool)
            case logical(IFC4X3.IfcLogical)
            case enumeration(String)
            case entityRef(IFC4X3.Entity)
            case list([STEPValue])
            case select(typeName: String, value: STEPValue)
            case binary(Data)
            case null
            case derived

            public var isNull: Bool {
                if case .null = self { return true }
                return false
            }

            public var stringValue: String? {
                switch self {
                case .string(let v): return v
                case .enumeration(let v): return v
                default: return nil
                }
            }

            public var integerValue: Int? {
                if case .integer(let v) = self { return v }
                return nil
            }

            public var realValue: Double? {
                if case .real(let v) = self { return v }
                return nil
            }

            public var boolValue: Bool? {
                if case .boolean(let v) = self { return v }
                return nil
            }

            public var logicalValue: IFC4X3.IfcLogical? {
                if case .logical(let v) = self { return v }
                return nil
            }

            public var entityValue: IFC4X3.Entity? {
                if case .entityRef(let v) = self { return v }
                return nil
            }

            public var dataValue: Data? {
                if case .binary(let v) = self { return v }
                return nil
            }

            public var listValue: [STEPValue]? {
                if case .list(let v) = self { return v }
                return nil
            }
        }

        // MARK: - STEPAttributeDescriptor

        public struct STEPAttributeDescriptor: Sendable {
            public let name: String
            public let kind: STEPAttributeKind
            public let isOptional: Bool

            public init(name: String, kind: STEPAttributeKind, isOptional: Bool) {
                self.name = name
                self.kind = kind
                self.isOptional = isOptional
            }
        }

        public enum STEPAttributeKind: Sendable {
            case string
            case integer
            case real
            case boolean
            case logical
            case enumeration
            case entityRef
            case list
            case nestedList
            case select
            case binary
        }

        // MARK: - STEPEntityDescriptor

        /// Describes how a single entity type maps to/from STEP format.
        /// Each entity has its own descriptor with closures for attribute access.
        public struct STEPEntityDescriptor: @unchecked Sendable {
            public let stepTypeName: String
            public let ownAttributes: [STEPAttributeDescriptor]
            public let derivedOverrides: Set<String>
            public let getter: (IFC4X3.Entity, Int) -> STEPValue
            public let setter: (IFC4X3.Entity, STEPValue, Int) -> Void

            public init(
                stepTypeName: String,
                ownAttributes: [STEPAttributeDescriptor],
                derivedOverrides: Set<String> = [],
                getter: @escaping (IFC4X3.Entity, Int) -> STEPValue,
                setter: @escaping (IFC4X3.Entity, STEPValue, Int) -> Void
            ) {
                self.stepTypeName = stepTypeName
                self.ownAttributes = ownAttributes
                self.derivedOverrides = derivedOverrides
                self.getter = getter
                self.setter = setter
            }
        }

        """
        output += "\n"
        return output
    }
}
