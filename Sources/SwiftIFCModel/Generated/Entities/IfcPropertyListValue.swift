// IfcPropertyListValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyListValue: IfcSimpleProperty, @unchecked Sendable {
        public var listValues: IfcValue? = nil
        public var unit: IfcUnit? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            listValues: IfcValue? = nil,
            unit: IfcUnit? = nil
        ) {
            self.listValues = listValues
            self.unit = unit
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
