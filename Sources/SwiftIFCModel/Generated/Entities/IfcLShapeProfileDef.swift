// IfcLShapeProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLShapeProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var depth: IfcPositiveLengthMeasure? = nil
        public var width: IfcPositiveLengthMeasure? = nil
        public var thickness: IfcPositiveLengthMeasure? = nil
        public var filletRadius: IfcNonNegativeLengthMeasure? = nil
        public var edgeRadius: IfcNonNegativeLengthMeasure? = nil
        public var legSlope: IfcPlaneAngleMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            depth: IfcPositiveLengthMeasure? = nil,
            width: IfcPositiveLengthMeasure? = nil,
            thickness: IfcPositiveLengthMeasure? = nil,
            filletRadius: IfcNonNegativeLengthMeasure? = nil,
            edgeRadius: IfcNonNegativeLengthMeasure? = nil,
            legSlope: IfcPlaneAngleMeasure? = nil
        ) {
            self.depth = depth
            self.width = width
            self.thickness = thickness
            self.filletRadius = filletRadius
            self.edgeRadius = edgeRadius
            self.legSlope = legSlope
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
