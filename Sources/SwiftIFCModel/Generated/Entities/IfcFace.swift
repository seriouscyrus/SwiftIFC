// IfcFace.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFace: IfcTopologicalRepresentationItem, @unchecked Sendable {
        public var bounds: [IfcFaceBound] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            bounds: [IfcFaceBound] = []
        ) {
            self.bounds = bounds
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
