// IfcTimeSeriesValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTimeSeriesValue: Entity {
        public var listValues: IfcValue? = nil

        public init(
            listValues: IfcValue? = nil
        ) {
            self.listValues = listValues
            super.init()
        }
    }
}
