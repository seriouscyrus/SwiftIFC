// IfcAlignmentHorizontalSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAlignmentHorizontalSegment: IfcAlignmentParameterSegment, @unchecked Sendable {
        public var startDirection: IfcPlaneAngleMeasure? = nil
        public var startRadiusOfCurvature: IfcLengthMeasure? = nil
        public var endRadiusOfCurvature: IfcLengthMeasure? = nil
        public var segmentLength: IfcNonNegativeLengthMeasure? = nil
        public var gravityCenterLineHeight: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcAlignmentHorizontalSegmentTypeEnum? = nil
        public var startPoint: IfcCartesianPoint? = nil

        public init(
            startTag: IfcLabel? = nil,
            endTag: IfcLabel? = nil,
            startDirection: IfcPlaneAngleMeasure? = nil,
            startRadiusOfCurvature: IfcLengthMeasure? = nil,
            endRadiusOfCurvature: IfcLengthMeasure? = nil,
            segmentLength: IfcNonNegativeLengthMeasure? = nil,
            gravityCenterLineHeight: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcAlignmentHorizontalSegmentTypeEnum? = nil,
            startPoint: IfcCartesianPoint? = nil
        ) {
            self.startDirection = startDirection
            self.startRadiusOfCurvature = startRadiusOfCurvature
            self.endRadiusOfCurvature = endRadiusOfCurvature
            self.segmentLength = segmentLength
            self.gravityCenterLineHeight = gravityCenterLineHeight
            self.predefinedType = predefinedType
            self.startPoint = startPoint
            super.init(
                startTag: startTag,
                endTag: endTag
            )
        }
    }
}
