// IfcOpenCrossProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOpenCrossProfileDef: IfcProfileDef, @unchecked Sendable {
        public var horizontalWidths: IfcBoolean? = nil
        public var widths: [IfcNonNegativeLengthMeasure] = []
        public var slopes: [IfcPlaneAngleMeasure] = []
        public var tags: [IfcLabel] = []
        public var offsetPoint: IfcCartesianPoint? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            horizontalWidths: IfcBoolean? = nil,
            widths: [IfcNonNegativeLengthMeasure] = [],
            slopes: [IfcPlaneAngleMeasure] = [],
            tags: [IfcLabel] = [],
            offsetPoint: IfcCartesianPoint? = nil
        ) {
            self.horizontalWidths = horizontalWidths
            self.widths = widths
            self.slopes = slopes
            self.tags = tags
            self.offsetPoint = offsetPoint
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties
            )
        }
    }
}
