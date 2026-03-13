// IfcCurveStyleFont.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCurveStyleFont: IfcPresentationItem, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var patternList: [IfcCurveStyleFontPattern] = []

        public init(
            name: IfcLabel? = nil,
            patternList: [IfcCurveStyleFontPattern] = []
        ) {
            self.name = name
            self.patternList = patternList
            super.init()
        }
    }
}
