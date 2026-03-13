// IfcDirection.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDirection: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var directionRatios: [IfcReal] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            directionRatios: [IfcReal] = []
        ) {
            self.directionRatios = directionRatios
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
