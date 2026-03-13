// IfcResourceTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcResourceTime: IfcSchedulingTime, @unchecked Sendable {
        public var scheduleWork: IfcDuration? = nil
        public var scheduleUsage: IfcPositiveRatioMeasure? = nil
        public var scheduleStart: IfcDateTime? = nil
        public var scheduleFinish: IfcDateTime? = nil
        public var scheduleContour: IfcLabel? = nil
        public var levelingDelay: IfcDuration? = nil
        public var isOverAllocated: IfcBoolean? = nil
        public var statusTime: IfcDateTime? = nil
        public var actualWork: IfcDuration? = nil
        public var actualUsage: IfcPositiveRatioMeasure? = nil
        public var actualStart: IfcDateTime? = nil
        public var actualFinish: IfcDateTime? = nil
        public var remainingWork: IfcDuration? = nil
        public var remainingUsage: IfcPositiveRatioMeasure? = nil
        public var completion: IfcPositiveRatioMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            scheduleWork: IfcDuration? = nil,
            scheduleUsage: IfcPositiveRatioMeasure? = nil,
            scheduleStart: IfcDateTime? = nil,
            scheduleFinish: IfcDateTime? = nil,
            scheduleContour: IfcLabel? = nil,
            levelingDelay: IfcDuration? = nil,
            isOverAllocated: IfcBoolean? = nil,
            statusTime: IfcDateTime? = nil,
            actualWork: IfcDuration? = nil,
            actualUsage: IfcPositiveRatioMeasure? = nil,
            actualStart: IfcDateTime? = nil,
            actualFinish: IfcDateTime? = nil,
            remainingWork: IfcDuration? = nil,
            remainingUsage: IfcPositiveRatioMeasure? = nil,
            completion: IfcPositiveRatioMeasure? = nil
        ) {
            self.scheduleWork = scheduleWork
            self.scheduleUsage = scheduleUsage
            self.scheduleStart = scheduleStart
            self.scheduleFinish = scheduleFinish
            self.scheduleContour = scheduleContour
            self.levelingDelay = levelingDelay
            self.isOverAllocated = isOverAllocated
            self.statusTime = statusTime
            self.actualWork = actualWork
            self.actualUsage = actualUsage
            self.actualStart = actualStart
            self.actualFinish = actualFinish
            self.remainingWork = remainingWork
            self.remainingUsage = remainingUsage
            self.completion = completion
            super.init(
                name: name,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin
            )
        }
    }
}
