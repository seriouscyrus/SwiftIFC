// IfcOffsetCurve2D.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOffsetCurve2D: IfcOffsetCurve, @unchecked Sendable {
        public var distance: IfcLengthMeasure? = nil
        public var selfIntersect: IfcLogical? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            basisCurve: IfcCurve? = nil,
            distance: IfcLengthMeasure? = nil,
            selfIntersect: IfcLogical? = nil
        ) {
            self.distance = distance
            self.selfIntersect = selfIntersect
            super.init(
                styledByItem: styledByItem,
                basisCurve: basisCurve
            )
        }
    }
}
