// IfcLagTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLagTime: IfcSchedulingTime, @unchecked Sendable {
        public var durationType: IfcTaskDurationEnum? = nil
        public var lagValue: IfcTimeOrRatioSelect? = nil

        public init(
            name: IfcLabel? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil,
            durationType: IfcTaskDurationEnum? = nil,
            lagValue: IfcTimeOrRatioSelect? = nil
        ) {
            self.durationType = durationType
            self.lagValue = lagValue
            super.init(
                name: name,
                dataOrigin: dataOrigin,
                userDefinedDataOrigin: userDefinedDataOrigin
            )
        }
    }
}
