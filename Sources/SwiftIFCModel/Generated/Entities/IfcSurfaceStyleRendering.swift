// IfcSurfaceStyleRendering.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceStyleRendering: IfcSurfaceStyleShading, @unchecked Sendable {
        public var reflectanceMethod: IfcReflectanceMethodEnum? = nil
        public var diffuseColour: IfcColourOrFactor? = nil
        public var transmissionColour: IfcColourOrFactor? = nil
        public var diffuseTransmissionColour: IfcColourOrFactor? = nil
        public var reflectionColour: IfcColourOrFactor? = nil
        public var specularColour: IfcColourOrFactor? = nil
        public var specularHighlight: IfcSpecularHighlightSelect? = nil

        public init(
            transparency: IfcNormalisedRatioMeasure? = nil,
            surfaceColour: IfcColourRgb? = nil,
            reflectanceMethod: IfcReflectanceMethodEnum? = nil,
            diffuseColour: IfcColourOrFactor? = nil,
            transmissionColour: IfcColourOrFactor? = nil,
            diffuseTransmissionColour: IfcColourOrFactor? = nil,
            reflectionColour: IfcColourOrFactor? = nil,
            specularColour: IfcColourOrFactor? = nil,
            specularHighlight: IfcSpecularHighlightSelect? = nil
        ) {
            self.reflectanceMethod = reflectanceMethod
            self.diffuseColour = diffuseColour
            self.transmissionColour = transmissionColour
            self.diffuseTransmissionColour = diffuseTransmissionColour
            self.reflectionColour = reflectionColour
            self.specularColour = specularColour
            self.specularHighlight = specularHighlight
            super.init(
                transparency: transparency,
                surfaceColour: surfaceColour
            )
        }
    }
}
