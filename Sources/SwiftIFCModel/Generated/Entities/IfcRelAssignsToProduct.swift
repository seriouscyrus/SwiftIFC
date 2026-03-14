// IfcRelAssignsToProduct.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssignsToProduct: IfcRelAssigns, @unchecked Sendable {
        public var relatingProduct: IfcProductSelect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjectsType: IfcStrippedOptional? = nil,
            relatedObjects: [IfcObjectDefinition] = [],
            relatingProduct: IfcProductSelect? = nil
        ) {
            self.relatingProduct = relatingProduct
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
