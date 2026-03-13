// IfcRepresentation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRepresentation: Entity { // ABSTRACT
        public var representationIdentifier: IfcLabel? = nil
        public var representationType: IfcLabel? = nil
        public var contextOfItems: IfcRepresentationContext? = nil
        public var items: [IfcRepresentationItem] = []

        public init(
            representationIdentifier: IfcLabel? = nil,
            representationType: IfcLabel? = nil,
            contextOfItems: IfcRepresentationContext? = nil,
            items: [IfcRepresentationItem] = []
        ) {
            self.representationIdentifier = representationIdentifier
            self.representationType = representationType
            self.contextOfItems = contextOfItems
            self.items = items
            super.init()
        }
    }
}
