// IfcFixedReferenceSweptAreaSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFixedReferenceSweptAreaSolid: IfcDirectrixCurveSweptAreaSolid, @unchecked Sendable {
        public var fixedReference: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            directrix: IfcCurve? = nil,
            startParam: IfcCurveMeasureSelect? = nil,
            endParam: IfcCurveMeasureSelect? = nil,
            fixedReference: IfcDirection? = nil
        ) {
            self.fixedReference = fixedReference
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
