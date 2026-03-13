// IfcFillAreaStyleHatching.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFillAreaStyleHatching: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var hatchLineAngle: IfcPlaneAngleMeasure? = nil
        public var hatchLineAppearance: IfcCurveStyle? = nil
        public var startOfNextHatchLine: IfcHatchLineDistanceSelect
        public var pointOfReferenceHatchLine: IfcCartesianPoint? = nil
        public var patternStart: IfcCartesianPoint? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            hatchLineAngle: IfcPlaneAngleMeasure? = nil,
            hatchLineAppearance: IfcCurveStyle? = nil,
            startOfNextHatchLine: IfcHatchLineDistanceSelect,
            pointOfReferenceHatchLine: IfcCartesianPoint? = nil,
            patternStart: IfcCartesianPoint? = nil
        ) {
            self.hatchLineAngle = hatchLineAngle
            self.hatchLineAppearance = hatchLineAppearance
            self.startOfNextHatchLine = startOfNextHatchLine
            self.pointOfReferenceHatchLine = pointOfReferenceHatchLine
            self.patternStart = patternStart
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
