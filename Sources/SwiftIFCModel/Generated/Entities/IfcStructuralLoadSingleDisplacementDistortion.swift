// IfcStructuralLoadSingleDisplacementDistortion.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadSingleDisplacementDistortion: IfcStructuralLoadSingleDisplacement, @unchecked Sendable {
        public var distortion: IfcCurvatureMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            displacementX: IfcLengthMeasure? = nil,
            displacementY: IfcLengthMeasure? = nil,
            displacementZ: IfcLengthMeasure? = nil,
            rotationalDisplacementRX: IfcPlaneAngleMeasure? = nil,
            rotationalDisplacementRY: IfcPlaneAngleMeasure? = nil,
            rotationalDisplacementRZ: IfcPlaneAngleMeasure? = nil,
            distortion: IfcCurvatureMeasure? = nil
        ) {
            self.distortion = distortion
            super.init(
                name: name,
                displacementX: displacementX,
                displacementY: displacementY,
                displacementZ: displacementZ,
                rotationalDisplacementRX: rotationalDisplacementRX,
                rotationalDisplacementRY: rotationalDisplacementRY,
                rotationalDisplacementRZ: rotationalDisplacementRZ
            )
        }
    }
}
