// IfcTaskTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTaskTime: IfcSchedulingTime, @unchecked Sendable {
        public var durationType: IfcTaskDurationEnum? = nil
        public var scheduleDuration: IfcDuration? = nil
        public var scheduleStart: IfcDateTime? = nil
        public var scheduleFinish: IfcDateTime? = nil
        public var earlyStart: IfcDateTime? = nil
        public var earlyFinish: IfcDateTime? = nil
        public var lateStart: IfcDateTime? = nil
        public var lateFinish: IfcDateTime? = nil
        public var freeFloat: IfcDuration? = nil
        public var totalFloat: IfcDuration? = nil
        public var isCritical: IfcBoolean? = nil
        public var statusTime: IfcDateTime? = nil
        public var actualDuration: IfcDuration? = nil
        public var actualStart: IfcDateTime? = nil
        public var actualFinish: IfcDateTime? = nil
        public var remainingTime: IfcDuration? = nil
        public var completion: IfcPositiveRatioMeasure? = nil

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
            completion: IfcPositiveRatioMeasure? = nil
        ) {
            self.durationType = durationType
            self.scheduleDuration = scheduleDuration
            self.scheduleStart = scheduleStart
            self.scheduleFinish = scheduleFinish
            self.earlyStart = earlyStart
            self.earlyFinish = earlyFinish
            self.lateStart = lateStart
            self.lateFinish = lateFinish
            self.freeFloat = freeFloat
            self.totalFloat = totalFloat
            self.isCritical = isCritical
            self.statusTime = statusTime
            self.actualDuration = actualDuration
            self.actualStart = actualStart
            self.actualFinish = actualFinish
            self.remainingTime = remainingTime
            self.completion = completion
            super.init(
                name: name,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin
            )
        }
    }
}
