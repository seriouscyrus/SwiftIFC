// IfcPropertyTableValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyTableValue: IfcSimpleProperty, @unchecked Sendable {
        public var expression: IfcText? = nil
        public var curveInterpolation: IfcCurveInterpolationEnum? = nil
        public var definingValues: IfcValue? = nil
        public var definedValues: IfcValue? = nil
        public var definingUnit: IfcUnit? = nil
        public var definedUnit: IfcUnit? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            expression: IfcText? = nil,
            curveInterpolation: IfcCurveInterpolationEnum? = nil,
            definingValues: IfcValue? = nil,
            definedValues: IfcValue? = nil,
            definingUnit: IfcUnit? = nil,
            definedUnit: IfcUnit? = nil
        ) {
            self.expression = expression
            self.curveInterpolation = curveInterpolation
            self.definingValues = definingValues
            self.definedValues = definedValues
            self.definingUnit = definingUnit
            self.definedUnit = definedUnit
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
