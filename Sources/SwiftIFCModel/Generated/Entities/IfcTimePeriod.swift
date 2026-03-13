// IfcTimePeriod.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTimePeriod: Entity {
        public var startTime: IfcTime? = nil
        public var endTime: IfcTime? = nil

        public init(
            startTime: IfcTime? = nil,
            endTime: IfcTime? = nil
        ) {
            self.startTime = startTime
            self.endTime = endTime
            super.init()
        }
    }
}
