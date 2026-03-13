// IfcIndexedTextureMap.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedTextureMap: IfcTextureCoordinate, @unchecked Sendable { // ABSTRACT
        public var texCoords: IfcTextureVertexList? = nil

        public init(
            maps: [IfcSurfaceTexture] = [],
            texCoords: IfcTextureVertexList? = nil
        ) {
            self.texCoords = texCoords
            super.init(
                maps: maps
            )
        }
    }
}
