// IfcRepresentationContext.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRepresentationContext: Entity { // ABSTRACT
        public var contextIdentifier: IfcLabel? = nil
        public var contextType: IfcLabel? = nil

        public init(
            contextIdentifier: IfcLabel? = nil,
            contextType: IfcLabel? = nil
        ) {
            self.contextIdentifier = contextIdentifier
            self.contextType = contextType
            super.init()
        }
    }
}
