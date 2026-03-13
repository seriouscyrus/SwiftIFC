// IfcRelAssigns.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssigns: IfcRelationship, @unchecked Sendable { // ABSTRACT
        public var relatedObjectsType: IfcStrippedOptional? = nil
        public var relatedObjects: [IfcObjectDefinition] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjectsType: IfcStrippedOptional? = nil,
            relatedObjects: [IfcObjectDefinition] = []
        ) {
            self.relatedObjectsType = relatedObjectsType
            self.relatedObjects = relatedObjects
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
