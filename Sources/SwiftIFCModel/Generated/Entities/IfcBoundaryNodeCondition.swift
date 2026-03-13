// IfcBoundaryNodeCondition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBoundaryNodeCondition: IfcBoundaryCondition, @unchecked Sendable {
        public var translationalStiffnessX: IfcTranslationalStiffnessSelect? = nil
        public var translationalStiffnessY: IfcTranslationalStiffnessSelect? = nil
        public var translationalStiffnessZ: IfcTranslationalStiffnessSelect? = nil
        public var rotationalStiffnessX: IfcRotationalStiffnessSelect? = nil
        public var rotationalStiffnessY: IfcRotationalStiffnessSelect? = nil
        public var rotationalStiffnessZ: IfcRotationalStiffnessSelect? = nil

        public init(
            name: IfcLabel? = nil,
            translationalStiffnessX: IfcTranslationalStiffnessSelect? = nil,
            translationalStiffnessY: IfcTranslationalStiffnessSelect? = nil,
            translationalStiffnessZ: IfcTranslationalStiffnessSelect? = nil,
            rotationalStiffnessX: IfcRotationalStiffnessSelect? = nil,
            rotationalStiffnessY: IfcRotationalStiffnessSelect? = nil,
            rotationalStiffnessZ: IfcRotationalStiffnessSelect? = nil
        ) {
            self.translationalStiffnessX = translationalStiffnessX
            self.translationalStiffnessY = translationalStiffnessY
            self.translationalStiffnessZ = translationalStiffnessZ
            self.rotationalStiffnessX = rotationalStiffnessX
            self.rotationalStiffnessY = rotationalStiffnessY
            self.rotationalStiffnessZ = rotationalStiffnessZ
            super.init(
                name: name
            )
        }
    }
}
