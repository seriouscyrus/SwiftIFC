// IfcMeasureWithUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMeasureWithUnit: Entity {
        public var valueComponent: IfcValue
        public var unitComponent: IfcUnit

        public init(
            valueComponent: IfcValue,
            unitComponent: IfcUnit
        ) {
            self.valueComponent = valueComponent
            self.unitComponent = unitComponent
            super.init()
        }
    }
}
