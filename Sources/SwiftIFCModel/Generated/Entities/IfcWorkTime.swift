// IfcWorkTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWorkTime: IfcSchedulingTime, @unchecked Sendable {
        public var startDate: IfcDate? = nil
        public var finishDate: IfcDate? = nil
        public var recurrencePattern: IfcRecurrencePattern? = nil

        public init(
            name: IfcLabel? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            startDate: IfcDate? = nil,
            finishDate: IfcDate? = nil,
            recurrencePattern: IfcRecurrencePattern? = nil
        ) {
            self.startDate = startDate
            self.finishDate = finishDate
            self.recurrencePattern = recurrencePattern
            super.init(
                name: name,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin
            )
        }
    }
}
