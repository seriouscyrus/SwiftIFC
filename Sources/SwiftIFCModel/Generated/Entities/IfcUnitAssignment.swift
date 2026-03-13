// IfcUnitAssignment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcUnitAssignment: Entity {
        public var units: IfcUnit

        public init(
            units: IfcUnit
        ) {
            self.units = units
            super.init()
        }
    }
}
