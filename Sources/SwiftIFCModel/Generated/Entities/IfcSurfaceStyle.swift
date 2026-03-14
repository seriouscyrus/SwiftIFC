// IfcSurfaceStyle.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceStyle: IfcPresentationStyle, @unchecked Sendable {
        public var side: IfcSurfaceSide? = nil
        public var styles: IfcSurfaceStyleElementSelect? = nil

        public init(
            name: IfcLabel? = nil,
            side: IfcSurfaceSide? = nil,
            styles: IfcSurfaceStyleElementSelect? = nil
        ) {
            self.side = side
            self.styles = styles
            super.init(
                name: name
            )
        }
    }
}
