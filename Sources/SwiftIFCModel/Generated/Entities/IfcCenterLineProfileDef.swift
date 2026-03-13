// IfcCenterLineProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCenterLineProfileDef: IfcArbitraryOpenProfileDef, @unchecked Sendable {
        public var thickness: IfcPositiveLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            curve: IfcBoundedCurve? = nil,
            thickness: IfcPositiveLengthMeasure? = nil
        ) {
            self.thickness = thickness
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                curve: curve
            )
        }
    }
}
