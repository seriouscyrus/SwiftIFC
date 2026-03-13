// IfcSweptDiskSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSweptDiskSolid: IfcSolidModel, @unchecked Sendable {
        public var radius: IfcPositiveLengthMeasure? = nil
        public var innerRadius: IfcPositiveLengthMeasure? = nil
        public var startParam: IfcParameterValue? = nil
        public var endParam: IfcParameterValue? = nil
        public var directrix: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            radius: IfcPositiveLengthMeasure? = nil,
            innerRadius: IfcPositiveLengthMeasure? = nil,
            startParam: IfcParameterValue? = nil,
            endParam: IfcParameterValue? = nil,
            directrix: IfcCurve? = nil
        ) {
            self.radius = radius
            self.innerRadius = innerRadius
            self.startParam = startParam
            self.endParam = endParam
            self.directrix = directrix
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
