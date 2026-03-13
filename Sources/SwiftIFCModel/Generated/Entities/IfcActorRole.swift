// IfcActorRole.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcActorRole: Entity {
        public var role: IfcRoleEnum? = nil
        public var userDefinedRole: IfcLabel? = nil
        public var description: IfcText? = nil

        public init(
            role: IfcRoleEnum? = nil,
            userDefinedRole: IfcLabel? = nil,
            description: IfcText? = nil
        ) {
            self.role = role
            self.userDefinedRole = userDefinedRole
            self.description = description
            super.init()
        }
    }
}
