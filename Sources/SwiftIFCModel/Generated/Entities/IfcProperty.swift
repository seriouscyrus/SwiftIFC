// IfcProperty.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProperty: IfcPropertyAbstraction, @unchecked Sendable { // ABSTRACT
        public var name: IfcIdentifier? = nil
        public var specification: IfcText? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil
        ) {
            self.name = name
            self.specification = specification
            super.init()
        }
    }
}
