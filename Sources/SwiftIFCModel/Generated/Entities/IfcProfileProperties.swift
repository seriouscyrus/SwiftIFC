// IfcProfileProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProfileProperties: IfcExtendedProperties, @unchecked Sendable {
        public var profileDefinition: IfcProfileDef? = nil

        public init(
            name: IfcIdentifier? = nil,
            description: IfcText? = nil,
            properties: [IfcProperty] = [],
            profileDefinition: IfcProfileDef? = nil
        ) {
            self.profileDefinition = profileDefinition
            super.init(
                name: name,
                description: description,
                properties: properties
            )
        }
    }
}
