// IfcIndexedPolyCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedPolyCurve: IfcBoundedCurve, @unchecked Sendable {
        public var selfIntersect: IfcBoolean? = nil
        public var points: IfcCartesianPointList? = nil
        public var segments: IfcSegmentIndexSelect? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            selfIntersect: IfcBoolean? = nil,
            points: IfcCartesianPointList? = nil,
            segments: IfcSegmentIndexSelect? = nil
        ) {
            self.selfIntersect = selfIntersect
            self.points = points
            self.segments = segments
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
