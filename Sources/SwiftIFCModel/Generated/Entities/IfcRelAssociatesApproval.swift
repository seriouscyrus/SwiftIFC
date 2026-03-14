// IfcRelAssociatesApproval.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssociatesApproval: IfcRelAssociates, @unchecked Sendable {
        public var relatingApproval: IfcApproval? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: IfcDefinitionSelect? = nil,
            relatingApproval: IfcApproval? = nil
        ) {
            self.relatingApproval = relatingApproval
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                relatedObjects: relatedObjects
            )
        }
    }
}
