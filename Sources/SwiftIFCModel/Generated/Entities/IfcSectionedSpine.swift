// IfcSectionedSpine.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSectionedSpine: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var spineCurve: IfcCompositeCurve? = nil
        public var crossSections: [IfcProfileDef] = []
        public var crossSectionPositions: [IfcAxis2Placement3D] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            spineCurve: IfcCompositeCurve? = nil,
            crossSections: [IfcProfileDef] = [],
            crossSectionPositions: [IfcAxis2Placement3D] = []
        ) {
            self.spineCurve = spineCurve
            self.crossSections = crossSections
            self.crossSectionPositions = crossSectionPositions
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
