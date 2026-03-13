// IfcPropertyEnumeration.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertyEnumeration: IfcPropertyAbstraction, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var enumerationValues: IfcValue
        public var unit: IfcUnit? = nil

        public init(
            name: IfcLabel? = nil,
            enumerationValues: IfcValue,
            unit: IfcUnit? = nil
        ) {
            self.name = name
            self.enumerationValues = enumerationValues
            self.unit = unit
            super.init()
        }
    }
}
