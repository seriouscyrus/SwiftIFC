// IfcTextStyleTextModel.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextStyleTextModel: IfcPresentationItem, @unchecked Sendable {
        public var textAlign: IfcTextAlignment? = nil
        public var textDecoration: IfcTextDecoration? = nil
        public var textTransform: IfcTextTransformation? = nil
        public var textIndent: IfcSizeSelect? = nil
        public var letterSpacing: IfcSizeSelect? = nil
        public var wordSpacing: IfcSizeSelect? = nil
        public var lineHeight: IfcSizeSelect? = nil

        public init(
            textAlign: IfcTextAlignment? = nil,
            textDecoration: IfcTextDecoration? = nil,
            textTransform: IfcTextTransformation? = nil,
            textIndent: IfcSizeSelect? = nil,
            letterSpacing: IfcSizeSelect? = nil,
            wordSpacing: IfcSizeSelect? = nil,
            lineHeight: IfcSizeSelect? = nil
        ) {
            self.textAlign = textAlign
            self.textDecoration = textDecoration
            self.textTransform = textTransform
            self.textIndent = textIndent
            self.letterSpacing = letterSpacing
            self.wordSpacing = wordSpacing
            self.lineHeight = lineHeight
            super.init()
        }
    }
}
