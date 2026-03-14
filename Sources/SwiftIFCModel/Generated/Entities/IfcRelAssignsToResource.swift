// IfcRelAssignsToResource.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssignsToResource: IfcRelAssigns, @unchecked Sendable {
        public var relatingResource: IfcResourceSelect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjectsType: IfcStrippedOptional? = nil,
            relatedObjects: [IfcObjectDefinition] = [],
            relatingResource: IfcResourceSelect? = nil
        ) {
            self.relatingResource = relatingResource
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
