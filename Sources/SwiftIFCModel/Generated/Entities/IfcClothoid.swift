// IfcClothoid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcClothoid: IfcSpiral, @unchecked Sendable {
        public var clothoidConstant: IfcLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement? = nil,
            clothoidConstant: IfcLengthMeasure? = nil
        ) {
            self.clothoidConstant = clothoidConstant
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
