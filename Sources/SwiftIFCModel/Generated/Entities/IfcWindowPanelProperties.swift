// IfcWindowPanelProperties.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWindowPanelProperties: IfcPreDefinedPropertySet, @unchecked Sendable {
        public var operationType: IfcWindowPanelOperationEnum? = nil
        public var panelPosition: IfcWindowPanelPositionEnum? = nil
        public var frameDepth: IfcPositiveLengthMeasure? = nil
        public var frameThickness: IfcPositiveLengthMeasure? = nil
        public var shapeAspectStyle: IfcShapeAspect? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            operationType: IfcWindowPanelOperationEnum? = nil,
            panelPosition: IfcWindowPanelPositionEnum? = nil,
            frameDepth: IfcPositiveLengthMeasure? = nil,
            frameThickness: IfcPositiveLengthMeasure? = nil,
            shapeAspectStyle: IfcShapeAspect? = nil
        ) {
            self.operationType = operationType
            self.panelPosition = panelPosition
            self.frameDepth = frameDepth
            self.frameThickness = frameThickness
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
