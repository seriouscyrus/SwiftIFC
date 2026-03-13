// IfcMaterialProfile.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialProfile: IfcMaterialDefinition, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var priority: IfcInteger? = nil
        public var category: IfcLabel? = nil
        public var material: IfcMaterial? = nil
        public var profile: IfcProfileDef? = nil

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            priority: IfcInteger? = nil,
            category: IfcLabel? = nil,
            material: IfcMaterial? = nil,
            profile: IfcProfileDef? = nil
        ) {
            self.name = name
            self.description = description
            self.priority = priority
            self.category = category
            self.material = material
            self.profile = profile
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
