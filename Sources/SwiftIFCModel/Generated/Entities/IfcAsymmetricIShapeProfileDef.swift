// IfcAsymmetricIShapeProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAsymmetricIShapeProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var bottomFlangeWidth: IfcPositiveLengthMeasure? = nil
        public var overallDepth: IfcPositiveLengthMeasure? = nil
        public var webThickness: IfcPositiveLengthMeasure? = nil
        public var bottomFlangeThickness: IfcPositiveLengthMeasure? = nil
        public var bottomFlangeFilletRadius: IfcNonNegativeLengthMeasure? = nil
        public var topFlangeWidth: IfcPositiveLengthMeasure? = nil
        public var topFlangeThickness: IfcPositiveLengthMeasure? = nil
        public var topFlangeFilletRadius: IfcNonNegativeLengthMeasure? = nil
        public var bottomFlangeEdgeRadius: IfcNonNegativeLengthMeasure? = nil
        public var bottomFlangeSlope: IfcPlaneAngleMeasure? = nil
        public var topFlangeEdgeRadius: IfcNonNegativeLengthMeasure? = nil
        public var topFlangeSlope: IfcPlaneAngleMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            bottomFlangeWidth: IfcPositiveLengthMeasure? = nil,
            overallDepth: IfcPositiveLengthMeasure? = nil,
            webThickness: IfcPositiveLengthMeasure? = nil,
            bottomFlangeThickness: IfcPositiveLengthMeasure? = nil,
            bottomFlangeFilletRadius: IfcNonNegativeLengthMeasure? = nil,
            topFlangeWidth: IfcPositiveLengthMeasure? = nil,
            topFlangeThickness: IfcPositiveLengthMeasure? = nil,
            topFlangeFilletRadius: IfcNonNegativeLengthMeasure? = nil,
            bottomFlangeEdgeRadius: IfcNonNegativeLengthMeasure? = nil,
            bottomFlangeSlope: IfcPlaneAngleMeasure? = nil,
            topFlangeEdgeRadius: IfcNonNegativeLengthMeasure? = nil,
            topFlangeSlope: IfcPlaneAngleMeasure? = nil
        ) {
            self.bottomFlangeWidth = bottomFlangeWidth
            self.overallDepth = overallDepth
            self.webThickness = webThickness
            self.bottomFlangeThickness = bottomFlangeThickness
            self.bottomFlangeFilletRadius = bottomFlangeFilletRadius
            self.topFlangeWidth = topFlangeWidth
            self.topFlangeThickness = topFlangeThickness
            self.topFlangeFilletRadius = topFlangeFilletRadius
            self.bottomFlangeEdgeRadius = bottomFlangeEdgeRadius
            self.bottomFlangeSlope = bottomFlangeSlope
            self.topFlangeEdgeRadius = topFlangeEdgeRadius
            self.topFlangeSlope = topFlangeSlope
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
