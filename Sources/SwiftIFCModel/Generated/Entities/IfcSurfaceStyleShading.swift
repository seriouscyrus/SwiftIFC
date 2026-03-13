// IfcSurfaceStyleShading.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceStyleShading: IfcPresentationItem, @unchecked Sendable {
        public var transparency: IfcNormalisedRatioMeasure? = nil
        public var surfaceColour: IfcColourRgb? = nil

        public init(
            transparency: IfcNormalisedRatioMeasure? = nil,
            surfaceColour: IfcColourRgb? = nil
        ) {
            self.transparency = transparency
            self.surfaceColour = surfaceColour
            super.init()
        }
    }
}
