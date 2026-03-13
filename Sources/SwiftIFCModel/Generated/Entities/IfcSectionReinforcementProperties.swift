// IfcSectionReinforcementProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSectionReinforcementProperties: IfcPreDefinedProperties, @unchecked Sendable {
        public var longitudinalStartPosition: IfcLengthMeasure? = nil
        public var longitudinalEndPosition: IfcLengthMeasure? = nil
        public var transversePosition: IfcLengthMeasure? = nil
        public var reinforcementRole: IfcReinforcingBarRoleEnum? = nil
        public var sectionDefinition: IfcSectionProperties? = nil
        public var crossSectionReinforcementDefinitions: [IfcReinforcementBarProperties] = []

        public init(
            longitudinalStartPosition: IfcLengthMeasure? = nil,
            longitudinalEndPosition: IfcLengthMeasure? = nil,
            transversePosition: IfcLengthMeasure? = nil,
            reinforcementRole: IfcReinforcingBarRoleEnum? = nil,
            sectionDefinition: IfcSectionProperties? = nil,
            crossSectionReinforcementDefinitions: [IfcReinforcementBarProperties] = []
        ) {
            self.longitudinalStartPosition = longitudinalStartPosition
            self.longitudinalEndPosition = longitudinalEndPosition
            self.transversePosition = transversePosition
            self.reinforcementRole = reinforcementRole
            self.sectionDefinition = sectionDefinition
            self.crossSectionReinforcementDefinitions = crossSectionReinforcementDefinitions
            super.init()
        }
    }
}
