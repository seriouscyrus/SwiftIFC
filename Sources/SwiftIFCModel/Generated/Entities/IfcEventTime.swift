// IfcEventTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEventTime: IfcSchedulingTime, @unchecked Sendable {
        public var actualDate: IfcDateTime? = nil
        public var earlyDate: IfcDateTime? = nil
        public var lateDate: IfcDateTime? = nil
        public var scheduleDate: IfcDateTime? = nil

        public init(
            name: IfcLabel? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            actualDate: IfcDateTime? = nil,
            earlyDate: IfcDateTime? = nil,
            lateDate: IfcDateTime? = nil,
            scheduleDate: IfcDateTime? = nil
        ) {
            self.actualDate = actualDate
            self.earlyDate = earlyDate
            self.lateDate = lateDate
            self.scheduleDate = scheduleDate
            super.init(
                name: name,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin
            )
        }
    }
}
