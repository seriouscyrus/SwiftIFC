// IfcBoundingBox.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBoundingBox: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var xDim: IfcPositiveLengthMeasure? = nil
        public var yDim: IfcPositiveLengthMeasure? = nil
        public var zDim: IfcPositiveLengthMeasure? = nil
        public var corner: IfcCartesianPoint? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            xDim: IfcPositiveLengthMeasure? = nil,
            yDim: IfcPositiveLengthMeasure? = nil,
            zDim: IfcPositiveLengthMeasure? = nil,
            corner: IfcCartesianPoint? = nil
        ) {
            self.xDim = xDim
            self.yDim = yDim
            self.zDim = zDim
            self.corner = corner
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
