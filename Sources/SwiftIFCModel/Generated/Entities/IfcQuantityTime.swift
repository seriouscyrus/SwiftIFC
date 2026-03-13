// IfcQuantityTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcQuantityTime: IfcPhysicalSimpleQuantity, @unchecked Sendable {
        public var timeValue: IfcTimeMeasure? = nil
        public var formula: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil,
            timeValue: IfcTimeMeasure? = nil,
            formula: IfcLabel? = nil
        ) {
            self.timeValue = timeValue
            self.formula = formula
            super.init(
                name: name,
                description: description,
                unit: unit
            )
        }
    }
}
