// IfcIrregularTimeSeriesValue.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIrregularTimeSeriesValue: Entity {
        public var timeStamp: IfcDateTime? = nil
        public var listValues: IfcValue? = nil

        public init(
            timeStamp: IfcDateTime? = nil,
            listValues: IfcValue? = nil
        ) {
            self.timeStamp = timeStamp
            self.listValues = listValues
            super.init()
        }
    }
}
