// IfcElementarySurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcElementarySurface: IfcSurface, @unchecked Sendable { // ABSTRACT
        public var position: IfcAxis2Placement3D? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement3D? = nil
        ) {
            self.position = position
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
