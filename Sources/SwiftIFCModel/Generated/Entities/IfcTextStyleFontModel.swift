// IfcTextStyleFontModel.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextStyleFontModel: IfcPreDefinedTextFont, @unchecked Sendable {
        public var fontStyle: IfcFontStyle? = nil
        public var fontVariant: IfcFontVariant? = nil
        public var fontWeight: IfcFontWeight? = nil
        public var fontFamily: [IfcTextFontName] = []
        public var fontSize: IfcSizeSelect? = nil

        public init(
            name: IfcLabel? = nil,
            fontStyle: IfcFontStyle? = nil,
            fontVariant: IfcFontVariant? = nil,
            fontWeight: IfcFontWeight? = nil,
            fontFamily: [IfcTextFontName] = [],
            fontSize: IfcSizeSelect? = nil
        ) {
            self.fontStyle = fontStyle
            self.fontVariant = fontVariant
            self.fontWeight = fontWeight
            self.fontFamily = fontFamily
            self.fontSize = fontSize
            super.init(
                name: name
            )
        }
    }
}
