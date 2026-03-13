// IfcSectionedSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSectionedSurface: IfcSurface, @unchecked Sendable {
        public var directrix: IfcCurve? = nil
        public var crossSectionPositions: [IfcAxis2PlacementLinear] = []
        public var crossSections: [IfcProfileDef] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            directrix: IfcCurve? = nil,
            crossSectionPositions: [IfcAxis2PlacementLinear] = [],
            crossSections: [IfcProfileDef] = []
        ) {
            self.directrix = directrix
            self.crossSectionPositions = crossSectionPositions
            self.crossSections = crossSections
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
