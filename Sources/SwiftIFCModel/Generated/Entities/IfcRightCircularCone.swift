// IfcRightCircularCone.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRightCircularCone: IfcCsgPrimitive3D, @unchecked Sendable {
        public var height: IfcPositiveLengthMeasure? = nil
        public var bottomRadius: IfcPositiveLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement3D? = nil,
            height: IfcPositiveLengthMeasure? = nil,
            bottomRadius: IfcPositiveLengthMeasure? = nil
        ) {
            self.height = height
            self.bottomRadius = bottomRadius
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
