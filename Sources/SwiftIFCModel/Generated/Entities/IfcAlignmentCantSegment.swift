// IfcAlignmentCantSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAlignmentCantSegment: IfcAlignmentParameterSegment, @unchecked Sendable {
        public var startDistAlong: IfcLengthMeasure? = nil
        public var horizontalLength: IfcNonNegativeLengthMeasure? = nil
        public var startCantLeft: IfcLengthMeasure? = nil
        public var endCantLeft: IfcLengthMeasure? = nil
        public var startCantRight: IfcLengthMeasure? = nil
        public var endCantRight: IfcLengthMeasure? = nil
        public var predefinedType: IfcAlignmentCantSegmentTypeEnum? = nil

        public init(
            startTag: IfcLabel? = nil,
            endTag: IfcLabel? = nil,
            startDistAlong: IfcLengthMeasure? = nil,
            horizontalLength: IfcNonNegativeLengthMeasure? = nil,
            startCantLeft: IfcLengthMeasure? = nil,
            endCantLeft: IfcLengthMeasure? = nil,
            startCantRight: IfcLengthMeasure? = nil,
            endCantRight: IfcLengthMeasure? = nil,
            predefinedType: IfcAlignmentCantSegmentTypeEnum? = nil
        ) {
            self.startDistAlong = startDistAlong
            self.horizontalLength = horizontalLength
            self.startCantLeft = startCantLeft
            self.endCantLeft = endCantLeft
            self.startCantRight = startCantRight
            self.endCantRight = endCantRight
            self.predefinedType = predefinedType
            super.init(
                startTag: startTag,
                endTag: endTag
            )
        }
    }
}
