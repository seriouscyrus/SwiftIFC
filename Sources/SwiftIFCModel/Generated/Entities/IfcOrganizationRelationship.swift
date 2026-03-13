// IfcOrganizationRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOrganizationRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var relatingOrganization: IfcOrganization? = nil
        public var relatedOrganizations: [IfcOrganization] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            relatingOrganization: IfcOrganization? = nil,
            relatedOrganizations: [IfcOrganization] = []
        ) {
            self.relatingOrganization = relatingOrganization
            self.relatedOrganizations = relatedOrganizations
            super.init(
                name: name,
                description: description
            )
        }
    }
}
