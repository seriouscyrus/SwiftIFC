// IfcCartesianPoint.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCartesianPoint: IfcPoint, @unchecked Sendable {
        public var coordinates: [IfcLengthMeasure] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordinates: [IfcLengthMeasure] = []
        ) {
            self.coordinates = coordinates
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
