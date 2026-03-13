// IfcSectionedSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSectionedSolid: IfcSolidModel, @unchecked Sendable { // ABSTRACT
        public var directrix: IfcCurve? = nil
        public var crossSections: [IfcProfileDef] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            directrix: IfcCurve? = nil,
            crossSections: [IfcProfileDef] = []
        ) {
            self.directrix = directrix
            self.crossSections = crossSections
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
