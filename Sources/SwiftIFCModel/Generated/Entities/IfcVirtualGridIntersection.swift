// IfcVirtualGridIntersection.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcVirtualGridIntersection: Entity {
        public var offsetDistances: [IfcLengthMeasure] = []
        public var intersectingAxes: [IfcGridAxis] = []

        public init(
            offsetDistances: [IfcLengthMeasure] = [],
            intersectingAxes: [IfcGridAxis] = []
        ) {
            self.offsetDistances = offsetDistances
            self.intersectingAxes = intersectingAxes
            super.init()
        }
    }
}
