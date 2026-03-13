// IfcCShapeProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCShapeProfileDef: IfcParameterizedProfileDef, @unchecked Sendable {
        public var depth: IfcPositiveLengthMeasure? = nil
        public var width: IfcPositiveLengthMeasure? = nil
        public var wallThickness: IfcPositiveLengthMeasure? = nil
        public var girth: IfcPositiveLengthMeasure? = nil
        public var internalFilletRadius: IfcNonNegativeLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            depth: IfcPositiveLengthMeasure? = nil,
            width: IfcPositiveLengthMeasure? = nil,
            wallThickness: IfcPositiveLengthMeasure? = nil,
            girth: IfcPositiveLengthMeasure? = nil,
            internalFilletRadius: IfcNonNegativeLengthMeasure? = nil
        ) {
            self.depth = depth
            self.width = width
            self.wallThickness = wallThickness
            self.girth = girth
            self.internalFilletRadius = internalFilletRadius
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position
            )
        }
    }
}
