// IfcIndexedTriangleTextureMap.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedTriangleTextureMap: IfcIndexedTextureMap, @unchecked Sendable {
        public var texCoordIndex: [IfcPositiveInteger] = []

        public init(
            maps: [IfcSurfaceTexture] = [],
            texCoords: IfcTextureVertexList? = nil,
            mappedTo: IfcTessellatedFaceSet? = nil,
            texCoordIndex: [IfcPositiveInteger] = []
        ) {
            self.texCoordIndex = texCoordIndex
            super.init(
                maps: maps,
                texCoords: texCoords,
                mappedTo: mappedTo
            )
        }
    }
}
