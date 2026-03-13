// IfcExtendedProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcExtendedProperties: IfcPropertyAbstraction, @unchecked Sendable { // ABSTRACT
        public var name: IfcIdentifier? = nil
        public var description: IfcText? = nil
        public var properties: [IfcProperty] = []

        public init(
            name: IfcIdentifier? = nil,
            description: IfcText? = nil,
            properties: [IfcProperty] = []
        ) {
            self.name = name
            self.description = description
            self.properties = properties
            super.init()
        }
    }
}
