// IfcRectangularPyramid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRectangularPyramid: IfcCsgPrimitive3D, @unchecked Sendable {
        public var xLength: IfcPositiveLengthMeasure? = nil
        public var yLength: IfcPositiveLengthMeasure? = nil
        public var height: IfcPositiveLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement3D? = nil,
            xLength: IfcPositiveLengthMeasure? = nil,
            yLength: IfcPositiveLengthMeasure? = nil,
            height: IfcPositiveLengthMeasure? = nil
        ) {
            self.xLength = xLength
            self.yLength = yLength
            self.height = height
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
