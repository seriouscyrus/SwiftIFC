// IfcClassificationReference.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcClassificationReference: IfcExternalReference, @unchecked Sendable {
        public var description: IfcText? = nil
        public var sort: IfcIdentifier? = nil
        public var hasReferences: [IfcClassificationReference] = []
        public var referencedSource: IfcClassificationReferenceSelect? = nil

        public init(
            location: IfcURIReference? = nil,
            identification: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            sort: IfcIdentifier? = nil,
            hasReferences: [IfcClassificationReference] = [],
            referencedSource: IfcClassificationReferenceSelect? = nil
        ) {
            self.description = description
            self.sort = sort
            self.hasReferences = hasReferences
            self.referencedSource = referencedSource
            super.init(
                location: location,
                identification: identification,
                name: name
            )
        }
    }
}
