// IfcSurfaceReinforcementArea.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceReinforcementArea: IfcStructuralLoadOrResult, @unchecked Sendable {
        public var surfaceReinforcement1: [IfcLengthMeasure] = []
        public var surfaceReinforcement2: [IfcLengthMeasure] = []
        public var shearReinforcement: IfcRatioMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            surfaceReinforcement1: [IfcLengthMeasure] = [],
            surfaceReinforcement2: [IfcLengthMeasure] = [],
            shearReinforcement: IfcRatioMeasure? = nil
        ) {
            self.surfaceReinforcement1 = surfaceReinforcement1
            self.surfaceReinforcement2 = surfaceReinforcement2
            self.shearReinforcement = shearReinforcement
            super.init(
                name: name
            )
        }
    }
}
