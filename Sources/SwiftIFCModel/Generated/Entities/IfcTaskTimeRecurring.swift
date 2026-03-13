// IfcTaskTimeRecurring.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTaskTimeRecurring: IfcTaskTime, @unchecked Sendable {
        public var recurrence: IfcRecurrencePattern? = nil

        public init(
            name: IfcLabel? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            durationType: IfcTaskDurationEnum? = nil,
            scheduleDuration: IfcDuration? = nil,
            scheduleStart: IfcDateTime? = nil,
            scheduleFinish: IfcDateTime? = nil,
            earlyStart: IfcDateTime? = nil,
            earlyFinish: IfcDateTime? = nil,
            lateStart: IfcDateTime? = nil,
            lateFinish: IfcDateTime? = nil,
            freeFloat: IfcDuration? = nil,
            totalFloat: IfcDuration? = nil,
            isCritical: IfcBoolean? = nil,
            statusTime: IfcDateTime? = nil,
            actualDuration: IfcDuration? = nil,
            actualStart: IfcDateTime? = nil,
            actualFinish: IfcDateTime? = nil,
            remainingTime: IfcDuration? = nil,
            completion: IfcPositiveRatioMeasure? = nil,
            recurrence: IfcRecurrencePattern? = nil
        ) {
            self.recurrence = recurrence
            super.init(
                name: name,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin,
                durationType: durationType,
                scheduleDuration: scheduleDuration,
                scheduleStart: scheduleStart,
                scheduleFinish: scheduleFinish,
                earlyStart: earlyStart,
                earlyFinish: earlyFinish,
                lateStart: lateStart,
                lateFinish: lateFinish,
                freeFloat: freeFloat,
                totalFloat: totalFloat,
                isCritical: isCritical,
                statusTime: statusTime,
                actualDuration: actualDuration,
                actualStart: actualStart,
                actualFinish: actualFinish,
                remainingTime: remainingTime,
                completion: completion
            )
        }
    }
}
