// IfcRelSpaceBoundary.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelSpaceBoundary: IfcRelConnects, @unchecked Sendable {
        public var physicalOrVirtualBoundary: IfcPhysicalOrVirtualEnum? = nil
        public var internalOrExternalBoundary: IfcInternalOrExternalEnum? = nil
        public var relatingSpace: IfcSpaceBoundarySelect
        public var relatedBuildingElement: IfcElement? = nil
        public var connectionGeometry: IfcConnectionGeometry? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            physicalOrVirtualBoundary: IfcPhysicalOrVirtualEnum? = nil,
            internalOrExternalBoundary: IfcInternalOrExternalEnum? = nil,
            relatingSpace: IfcSpaceBoundarySelect,
            relatedBuildingElement: IfcElement? = nil,
            connectionGeometry: IfcConnectionGeometry? = nil
        ) {
            self.physicalOrVirtualBoundary = physicalOrVirtualBoundary
            self.internalOrExternalBoundary = internalOrExternalBoundary
            self.relatingSpace = relatingSpace
            self.relatedBuildingElement = relatedBuildingElement
            self.connectionGeometry = connectionGeometry
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
