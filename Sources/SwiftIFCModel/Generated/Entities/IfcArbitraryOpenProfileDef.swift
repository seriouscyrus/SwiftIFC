// IfcArbitraryOpenProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcArbitraryOpenProfileDef: IfcProfileDef, @unchecked Sendable {
        public var curve: IfcBoundedCurve? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            curve: IfcBoundedCurve? = nil
        ) {
            self.curve = curve
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties
            )
        }
    }
}
