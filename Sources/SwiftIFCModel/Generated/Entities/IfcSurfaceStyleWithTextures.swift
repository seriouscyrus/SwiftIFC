// IfcSurfaceStyleWithTextures.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceStyleWithTextures: IfcPresentationItem, @unchecked Sendable {
        public var textures: [IfcSurfaceTexture] = []

        public init(
            textures: [IfcSurfaceTexture] = []
        ) {
            self.textures = textures
            super.init()
        }
    }
}
