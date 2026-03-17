// IfcMaterialProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialProperties: IfcExtendedProperties, @unchecked Sendable {
        public var material: IfcMaterialDefinition? = nil

        public init(
            name: IfcIdentifier? = nil,
            description: IfcText? = nil,
            properties: [IfcProperty] = [],
            material: IfcMaterialDefinition? = nil
        ) {
            self.material = material
            super.init(
                name: name,
                description: description,
                properties: properties
            )
        }
    }
}
