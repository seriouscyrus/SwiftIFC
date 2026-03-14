// IfcTextLiteral.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextLiteral: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var literal: IfcPresentableText? = nil
        public var path: IfcTextPath? = nil
        public var placement: IfcAxis2Placement? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            literal: IfcPresentableText? = nil,
            path: IfcTextPath? = nil,
            placement: IfcAxis2Placement? = nil
        ) {
            self.literal = literal
            self.path = path
            self.placement = placement
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
