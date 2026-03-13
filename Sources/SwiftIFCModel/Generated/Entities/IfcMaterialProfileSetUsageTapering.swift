// IfcMaterialProfileSetUsageTapering.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialProfileSetUsageTapering: IfcMaterialProfileSetUsage, @unchecked Sendable {
        public var cardinalEndPoint: IfcCardinalPointReference? = nil
        public var forProfileEndSet: IfcMaterialProfileSet? = nil

        public init(
            cardinalPoint: IfcCardinalPointReference? = nil,
            referenceExtent: IfcPositiveLengthMeasure? = nil,
            forProfileSet: IfcMaterialProfileSet? = nil,
            cardinalEndPoint: IfcCardinalPointReference? = nil,
            forProfileEndSet: IfcMaterialProfileSet? = nil
        ) {
            self.cardinalEndPoint = cardinalEndPoint
            self.forProfileEndSet = forProfileEndSet
            super.init(
                cardinalPoint: cardinalPoint,
                referenceExtent: referenceExtent,
                forProfileSet: forProfileSet
            )
        }
    }
}
