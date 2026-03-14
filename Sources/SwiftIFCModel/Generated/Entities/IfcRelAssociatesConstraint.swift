// IfcRelAssociatesConstraint.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssociatesConstraint: IfcRelAssociates, @unchecked Sendable {
        public var intent: IfcLabel? = nil
        public var relatingConstraint: IfcConstraint? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: IfcDefinitionSelect? = nil,
            intent: IfcLabel? = nil,
            relatingConstraint: IfcConstraint? = nil
        ) {
            self.intent = intent
            self.relatingConstraint = relatingConstraint
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
