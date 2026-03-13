// IfcMaterialRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var materialExpression: IfcLabel? = nil
        public var relatingMaterial: IfcMaterial? = nil
        public var relatedMaterials: [IfcMaterial] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            materialExpression: IfcLabel? = nil,
            relatingMaterial: IfcMaterial? = nil,
            relatedMaterials: [IfcMaterial] = []
        ) {
            self.materialExpression = materialExpression
            self.relatingMaterial = relatingMaterial
            self.relatedMaterials = relatedMaterials
            super.init(
                name: name,
                description: description
            )
        }
    }
}
