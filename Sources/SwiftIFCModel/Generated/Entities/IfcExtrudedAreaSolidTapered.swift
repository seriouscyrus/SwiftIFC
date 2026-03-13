// IfcExtrudedAreaSolidTapered.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcExtrudedAreaSolidTapered: IfcExtrudedAreaSolid, @unchecked Sendable {
        public var endSweptArea: IfcProfileDef? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            sweptArea: IfcProfileDef? = nil,
            position: IfcAxis2Placement3D? = nil,
            depth: IfcPositiveLengthMeasure? = nil,
            extrudedDirection: IfcDirection? = nil,
            endSweptArea: IfcProfileDef? = nil
        ) {
            self.endSweptArea = endSweptArea
            super.init(
                styledByItem: styledByItem,
                sweptArea: sweptArea,
                position: position,
                depth: depth,
                extrudedDirection: extrudedDirection
            )
        }
    }
}
