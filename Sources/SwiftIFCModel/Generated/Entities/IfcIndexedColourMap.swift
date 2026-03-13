// IfcIndexedColourMap.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIndexedColourMap: IfcPresentationItem, @unchecked Sendable {
        public var opacity: IfcNormalisedRatioMeasure? = nil
        public var colourIndex: [IfcPositiveInteger] = []
        public var colours: IfcColourRgbList? = nil

        public init(
            opacity: IfcNormalisedRatioMeasure? = nil,
            colourIndex: [IfcPositiveInteger] = [],
            colours: IfcColourRgbList? = nil
        ) {
            self.opacity = opacity
            self.colourIndex = colourIndex
            self.colours = colours
            super.init()
        }
    }
}
