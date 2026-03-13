// IfcShellBasedSurfaceModel.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcShellBasedSurfaceModel: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var sbsmBoundary: IfcShell

        public init(
            styledByItem: IfcStyledItem? = nil,
            sbsmBoundary: IfcShell
        ) {
            self.sbsmBoundary = sbsmBoundary
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
