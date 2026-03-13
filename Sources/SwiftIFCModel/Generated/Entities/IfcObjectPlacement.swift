// IfcObjectPlacement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcObjectPlacement: Entity { // ABSTRACT
        public var placementRelTo: IfcObjectPlacement? = nil

        public init(
            placementRelTo: IfcObjectPlacement? = nil
        ) {
            self.placementRelTo = placementRelTo
            super.init()
        }
    }
}
