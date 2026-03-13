// IfcPreDefinedItem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPreDefinedItem: IfcPresentationItem, @unchecked Sendable { // ABSTRACT
        public var name: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil
        ) {
            self.name = name
            super.init()
        }
    }
}
