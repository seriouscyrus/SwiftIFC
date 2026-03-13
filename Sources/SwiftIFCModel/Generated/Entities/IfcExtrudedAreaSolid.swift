// IfcExtrudedAreaSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcExtrudedAreaSolid: IfcSweptAreaSolid, @unchecked Sendable {
        public var depth: IfcPositiveLengthMeasure? = nil
        public var extrudedDirection: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            depth: IfcPositiveLengthMeasure? = nil,
            extrudedDirection: IfcDirection? = nil
        ) {
            self.depth = depth
            self.extrudedDirection = extrudedDirection
            super.init(
                styledByItem: styledByItem,
                sweptArea: sweptArea,
                position: position
            )
        }
    }
}
