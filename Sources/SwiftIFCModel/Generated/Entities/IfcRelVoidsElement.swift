// IfcRelVoidsElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelVoidsElement: IfcRelDecomposes, @unchecked Sendable {
        public var relatedOpeningElement: IfcFeatureElementSubtraction? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedOpeningElement: IfcFeatureElementSubtraction? = nil
        ) {
            self.relatedOpeningElement = relatedOpeningElement
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
