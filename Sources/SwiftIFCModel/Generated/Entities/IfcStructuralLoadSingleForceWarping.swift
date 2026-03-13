// IfcStructuralLoadSingleForceWarping.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadSingleForceWarping: IfcStructuralLoadSingleForce, @unchecked Sendable {
        public var warpingMoment: IfcWarpingMomentMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            forceX: IfcForceMeasure? = nil,
            forceY: IfcForceMeasure? = nil,
            forceZ: IfcForceMeasure? = nil,
            momentX: IfcTorqueMeasure? = nil,
            momentY: IfcTorqueMeasure? = nil,
            momentZ: IfcTorqueMeasure? = nil,
            warpingMoment: IfcWarpingMomentMeasure? = nil
        ) {
            self.warpingMoment = warpingMoment
            super.init(
                name: name,
                forceX: forceX,
                forceY: forceY,
                forceZ: forceZ,
                momentX: momentX,
                momentY: momentY,
                momentZ: momentZ
            )
        }
    }
}
