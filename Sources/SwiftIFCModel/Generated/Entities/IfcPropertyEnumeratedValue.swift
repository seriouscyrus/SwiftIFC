// IfcPropertyEnumeratedValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyEnumeratedValue: IfcSimpleProperty, @unchecked Sendable {
        public var enumerationValues: IfcValue? = nil
        public var enumerationReference: IfcPropertyEnumeration? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            enumerationValues: IfcValue? = nil,
            enumerationReference: IfcPropertyEnumeration? = nil
        ) {
            self.enumerationValues = enumerationValues
            self.enumerationReference = enumerationReference
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
