// IfcFacetedBrepWithVoids.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFacetedBrepWithVoids: IfcFacetedBrep, @unchecked Sendable {
        public var voids: [IfcClosedShell] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            outer: IfcClosedShell? = nil,
            voids: [IfcClosedShell] = []
        ) {
            self.voids = voids
            super.init(
                styledByItem: styledByItem,
                outer: outer
            )
        }
    }
}
