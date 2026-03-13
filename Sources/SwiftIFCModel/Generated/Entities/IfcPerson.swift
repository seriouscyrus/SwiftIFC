// IfcPerson.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPerson: Entity {
        public var identification: IfcIdentifier? = nil
        public var familyName: IfcLabel? = nil
        public var givenName: IfcLabel? = nil
        public var middleNames: [IfcLabel] = []
        public var prefixTitles: [IfcLabel] = []
        public var suffixTitles: [IfcLabel] = []
        public var roles: [IfcActorRole] = []
        public var addresses: [IfcAddress] = []

        public init(
            identification: IfcIdentifier? = nil,
            familyName: IfcLabel? = nil,
            givenName: IfcLabel? = nil,
            middleNames: [IfcLabel] = [],
            prefixTitles: [IfcLabel] = [],
            suffixTitles: [IfcLabel] = [],
            roles: [IfcActorRole] = [],
            addresses: [IfcAddress] = []
        ) {
            self.identification = identification
            self.familyName = familyName
            self.givenName = givenName
            self.middleNames = middleNames
            self.prefixTitles = prefixTitles
            self.suffixTitles = suffixTitles
            self.roles = roles
            self.addresses = addresses
            super.init()
        }
    }
}
