// IfcCircle.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCircle: IfcConic, @unchecked Sendable {
        public var radius: IfcPositiveLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement? = nil,
            radius: IfcPositiveLengthMeasure? = nil
        ) {
            self.radius = radius
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
