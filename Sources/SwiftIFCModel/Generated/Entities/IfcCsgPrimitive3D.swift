// IfcCsgPrimitive3D.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCsgPrimitive3D: IfcGeometricRepresentationItem, @unchecked Sendable { // ABSTRACT
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
