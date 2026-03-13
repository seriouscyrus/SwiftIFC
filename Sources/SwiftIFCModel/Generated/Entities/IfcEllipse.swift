// IfcEllipse.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEllipse: IfcConic, @unchecked Sendable {
        public var semiAxis1: IfcPositiveLengthMeasure? = nil
        public var semiAxis2: IfcPositiveLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement,
            semiAxis1: IfcPositiveLengthMeasure? = nil,
            semiAxis2: IfcPositiveLengthMeasure? = nil
        ) {
            self.semiAxis1 = semiAxis1
            self.semiAxis2 = semiAxis2
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
