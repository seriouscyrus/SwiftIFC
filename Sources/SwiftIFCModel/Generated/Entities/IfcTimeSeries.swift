// IfcTimeSeries.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTimeSeries: Entity { // ABSTRACT
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var startTime: IfcDateTime? = nil
        public var endTime: IfcDateTime? = nil
        public var timeSeriesDataType: IfcTimeSeriesDataTypeEnum? = nil
        public var dataOrigin: IfcDataOriginEnum? = nil
        public var userDefinedDataOrigin: IfcLabel? = nil
        public var unit: IfcUnit? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            startTime: IfcDateTime? = nil,
            endTime: IfcDateTime? = nil,
            timeSeriesDataType: IfcTimeSeriesDataTypeEnum? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            unit: IfcUnit? = nil
        ) {
            self.name = name
            self.description = description
            self.startTime = startTime
            self.endTime = endTime
            self.timeSeriesDataType = timeSeriesDataType
            self.dataOrigin = dataOrigin
            self.userDefinedDataOrigin = userDefinedDataOrigin
            self.unit = unit
            super.init()
        }
    }
}
