// IfcSIUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSIUnit: IfcNamedUnit, @unchecked Sendable {
        public var prefix: IfcSIPrefix? = nil
        public var name: IfcSIUnitName? = nil

        public init(
            unitType: IfcUnitEnum? = nil,
            dimensions: IfcDimensionalExponents? = nil,
            prefix: IfcSIPrefix? = nil,
            name: IfcSIUnitName? = nil
        ) {
            self.prefix = prefix
            self.name = name
            super.init(
                unitType: unitType,
                dimensions: dimensions
            )
        }
    }
}
