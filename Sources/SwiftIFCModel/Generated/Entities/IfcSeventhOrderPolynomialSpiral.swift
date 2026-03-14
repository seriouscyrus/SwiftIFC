// IfcSeventhOrderPolynomialSpiral.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSeventhOrderPolynomialSpiral: IfcSpiral, @unchecked Sendable {
        public var septicTerm: IfcLengthMeasure? = nil
        public var sexticTerm: IfcLengthMeasure? = nil
        public var quinticTerm: IfcLengthMeasure? = nil
        public var quarticTerm: IfcLengthMeasure? = nil
        public var cubicTerm: IfcLengthMeasure? = nil
        public var quadraticTerm: IfcLengthMeasure? = nil
        public var linearTerm: IfcLengthMeasure? = nil
        public var constantTerm: IfcLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement? = nil,
            septicTerm: IfcLengthMeasure? = nil,
            sexticTerm: IfcLengthMeasure? = nil,
            quinticTerm: IfcLengthMeasure? = nil,
            quarticTerm: IfcLengthMeasure? = nil,
            cubicTerm: IfcLengthMeasure? = nil,
            quadraticTerm: IfcLengthMeasure? = nil,
            linearTerm: IfcLengthMeasure? = nil,
            constantTerm: IfcLengthMeasure? = nil
        ) {
            self.septicTerm = septicTerm
            self.sexticTerm = sexticTerm
            self.quinticTerm = quinticTerm
            self.quarticTerm = quarticTerm
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
