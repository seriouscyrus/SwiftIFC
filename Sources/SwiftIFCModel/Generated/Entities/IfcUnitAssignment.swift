// IfcUnitAssignment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcUnitAssignment: Entity {
        public var units: IfcUnit? = nil

        public init(
            units: IfcUnit? = nil
        ) {
            self.units = units
            super.init()
        }
    }
}
