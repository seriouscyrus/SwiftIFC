// IfcMetric.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMetric: IfcConstraint, @unchecked Sendable {
        public var benchmark: IfcBenchmarkEnum? = nil
        public var valueSource: IfcLabel? = nil
        public var dataValue: IfcMetricValueSelect? = nil
        public var referencePath: IfcReference? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            constraintGrade: IfcConstraintEnum? = nil,
            constraintSource: IfcLabel? = nil,
            creationTime: IfcDateTime? = nil,
            userDefinedGrade: IfcLabel? = nil,
            creatingActor: IfcActorSelect? = nil,
            benchmark: IfcBenchmarkEnum? = nil,
            valueSource: IfcLabel? = nil,
            dataValue: IfcMetricValueSelect? = nil,
            referencePath: IfcReference? = nil
        ) {
            self.benchmark = benchmark
            self.valueSource = valueSource
            self.dataValue = dataValue
            self.referencePath = referencePath
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
