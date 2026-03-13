// IfcCartesianPointList2D.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCartesianPointList2D: IfcCartesianPointList, @unchecked Sendable {
        public var coordList: [IfcLengthMeasure] = []
        public var tagList: [IfcLabel] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            coordList: [IfcLengthMeasure] = [],
            tagList: [IfcLabel] = []
        ) {
            self.coordList = coordList
            self.tagList = tagList
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
