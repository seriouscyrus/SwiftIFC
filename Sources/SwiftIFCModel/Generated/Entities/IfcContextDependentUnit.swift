// IfcContextDependentUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcContextDependentUnit: IfcNamedUnit, @unchecked Sendable {
        public var name: IfcLabel? = nil

        public init(
            unitType: IfcUnitEnum? = nil,
            dimensions: IfcDimensionalExponents? = nil,
            name: IfcLabel? = nil
        ) {
            self.name = name
            super.init(
                unitType: unitType,
                dimensions: dimensions
            )
        }
    }
}
