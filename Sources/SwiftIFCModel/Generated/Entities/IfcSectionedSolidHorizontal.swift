// IfcSectionedSolidHorizontal.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSectionedSolidHorizontal: IfcSectionedSolid, @unchecked Sendable {
        public var crossSectionPositions: [IfcAxis2PlacementLinear] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            directrix: IfcCurve? = nil,
            crossSections: [IfcProfileDef] = [],
            crossSectionPositions: [IfcAxis2PlacementLinear] = []
        ) {
            self.crossSectionPositions = crossSectionPositions
            super.init(
                styledByItem: styledByItem,
                directrix: directrix,
                crossSections: crossSections
            )
        }
    }
}
