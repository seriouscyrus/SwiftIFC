// IfcPolyLoop.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPolyLoop: IfcLoop, @unchecked Sendable {
        public var polygon: [IfcCartesianPoint] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            polygon: [IfcCartesianPoint] = []
        ) {
            self.polygon = polygon
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
