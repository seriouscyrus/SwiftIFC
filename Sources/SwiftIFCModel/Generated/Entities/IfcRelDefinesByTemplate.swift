// IfcRelDefinesByTemplate.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelDefinesByTemplate: IfcRelDefines, @unchecked Sendable {
        public var relatedPropertySets: [IfcPropertySetDefinition] = []
        public var relatingTemplate: IfcPropertySetTemplate? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedPropertySets: [IfcPropertySetDefinition] = [],
            relatingTemplate: IfcPropertySetTemplate? = nil
        ) {
            self.relatedPropertySets = relatedPropertySets
            self.relatingTemplate = relatingTemplate
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
