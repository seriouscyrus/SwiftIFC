// IfcGeometricRepresentationSubContext.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGeometricRepresentationSubContext: IfcGeometricRepresentationContext, @unchecked Sendable {
        public var targetScale: IfcPositiveRatioMeasure? = nil
        public var targetView: IfcGeometricProjectionEnum? = nil
        public var userDefinedTargetView: IfcLabel? = nil

        public init(
            contextIdentifier: IfcLabel? = nil,
            contextType: IfcLabel? = nil,
            coordinateSpaceDimension: IfcDimensionCount? = nil,
            precision: IfcReal? = nil,
            worldCoordinateSystem: IfcAxis2Placement,
            trueNorth: IfcDirection? = nil,
            hasSubContexts: [IfcGeometricRepresentationSubContext] = [],
            hasCoordinateOperation: IfcCoordinateOperation? = nil,
            targetScale: IfcPositiveRatioMeasure? = nil,
            targetView: IfcGeometricProjectionEnum? = nil,
            userDefinedTargetView: IfcLabel? = nil
        ) {
            self.targetScale = targetScale
            self.targetView = targetView
            self.userDefinedTargetView = userDefinedTargetView
            super.init(
                contextIdentifier: contextIdentifier,
                contextType: contextType,
                coordinateSpaceDimension: coordinateSpaceDimension,
                precision: precision,
                worldCoordinateSystem: worldCoordinateSystem,
                trueNorth: trueNorth,
                hasSubContexts: hasSubContexts,
                hasCoordinateOperation: hasCoordinateOperation
            )
        }
    }
}
