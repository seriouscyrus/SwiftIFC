// IfcFillAreaStyleTiles.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFillAreaStyleTiles: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var tilingScale: IfcPositiveRatioMeasure? = nil
        public var tilingPattern: [IfcVector] = []
        public var tiles: [IfcStyledItem] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            tilingScale: IfcPositiveRatioMeasure? = nil,
            tilingPattern: [IfcVector] = [],
            tiles: [IfcStyledItem] = []
        ) {
            self.tilingScale = tilingScale
            self.tilingPattern = tilingPattern
            self.tiles = tiles
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
