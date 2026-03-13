// IfcSurfaceOfRevolution.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceOfRevolution: IfcSweptSurface, @unchecked Sendable {
        public var axisPosition: IfcAxis1Placement? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptCurve: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            axisPosition: IfcAxis1Placement? = nil
        ) {
            self.axisPosition = axisPosition
            super.init(
                styledByItem: styledByItem,
                sweptCurve: sweptCurve,
                position: position
            )
        }
    }
}
