// IfcPolyline.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPolyline: IfcBoundedCurve, @unchecked Sendable {
        public var points: [IfcCartesianPoint] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            points: [IfcCartesianPoint] = []
        ) {
            self.points = points
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
