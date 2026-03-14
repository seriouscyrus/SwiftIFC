// IfcThirdOrderPolynomialSpiral.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcThirdOrderPolynomialSpiral: IfcSpiral, @unchecked Sendable {
        public var cubicTerm: IfcLengthMeasure? = nil
        public var quadraticTerm: IfcLengthMeasure? = nil
        public var linearTerm: IfcLengthMeasure? = nil
        public var constantTerm: IfcLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement? = nil,
            cubicTerm: IfcLengthMeasure? = nil,
            quadraticTerm: IfcLengthMeasure? = nil,
            linearTerm: IfcLengthMeasure? = nil,
            constantTerm: IfcLengthMeasure? = nil
        ) {
            self.cubicTerm = cubicTerm
            self.quadraticTerm = quadraticTerm
            self.linearTerm = linearTerm
            self.constantTerm = constantTerm
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
