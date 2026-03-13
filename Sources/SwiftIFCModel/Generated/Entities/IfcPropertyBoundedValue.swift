// IfcPropertyBoundedValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyBoundedValue: IfcSimpleProperty, @unchecked Sendable {
        public var upperBoundValue: IfcValue? = nil
        public var lowerBoundValue: IfcValue? = nil
        public var unit: IfcUnit? = nil
        public var setPointValue: IfcValue? = nil

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            upperBoundValue: IfcValue? = nil,
            lowerBoundValue: IfcValue? = nil,
            unit: IfcUnit? = nil,
            setPointValue: IfcValue? = nil
        ) {
            self.upperBoundValue = upperBoundValue
            self.lowerBoundValue = lowerBoundValue
            self.unit = unit
            self.setPointValue = setPointValue
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
