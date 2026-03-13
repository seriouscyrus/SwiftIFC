// IfcDocumentInformationRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDocumentInformationRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var relationshipType: IfcLabel? = nil
        public var relatingDocument: IfcDocumentInformation? = nil
        public var relatedDocuments: [IfcDocumentInformation] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            relationshipType: IfcLabel? = nil,
            relatingDocument: IfcDocumentInformation? = nil,
            relatedDocuments: [IfcDocumentInformation] = []
        ) {
            self.relationshipType = relationshipType
            self.relatingDocument = relatingDocument
            self.relatedDocuments = relatedDocuments
            super.init(
                name: name,
                description: description
            )
        }
    }
}
