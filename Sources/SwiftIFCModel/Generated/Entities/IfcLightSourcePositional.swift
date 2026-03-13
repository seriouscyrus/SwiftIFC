// IfcLightSourcePositional.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightSourcePositional: IfcLightSource, @unchecked Sendable {
        public var radius: IfcPositiveLengthMeasure? = nil
        public var constantAttenuation: IfcReal? = nil
        public var distanceAttenuation: IfcReal? = nil
        public var quadricAttenuation: IfcReal? = nil
        public var position: IfcCartesianPoint? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            name: IfcLabel? = nil,
            ambientIntensity: IfcNormalisedRatioMeasure? = nil,
            intensity: IfcNormalisedRatioMeasure? = nil,
            lightColour: IfcColourRgb? = nil,
            radius: IfcPositiveLengthMeasure? = nil,
            constantAttenuation: IfcReal? = nil,
            distanceAttenuation: IfcReal? = nil,
            quadricAttenuation: IfcReal? = nil,
            position: IfcCartesianPoint? = nil
        ) {
            self.radius = radius
            self.constantAttenuation = constantAttenuation
            self.distanceAttenuation = distanceAttenuation
            self.quadricAttenuation = quadricAttenuation
            self.position = position
            super.init(
                styledByItem: styledByItem,
                name: name,
                ambientIntensity: ambientIntensity,
                intensity: intensity,
                lightColour: lightColour
            )
        }
    }
}
