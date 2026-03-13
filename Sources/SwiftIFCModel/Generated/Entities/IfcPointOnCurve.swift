// IfcPointOnCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPointOnCurve: IfcPoint, @unchecked Sendable {
        public var pointParameter: IfcParameterValue? = nil
        public var basisCurve: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            pointParameter: IfcParameterValue? = nil,
            basisCurve: IfcCurve? = nil
        ) {
            self.pointParameter = pointParameter
            self.basisCurve = basisCurve
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
