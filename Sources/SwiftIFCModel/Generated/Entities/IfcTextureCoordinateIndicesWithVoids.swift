// IfcTextureCoordinateIndicesWithVoids.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextureCoordinateIndicesWithVoids: IfcTextureCoordinateIndices, @unchecked Sendable {
        public var innerTexCoordIndices: [IfcPositiveInteger] = []

        public init(
            texCoordIndex: [IfcPositiveInteger] = [],
            texCoordsOf: IfcIndexedPolygonalFace? = nil,
            innerTexCoordIndices: [IfcPositiveInteger] = []
        ) {
            self.innerTexCoordIndices = innerTexCoordIndices
            super.init(
                texCoordIndex: texCoordIndex,
                texCoordsOf: texCoordsOf
            )
        }
    }
}
