// IfcOffsetCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOffsetCurve: IfcCurve, @unchecked Sendable { // ABSTRACT
        public var basisCurve: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            basisCurve: IfcCurve? = nil
        ) {
            self.basisCurve = basisCurve
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
