// IfcApproval.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcApproval: Entity {
        public var identifier: IfcIdentifier? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var timeOfApproval: IfcDateTime? = nil
        public var status: IfcLabel? = nil
        public var level: IfcLabel? = nil
        public var qualifier: IfcText? = nil
        public var requestingApproval: IfcActorSelect? = nil
        public var givingApproval: IfcActorSelect? = nil

        public init(
            identifier: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            timeOfApproval: IfcDateTime? = nil,
            status: IfcLabel? = nil,
            level: IfcLabel? = nil,
            qualifier: IfcText? = nil,
            requestingApproval: IfcActorSelect? = nil,
            givingApproval: IfcActorSelect? = nil
        ) {
            self.identifier = identifier
            self.name = name
            self.description = description
            self.timeOfApproval = timeOfApproval
            self.status = status
            self.level = level
            self.qualifier = qualifier
            self.requestingApproval = requestingApproval
            self.givingApproval = givingApproval
            super.init()
        }
    }
}
