// IfcPlanarBox.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPlanarBox: IfcPlanarExtent, @unchecked Sendable {
        public var placement: IfcAxis2Placement? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sizeInX: IfcLengthMeasure? = nil,
            sizeInY: IfcLengthMeasure? = nil,
            placement: IfcAxis2Placement? = nil
        ) {
            self.placement = placement
            super.init(
                styledByItem: styledByItem,
                sizeInX: sizeInX,
                sizeInY: sizeInY
            )
        }
    }
}
