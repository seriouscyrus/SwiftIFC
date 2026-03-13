// IfcColourRgbList.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcColourRgbList: IfcPresentationItem, @unchecked Sendable {
        public var colourList: [IfcNormalisedRatioMeasure] = []

        public init(
            colourList: [IfcNormalisedRatioMeasure] = []
        ) {
            self.colourList = colourList
            super.init()
        }
    }
}
