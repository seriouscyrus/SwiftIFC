// IfcCompositeCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCompositeCurve: IfcBoundedCurve, @unchecked Sendable {
        public var selfIntersect: IfcLogical? = nil
        public var segments: [IfcSegment] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            selfIntersect: IfcLogical? = nil,
            segments: [IfcSegment] = []
        ) {
            self.selfIntersect = selfIntersect
            self.segments = segments
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
