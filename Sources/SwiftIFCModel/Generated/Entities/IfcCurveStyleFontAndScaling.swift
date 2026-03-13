// IfcCurveStyleFontAndScaling.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveStyleFontAndScaling: IfcPresentationItem, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var curveFontScaling: IfcPositiveRatioMeasure? = nil
        public var curveStyleFont: IfcCurveStyleFontSelect

        public init(
            name: IfcLabel? = nil,
            curveFontScaling: IfcPositiveRatioMeasure? = nil,
            curveStyleFont: IfcCurveStyleFontSelect
        ) {
            self.name = name
            self.curveFontScaling = curveFontScaling
            self.curveStyleFont = curveStyleFont
            super.init()
        }
    }
}
