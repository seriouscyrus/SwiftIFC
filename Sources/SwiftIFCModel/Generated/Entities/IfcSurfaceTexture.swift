// IfcSurfaceTexture.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceTexture: IfcPresentationItem, @unchecked Sendable { // ABSTRACT
        public var repeatS: IfcBoolean? = nil
        public var repeatT: IfcBoolean? = nil
        public var mode: IfcIdentifier? = nil
        public var parameter: [IfcIdentifier] = []
        public var textureTransform: IfcCartesianTransformationOperator2D? = nil

        public init(
            repeatS: IfcBoolean? = nil,
            repeatT: IfcBoolean? = nil,
            mode: IfcIdentifier? = nil,
            parameter: [IfcIdentifier] = [],
            textureTransform: IfcCartesianTransformationOperator2D? = nil
        ) {
            self.repeatS = repeatS
            self.repeatT = repeatT
            self.mode = mode
            self.parameter = parameter
            self.textureTransform = textureTransform
            super.init()
        }
    }
}
