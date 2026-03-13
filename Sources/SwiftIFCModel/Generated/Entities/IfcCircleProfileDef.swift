// IfcCircleProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCircleProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var radius: IfcPositiveLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            radius: IfcPositiveLengthMeasure? = nil
        ) {
            self.radius = radius
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
