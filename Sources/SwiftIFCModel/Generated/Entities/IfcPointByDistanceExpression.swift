// IfcPointByDistanceExpression.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPointByDistanceExpression: IfcPoint, @unchecked Sendable {
        public var offsetLateral: IfcLengthMeasure? = nil
        public var offsetVertical: IfcLengthMeasure? = nil
        public var offsetLongitudinal: IfcLengthMeasure? = nil
        public var distanceAlong: IfcCurveMeasureSelect
        public var basisCurve: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            offsetLateral: IfcLengthMeasure? = nil,
            offsetVertical: IfcLengthMeasure? = nil,
            offsetLongitudinal: IfcLengthMeasure? = nil,
            distanceAlong: IfcCurveMeasureSelect,
            basisCurve: IfcCurve? = nil
        ) {
            self.offsetLateral = offsetLateral
            self.offsetVertical = offsetVertical
            self.offsetLongitudinal = offsetLongitudinal
            self.distanceAlong = distanceAlong
            self.basisCurve = basisCurve
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
