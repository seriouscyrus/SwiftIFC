// IfcRelAssociatesDocument.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAssociatesDocument: IfcRelAssociates, @unchecked Sendable {
        public var relatingDocument: IfcDocumentSelect

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: IfcDefinitionSelect,
            relatingDocument: IfcDocumentSelect
        ) {
            self.relatingDocument = relatingDocument
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
