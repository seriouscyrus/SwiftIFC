// IfcQuantityArea.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcQuantityArea: IfcPhysicalSimpleQuantity, @unchecked Sendable {
        public var areaValue: IfcAreaMeasure? = nil
        public var formula: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil,
            areaValue: IfcAreaMeasure? = nil,
            formula: IfcLabel? = nil
        ) {
            self.areaValue = areaValue
            self.formula = formula
            super.init(
                name: name,
                description: description,
                unit: unit
            )
        }
    }
}
