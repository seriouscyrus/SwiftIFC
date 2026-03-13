// IfcDoorLiningProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDoorLiningProperties: IfcPreDefinedPropertySet, @unchecked Sendable {
        public var liningDepth: IfcPositiveLengthMeasure? = nil
        public var liningThickness: IfcNonNegativeLengthMeasure? = nil
        public var thresholdDepth: IfcPositiveLengthMeasure? = nil
        public var thresholdThickness: IfcNonNegativeLengthMeasure? = nil
        public var transomThickness: IfcNonNegativeLengthMeasure? = nil
        public var transomOffset: IfcLengthMeasure? = nil
        public var liningOffset: IfcLengthMeasure? = nil
        public var thresholdOffset: IfcLengthMeasure? = nil
        public var casingThickness: IfcPositiveLengthMeasure? = nil
        public var casingDepth: IfcPositiveLengthMeasure? = nil
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
            thresholdDepth: IfcPositiveLengthMeasure? = nil,
            thresholdThickness: IfcNonNegativeLengthMeasure? = nil,
            transomThickness: IfcNonNegativeLengthMeasure? = nil,
            transomOffset: IfcLengthMeasure? = nil,
            liningOffset: IfcLengthMeasure? = nil,
            thresholdOffset: IfcLengthMeasure? = nil,
            casingThickness: IfcPositiveLengthMeasure? = nil,
            casingDepth: IfcPositiveLengthMeasure? = nil,
            liningToPanelOffsetX: IfcLengthMeasure? = nil,
            liningToPanelOffsetY: IfcLengthMeasure? = nil,
            shapeAspectStyle: IfcShapeAspect? = nil
        ) {
            self.liningDepth = liningDepth
            self.liningThickness = liningThickness
            self.thresholdDepth = thresholdDepth
            self.thresholdThickness = thresholdThickness
            self.transomThickness = transomThickness
            self.transomOffset = transomOffset
            self.liningOffset = liningOffset
            self.thresholdOffset = thresholdOffset
            self.casingThickness = casingThickness
            self.casingDepth = casingDepth
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
