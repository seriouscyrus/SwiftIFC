// IfcImageTexture.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcImageTexture: IfcSurfaceTexture, @unchecked Sendable {
        public var uRLReference: IfcURIReference? = nil

        public init(
            repeatS: IfcBoolean? = nil,
            repeatT: IfcBoolean? = nil,
            mode: IfcIdentifier? = nil,
            parameter: [IfcIdentifier] = [],
            textureTransform: IfcCartesianTransformationOperator2D? = nil,
            uRLReference: IfcURIReference? = nil
        ) {
            self.uRLReference = uRLReference
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
