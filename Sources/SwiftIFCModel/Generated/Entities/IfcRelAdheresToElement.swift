// IfcRelAdheresToElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelAdheresToElement: IfcRelDecomposes, @unchecked Sendable {
        public var relatingElement: IfcElement? = nil
        public var relatedSurfaceFeatures: [IfcSurfaceFeature] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingElement: IfcElement? = nil,
            relatedSurfaceFeatures: [IfcSurfaceFeature] = []
        ) {
            self.relatingElement = relatingElement
            self.relatedSurfaceFeatures = relatedSurfaceFeatures
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
