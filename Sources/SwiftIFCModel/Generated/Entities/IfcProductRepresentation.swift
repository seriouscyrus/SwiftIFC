// IfcProductRepresentation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProductRepresentation: Entity { // ABSTRACT
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var representations: [IfcRepresentation] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            representations: [IfcRepresentation] = []
        ) {
            self.name = name
            self.description = description
            self.representations = representations
            super.init()
        }
    }
}
