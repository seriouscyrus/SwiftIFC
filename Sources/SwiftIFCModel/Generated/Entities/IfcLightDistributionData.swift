// IfcLightDistributionData.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightDistributionData: Entity {
        public var mainPlaneAngle: IfcPlaneAngleMeasure? = nil
        public var secondaryPlaneAngle: [IfcPlaneAngleMeasure] = []
        public var luminousIntensity: [IfcLuminousIntensityDistributionMeasure] = []

        public init(
            mainPlaneAngle: IfcPlaneAngleMeasure? = nil,
            secondaryPlaneAngle: [IfcPlaneAngleMeasure] = [],
            luminousIntensity: [IfcLuminousIntensityDistributionMeasure] = []
        ) {
            self.mainPlaneAngle = mainPlaneAngle
            self.secondaryPlaneAngle = secondaryPlaneAngle
            self.luminousIntensity = luminousIntensity
            super.init()
        }
    }
}
