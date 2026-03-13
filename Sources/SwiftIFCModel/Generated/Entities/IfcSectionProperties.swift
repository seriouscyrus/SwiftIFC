// IfcSectionProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSectionProperties: IfcPreDefinedProperties, @unchecked Sendable {
        public var sectionType: IfcSectionTypeEnum? = nil
        public var startProfile: IfcProfileDef? = nil
        public var endProfile: IfcProfileDef? = nil

        public init(
            sectionType: IfcSectionTypeEnum? = nil,
            startProfile: IfcProfileDef? = nil,
            endProfile: IfcProfileDef? = nil
        ) {
            self.sectionType = sectionType
            self.startProfile = startProfile
            self.endProfile = endProfile
            super.init()
        }
    }
}
