// IfcDerivedUnit.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDerivedUnit: Entity {
        public var unitType: IfcDerivedUnitEnum? = nil
        public var userDefinedType: IfcLabel? = nil
        public var name: IfcLabel? = nil
        public var elements: [IfcDerivedUnitElement] = []

        public init(
            unitType: IfcDerivedUnitEnum? = nil,
            userDefinedType: IfcLabel? = nil,
            name: IfcLabel? = nil,
            elements: [IfcDerivedUnitElement] = []
        ) {
            self.unitType = unitType
            self.userDefinedType = userDefinedType
            self.name = name
            self.elements = elements
            super.init()
        }
    }
}
