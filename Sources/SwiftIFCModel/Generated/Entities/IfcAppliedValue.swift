// IfcAppliedValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAppliedValue: Entity {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var applicableDate: IfcDate? = nil
        public var fixedUntilDate: IfcDate? = nil
        public var category: IfcLabel? = nil
        public var condition: IfcLabel? = nil
        public var arithmeticOperator: IfcArithmeticOperatorEnum? = nil
        public var appliedValue: IfcAppliedValueSelect? = nil
        public var unitBasis: IfcMeasureWithUnit? = nil
        public var components: [IfcAppliedValue] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            applicableDate: IfcDate? = nil,
            fixedUntilDate: IfcDate? = nil,
            category: IfcLabel? = nil,
            condition: IfcLabel? = nil,
            arithmeticOperator: IfcArithmeticOperatorEnum? = nil,
            appliedValue: IfcAppliedValueSelect? = nil,
            unitBasis: IfcMeasureWithUnit? = nil,
            components: [IfcAppliedValue] = []
        ) {
            self.name = name
            self.description = description
            self.applicableDate = applicableDate
            self.fixedUntilDate = fixedUntilDate
            self.category = category
            self.condition = condition
            self.arithmeticOperator = arithmeticOperator
            self.appliedValue = appliedValue
            self.unitBasis = unitBasis
            self.components = components
            super.init()
        }
    }
}
