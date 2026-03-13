// IfcStyledItem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStyledItem: IfcRepresentationItem, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var styles: [IfcPresentationStyle] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            name: IfcLabel? = nil,
            styles: [IfcPresentationStyle] = []
        ) {
            self.name = name
            self.styles = styles
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
