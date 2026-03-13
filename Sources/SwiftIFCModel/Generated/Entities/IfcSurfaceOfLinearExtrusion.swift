// IfcSurfaceOfLinearExtrusion.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceOfLinearExtrusion: IfcSweptSurface, @unchecked Sendable {
        public var depth: IfcLengthMeasure? = nil
        public var extrudedDirection: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptCurve: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            depth: IfcLengthMeasure? = nil,
            extrudedDirection: IfcDirection? = nil
        ) {
            self.depth = depth
            self.extrudedDirection = extrudedDirection
            super.init(
                styledByItem: styledByItem,
                sweptCurve: sweptCurve,
                position: position
            )
        }
    }
}
