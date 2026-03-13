// IfcPixelTexture.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPixelTexture: IfcSurfaceTexture, @unchecked Sendable {
        public var width: IfcInteger? = nil
        public var height: IfcInteger? = nil
        public var colourComponents: IfcInteger? = nil
        public var pixel: [IfcBinary] = []

        public init(
            repeatS: IfcBoolean? = nil,
            repeatT: IfcBoolean? = nil,
            mode: IfcIdentifier? = nil,
            parameter: [IfcIdentifier] = [],
            textureTransform: IfcCartesianTransformationOperator2D? = nil,
            width: IfcInteger? = nil,
            height: IfcInteger? = nil,
            colourComponents: IfcInteger? = nil,
            pixel: [IfcBinary] = []
        ) {
            self.width = width
            self.height = height
            self.colourComponents = colourComponents
            self.pixel = pixel
            super.init(
                repeatS: repeatS,
                repeatT: repeatT,
                mode: mode,
                parameter: parameter,
                textureTransform: textureTransform
            )
        }
    }
}
