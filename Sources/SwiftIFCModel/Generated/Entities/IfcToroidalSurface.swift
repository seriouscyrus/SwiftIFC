// IfcToroidalSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcToroidalSurface: IfcElementarySurface, @unchecked Sendable {
        public var majorRadius: IfcPositiveLengthMeasure? = nil
        public var minorRadius: IfcPositiveLengthMeasure? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            position: IfcAxis2Placement3D? = nil,
            majorRadius: IfcPositiveLengthMeasure? = nil,
            minorRadius: IfcPositiveLengthMeasure? = nil
        ) {
            self.majorRadius = majorRadius
            self.minorRadius = minorRadius
            super.init(
                styledByItem: styledByItem,
                position: position
            )
        }
    }
}
