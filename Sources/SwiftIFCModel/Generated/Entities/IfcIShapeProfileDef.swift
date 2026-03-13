// IfcIShapeProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcIShapeProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var overallWidth: IfcPositiveLengthMeasure? = nil
        public var overallDepth: IfcPositiveLengthMeasure? = nil
        public var webThickness: IfcPositiveLengthMeasure? = nil
        public var flangeThickness: IfcPositiveLengthMeasure? = nil
        public var filletRadius: IfcNonNegativeLengthMeasure? = nil
        public var flangeEdgeRadius: IfcNonNegativeLengthMeasure? = nil
        public var flangeSlope: IfcPlaneAngleMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            overallWidth: IfcPositiveLengthMeasure? = nil,
            overallDepth: IfcPositiveLengthMeasure? = nil,
            webThickness: IfcPositiveLengthMeasure? = nil,
            flangeThickness: IfcPositiveLengthMeasure? = nil,
            filletRadius: IfcNonNegativeLengthMeasure? = nil,
            flangeEdgeRadius: IfcNonNegativeLengthMeasure? = nil,
            flangeSlope: IfcPlaneAngleMeasure? = nil
        ) {
            self.overallWidth = overallWidth
            self.overallDepth = overallDepth
            self.webThickness = webThickness
            self.flangeThickness = flangeThickness
            self.filletRadius = filletRadius
            self.flangeEdgeRadius = flangeEdgeRadius
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
