// IfcTextStyleForDefinedFont.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextStyleForDefinedFont: IfcPresentationItem, @unchecked Sendable {
        public var colour: IfcColour
        public var backgroundColour: IfcColour? = nil

        public init(
            colour: IfcColour,
            backgroundColour: IfcColour? = nil
        ) {
            self.colour = colour
            self.backgroundColour = backgroundColour
            super.init()
        }
    }
}
