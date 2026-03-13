// IfcObjective.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcObjective: IfcConstraint, @unchecked Sendable {
        public var logicalAggregator: IfcLogicalOperatorEnum? = nil
        public var objectiveQualifier: IfcObjectiveEnum? = nil
        public var userDefinedQualifier: IfcLabel? = nil
        public var benchmarkValues: [IfcConstraint] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            constraintGrade: IfcConstraintEnum? = nil,
            constraintSource: IfcLabel? = nil,
            creationTime: IfcDateTime? = nil,
            userDefinedGrade: IfcLabel? = nil,
            creatingActor: IfcActorSelect? = nil,
            logicalAggregator: IfcLogicalOperatorEnum? = nil,
            objectiveQualifier: IfcObjectiveEnum? = nil,
            userDefinedQualifier: IfcLabel? = nil,
            benchmarkValues: [IfcConstraint] = []
        ) {
            self.logicalAggregator = logicalAggregator
            self.objectiveQualifier = objectiveQualifier
            self.userDefinedQualifier = userDefinedQualifier
            self.benchmarkValues = benchmarkValues
            super.init(
                name: name,
                description: description,
                constraintGrade: constraintGrade,
                constraintSource: constraintSource,
                creationTime: creationTime,
                userDefinedGrade: userDefinedGrade,
                creatingActor: creatingActor
            )
        }
    }
}
