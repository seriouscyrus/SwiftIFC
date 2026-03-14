// IfcRelDefinesByProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelDefinesByProperties: IfcRelDefines, @unchecked Sendable {
        public var relatingPropertyDefinition: IfcPropertySetDefinitionSelect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingPropertyDefinition: IfcPropertySetDefinitionSelect? = nil
        ) {
            self.relatingPropertyDefinition = relatingPropertyDefinition
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
