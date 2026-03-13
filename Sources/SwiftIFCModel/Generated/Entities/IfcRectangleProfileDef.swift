// IfcRectangleProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRectangleProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var xDim: IfcPositiveLengthMeasure? = nil
        public var yDim: IfcPositiveLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            xDim: IfcPositiveLengthMeasure? = nil,
            yDim: IfcPositiveLengthMeasure? = nil
        ) {
            self.xDim = xDim
            self.yDim = yDim
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
