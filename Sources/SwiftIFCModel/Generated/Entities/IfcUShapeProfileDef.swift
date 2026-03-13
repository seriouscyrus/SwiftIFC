// IfcUShapeProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcUShapeProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var depth: IfcPositiveLengthMeasure? = nil
        public var flangeWidth: IfcPositiveLengthMeasure? = nil
        public var webThickness: IfcPositiveLengthMeasure? = nil
        public var flangeThickness: IfcPositiveLengthMeasure? = nil
        public var filletRadius: IfcNonNegativeLengthMeasure? = nil
        public var edgeRadius: IfcNonNegativeLengthMeasure? = nil
        public var flangeSlope: IfcPlaneAngleMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            depth: IfcPositiveLengthMeasure? = nil,
            flangeWidth: IfcPositiveLengthMeasure? = nil,
            webThickness: IfcPositiveLengthMeasure? = nil,
            flangeThickness: IfcPositiveLengthMeasure? = nil,
            filletRadius: IfcNonNegativeLengthMeasure? = nil,
            edgeRadius: IfcNonNegativeLengthMeasure? = nil,
            flangeSlope: IfcPlaneAngleMeasure? = nil
        ) {
            self.depth = depth
            self.flangeWidth = flangeWidth
            self.webThickness = webThickness
            self.flangeThickness = flangeThickness
            self.filletRadius = filletRadius
            self.edgeRadius = edgeRadius
            self.flangeSlope = flangeSlope
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
