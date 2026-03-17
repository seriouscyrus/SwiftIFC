// IfcRelProjectsElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelProjectsElement: IfcRelDecomposes, @unchecked Sendable {
        public var relatedFeatureElement: IfcFeatureElementAddition? = nil
        public var relatingElement: IfcElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedFeatureElement: IfcFeatureElementAddition? = nil,
            relatingElement: IfcElement? = nil
        ) {
            self.relatedFeatureElement = relatedFeatureElement
            self.relatingElement = relatingElement
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
