// IfcGridPlacement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGridPlacement: IfcObjectPlacement, @unchecked Sendable {
        public var placementLocation: IfcVirtualGridIntersection? = nil
        public var placementRefDirection: IfcGridPlacementDirectionSelect? = nil

        public init(
            placementRelTo: IfcObjectPlacement? = nil,
            placementLocation: IfcVirtualGridIntersection? = nil,
            placementRefDirection: IfcGridPlacementDirectionSelect? = nil
        ) {
            self.placementLocation = placementLocation
            self.placementRefDirection = placementRefDirection
            super.init(
                placementRelTo: placementRelTo
            )
        }
    }
}
