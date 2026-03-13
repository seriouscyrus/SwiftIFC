// IfcPointOnSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPointOnSurface: IfcPoint, @unchecked Sendable {
        public var pointParameterU: IfcParameterValue? = nil
        public var pointParameterV: IfcParameterValue? = nil
        public var basisSurface: IfcSurface? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            pointParameterU: IfcParameterValue? = nil,
            pointParameterV: IfcParameterValue? = nil,
            basisSurface: IfcSurface? = nil
        ) {
            self.pointParameterU = pointParameterU
            self.pointParameterV = pointParameterV
            self.basisSurface = basisSurface
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
