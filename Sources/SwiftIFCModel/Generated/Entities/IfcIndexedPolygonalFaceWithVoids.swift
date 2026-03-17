// IfcIndexedPolygonalFaceWithVoids.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedPolygonalFaceWithVoids: IfcIndexedPolygonalFace, @unchecked Sendable {
        public var innerCoordIndices: [IfcPositiveInteger] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordIndex: [IfcPositiveInteger] = [],
            innerCoordIndices: [IfcPositiveInteger] = []
        ) {
            self.innerCoordIndices = innerCoordIndices
            super.init(
                styledByItem: styledByItem,
                coordIndex: coordIndex
            )
        }
    }
}
