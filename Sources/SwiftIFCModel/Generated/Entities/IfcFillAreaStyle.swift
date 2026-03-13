// IfcFillAreaStyle.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFillAreaStyle: IfcPresentationStyle, @unchecked Sendable {
        public var modelOrDraughting: IfcBoolean? = nil
        public var fillStyles: IfcFillStyleSelect

        public init(
            name: IfcLabel? = nil,
            modelOrDraughting: IfcBoolean? = nil,
            fillStyles: IfcFillStyleSelect
        ) {
            self.modelOrDraughting = modelOrDraughting
            self.fillStyles = fillStyles
            super.init(
                name: name
            )
        }
    }
}
