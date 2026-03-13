// IfcStructuralLoadSingleForce.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadSingleForce: IfcStructuralLoadStatic, @unchecked Sendable {
        public var forceX: IfcForceMeasure? = nil
        public var forceY: IfcForceMeasure? = nil
        public var forceZ: IfcForceMeasure? = nil
        public var momentX: IfcTorqueMeasure? = nil
        public var momentY: IfcTorqueMeasure? = nil
        public var momentZ: IfcTorqueMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            forceX: IfcForceMeasure? = nil,
            forceY: IfcForceMeasure? = nil,
            forceZ: IfcForceMeasure? = nil,
            momentX: IfcTorqueMeasure? = nil,
            momentY: IfcTorqueMeasure? = nil,
            momentZ: IfcTorqueMeasure? = nil
        ) {
            self.forceX = forceX
            self.forceY = forceY
            self.forceZ = forceZ
            self.momentX = momentX
            self.momentY = momentY
            self.momentZ = momentZ
            super.init(
                name: name
            )
        }
    }
}
