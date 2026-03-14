// IfcRelSpaceBoundary2ndLevel.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelSpaceBoundary2ndLevel: IfcRelSpaceBoundary1stLevel, @unchecked Sendable {
        public var correspondingBoundary: IfcRelSpaceBoundary2ndLevel? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            physicalOrVirtualBoundary: IfcPhysicalOrVirtualEnum? = nil,
            internalOrExternalBoundary: IfcInternalOrExternalEnum? = nil,
            relatingSpace: IfcSpaceBoundarySelect? = nil,
            relatedBuildingElement: IfcElement? = nil,
            connectionGeometry: IfcConnectionGeometry? = nil,
            parentBoundary: IfcRelSpaceBoundary1stLevel? = nil,
            correspondingBoundary: IfcRelSpaceBoundary2ndLevel? = nil
        ) {
            self.correspondingBoundary = correspondingBoundary
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                physicalOrVirtualBoundary: physicalOrVirtualBoundary,
                internalOrExternalBoundary: internalOrExternalBoundary,
                relatingSpace: relatingSpace,
                relatedBuildingElement: relatedBuildingElement,
                connectionGeometry: connectionGeometry,
                parentBoundary: parentBoundary
            )
        }
    }
}
