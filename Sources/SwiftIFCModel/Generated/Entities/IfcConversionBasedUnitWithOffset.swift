// IfcConversionBasedUnitWithOffset.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConversionBasedUnitWithOffset: IfcConversionBasedUnit, @unchecked Sendable {
        public var conversionOffset: IfcReal? = nil

        public init(
            unitType: IfcUnitEnum? = nil,
            dimensions: IfcDimensionalExponents? = nil,
            name: IfcLabel? = nil,
            conversionFactor: IfcMeasureWithUnit? = nil,
            conversionOffset: IfcReal? = nil
        ) {
            self.conversionOffset = conversionOffset
            super.init(
                unitType: unitType,
                dimensions: dimensions,
                name: name,
                conversionFactor: conversionFactor
            )
        }
    }
}
