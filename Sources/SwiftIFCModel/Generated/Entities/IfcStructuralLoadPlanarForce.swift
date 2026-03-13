// IfcStructuralLoadPlanarForce.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadPlanarForce: IfcStructuralLoadStatic, @unchecked Sendable {
        public var planarForceX: IfcPlanarForceMeasure? = nil
        public var planarForceY: IfcPlanarForceMeasure? = nil
        public var planarForceZ: IfcPlanarForceMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            planarForceX: IfcPlanarForceMeasure? = nil,
            planarForceY: IfcPlanarForceMeasure? = nil,
            planarForceZ: IfcPlanarForceMeasure? = nil
        ) {
            self.planarForceX = planarForceX
            self.planarForceY = planarForceY
            self.planarForceZ = planarForceZ
            super.init(
                name: name
            )
        }
    }
}
