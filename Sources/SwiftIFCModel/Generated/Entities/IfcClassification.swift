// IfcClassification.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcClassification: IfcExternalInformation, @unchecked Sendable {
        public var source: IfcLabel? = nil
        public var edition: IfcLabel? = nil
        public var editionDate: IfcDate? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var specification: IfcURIReference? = nil
        public var referenceTokens: [IfcIdentifier] = []
        public var hasReferences: [IfcClassificationReference] = []

        public init(
            source: IfcLabel? = nil,
            edition: IfcLabel? = nil,
            editionDate: IfcDate? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            specification: IfcURIReference? = nil,
            referenceTokens: [IfcIdentifier] = [],
            hasReferences: [IfcClassificationReference] = []
        ) {
            self.source = source
            self.edition = edition
            self.editionDate = editionDate
            self.name = name
            self.description = description
            self.specification = specification
            self.referenceTokens = referenceTokens
            self.hasReferences = hasReferences
            super.init()
        }
    }
}
