// IfcConversionBasedUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConversionBasedUnit: IfcNamedUnit, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var conversionFactor: IfcMeasureWithUnit? = nil

        public init(
            unitType: IfcUnitEnum? = nil,
            dimensions: IfcDimensionalExponents? = nil,
            name: IfcLabel? = nil,
            conversionFactor: IfcMeasureWithUnit? = nil
        ) {
            self.name = name
            self.conversionFactor = conversionFactor
            super.init(
                unitType: unitType,
                dimensions: dimensions
            )
        }
    }
}
