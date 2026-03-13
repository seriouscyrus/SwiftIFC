// IfcCosineSpiral.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCosineSpiral: IfcSpiral, @unchecked Sendable {
        public var cosineTerm: IfcLengthMeasure? = nil
        public var constantTerm: IfcLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement,
            cosineTerm: IfcLengthMeasure? = nil,
            constantTerm: IfcLengthMeasure? = nil
        ) {
            self.cosineTerm = cosineTerm
            self.constantTerm = constantTerm
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
