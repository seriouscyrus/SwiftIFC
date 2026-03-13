// IfcDimensionalExponents.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDimensionalExponents: Entity {
        public var lengthExponent: Int? = nil
        public var massExponent: Int? = nil
        public var timeExponent: Int? = nil
        public var electricCurrentExponent: Int? = nil
        public var thermodynamicTemperatureExponent: Int? = nil
        public var amountOfSubstanceExponent: Int? = nil
        public var luminousIntensityExponent: Int? = nil

        public init(
            lengthExponent: Int? = nil,
            massExponent: Int? = nil,
            timeExponent: Int? = nil,
            electricCurrentExponent: Int? = nil,
            thermodynamicTemperatureExponent: Int? = nil,
            amountOfSubstanceExponent: Int? = nil,
            luminousIntensityExponent: Int? = nil
        ) {
            self.lengthExponent = lengthExponent
            self.massExponent = massExponent
            self.timeExponent = timeExponent
            self.electricCurrentExponent = electricCurrentExponent
            self.thermodynamicTemperatureExponent = thermodynamicTemperatureExponent
            self.amountOfSubstanceExponent = amountOfSubstanceExponent
            self.luminousIntensityExponent = luminousIntensityExponent
            super.init()
        }
    }
}
