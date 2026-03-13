// IfcRoundedRectangleProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRoundedRectangleProfileDef: IfcRectangleProfileDef, @unchecked Sendable {
        public var roundingRadius: IfcPositiveLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            xDim: IfcPositiveLengthMeasure? = nil,
            yDim: IfcPositiveLengthMeasure? = nil,
            roundingRadius: IfcPositiveLengthMeasure? = nil
        ) {
            self.roundingRadius = roundingRadius
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position,
                xDim: xDim,
                yDim: yDim
            )
        }
    }
}
