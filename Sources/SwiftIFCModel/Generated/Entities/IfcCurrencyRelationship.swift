// IfcCurrencyRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurrencyRelationship: IfcResourceLevelRelationship, @unchecked Sendable {
        public var exchangeRate: IfcPositiveRatioMeasure? = nil
        public var rateDateTime: IfcDateTime? = nil
        public var relatingMonetaryUnit: IfcMonetaryUnit? = nil
        public var relatedMonetaryUnit: IfcMonetaryUnit? = nil
        public var rateSource: IfcLibraryInformation? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            exchangeRate: IfcPositiveRatioMeasure? = nil,
            rateDateTime: IfcDateTime? = nil,
            relatingMonetaryUnit: IfcMonetaryUnit? = nil,
            relatedMonetaryUnit: IfcMonetaryUnit? = nil,
            rateSource: IfcLibraryInformation? = nil
        ) {
            self.exchangeRate = exchangeRate
            self.rateDateTime = rateDateTime
            self.relatingMonetaryUnit = relatingMonetaryUnit
            self.relatedMonetaryUnit = relatedMonetaryUnit
            self.rateSource = rateSource
            super.init(
                name: name,
                description: description
            )
        }
    }
}
