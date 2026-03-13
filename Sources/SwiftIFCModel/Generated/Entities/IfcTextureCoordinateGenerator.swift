// IfcTextureCoordinateGenerator.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextureCoordinateGenerator: IfcTextureCoordinate, @unchecked Sendable {
        public var mode: IfcLabel? = nil
        public var parameter: [IfcReal] = []

        public init(
            maps: [IfcSurfaceTexture] = [],
            mode: IfcLabel? = nil,
            parameter: [IfcReal] = []
        ) {
            self.mode = mode
            self.parameter = parameter
            super.init(
                maps: maps
            )
        }
    }
}
