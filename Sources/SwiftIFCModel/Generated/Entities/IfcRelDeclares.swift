// IfcRelDeclares.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelDeclares: IfcRelationship, @unchecked Sendable {
        public var relatedDefinitions: IfcDefinitionSelect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedDefinitions: IfcDefinitionSelect? = nil
        ) {
            self.relatedDefinitions = relatedDefinitions
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
