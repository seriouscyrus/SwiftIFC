// IfcRelAssignsToActor.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssignsToActor: IfcRelAssigns, @unchecked Sendable {
        public var relatingActor: IfcActor? = nil
        public var actingRole: IfcActorRole? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjectsType: IfcStrippedOptional? = nil,
            relatedObjects: [IfcObjectDefinition] = [],
            relatingActor: IfcActor? = nil,
            actingRole: IfcActorRole? = nil
        ) {
            self.relatingActor = relatingActor
            self.actingRole = actingRole
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                relatedObjectsType: relatedObjectsType,
                relatedObjects: relatedObjects
            )
        }
    }
}
