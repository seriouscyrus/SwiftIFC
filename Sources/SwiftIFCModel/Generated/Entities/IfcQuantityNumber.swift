// IfcQuantityNumber.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcQuantityNumber: IfcPhysicalSimpleQuantity, @unchecked Sendable {
        public var numberValue: IfcNumericMeasure? = nil
        public var formula: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil,
            numberValue: IfcNumericMeasure? = nil,
            formula: IfcLabel? = nil
        ) {
            self.numberValue = numberValue
            self.formula = formula
            super.init(
                name: name,
                description: description,
                unit: unit
            )
        }
    }
}
