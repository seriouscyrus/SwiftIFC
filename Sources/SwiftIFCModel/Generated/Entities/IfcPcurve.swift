// IfcPcurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPcurve: IfcCurve, @unchecked Sendable {
        public var basisSurface: IfcSurface? = nil
        public var referenceCurve: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            basisSurface: IfcSurface? = nil,
            referenceCurve: IfcCurve? = nil
        ) {
            self.basisSurface = basisSurface
            self.referenceCurve = referenceCurve
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
