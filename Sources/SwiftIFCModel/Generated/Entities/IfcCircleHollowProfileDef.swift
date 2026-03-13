// IfcCircleHollowProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCircleHollowProfileDef: IfcCircleProfileDef, @unchecked Sendable {
        public var wallThickness: IfcPositiveLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            radius: IfcPositiveLengthMeasure? = nil,
            wallThickness: IfcPositiveLengthMeasure? = nil
        ) {
            self.wallThickness = wallThickness
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position,
                radius: radius
            )
        }
    }
}
