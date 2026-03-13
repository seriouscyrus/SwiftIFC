// IfcTimeSeriesValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTimeSeriesValue: Entity {
        public var listValues: IfcValue

        public init(
            listValues: IfcValue
        ) {
            self.listValues = listValues
            super.init()
        }
    }
}
