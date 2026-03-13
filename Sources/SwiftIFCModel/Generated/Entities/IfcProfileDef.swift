// IfcProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProfileDef: Entity {
        public var profileType: IfcProfileTypeEnum? = nil
        public var profileName: IfcLabel? = nil
        public var hasProperties: [IfcProfileProperties] = []

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = []
        ) {
            self.profileType = profileType
            self.profileName = profileName
            self.hasProperties = hasProperties
            super.init()
        }
    }
}
