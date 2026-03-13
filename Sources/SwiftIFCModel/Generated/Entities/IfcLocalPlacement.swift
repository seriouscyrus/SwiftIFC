// IfcLocalPlacement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLocalPlacement: IfcObjectPlacement, @unchecked Sendable {
        public var relativePlacement: IfcAxis2Placement

        public init(
            placementRelTo: IfcObjectPlacement? = nil,
            relativePlacement: IfcAxis2Placement
        ) {
            self.relativePlacement = relativePlacement
            super.init(
                placementRelTo: placementRelTo
            )
        }
    }
}
