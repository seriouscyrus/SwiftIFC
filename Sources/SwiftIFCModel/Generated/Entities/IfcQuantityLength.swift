// IfcQuantityLength.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcQuantityLength: IfcPhysicalSimpleQuantity, @unchecked Sendable {
        public var lengthValue: IfcLengthMeasure? = nil
        public var formula: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil,
            lengthValue: IfcLengthMeasure? = nil,
            formula: IfcLabel? = nil
        ) {
            self.lengthValue = lengthValue
            self.formula = formula
            super.init(
                name: name,
                description: description,
                unit: unit
            )
        }
    }
}
