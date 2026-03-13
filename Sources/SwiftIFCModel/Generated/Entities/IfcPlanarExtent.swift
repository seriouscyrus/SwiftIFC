// IfcPlanarExtent.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPlanarExtent: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var sizeInX: IfcLengthMeasure? = nil
        public var sizeInY: IfcLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sizeInX: IfcLengthMeasure? = nil,
            sizeInY: IfcLengthMeasure? = nil
        ) {
            self.sizeInX = sizeInX
            self.sizeInY = sizeInY
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
