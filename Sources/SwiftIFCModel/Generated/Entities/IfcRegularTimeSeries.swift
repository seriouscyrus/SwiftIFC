// IfcRegularTimeSeries.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRegularTimeSeries: IfcTimeSeries, @unchecked Sendable {
        public var timeStep: IfcTimeMeasure? = nil
        public var values: [IfcTimeSeriesValue] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            startTime: IfcDateTime? = nil,
            endTime: IfcDateTime? = nil,
            timeSeriesDataType: IfcTimeSeriesDataTypeEnum? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            unit: IfcUnit? = nil,
            timeStep: IfcTimeMeasure? = nil,
            values: [IfcTimeSeriesValue] = []
        ) {
            self.timeStep = timeStep
            self.values = values
            super.init(
                name: name,
                description: description,
                startTime: startTime,
                endTime: endTime,
                timeSeriesDataType: timeSeriesDataType,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin,
                unit: unit
            )
        }
    }
}
