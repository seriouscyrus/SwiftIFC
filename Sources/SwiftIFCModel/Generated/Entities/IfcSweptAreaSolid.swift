// IfcSweptAreaSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSweptAreaSolid: IfcSolidModel, @unchecked Sendable { // ABSTRACT
        public var sweptArea: IfcProfileDef? = nil
        public var position: IfcAxis2Placement3D? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil
        ) {
            self.sweptArea = sweptArea
            self.position = position
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
