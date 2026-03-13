// IfcConnectionCurveGeometry.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConnectionCurveGeometry: IfcConnectionGeometry, @unchecked Sendable {
        public var curveOnRelatingElement: IfcCurveOrEdgeCurve
        public var curveOnRelatedElement: IfcCurveOrEdgeCurve? = nil

        public init(
            curveOnRelatingElement: IfcCurveOrEdgeCurve,
            curveOnRelatedElement: IfcCurveOrEdgeCurve? = nil
        ) {
            self.curveOnRelatingElement = curveOnRelatingElement
            self.curveOnRelatedElement = curveOnRelatedElement
            super.init()
        }
    }
}
