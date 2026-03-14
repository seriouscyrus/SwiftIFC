// IfcSineSpiral.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSineSpiral: IfcSpiral, @unchecked Sendable {
        public var sineTerm: IfcLengthMeasure? = nil
        public var linearTerm: IfcLengthMeasure? = nil
        public var constantTerm: IfcLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement? = nil,
            sineTerm: IfcLengthMeasure? = nil,
            linearTerm: IfcLengthMeasure? = nil,
            constantTerm: IfcLengthMeasure? = nil
        ) {
            self.sineTerm = sineTerm
            self.linearTerm = linearTerm
            self.constantTerm = constantTerm
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
