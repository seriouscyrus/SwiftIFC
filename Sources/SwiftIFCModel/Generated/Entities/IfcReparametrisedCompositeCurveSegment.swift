// IfcReparametrisedCompositeCurveSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReparametrisedCompositeCurveSegment: IfcCompositeCurveSegment, @unchecked Sendable {
        public var paramLength: IfcParameterValue? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            transition: IfcTransitionCode? = nil,
            sameSense: IfcBoolean? = nil,
            parentCurve: IfcCurve? = nil,
            paramLength: IfcParameterValue? = nil
        ) {
            self.paramLength = paramLength
            super.init(
                styledByItem: styledByItem,
                transition: transition,
                sameSense: sameSense,
                parentCurve: parentCurve
            )
        }
    }
}
