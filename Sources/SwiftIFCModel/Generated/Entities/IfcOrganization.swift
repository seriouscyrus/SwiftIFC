// IfcOrganization.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOrganization: Entity {
        public var identification: IfcIdentifier? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var roles: [IfcActorRole] = []
        public var addresses: [IfcAddress] = []

        public init(
            identification: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            roles: [IfcActorRole] = [],
            addresses: [IfcAddress] = []
        ) {
            self.identification = identification
            self.name = name
            self.description = description
            self.roles = roles
            self.addresses = addresses
            super.init()
        }
    }
}
