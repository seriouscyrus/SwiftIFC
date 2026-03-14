// IfcRelAssignsToProcess.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssignsToProcess: IfcRelAssigns, @unchecked Sendable {
        public var relatingProcess: IfcProcessSelect? = nil
        public var quantityInProcess: IfcMeasureWithUnit? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjectsType: IfcStrippedOptional? = nil,
            relatedObjects: [IfcObjectDefinition] = [],
            relatingProcess: IfcProcessSelect? = nil,
            quantityInProcess: IfcMeasureWithUnit? = nil
        ) {
            self.relatingProcess = relatingProcess
            self.quantityInProcess = quantityInProcess
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
