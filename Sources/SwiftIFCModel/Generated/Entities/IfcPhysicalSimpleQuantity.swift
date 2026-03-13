// IfcPhysicalSimpleQuantity.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPhysicalSimpleQuantity: IfcPhysicalQuantity, @unchecked Sendable { // ABSTRACT
        public var unit: IfcNamedUnit? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil
        ) {
            self.unit = unit
            super.init(
                name: name,
                description: description
            )
        }
    }
}
