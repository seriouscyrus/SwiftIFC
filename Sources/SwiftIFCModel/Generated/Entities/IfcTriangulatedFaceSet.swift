// IfcTriangulatedFaceSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTriangulatedFaceSet: IfcTessellatedFaceSet, @unchecked Sendable {
        public var normals: [IfcParameterValue] = []
        public var closed: IfcBoolean? = nil
        public var coordIndex: [IfcPositiveInteger] = []
        public var pnIndex: [IfcPositiveInteger] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordinates: IfcCartesianPointList3D? = nil,
            hasColours: IfcIndexedColourMap? = nil,
            hasTextures: [IfcIndexedTextureMap] = [],
            normals: [IfcParameterValue] = [],
            closed: IfcBoolean? = nil,
            coordIndex: [IfcPositiveInteger] = [],
            pnIndex: [IfcPositiveInteger] = []
        ) {
            self.normals = normals
            self.closed = closed
            self.coordIndex = coordIndex
            self.pnIndex = pnIndex
            super.init(
                styledByItem: styledByItem,
                coordinates: coordinates,
                hasColours: hasColours,
                hasTextures: hasTextures
            )
        }
    }
}
