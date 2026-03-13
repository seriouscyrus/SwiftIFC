// IfcIndexedPolygonalFace.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedPolygonalFace: IfcTessellatedItem, @unchecked Sendable {
        public var coordIndex: [IfcPositiveInteger] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordIndex: [IfcPositiveInteger] = []
        ) {
            self.coordIndex = coordIndex
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
