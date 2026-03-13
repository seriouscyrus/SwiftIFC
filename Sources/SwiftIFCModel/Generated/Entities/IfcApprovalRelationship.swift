// IfcApprovalRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcApprovalRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var relatingApproval: IfcApproval? = nil
        public var relatedApprovals: [IfcApproval] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            relatingApproval: IfcApproval? = nil,
            relatedApprovals: [IfcApproval] = []
        ) {
            self.relatingApproval = relatingApproval
            self.relatedApprovals = relatedApprovals
            super.init(
                name: name,
                description: description
            )
        }
    }
}
