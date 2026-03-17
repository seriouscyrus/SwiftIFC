// IfcIndexedTextureMap.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedTextureMap: IfcTextureCoordinate, @unchecked Sendable { // ABSTRACT
        public var texCoords: IfcTextureVertexList? = nil
        public var mappedTo: IfcTessellatedFaceSet? = nil

        public init(
            maps: [IfcSurfaceTexture] = [],
            texCoords: IfcTextureVertexList? = nil,
            mappedTo: IfcTessellatedFaceSet? = nil
        ) {
            self.texCoords = texCoords
            self.mappedTo = mappedTo
            super.init(
                maps: maps
            )
        }
    }
}
