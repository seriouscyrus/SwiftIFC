// IfcDerivedUnitElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDerivedUnitElement: Entity {
        public var exponent: Int? = nil
        public var unit: IfcNamedUnit? = nil

        public init(
            exponent: Int? = nil,
            unit: IfcNamedUnit? = nil
        ) {
            self.exponent = exponent
            self.unit = unit
            super.init()
        }
    }
}
