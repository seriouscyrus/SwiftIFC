// IfcLightSourceSpot.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightSourceSpot: IfcLightSourcePositional, @unchecked Sendable {
        public var concentrationExponent: IfcReal? = nil
        public var spreadAngle: IfcPositivePlaneAngleMeasure? = nil
        public var beamWidthAngle: IfcPositivePlaneAngleMeasure? = nil
        public var orientation: IfcDirection? = nil

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
            position: IfcCartesianPoint? = nil,
            concentrationExponent: IfcReal? = nil,
            spreadAngle: IfcPositivePlaneAngleMeasure? = nil,
            beamWidthAngle: IfcPositivePlaneAngleMeasure? = nil,
            orientation: IfcDirection? = nil
        ) {
            self.concentrationExponent = concentrationExponent
            self.spreadAngle = spreadAngle
            self.beamWidthAngle = beamWidthAngle
            self.orientation = orientation
            super.init(
                styledByItem: styledByItem,
                name: name,
                ambientIntensity: ambientIntensity,
                intensity: intensity,
                lightColour: lightColour,
                radius: radius,
                constantAttenuation: constantAttenuation,
                distanceAttenuation: distanceAttenuation,
                quadricAttenuation: quadricAttenuation,
                position: position
            )
        }
    }
}
