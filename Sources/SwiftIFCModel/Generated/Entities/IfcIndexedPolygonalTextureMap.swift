// IfcIndexedPolygonalTextureMap.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedPolygonalTextureMap: IfcIndexedTextureMap, @unchecked Sendable {
        public var texCoordIndices: [IfcTextureCoordinateIndices] = []

        public init(
            maps: [IfcSurfaceTexture] = [],
            texCoords: IfcTextureVertexList? = nil,
            texCoordIndices: [IfcTextureCoordinateIndices] = []
        ) {
            self.texCoordIndices = texCoordIndices
            super.init(
                maps: maps,
                texCoords: texCoords
            )
        }
    }
}
