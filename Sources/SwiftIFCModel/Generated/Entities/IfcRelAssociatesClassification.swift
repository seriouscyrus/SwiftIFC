// IfcRelAssociatesClassification.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssociatesClassification: IfcRelAssociates, @unchecked Sendable {
        public var relatingClassification: IfcClassificationSelect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: IfcDefinitionSelect? = nil,
            relatingClassification: IfcClassificationSelect? = nil
        ) {
            self.relatingClassification = relatingClassification
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
