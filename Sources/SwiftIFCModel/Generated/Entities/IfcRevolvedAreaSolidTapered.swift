// IfcRevolvedAreaSolidTapered.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRevolvedAreaSolidTapered: IfcRevolvedAreaSolid, @unchecked Sendable {
        public var endSweptArea: IfcProfileDef? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            angle: IfcPlaneAngleMeasure? = nil,
            axis: IfcAxis1Placement? = nil,
            endSweptArea: IfcProfileDef? = nil
        ) {
            self.endSweptArea = endSweptArea
            super.init(
                styledByItem: styledByItem,
                sweptArea: sweptArea,
                position: position,
                angle: angle,
                axis: axis
            )
        }
    }
}
