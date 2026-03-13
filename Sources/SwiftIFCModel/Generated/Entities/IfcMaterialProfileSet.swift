// IfcMaterialProfileSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialProfileSet: IfcMaterialDefinition, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var materialProfiles: [IfcMaterialProfile] = []
        public var compositeProfile: IfcCompositeProfileDef? = nil

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            materialProfiles: [IfcMaterialProfile] = [],
            compositeProfile: IfcCompositeProfileDef? = nil
        ) {
            self.name = name
            self.description = description
            self.materialProfiles = materialProfiles
            self.compositeProfile = compositeProfile
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
