// IfcDocumentInformation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDocumentInformation: IfcExternalInformation, @unchecked Sendable {
        public var identification: IfcIdentifier? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var location: IfcURIReference? = nil
        public var purpose: IfcText? = nil
        public var intendedUse: IfcText? = nil
        public var scope: IfcText? = nil
        public var revision: IfcLabel? = nil
        public var creationTime: IfcDateTime? = nil
        public var lastRevisionTime: IfcDateTime? = nil
        public var electronicFormat: IfcIdentifier? = nil
        public var validFrom: IfcDate? = nil
        public var validUntil: IfcDate? = nil
        public var confidentiality: IfcDocumentConfidentialityEnum? = nil
        public var status: IfcDocumentStatusEnum? = nil
        public var documentOwner: IfcActorSelect? = nil
        public var editors: IfcActorSelect? = nil

        public init(
            identification: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            location: IfcURIReference? = nil,
            purpose: IfcText? = nil,
            intendedUse: IfcText? = nil,
            scope: IfcText? = nil,
            revision: IfcLabel? = nil,
            creationTime: IfcDateTime? = nil,
            lastRevisionTime: IfcDateTime? = nil,
            electronicFormat: IfcIdentifier? = nil,
            validFrom: IfcDate? = nil,
            validUntil: IfcDate? = nil,
            confidentiality: IfcDocumentConfidentialityEnum? = nil,
            status: IfcDocumentStatusEnum? = nil,
            documentOwner: IfcActorSelect? = nil,
            editors: IfcActorSelect? = nil
        ) {
            self.identification = identification
            self.name = name
            self.description = description
            self.location = location
            self.purpose = purpose
            self.intendedUse = intendedUse
            self.scope = scope
            self.revision = revision
            self.creationTime = creationTime
            self.lastRevisionTime = lastRevisionTime
            self.electronicFormat = electronicFormat
            self.validFrom = validFrom
            self.validUntil = validUntil
            self.confidentiality = confidentiality
            self.status = status
            self.documentOwner = documentOwner
            self.editors = editors
            super.init()
        }
    }
}
