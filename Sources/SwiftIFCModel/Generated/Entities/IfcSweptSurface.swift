// IfcSweptSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSweptSurface: IfcSurface, @unchecked Sendable { // ABSTRACT
        public var sweptCurve: IfcProfileDef? = nil
        public var position: IfcAxis2Placement3D? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptCurve: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil
        ) {
            self.sweptCurve = sweptCurve
            self.position = position
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
