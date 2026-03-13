// IfcRelAssignsToGroupByFactor.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssignsToGroupByFactor: IfcRelAssignsToGroup, @unchecked Sendable {
        public var factor: IfcRatioMeasure? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjectsType: IfcStrippedOptional? = nil,
            relatedObjects: [IfcObjectDefinition] = [],
            relatingGroup: IfcGroup? = nil,
            factor: IfcRatioMeasure? = nil
        ) {
            self.factor = factor
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                relatedObjectsType: relatedObjectsType,
                relatedObjects: relatedObjects,
                relatingGroup: relatingGroup
            )
        }
    }
}
