// IfcStyledItem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStyledItem: IfcRepresentationItem, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var styles: [IfcPresentationStyle] = []
        public var item: IfcRepresentationItem? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            name: IfcLabel? = nil,
            styles: [IfcPresentationStyle] = [],
            item: IfcRepresentationItem? = nil
        ) {
            self.name = name
            self.styles = styles
            self.item = item
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
