// IfcMaterialDefinitionRepresentation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialDefinitionRepresentation: IfcProductRepresentation, @unchecked Sendable {
        public var representedMaterial: IfcMaterial? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            representations: [IfcRepresentation] = [],
            representedMaterial: IfcMaterial? = nil
        ) {
            self.representedMaterial = representedMaterial
            super.init(
                name: name,
                description: description,
                representations: representations
            )
        }
    }
}
