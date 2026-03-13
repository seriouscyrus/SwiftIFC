// IfcExternalReference.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcExternalReference: Entity { // ABSTRACT
        public var location: IfcURIReference? = nil
        public var identification: IfcIdentifier? = nil
        public var name: IfcLabel? = nil

        public init(
            location: IfcURIReference? = nil,
            identification: IfcIdentifier? = nil,
            name: IfcLabel? = nil
        ) {
            self.location = location
            self.identification = identification
            self.name = name
            super.init()
        }
    }
}
