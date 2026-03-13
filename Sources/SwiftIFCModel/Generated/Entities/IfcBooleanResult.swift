// IfcBooleanResult.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBooleanResult: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var `operator`: IfcBooleanOperator? = nil
        public var firstOperand: IfcBooleanOperand
        public var secondOperand: IfcBooleanOperand

        public init(
            styledByItem: IfcStyledItem? = nil,
            `operator`: IfcBooleanOperator? = nil,
            firstOperand: IfcBooleanOperand,
            secondOperand: IfcBooleanOperand
        ) {
            self.`operator` = `operator`
            self.firstOperand = firstOperand
            self.secondOperand = secondOperand
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
