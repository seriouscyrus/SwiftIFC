// IfcPolygonalBoundedHalfSpace.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPolygonalBoundedHalfSpace: IfcHalfSpaceSolid, @unchecked Sendable {
        public var position: IfcAxis2Placement3D? = nil
        public var polygonalBoundary: IfcBoundedCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            agreementFlag: IfcBoolean? = nil,
            baseSurface: IfcSurface? = nil,
            position: IfcAxis2Placement3D? = nil,
            polygonalBoundary: IfcBoundedCurve? = nil
        ) {
            self.position = position
            self.polygonalBoundary = polygonalBoundary
            super.init(
                styledByItem: styledByItem,
                agreementFlag: agreementFlag,
                baseSurface: baseSurface
            )
        }
    }
}
