// IfcAlignmentVerticalSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAlignmentVerticalSegment: IfcAlignmentParameterSegment, @unchecked Sendable {
        public var startDistAlong: IfcLengthMeasure? = nil
        public var horizontalLength: IfcNonNegativeLengthMeasure? = nil
        public var startHeight: IfcLengthMeasure? = nil
        public var startGradient: IfcRatioMeasure? = nil
        public var endGradient: IfcRatioMeasure? = nil
        public var radiusOfCurvature: IfcLengthMeasure? = nil
        public var predefinedType: IfcAlignmentVerticalSegmentTypeEnum? = nil

        public init(
            startTag: IfcLabel? = nil,
            endTag: IfcLabel? = nil,
            startDistAlong: IfcLengthMeasure? = nil,
            horizontalLength: IfcNonNegativeLengthMeasure? = nil,
            startHeight: IfcLengthMeasure? = nil,
            startGradient: IfcRatioMeasure? = nil,
            endGradient: IfcRatioMeasure? = nil,
            radiusOfCurvature: IfcLengthMeasure? = nil,
            predefinedType: IfcAlignmentVerticalSegmentTypeEnum? = nil
        ) {
            self.startDistAlong = startDistAlong
            self.horizontalLength = horizontalLength
            self.startHeight = startHeight
            self.startGradient = startGradient
            self.endGradient = endGradient
            self.radiusOfCurvature = radiusOfCurvature
            self.predefinedType = predefinedType
            super.init(
                startTag: startTag,
                endTag: endTag
            )
        }
    }
}
