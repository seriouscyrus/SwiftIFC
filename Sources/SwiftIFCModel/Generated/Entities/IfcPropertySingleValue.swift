// IfcPropertySingleValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertySingleValue: IfcSimpleProperty, @unchecked Sendable {
        public var nominalValue: IfcValue? = nil
        public var unit: IfcUnit? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            nominalValue: IfcValue? = nil,
            unit: IfcUnit? = nil
        ) {
            self.nominalValue = nominalValue
            self.unit = unit
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
