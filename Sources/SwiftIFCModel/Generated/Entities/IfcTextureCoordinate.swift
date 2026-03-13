// IfcTextureCoordinate.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextureCoordinate: IfcPresentationItem, @unchecked Sendable { // ABSTRACT
        public var maps: [IfcSurfaceTexture] = []

        public init(
            maps: [IfcSurfaceTexture] = []
        ) {
            self.maps = maps
            super.init()
        }
    }
}
