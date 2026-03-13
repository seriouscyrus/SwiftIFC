// IfcBoundaryNodeConditionWarping.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBoundaryNodeConditionWarping: IfcBoundaryNodeCondition, @unchecked Sendable {
        public var warpingStiffness: IfcWarpingStiffnessSelect? = nil

        public init(
            name: IfcLabel? = nil,
            translationalStiffnessX: IfcTranslationalStiffnessSelect? = nil,
            translationalStiffnessY: IfcTranslationalStiffnessSelect? = nil,
            translationalStiffnessZ: IfcTranslationalStiffnessSelect? = nil,
            rotationalStiffnessX: IfcRotationalStiffnessSelect? = nil,
            rotationalStiffnessY: IfcRotationalStiffnessSelect? = nil,
            rotationalStiffnessZ: IfcRotationalStiffnessSelect? = nil,
            warpingStiffness: IfcWarpingStiffnessSelect? = nil
        ) {
            self.warpingStiffness = warpingStiffness
            super.init(
                name: name,
                translationalStiffnessX: translationalStiffnessX,
                translationalStiffnessY: translationalStiffnessY,
                translationalStiffnessZ: translationalStiffnessZ,
                rotationalStiffnessX: rotationalStiffnessX,
                rotationalStiffnessY: rotationalStiffnessY,
                rotationalStiffnessZ: rotationalStiffnessZ
            )
        }
    }
}
