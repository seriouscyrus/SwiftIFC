// IfcExternalReferenceRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcExternalReferenceRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var relatingReference: IfcExternalReference? = nil
        public var relatedResourceObjects: IfcResourceObjectSelect? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            relatingReference: IfcExternalReference? = nil,
            relatedResourceObjects: IfcResourceObjectSelect? = nil
        ) {
            self.relatingReference = relatingReference
            self.relatedResourceObjects = relatedResourceObjects
            super.init(
                name: name,
                description: description
            )
        }
    }
}
