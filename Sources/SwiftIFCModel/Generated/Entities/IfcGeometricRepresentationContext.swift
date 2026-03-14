// IfcGeometricRepresentationContext.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGeometricRepresentationContext: IfcRepresentationContext, @unchecked Sendable {
        public var coordinateSpaceDimension: IfcDimensionCount? = nil
        public var precision: IfcReal? = nil
        public var worldCoordinateSystem: IfcAxis2Placement? = nil
        public var trueNorth: IfcDirection? = nil
        public var hasSubContexts: [IfcGeometricRepresentationSubContext] = []
        public var hasCoordinateOperation: IfcCoordinateOperation? = nil

        public init(
            contextIdentifier: IfcLabel? = nil,
            contextType: IfcLabel? = nil,
            coordinateSpaceDimension: IfcDimensionCount? = nil,
            precision: IfcReal? = nil,
            worldCoordinateSystem: IfcAxis2Placement? = nil,
            trueNorth: IfcDirection? = nil,
            hasSubContexts: [IfcGeometricRepresentationSubContext] = [],
            hasCoordinateOperation: IfcCoordinateOperation? = nil
        ) {
            self.coordinateSpaceDimension = coordinateSpaceDimension
            self.precision = precision
            self.worldCoordinateSystem = worldCoordinateSystem
            self.trueNorth = trueNorth
            self.hasSubContexts = hasSubContexts
            self.hasCoordinateOperation = hasCoordinateOperation
            super.init(
                contextIdentifier: contextIdentifier,
                contextType: contextType
            )
        }
    }
}
