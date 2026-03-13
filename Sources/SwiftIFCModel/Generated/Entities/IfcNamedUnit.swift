// IfcNamedUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcNamedUnit: Entity { // ABSTRACT
        public var unitType: IfcUnitEnum? = nil
        public var dimensions: IfcDimensionalExponents? = nil

        public init(
            unitType: IfcUnitEnum? = nil,
            dimensions: IfcDimensionalExponents? = nil
        ) {
            self.unitType = unitType
            self.dimensions = dimensions
            super.init()
        }
    }
}
