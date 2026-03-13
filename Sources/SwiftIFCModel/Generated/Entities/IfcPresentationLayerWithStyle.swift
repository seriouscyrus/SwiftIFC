// IfcPresentationLayerWithStyle.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPresentationLayerWithStyle: IfcPresentationLayerAssignment, @unchecked Sendable {
        public var layerOn: IfcLogical? = nil
        public var layerFrozen: IfcLogical? = nil
        public var layerBlocked: IfcLogical? = nil
        public var layerStyles: [IfcPresentationStyle] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            identifier: IfcIdentifier? = nil,
            assignedItems: IfcLayeredItem,
            layerOn: IfcLogical? = nil,
            layerFrozen: IfcLogical? = nil,
            layerBlocked: IfcLogical? = nil,
            layerStyles: [IfcPresentationStyle] = []
        ) {
            self.layerOn = layerOn
            self.layerFrozen = layerFrozen
            self.layerBlocked = layerBlocked
            self.layerStyles = layerStyles
            super.init(
                name: name,
                description: description,
                identifier: identifier,
                assignedItems: assignedItems
            )
        }
    }
}
