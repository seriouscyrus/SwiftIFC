// IfcTextStyle.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextStyle: IfcPresentationStyle, @unchecked Sendable {
        public var modelOrDraughting: IfcBoolean? = nil
        public var textCharacterAppearance: IfcTextStyleForDefinedFont? = nil
        public var textStyle: IfcTextStyleTextModel? = nil
        public var textFontStyle: IfcTextFontSelect? = nil

        public init(
            name: IfcLabel? = nil,
            modelOrDraughting: IfcBoolean? = nil,
            textCharacterAppearance: IfcTextStyleForDefinedFont? = nil,
            textStyle: IfcTextStyleTextModel? = nil,
            textFontStyle: IfcTextFontSelect? = nil
        ) {
            self.modelOrDraughting = modelOrDraughting
            self.textCharacterAppearance = textCharacterAppearance
            self.textStyle = textStyle
            self.textFontStyle = textFontStyle
            super.init(
                name: name
            )
        }
    }
}
