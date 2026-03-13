// IfcTrapeziumProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTrapeziumProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var bottomXDim: IfcPositiveLengthMeasure? = nil
        public var topXDim: IfcPositiveLengthMeasure? = nil
        public var yDim: IfcPositiveLengthMeasure? = nil
        public var topXOffset: IfcLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            bottomXDim: IfcPositiveLengthMeasure? = nil,
            topXDim: IfcPositiveLengthMeasure? = nil,
            yDim: IfcPositiveLengthMeasure? = nil,
            topXOffset: IfcLengthMeasure? = nil
        ) {
            self.bottomXDim = bottomXDim
            self.topXDim = topXDim
            self.yDim = yDim
            self.topXOffset = topXOffset
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
