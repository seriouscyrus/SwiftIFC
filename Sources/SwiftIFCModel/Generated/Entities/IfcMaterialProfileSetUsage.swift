// IfcMaterialProfileSetUsage.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialProfileSetUsage: IfcMaterialUsageDefinition, @unchecked Sendable {
        public var cardinalPoint: IfcCardinalPointReference? = nil
        public var referenceExtent: IfcPositiveLengthMeasure? = nil
        public var forProfileSet: IfcMaterialProfileSet? = nil

        public init(
            cardinalPoint: IfcCardinalPointReference? = nil,
            referenceExtent: IfcPositiveLengthMeasure? = nil,
            forProfileSet: IfcMaterialProfileSet? = nil
        ) {
            self.cardinalPoint = cardinalPoint
            self.referenceExtent = referenceExtent
            self.forProfileSet = forProfileSet
            super.init()
        }
    }
}
