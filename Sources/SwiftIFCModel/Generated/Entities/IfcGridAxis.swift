// IfcGridAxis.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGridAxis: Entity {
        public var axisTag: IfcLabel? = nil
        public var sameSense: IfcBoolean? = nil
        public var axisCurve: IfcCurve? = nil

        public init(
            axisTag: IfcLabel? = nil,
            sameSense: IfcBoolean? = nil,
            axisCurve: IfcCurve? = nil
        ) {
            self.axisTag = axisTag
            self.sameSense = sameSense
            self.axisCurve = axisCurve
            super.init()
        }
    }
}
