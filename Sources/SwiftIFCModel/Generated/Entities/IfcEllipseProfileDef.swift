// IfcEllipseProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEllipseProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var semiAxis1: IfcPositiveLengthMeasure? = nil
        public var semiAxis2: IfcPositiveLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            semiAxis1: IfcPositiveLengthMeasure? = nil,
            semiAxis2: IfcPositiveLengthMeasure? = nil
        ) {
            self.semiAxis1 = semiAxis1
            self.semiAxis2 = semiAxis2
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
