// IfcPresentationLayerAssignment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPresentationLayerAssignment: Entity {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var identifier: IfcIdentifier? = nil
        public var assignedItems: IfcLayeredItem? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            identifier: IfcIdentifier? = nil,
            assignedItems: IfcLayeredItem? = nil
        ) {
            self.name = name
            self.description = description
            self.identifier = identifier
            self.assignedItems = assignedItems
            super.init()
        }
    }
}
