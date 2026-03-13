// IfcAxis1Placement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAxis1Placement: IfcPlacement, @unchecked Sendable {
        public var axis: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            location: IfcPoint? = nil,
            axis: IfcDirection? = nil
        ) {
            self.axis = axis
            super.init(
                styledByItem: styledByItem,
                location: location
            )
        }
    }
}
