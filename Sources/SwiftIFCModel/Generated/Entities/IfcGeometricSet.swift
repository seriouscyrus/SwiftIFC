// IfcGeometricSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGeometricSet: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var elements: IfcGeometricSetSelect

        public init(
            styledByItem: IfcStyledItem? = nil,
            elements: IfcGeometricSetSelect
        ) {
            self.elements = elements
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
