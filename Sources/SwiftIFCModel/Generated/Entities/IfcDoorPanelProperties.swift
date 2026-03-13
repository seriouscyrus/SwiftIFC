// IfcDoorPanelProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDoorPanelProperties: IfcPreDefinedPropertySet, @unchecked Sendable {
        public var panelDepth: IfcPositiveLengthMeasure? = nil
        public var panelOperation: IfcDoorPanelOperationEnum? = nil
        public var panelWidth: IfcNormalisedRatioMeasure? = nil
        public var panelPosition: IfcDoorPanelPositionEnum? = nil
        public var shapeAspectStyle: IfcShapeAspect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            panelDepth: IfcPositiveLengthMeasure? = nil,
            panelOperation: IfcDoorPanelOperationEnum? = nil,
            panelWidth: IfcNormalisedRatioMeasure? = nil,
            panelPosition: IfcDoorPanelPositionEnum? = nil,
            shapeAspectStyle: IfcShapeAspect? = nil
        ) {
            self.panelDepth = panelDepth
            self.panelOperation = panelOperation
            self.panelWidth = panelWidth
            self.panelPosition = panelPosition
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
