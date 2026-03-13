// IfcRecurrencePattern.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRecurrencePattern: Entity {
        public var recurrenceType: IfcRecurrenceTypeEnum? = nil
        public var dayComponent: [IfcDayInMonthNumber] = []
        public var weekdayComponent: [IfcDayInWeekNumber] = []
        public var monthComponent: [IfcMonthInYearNumber] = []
        public var position: IfcInteger? = nil
        public var interval: IfcInteger? = nil
        public var occurrences: IfcInteger? = nil
        public var timePeriods: [IfcTimePeriod] = []

        public init(
            recurrenceType: IfcRecurrenceTypeEnum? = nil,
            dayComponent: [IfcDayInMonthNumber] = [],
            weekdayComponent: [IfcDayInWeekNumber] = [],
            monthComponent: [IfcMonthInYearNumber] = [],
            position: IfcInteger? = nil,
            interval: IfcInteger? = nil,
            occurrences: IfcInteger? = nil,
            timePeriods: [IfcTimePeriod] = []
        ) {
            self.recurrenceType = recurrenceType
            self.dayComponent = dayComponent
            self.weekdayComponent = weekdayComponent
            self.monthComponent = monthComponent
            self.position = position
            self.interval = interval
            self.occurrences = occurrences
            self.timePeriods = timePeriods
            super.init()
        }
    }
}
