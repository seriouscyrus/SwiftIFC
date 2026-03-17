// IfcRelDefinesByProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelDefinesByProperties: IfcRelDefines, @unchecked Sendable {
        public var relatingPropertyDefinition: IfcPropertySetDefinitionSelect? = nil
        public var relatedObjects: [IfcObjectDefinition] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingPropertyDefinition: IfcPropertySetDefinitionSelect? = nil,
            relatedObjects: [IfcObjectDefinition] = []
        ) {
            self.relatingPropertyDefinition = relatingPropertyDefinition
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
