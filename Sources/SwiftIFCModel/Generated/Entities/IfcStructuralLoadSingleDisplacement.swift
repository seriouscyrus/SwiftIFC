// IfcStructuralLoadSingleDisplacement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadSingleDisplacement: IfcStructuralLoadStatic, @unchecked Sendable {
        public var displacementX: IfcLengthMeasure? = nil
        public var displacementY: IfcLengthMeasure? = nil
        public var displacementZ: IfcLengthMeasure? = nil
        public var rotationalDisplacementRX: IfcPlaneAngleMeasure? = nil
        public var rotationalDisplacementRY: IfcPlaneAngleMeasure? = nil
        public var rotationalDisplacementRZ: IfcPlaneAngleMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            displacementX: IfcLengthMeasure? = nil,
            displacementY: IfcLengthMeasure? = nil,
            displacementZ: IfcLengthMeasure? = nil,
            rotationalDisplacementRX: IfcPlaneAngleMeasure? = nil,
            rotationalDisplacementRY: IfcPlaneAngleMeasure? = nil,
            rotationalDisplacementRZ: IfcPlaneAngleMeasure? = nil
        ) {
            self.displacementX = displacementX
            self.displacementY = displacementY
            self.displacementZ = displacementZ
            self.rotationalDisplacementRX = rotationalDisplacementRX
            self.rotationalDisplacementRY = rotationalDisplacementRY
            self.rotationalDisplacementRZ = rotationalDisplacementRZ
            super.init(
                name: name
            )
        }
    }
}
