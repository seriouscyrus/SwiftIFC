// IfcRepresentationMap.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRepresentationMap: Entity {
        public var mappingOrigin: IfcAxis2Placement? = nil
        public var mappedRepresentation: IfcRepresentation? = nil

        public init(
            mappingOrigin: IfcAxis2Placement? = nil,
            mappedRepresentation: IfcRepresentation? = nil
        ) {
            self.mappingOrigin = mappingOrigin
            self.mappedRepresentation = mappedRepresentation
            super.init()
        }
    }
}
