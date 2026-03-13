// IfcQuantityVolume.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcQuantityVolume: IfcPhysicalSimpleQuantity, @unchecked Sendable {
        public var volumeValue: IfcVolumeMeasure? = nil
        public var formula: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcNamedUnit? = nil,
            volumeValue: IfcVolumeMeasure? = nil,
            formula: IfcLabel? = nil
        ) {
            self.volumeValue = volumeValue
            self.formula = formula
            super.init(
                name: name,
                description: description,
                unit: unit
            )
        }
    }
}
