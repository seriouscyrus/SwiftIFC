// IfcCurveStyleFontPattern.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveStyleFontPattern: IfcPresentationItem, @unchecked Sendable {
        public var visibleSegmentLength: IfcLengthMeasure? = nil
        public var invisibleSegmentLength: IfcPositiveLengthMeasure? = nil

        public init(
            visibleSegmentLength: IfcLengthMeasure? = nil,
            invisibleSegmentLength: IfcPositiveLengthMeasure? = nil
        ) {
            self.visibleSegmentLength = visibleSegmentLength
            self.invisibleSegmentLength = invisibleSegmentLength
            super.init()
        }
    }
}
