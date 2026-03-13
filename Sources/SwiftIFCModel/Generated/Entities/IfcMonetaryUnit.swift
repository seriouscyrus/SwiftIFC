// IfcMonetaryUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMonetaryUnit: Entity {
        public var currency: IfcLabel? = nil

        public init(
            currency: IfcLabel? = nil
        ) {
            self.currency = currency
            super.init()
        }
    }
}
