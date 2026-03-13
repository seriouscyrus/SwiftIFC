// IfcMaterialConstituent.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialConstituent: IfcMaterialDefinition, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var fraction: IfcNormalisedRatioMeasure? = nil
        public var category: IfcLabel? = nil
        public var material: IfcMaterial? = nil

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            fraction: IfcNormalisedRatioMeasure? = nil,
            category: IfcLabel? = nil,
            material: IfcMaterial? = nil
        ) {
            self.name = name
            self.description = description
            self.fraction = fraction
            self.category = category
            self.material = material
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
