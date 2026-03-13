// IfcPropertyDependencyRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyDependencyRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var expression: IfcText? = nil
        public var dependingProperty: IfcProperty? = nil
        public var dependantProperty: IfcProperty? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            expression: IfcText? = nil,
            dependingProperty: IfcProperty? = nil,
            dependantProperty: IfcProperty? = nil
        ) {
            self.expression = expression
            self.dependingProperty = dependingProperty
            self.dependantProperty = dependantProperty
            super.init(
                name: name,
                description: description
            )
        }
    }
}
