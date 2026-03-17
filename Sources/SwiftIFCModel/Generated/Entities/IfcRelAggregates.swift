// IfcRelAggregates.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAggregates: IfcRelDecomposes, @unchecked Sendable {
        public var relatedObjects: [IfcObjectDefinition] = []
        public var relatingObject: IfcObjectDefinition? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: [IfcObjectDefinition] = [],
            relatingObject: IfcObjectDefinition? = nil
        ) {
            self.relatedObjects = relatedObjects
            self.relatingObject = relatingObject
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
