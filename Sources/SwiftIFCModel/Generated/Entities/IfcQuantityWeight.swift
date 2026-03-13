// IfcQuantityWeight.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcQuantityWeight: IfcPhysicalSimpleQuantity, @unchecked Sendable {
        public var weightValue: IfcMassMeasure? = nil
        public var formula: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil,
            weightValue: IfcMassMeasure? = nil,
            formula: IfcLabel? = nil
        ) {
            self.weightValue = weightValue
            self.formula = formula
            super.init(
                name: name,
                description: description,
                unit: unit
            )
        }
    }
}
