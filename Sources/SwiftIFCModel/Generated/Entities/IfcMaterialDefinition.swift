// IfcMaterialDefinition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialDefinition: Entity { // ABSTRACT
        public var hasProperties: [IfcMaterialProperties] = []

        public init(
            hasProperties: [IfcMaterialProperties] = []
        ) {
            self.hasProperties = hasProperties
            super.init()
        }
    }
}
