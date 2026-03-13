// IfcCurveBoundedSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveBoundedSurface: IfcBoundedSurface, @unchecked Sendable {
        public var implicitOuter: IfcBoolean? = nil
        public var basisSurface: IfcSurface? = nil
        public var boundaries: [IfcBoundaryCurve] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            implicitOuter: IfcBoolean? = nil,
            basisSurface: IfcSurface? = nil,
            boundaries: [IfcBoundaryCurve] = []
        ) {
            self.implicitOuter = implicitOuter
            self.basisSurface = basisSurface
            self.boundaries = boundaries
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
