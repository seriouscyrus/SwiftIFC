// IfcRelAssociatesProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssociatesProfileDef: IfcRelAssociates, @unchecked Sendable {
        public var relatingProfileDef: IfcProfileDef? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: IfcDefinitionSelect,
            relatingProfileDef: IfcProfileDef? = nil
        ) {
            self.relatingProfileDef = relatingProfileDef
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
