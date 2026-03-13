// IfcConstraint.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConstraint: Entity { // ABSTRACT
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var constraintGrade: IfcConstraintEnum? = nil
        public var constraintSource: IfcLabel? = nil
        public var creationTime: IfcDateTime? = nil
        public var userDefinedGrade: IfcLabel? = nil
        public var creatingActor: IfcActorSelect? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            constraintGrade: IfcConstraintEnum? = nil,
            constraintSource: IfcLabel? = nil,
            creationTime: IfcDateTime? = nil,
            userDefinedGrade: IfcLabel? = nil,
            creatingActor: IfcActorSelect? = nil
        ) {
            self.name = name
            self.description = description
            self.constraintGrade = constraintGrade
            self.constraintSource = constraintSource
            self.creationTime = creationTime
            self.userDefinedGrade = userDefinedGrade
            self.creatingActor = creatingActor
            super.init()
        }
    }
}
