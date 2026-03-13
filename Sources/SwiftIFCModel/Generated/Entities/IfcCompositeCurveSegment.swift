// IfcCompositeCurveSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCompositeCurveSegment: IfcSegment, @unchecked Sendable {
        public var sameSense: IfcBoolean? = nil
        public var parentCurve: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            transition: IfcTransitionCode? = nil,
            sameSense: IfcBoolean? = nil,
            parentCurve: IfcCurve? = nil
        ) {
            self.sameSense = sameSense
            self.parentCurve = parentCurve
            super.init(
                styledByItem: styledByItem,
                transition: transition
            )
        }
    }
}
