// IfcMaterialLayerWithOffsets.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialLayerWithOffsets: IfcMaterialLayer, @unchecked Sendable {
        public var offsetDirection: IfcLayerSetDirectionEnum? = nil
        public var offsetValues: [IfcLengthMeasure] = []

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            layerThickness: IfcNonNegativeLengthMeasure? = nil,
            isVentilated: IfcLogical? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            category: IfcLabel? = nil,
            priority: IfcInteger? = nil,
            material: IfcMaterial? = nil,
            offsetDirection: IfcLayerSetDirectionEnum? = nil,
            offsetValues: [IfcLengthMeasure] = []
        ) {
            self.offsetDirection = offsetDirection
            self.offsetValues = offsetValues
            super.init(
                hasProperties: hasProperties,
                layerThickness: layerThickness,
                isVentilated: isVentilated,
                name: name,
                description: description,
                category: category,
                priority: priority,
                material: material
            )
        }
    }
}
