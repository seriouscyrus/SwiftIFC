// IfcRepresentationItem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRepresentationItem: Entity { // ABSTRACT
        public var styledByItem: IfcStyledItem? = nil

        public init(
            styledByItem: IfcStyledItem? = nil
        ) {
            self.styledByItem = styledByItem
            super.init()
        }
    }
}
