// IfcDirectrixCurveSweptAreaSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDirectrixCurveSweptAreaSolid: IfcSweptAreaSolid, @unchecked Sendable { // ABSTRACT
        public var directrix: IfcCurve? = nil
        public var startParam: IfcCurveMeasureSelect? = nil
        public var endParam: IfcCurveMeasureSelect? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            directrix: IfcCurve? = nil,
            startParam: IfcCurveMeasureSelect? = nil,
            endParam: IfcCurveMeasureSelect? = nil
        ) {
            self.directrix = directrix
            self.startParam = startParam
            self.endParam = endParam
            super.init(
                styledByItem: styledByItem,
                sweptArea: sweptArea,
                position: position
            )
        }
    }
}
