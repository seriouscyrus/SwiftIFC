// IfcStructuralLoadLinearForce.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadLinearForce: IfcStructuralLoadStatic, @unchecked Sendable {
        public var linearForceX: IfcLinearForceMeasure? = nil
        public var linearForceY: IfcLinearForceMeasure? = nil
        public var linearForceZ: IfcLinearForceMeasure? = nil
        public var linearMomentX: IfcLinearMomentMeasure? = nil
        public var linearMomentY: IfcLinearMomentMeasure? = nil
        public var linearMomentZ: IfcLinearMomentMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            linearForceX: IfcLinearForceMeasure? = nil,
            linearForceY: IfcLinearForceMeasure? = nil,
            linearForceZ: IfcLinearForceMeasure? = nil,
            linearMomentX: IfcLinearMomentMeasure? = nil,
            linearMomentY: IfcLinearMomentMeasure? = nil,
            linearMomentZ: IfcLinearMomentMeasure? = nil
        ) {
            self.linearForceX = linearForceX
            self.linearForceY = linearForceY
            self.linearForceZ = linearForceZ
            self.linearMomentX = linearMomentX
            self.linearMomentY = linearMomentY
            self.linearMomentZ = linearMomentZ
            super.init(
                name: name
            )
        }
    }
}
