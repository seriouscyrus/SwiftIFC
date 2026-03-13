// IfcAxis2Placement2D.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAxis2Placement2D: IfcPlacement, @unchecked Sendable {
        public var refDirection: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            location: IfcPoint? = nil,
            refDirection: IfcDirection? = nil
        ) {
            self.refDirection = refDirection
            super.init(
                styledByItem: styledByItem,
                location: location
            )
        }
    }
}
