// IfcOffsetCurveByDistances.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOffsetCurveByDistances: IfcOffsetCurve, @unchecked Sendable {
        public var tag: IfcLabel? = nil
        public var offsetValues: [IfcPointByDistanceExpression] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            basisCurve: IfcCurve? = nil,
            tag: IfcLabel? = nil,
            offsetValues: [IfcPointByDistanceExpression] = []
        ) {
            self.tag = tag
            self.offsetValues = offsetValues
            super.init(
                styledByItem: styledByItem,
                basisCurve: basisCurve
            )
        }
    }
}
