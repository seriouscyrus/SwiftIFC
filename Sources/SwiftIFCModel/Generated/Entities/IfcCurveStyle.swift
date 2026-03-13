// IfcCurveStyle.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveStyle: IfcPresentationStyle, @unchecked Sendable {
        public var modelOrDraughting: IfcBoolean? = nil
        public var curveFont: IfcCurveFontOrScaledCurveFontSelect? = nil
        public var curveWidth: IfcSizeSelect? = nil
        public var curveColour: IfcColour? = nil

        public init(
            name: IfcLabel? = nil,
            modelOrDraughting: IfcBoolean? = nil,
            curveFont: IfcCurveFontOrScaledCurveFontSelect? = nil,
            curveWidth: IfcSizeSelect? = nil,
            curveColour: IfcColour? = nil
        ) {
            self.modelOrDraughting = modelOrDraughting
            self.curveFont = curveFont
            self.curveWidth = curveWidth
            self.curveColour = curveColour
            super.init(
                name: name
            )
        }
    }
}
