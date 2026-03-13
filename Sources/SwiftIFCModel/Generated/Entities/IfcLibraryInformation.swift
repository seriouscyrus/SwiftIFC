// IfcLibraryInformation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLibraryInformation: IfcExternalInformation, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var version: IfcLabel? = nil
        public var versionDate: IfcDateTime? = nil
        public var location: IfcURIReference? = nil
        public var description: IfcText? = nil
        public var publisher: IfcActorSelect? = nil

        public init(
            name: IfcLabel? = nil,
            version: IfcLabel? = nil,
            versionDate: IfcDateTime? = nil,
            location: IfcURIReference? = nil,
            description: IfcText? = nil,
            publisher: IfcActorSelect? = nil
        ) {
            self.name = name
            self.version = version
            self.versionDate = versionDate
            self.location = location
            self.description = description
            self.publisher = publisher
            super.init()
        }
    }
}
