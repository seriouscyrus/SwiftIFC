// IfcAxis2Placement3D.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAxis2Placement3D: IfcPlacement, @unchecked Sendable {
        public var axis: IfcDirection? = nil
        public var refDirection: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            location: IfcPoint? = nil,
            axis: IfcDirection? = nil,
            refDirection: IfcDirection? = nil
        ) {
            self.axis = axis
            self.refDirection = refDirection
            super.init(
                styledByItem: styledByItem,
                location: location
            )
        }
    }
}
