// IfcArbitraryClosedProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcArbitraryClosedProfileDef: IfcProfileDef, @unchecked Sendable {
        public var outerCurve: IfcCurve? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            outerCurve: IfcCurve? = nil
        ) {
            self.outerCurve = outerCurve
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties
            )
        }
    }
}
