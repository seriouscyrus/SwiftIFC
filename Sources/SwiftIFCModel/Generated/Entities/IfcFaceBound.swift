// IfcFaceBound.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFaceBound: IfcTopologicalRepresentationItem, @unchecked Sendable {
        public var orientation: IfcBoolean? = nil
        public var bound: IfcLoop? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            orientation: IfcBoolean? = nil,
            bound: IfcLoop? = nil
        ) {
            self.orientation = orientation
            self.bound = bound
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
