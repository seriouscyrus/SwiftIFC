// IfcApplication.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcApplication: Entity {
        public var version: IfcLabel? = nil
        public var applicationFullName: IfcLabel? = nil
        public var applicationIdentifier: IfcIdentifier? = nil
        public var applicationDeveloper: IfcOrganization? = nil

        public init(
            version: IfcLabel? = nil,
            applicationFullName: IfcLabel? = nil,
            applicationIdentifier: IfcIdentifier? = nil,
            applicationDeveloper: IfcOrganization? = nil
        ) {
            self.version = version
            self.applicationFullName = applicationFullName
            self.applicationIdentifier = applicationIdentifier
            self.applicationDeveloper = applicationDeveloper
            super.init()
        }
    }
}
