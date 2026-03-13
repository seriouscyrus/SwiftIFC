// IfcDocumentReference.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDocumentReference: IfcExternalReference, @unchecked Sendable {
        public var description: IfcText? = nil
        public var referencedDocument: IfcDocumentInformation? = nil

        public init(
            location: IfcURIReference? = nil,
            identification: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            referencedDocument: IfcDocumentInformation? = nil
        ) {
            self.description = description
            self.referencedDocument = referencedDocument
            super.init(
                location: location,
                identification: identification,
                name: name
            )
        }
    }
}
