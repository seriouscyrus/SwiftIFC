// IfcPolynomialCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPolynomialCurve: IfcCurve, @unchecked Sendable {
        public var coefficientsX: [IfcReal] = []
        public var coefficientsY: [IfcReal] = []
        public var coefficientsZ: [IfcReal] = []
        public var position: IfcPlacement? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            coefficientsX: [IfcReal] = [],
            coefficientsY: [IfcReal] = [],
            coefficientsZ: [IfcReal] = [],
            position: IfcPlacement? = nil
        ) {
            self.coefficientsX = coefficientsX
            self.coefficientsY = coefficientsY
            self.coefficientsZ = coefficientsZ
            self.position = position
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
