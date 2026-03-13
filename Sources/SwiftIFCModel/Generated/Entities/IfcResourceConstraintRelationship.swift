// IfcResourceConstraintRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcResourceConstraintRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var relatingConstraint: IfcConstraint? = nil
        public var relatedResourceObjects: IfcResourceObjectSelect

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            relatingConstraint: IfcConstraint? = nil,
            relatedResourceObjects: IfcResourceObjectSelect
        ) {
            self.relatingConstraint = relatingConstraint
            self.relatedResourceObjects = relatedResourceObjects
            super.init(
                name: name,
                description: description
            )
        }
    }
}
