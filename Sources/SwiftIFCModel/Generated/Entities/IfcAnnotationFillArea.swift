// IfcAnnotationFillArea.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAnnotationFillArea: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var outerBoundary: IfcCurve? = nil
        public var innerBoundaries: [IfcCurve] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            outerBoundary: IfcCurve? = nil,
            innerBoundaries: [IfcCurve] = []
        ) {
            self.outerBoundary = outerBoundary
            self.innerBoundaries = innerBoundaries
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
