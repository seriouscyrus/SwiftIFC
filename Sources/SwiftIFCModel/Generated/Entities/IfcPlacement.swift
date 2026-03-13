// IfcPlacement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPlacement: IfcGeometricRepresentationItem, @unchecked Sendable { // ABSTRACT
        public var location: IfcPoint? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            location: IfcPoint? = nil
        ) {
            self.location = location
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
