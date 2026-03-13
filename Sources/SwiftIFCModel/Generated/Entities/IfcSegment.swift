// IfcSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSegment: IfcGeometricRepresentationItem, @unchecked Sendable { // ABSTRACT
        public var transition: IfcTransitionCode? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            transition: IfcTransitionCode? = nil
        ) {
            self.transition = transition
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
