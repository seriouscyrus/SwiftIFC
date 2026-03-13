// IfcTextureCoordinateIndices.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextureCoordinateIndices: Entity {
        public var texCoordIndex: [IfcPositiveInteger] = []
        public var texCoordsOf: IfcIndexedPolygonalFace? = nil

        public init(
            texCoordIndex: [IfcPositiveInteger] = [],
            texCoordsOf: IfcIndexedPolygonalFace? = nil
        ) {
            self.texCoordIndex = texCoordIndex
            self.texCoordsOf = texCoordsOf
            super.init()
        }
    }
}
