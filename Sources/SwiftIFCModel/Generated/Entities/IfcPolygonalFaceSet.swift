// IfcPolygonalFaceSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPolygonalFaceSet: IfcTessellatedFaceSet, @unchecked Sendable {
        public var closed: IfcBoolean? = nil
        public var pnIndex: [IfcPositiveInteger] = []
        public var faces: [IfcIndexedPolygonalFace] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordinates: IfcCartesianPointList3D? = nil,
            hasColours: IfcIndexedColourMap? = nil,
            hasTextures: [IfcIndexedTextureMap] = [],
            closed: IfcBoolean? = nil,
            pnIndex: [IfcPositiveInteger] = [],
            faces: [IfcIndexedPolygonalFace] = []
        ) {
            self.closed = closed
            self.pnIndex = pnIndex
            self.faces = faces
            super.init(
                styledByItem: styledByItem,
                coordinates: coordinates,
                hasColours: hasColours,
                hasTextures: hasTextures
            )
        }
    }
}
