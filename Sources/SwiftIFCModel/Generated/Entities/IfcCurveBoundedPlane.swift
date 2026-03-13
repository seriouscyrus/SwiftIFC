// IfcCurveBoundedPlane.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveBoundedPlane: IfcBoundedSurface, @unchecked Sendable {
        public var basisSurface: IfcPlane? = nil
        public var outerBoundary: IfcCurve? = nil
        public var innerBoundaries: [IfcCurve] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            basisSurface: IfcPlane? = nil,
            outerBoundary: IfcCurve? = nil,
            innerBoundaries: [IfcCurve] = []
        ) {
            self.basisSurface = basisSurface
            self.outerBoundary = outerBoundary
            self.innerBoundaries = innerBoundaries
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
