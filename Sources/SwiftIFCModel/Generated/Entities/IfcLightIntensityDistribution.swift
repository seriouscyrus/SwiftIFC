// IfcLightIntensityDistribution.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightIntensityDistribution: Entity {
        public var lightDistributionCurve: IfcLightDistributionCurveEnum? = nil
        public var distributionData: [IfcLightDistributionData] = []

        public init(
            lightDistributionCurve: IfcLightDistributionCurveEnum? = nil,
            distributionData: [IfcLightDistributionData] = []
        ) {
            self.lightDistributionCurve = lightDistributionCurve
            self.distributionData = distributionData
            super.init()
        }
    }
}
