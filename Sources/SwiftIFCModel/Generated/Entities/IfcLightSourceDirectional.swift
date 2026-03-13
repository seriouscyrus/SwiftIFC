// IfcLightSourceDirectional.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightSourceDirectional: IfcLightSource, @unchecked Sendable {
        public var orientation: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            name: IfcLabel? = nil,
            ambientIntensity: IfcNormalisedRatioMeasure? = nil,
            intensity: IfcNormalisedRatioMeasure? = nil,
            lightColour: IfcColourRgb? = nil,
            orientation: IfcDirection? = nil
        ) {
            self.orientation = orientation
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
