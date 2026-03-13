// IfcSweptDiskSolidPolygonal.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSweptDiskSolidPolygonal: IfcSweptDiskSolid, @unchecked Sendable {
        public var filletRadius: IfcNonNegativeLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            radius: IfcPositiveLengthMeasure? = nil,
            innerRadius: IfcPositiveLengthMeasure? = nil,
            startParam: IfcParameterValue? = nil,
            endParam: IfcParameterValue? = nil,
            directrix: IfcCurve? = nil,
            filletRadius: IfcNonNegativeLengthMeasure? = nil
        ) {
            self.filletRadius = filletRadius
            super.init(
                styledByItem: styledByItem,
                radius: radius,
                innerRadius: innerRadius,
                startParam: startParam,
                endParam: endParam,
                directrix: directrix
            )
        }
    }
}
