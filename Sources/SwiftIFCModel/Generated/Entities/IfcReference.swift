// IfcReference.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReference: Entity {
        public var typeIdentifier: IfcIdentifier? = nil
        public var attributeIdentifier: IfcIdentifier? = nil
        public var instanceName: IfcLabel? = nil
        public var listPositions: [IfcInteger] = []
        public var innerReference: IfcReference? = nil

        public init(
            typeIdentifier: IfcIdentifier? = nil,
            attributeIdentifier: IfcIdentifier? = nil,
            instanceName: IfcLabel? = nil,
            listPositions: [IfcInteger] = [],
            innerReference: IfcReference? = nil
        ) {
            self.typeIdentifier = typeIdentifier
            self.attributeIdentifier = attributeIdentifier
            self.instanceName = instanceName
            self.listPositions = listPositions
            self.innerReference = innerReference
            super.init()
        }
    }
}
