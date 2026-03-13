// IfcMaterial.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterial: IfcMaterialDefinition, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var category: IfcLabel? = nil
        public var hasRepresentation: IfcMaterialDefinitionRepresentation? = nil

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            category: IfcLabel? = nil,
            hasRepresentation: IfcMaterialDefinitionRepresentation? = nil
        ) {
            self.name = name
            self.description = description
            self.category = category
            self.hasRepresentation = hasRepresentation
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
