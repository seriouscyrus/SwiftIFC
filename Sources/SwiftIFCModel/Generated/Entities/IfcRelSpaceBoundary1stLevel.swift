// IfcRelSpaceBoundary1stLevel.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelSpaceBoundary1stLevel: IfcRelSpaceBoundary, @unchecked Sendable {
        public var parentBoundary: IfcRelSpaceBoundary1stLevel? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            physicalOrVirtualBoundary: IfcPhysicalOrVirtualEnum? = nil,
            internalOrExternalBoundary: IfcInternalOrExternalEnum? = nil,
            relatingSpace: IfcSpaceBoundarySelect,
            relatedBuildingElement: IfcElement? = nil,
            connectionGeometry: IfcConnectionGeometry? = nil,
            parentBoundary: IfcRelSpaceBoundary1stLevel? = nil
        ) {
            self.parentBoundary = parentBoundary
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                physicalOrVirtualBoundary: physicalOrVirtualBoundary,
                internalOrExternalBoundary: internalOrExternalBoundary,
                relatingSpace: relatingSpace,
                relatedBuildingElement: relatedBuildingElement,
                connectionGeometry: connectionGeometry
            )
        }
    }
}
