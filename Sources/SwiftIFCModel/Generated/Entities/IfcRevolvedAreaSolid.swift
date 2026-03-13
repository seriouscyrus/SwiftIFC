// IfcRevolvedAreaSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRevolvedAreaSolid: IfcSweptAreaSolid, @unchecked Sendable {
        public var angle: IfcPlaneAngleMeasure? = nil
        public var axis: IfcAxis1Placement? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            angle: IfcPlaneAngleMeasure? = nil,
            axis: IfcAxis1Placement? = nil
        ) {
            self.angle = angle
            self.axis = axis
            super.init(
                styledByItem: styledByItem,
                sweptArea: sweptArea,
                position: position
            )
        }
    }
}
