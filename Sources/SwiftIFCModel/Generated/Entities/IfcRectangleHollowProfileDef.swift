// IfcRectangleHollowProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRectangleHollowProfileDef: IfcRectangleProfileDef, @unchecked Sendable {
        public var wallThickness: IfcPositiveLengthMeasure? = nil
        public var innerFilletRadius: IfcNonNegativeLengthMeasure? = nil
        public var outerFilletRadius: IfcNonNegativeLengthMeasure? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil,
            xDim: IfcPositiveLengthMeasure? = nil,
            yDim: IfcPositiveLengthMeasure? = nil,
            wallThickness: IfcPositiveLengthMeasure? = nil,
            innerFilletRadius: IfcNonNegativeLengthMeasure? = nil,
            outerFilletRadius: IfcNonNegativeLengthMeasure? = nil
        ) {
            self.wallThickness = wallThickness
            self.innerFilletRadius = innerFilletRadius
            self.outerFilletRadius = outerFilletRadius
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                position: position,
                xDim: xDim,
                yDim: yDim
            )
        }
    }
}
