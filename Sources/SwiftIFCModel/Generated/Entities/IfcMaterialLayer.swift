// IfcMaterialLayer.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialLayer: IfcMaterialDefinition, @unchecked Sendable {
        public var layerThickness: IfcNonNegativeLengthMeasure? = nil
        public var isVentilated: IfcLogical? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var category: IfcLabel? = nil
        public var priority: IfcInteger? = nil
        public var material: IfcMaterial? = nil

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            layerThickness: IfcNonNegativeLengthMeasure? = nil,
            isVentilated: IfcLogical? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            category: IfcLabel? = nil,
            priority: IfcInteger? = nil,
            material: IfcMaterial? = nil
        ) {
            self.layerThickness = layerThickness
            self.isVentilated = isVentilated
            self.name = name
            self.description = description
            self.category = category
            self.priority = priority
            self.material = material
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
