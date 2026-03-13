// IfcLibraryReference.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLibraryReference: IfcExternalReference, @unchecked Sendable {
        public var description: IfcText? = nil
        public var language: IfcLanguageId? = nil
        public var referencedLibrary: IfcLibraryInformation? = nil

        public init(
            location: IfcURIReference? = nil,
            identification: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            language: IfcLanguageId? = nil,
            referencedLibrary: IfcLibraryInformation? = nil
        ) {
            self.description = description
            self.language = language
            self.referencedLibrary = referencedLibrary
            super.init(
                location: location,
                identification: identification,
                name: name
            )
        }
    }
}
