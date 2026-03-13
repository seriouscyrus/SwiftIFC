// IfcLightSource.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightSource: IfcGeometricRepresentationItem, @unchecked Sendable { // ABSTRACT
        public var name: IfcLabel? = nil
        public var ambientIntensity: IfcNormalisedRatioMeasure? = nil
        public var intensity: IfcNormalisedRatioMeasure? = nil
        public var lightColour: IfcColourRgb? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            name: IfcLabel? = nil,
            ambientIntensity: IfcNormalisedRatioMeasure? = nil,
            intensity: IfcNormalisedRatioMeasure? = nil,
            lightColour: IfcColourRgb? = nil
        ) {
            self.name = name
            self.ambientIntensity = ambientIntensity
            self.intensity = intensity
            self.lightColour = lightColour
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
