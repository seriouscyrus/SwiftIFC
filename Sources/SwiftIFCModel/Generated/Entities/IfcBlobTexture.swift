// IfcBlobTexture.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBlobTexture: IfcSurfaceTexture, @unchecked Sendable {
        public var rasterFormat: IfcIdentifier? = nil
        public var rasterCode: IfcBinary

        public init(
            repeatS: IfcBoolean? = nil,
            repeatT: IfcBoolean? = nil,
            mode: IfcIdentifier? = nil,
            parameter: [IfcIdentifier] = [],
            textureTransform: IfcCartesianTransformationOperator2D? = nil,
            rasterFormat: IfcIdentifier? = nil,
            rasterCode: IfcBinary
        ) {
            self.rasterFormat = rasterFormat
            self.rasterCode = rasterCode
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
