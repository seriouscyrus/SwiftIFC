// IfcSurfaceStyleLighting.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceStyleLighting: IfcPresentationItem, @unchecked Sendable {
        public var diffuseTransmissionColour: IfcColourRgb? = nil
        public var diffuseReflectionColour: IfcColourRgb? = nil
        public var transmissionColour: IfcColourRgb? = nil
        public var reflectanceColour: IfcColourRgb? = nil

        public init(
            diffuseTransmissionColour: IfcColourRgb? = nil,
            diffuseReflectionColour: IfcColourRgb? = nil,
            transmissionColour: IfcColourRgb? = nil,
            reflectanceColour: IfcColourRgb? = nil
        ) {
            self.diffuseTransmissionColour = diffuseTransmissionColour
            self.diffuseReflectionColour = diffuseReflectionColour
            self.transmissionColour = transmissionColour
            self.reflectanceColour = reflectanceColour
            super.init()
        }
    }
}
