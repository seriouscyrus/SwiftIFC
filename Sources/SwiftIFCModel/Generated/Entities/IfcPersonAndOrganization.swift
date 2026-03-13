// IfcPersonAndOrganization.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPersonAndOrganization: Entity {
        public var thePerson: IfcPerson? = nil
        public var theOrganization: IfcOrganization? = nil
        public var roles: [IfcActorRole] = []

        public init(
            thePerson: IfcPerson? = nil,
            theOrganization: IfcOrganization? = nil,
            roles: [IfcActorRole] = []
        ) {
            self.thePerson = thePerson
            self.theOrganization = theOrganization
            self.roles = roles
            super.init()
        }
    }
}
