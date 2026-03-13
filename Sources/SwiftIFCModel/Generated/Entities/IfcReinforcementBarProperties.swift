// IfcReinforcementBarProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReinforcementBarProperties: IfcPreDefinedProperties, @unchecked Sendable {
        public var totalCrossSectionArea: IfcAreaMeasure? = nil
        public var steelGrade: IfcLabel? = nil
        public var barSurface: IfcReinforcingBarSurfaceEnum? = nil
        public var effectiveDepth: IfcLengthMeasure? = nil
        public var nominalBarDiameter: IfcPositiveLengthMeasure? = nil
        public var barCount: IfcCountMeasure? = nil

        public init(
            totalCrossSectionArea: IfcAreaMeasure? = nil,
            steelGrade: IfcLabel? = nil,
            barSurface: IfcReinforcingBarSurfaceEnum? = nil,
            effectiveDepth: IfcLengthMeasure? = nil,
            nominalBarDiameter: IfcPositiveLengthMeasure? = nil,
            barCount: IfcCountMeasure? = nil
        ) {
            self.totalCrossSectionArea = totalCrossSectionArea
            self.steelGrade = steelGrade
            self.barSurface = barSurface
            self.effectiveDepth = effectiveDepth
            self.nominalBarDiameter = nominalBarDiameter
            self.barCount = barCount
            super.init()
        }
    }
}
