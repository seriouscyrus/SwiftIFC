// IfcTextLiteralWithExtent.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextLiteralWithExtent: IfcTextLiteral, @unchecked Sendable {
        public var boxAlignment: IfcBoxAlignment? = nil
        public var extent: IfcPlanarExtent? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            literal: IfcPresentableText? = nil,
            path: IfcTextPath? = nil,
            placement: IfcAxis2Placement? = nil,
            boxAlignment: IfcBoxAlignment? = nil,
            extent: IfcPlanarExtent? = nil
        ) {
            self.boxAlignment = boxAlignment
            self.extent = extent
            super.init(
                styledByItem: styledByItem,
                literal: literal,
                path: path,
                placement: placement
            )
        }
    }
}
