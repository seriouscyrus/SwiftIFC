// IfcPropertyReferenceValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyReferenceValue: IfcSimpleProperty, @unchecked Sendable {
        public var usageName: IfcText? = nil
        public var propertyReference: IfcObjectReferenceSelect? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            usageName: IfcText? = nil,
            propertyReference: IfcObjectReferenceSelect? = nil
        ) {
            self.usageName = usageName
            self.propertyReference = propertyReference
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
