// IfcCompositeProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCompositeProfileDef: IfcProfileDef, @unchecked Sendable {
        public var label: IfcLabel? = nil
        public var profiles: [IfcProfileDef] = []

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            label: IfcLabel? = nil,
            profiles: [IfcProfileDef] = []
        ) {
            self.label = label
            self.profiles = profiles
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties
            )
        }
    }
}
