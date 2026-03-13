// IfcReinforcementDefinitionProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReinforcementDefinitionProperties: IfcPreDefinedPropertySet, @unchecked Sendable {
        public var definitionType: IfcLabel? = nil
        public var reinforcementSectionDefinitions: [IfcSectionReinforcementProperties] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            definitionType: IfcLabel? = nil,
            reinforcementSectionDefinitions: [IfcSectionReinforcementProperties] = []
        ) {
            self.definitionType = definitionType
            self.reinforcementSectionDefinitions = reinforcementSectionDefinitions
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
