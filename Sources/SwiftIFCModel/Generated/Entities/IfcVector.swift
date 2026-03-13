// IfcVector.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcVector: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var magnitude: IfcLengthMeasure? = nil
        public var orientation: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            magnitude: IfcLengthMeasure? = nil,
            orientation: IfcDirection? = nil
        ) {
            self.magnitude = magnitude
            self.orientation = orientation
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
