// IfcSurfaceCurveSweptAreaSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceCurveSweptAreaSolid: IfcDirectrixCurveSweptAreaSolid, @unchecked Sendable {
        public var referenceSurface: IfcSurface? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            directrix: IfcCurve? = nil,
            startParam: IfcCurveMeasureSelect? = nil,
            endParam: IfcCurveMeasureSelect? = nil,
            referenceSurface: IfcSurface? = nil
        ) {
            self.referenceSurface = referenceSurface
            super.init(
                styledByItem: styledByItem,
                sweptArea: sweptArea,
                position: position,
                directrix: directrix,
                startParam: startParam,
                endParam: endParam
            )
        }
    }
}
