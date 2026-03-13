// IfcOwnerHistory.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOwnerHistory: Entity {
        public var state: IfcStateEnum? = nil
        public var changeAction: IfcChangeActionEnum? = nil
        public var lastModifiedDate: IfcTimeStamp? = nil
        public var creationDate: IfcTimeStamp? = nil
        public var owningUser: IfcPersonAndOrganization? = nil
        public var owningApplication: IfcApplication? = nil
        public var lastModifyingUser: IfcPersonAndOrganization? = nil
        public var lastModifyingApplication: IfcApplication? = nil

        public init(
            state: IfcStateEnum? = nil,
            changeAction: IfcChangeActionEnum? = nil,
            lastModifiedDate: IfcTimeStamp? = nil,
            creationDate: IfcTimeStamp? = nil,
            owningUser: IfcPersonAndOrganization? = nil,
            owningApplication: IfcApplication? = nil,
            lastModifyingUser: IfcPersonAndOrganization? = nil,
            lastModifyingApplication: IfcApplication? = nil
        ) {
            self.state = state
            self.changeAction = changeAction
            self.lastModifiedDate = lastModifiedDate
            self.creationDate = creationDate
            self.owningUser = owningUser
            self.owningApplication = owningApplication
            self.lastModifyingUser = lastModifyingUser
            self.lastModifyingApplication = lastModifyingApplication
            super.init()
        }
    }
}
