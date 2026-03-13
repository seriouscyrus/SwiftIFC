// IfcResourceApprovalRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcResourceApprovalRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var relatedResourceObjects: IfcResourceObjectSelect
        public var relatingApproval: IfcApproval? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            relatedResourceObjects: IfcResourceObjectSelect,
            relatingApproval: IfcApproval? = nil
        ) {
            self.relatedResourceObjects = relatedResourceObjects
            self.relatingApproval = relatingApproval
            super.init(
                name: name,
                description: description
            )
        }
    }
}
