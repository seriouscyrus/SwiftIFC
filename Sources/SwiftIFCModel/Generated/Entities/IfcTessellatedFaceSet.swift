// IfcTessellatedFaceSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTessellatedFaceSet: IfcTessellatedItem, @unchecked Sendable { // ABSTRACT
        public var coordinates: IfcCartesianPointList3D? = nil
        public var hasColours: IfcIndexedColourMap? = nil
        public var hasTextures: [IfcIndexedTextureMap] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordinates: IfcCartesianPointList3D? = nil,
            hasColours: IfcIndexedColourMap? = nil,
            hasTextures: [IfcIndexedTextureMap] = []
        ) {
            self.coordinates = coordinates
            self.hasColours = hasColours
            self.hasTextures = hasTextures
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
