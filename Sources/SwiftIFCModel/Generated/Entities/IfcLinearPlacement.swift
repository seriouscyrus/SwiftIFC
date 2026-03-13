// IfcLinearPlacement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLinearPlacement: IfcObjectPlacement, @unchecked Sendable {
        public var relativePlacement: IfcAxis2PlacementLinear? = nil
        public var cartesianPosition: IfcAxis2Placement3D? = nil

        public init(
            placementRelTo: IfcObjectPlacement? = nil,
            relativePlacement: IfcAxis2PlacementLinear? = nil,
            cartesianPosition: IfcAxis2Placement3D? = nil
        ) {
            self.relativePlacement = relativePlacement
            self.cartesianPosition = cartesianPosition
            super.init(
                placementRelTo: placementRelTo
            )
        }
    }
}
