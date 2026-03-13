// IfcMaterialLayerSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialLayerSet: IfcMaterialDefinition, @unchecked Sendable {
        public var layerSetName: IfcLabel? = nil
        public var description: IfcText? = nil
        public var materialLayers: [IfcMaterialLayer] = []

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            layerSetName: IfcLabel? = nil,
            description: IfcText? = nil,
            materialLayers: [IfcMaterialLayer] = []
        ) {
            self.layerSetName = layerSetName
            self.description = description
            self.materialLayers = materialLayers
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
