// IfcColourRgb.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcColourRgb: IfcColourSpecification, @unchecked Sendable {
        public var red: IfcNormalisedRatioMeasure? = nil
        public var green: IfcNormalisedRatioMeasure? = nil
        public var blue: IfcNormalisedRatioMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            red: IfcNormalisedRatioMeasure? = nil,
            green: IfcNormalisedRatioMeasure? = nil,
            blue: IfcNormalisedRatioMeasure? = nil
        ) {
            self.red = red
            self.green = green
            self.blue = blue
            super.init(
                name: name
            )
        }
    }
}
