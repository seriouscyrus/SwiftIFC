// IfcTriangulatedIrregularNetwork.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTriangulatedIrregularNetwork: IfcTriangulatedFaceSet, @unchecked Sendable {
        public var flags: [IfcInteger] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordinates: IfcCartesianPointList3D? = nil,
            hasColours: IfcIndexedColourMap? = nil,
            hasTextures: [IfcIndexedTextureMap] = [],
            normals: [IfcParameterValue] = [],
            closed: IfcBoolean? = nil,
            coordIndex: [IfcPositiveInteger] = [],
            pnIndex: [IfcPositiveInteger] = [],
            flags: [IfcInteger] = []
        ) {
            self.flags = flags
            super.init(
                styledByItem: styledByItem,
                coordinates: coordinates,
                hasColours: hasColours,
                hasTextures: hasTextures,
                normals: normals,
                closed: closed,
                coordIndex: coordIndex,
                pnIndex: pnIndex
            )
        }
    }
}
