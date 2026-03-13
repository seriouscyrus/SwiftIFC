// IfcCoordinateReferenceSystem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCoordinateReferenceSystem: Entity { // ABSTRACT
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var geodeticDatum: IfcIdentifier? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            geodeticDatum: IfcIdentifier? = nil
        ) {
            self.name = name
            self.description = description
            self.geodeticDatum = geodeticDatum
            super.init()
        }
    }
}
