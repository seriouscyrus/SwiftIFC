// IfcSurfaceCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceCurve: IfcCurve, @unchecked Sendable {
        public var masterRepresentation: IfcPreferredSurfaceCurveRepresentation? = nil
        public var curve3D: IfcCurve? = nil
        public var associatedGeometry: [IfcPcurve] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            masterRepresentation: IfcPreferredSurfaceCurveRepresentation? = nil,
            curve3D: IfcCurve? = nil,
            associatedGeometry: [IfcPcurve] = []
        ) {
            self.masterRepresentation = masterRepresentation
            self.curve3D = curve3D
            self.associatedGeometry = associatedGeometry
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
