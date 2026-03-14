// IfcCurveSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveSegment: IfcSegment, @unchecked Sendable {
        public var placement: IfcPlacement? = nil
        public var segmentStart: IfcCurveMeasureSelect? = nil
        public var segmentLength: IfcCurveMeasureSelect? = nil
        public var parentCurve: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            transition: IfcTransitionCode? = nil,
            placement: IfcPlacement? = nil,
            segmentStart: IfcCurveMeasureSelect? = nil,
            segmentLength: IfcCurveMeasureSelect? = nil,
            parentCurve: IfcCurve? = nil
        ) {
            self.placement = placement
            self.segmentStart = segmentStart
            self.segmentLength = segmentLength
            self.parentCurve = parentCurve
            super.init(
                styledByItem: styledByItem,
                transition: transition
            )
        }
    }
}
