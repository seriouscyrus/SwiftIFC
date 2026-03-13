// IfcSegmentedReferenceCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSegmentedReferenceCurve: IfcCompositeCurve, @unchecked Sendable {
        public var baseCurve: IfcBoundedCurve? = nil
        public var endPoint: IfcPlacement? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            selfIntersect: IfcLogical? = nil,
            segments: [IfcSegment] = [],
            baseCurve: IfcBoundedCurve? = nil,
            endPoint: IfcPlacement? = nil
        ) {
            self.baseCurve = baseCurve
            self.endPoint = endPoint
            super.init(
                styledByItem: styledByItem,
                selfIntersect: selfIntersect,
                segments: segments
            )
        }
    }
}
