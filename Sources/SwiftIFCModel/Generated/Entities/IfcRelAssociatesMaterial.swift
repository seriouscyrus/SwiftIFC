// IfcRelAssociatesMaterial.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssociatesMaterial: IfcRelAssociates, @unchecked Sendable {
        public var relatingMaterial: IfcMaterialSelect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: IfcDefinitionSelect? = nil,
            relatingMaterial: IfcMaterialSelect? = nil
        ) {
            self.relatingMaterial = relatingMaterial
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
