// IfcWindowLiningProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWindowLiningProperties: IfcPreDefinedPropertySet, @unchecked Sendable {
        public var liningDepth: IfcPositiveLengthMeasure? = nil
        public var liningThickness: IfcNonNegativeLengthMeasure? = nil
        public var transomThickness: IfcNonNegativeLengthMeasure? = nil
        public var mullionThickness: IfcNonNegativeLengthMeasure? = nil
        public var firstTransomOffset: IfcNormalisedRatioMeasure? = nil
        public var secondTransomOffset: IfcNormalisedRatioMeasure? = nil
        public var firstMullionOffset: IfcNormalisedRatioMeasure? = nil
        public var secondMullionOffset: IfcNormalisedRatioMeasure? = nil
        public var liningOffset: IfcLengthMeasure? = nil
        public var liningToPanelOffsetX: IfcLengthMeasure? = nil
        public var liningToPanelOffsetY: IfcLengthMeasure? = nil
        public var shapeAspectStyle: IfcShapeAspect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            liningDepth: IfcPositiveLengthMeasure? = nil,
            liningThickness: IfcNonNegativeLengthMeasure? = nil,
            transomThickness: IfcNonNegativeLengthMeasure? = nil,
            mullionThickness: IfcNonNegativeLengthMeasure? = nil,
            firstTransomOffset: IfcNormalisedRatioMeasure? = nil,
            secondTransomOffset: IfcNormalisedRatioMeasure? = nil,
            firstMullionOffset: IfcNormalisedRatioMeasure? = nil,
            secondMullionOffset: IfcNormalisedRatioMeasure? = nil,
            liningOffset: IfcLengthMeasure? = nil,
            liningToPanelOffsetX: IfcLengthMeasure? = nil,
            liningToPanelOffsetY: IfcLengthMeasure? = nil,
            shapeAspectStyle: IfcShapeAspect? = nil
        ) {
            self.liningDepth = liningDepth
            self.liningThickness = liningThickness
            self.transomThickness = transomThickness
            self.mullionThickness = mullionThickness
            self.firstTransomOffset = firstTransomOffset
            self.secondTransomOffset = secondTransomOffset
            self.firstMullionOffset = firstMullionOffset
            self.secondMullionOffset = secondMullionOffset
            self.liningOffset = liningOffset
            self.liningToPanelOffsetX = liningToPanelOffsetX
            self.liningToPanelOffsetY = liningToPanelOffsetY
            self.shapeAspectStyle = shapeAspectStyle
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
