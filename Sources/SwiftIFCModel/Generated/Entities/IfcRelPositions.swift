// IfcRelPositions.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelPositions: IfcRelConnects, @unchecked Sendable {
        public var relatingPositioningElement: IfcPositioningElement? = nil
        public var relatedProducts: [IfcProduct] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingPositioningElement: IfcPositioningElement? = nil,
            relatedProducts: [IfcProduct] = []
        ) {
            self.relatingPositioningElement = relatingPositioningElement
            self.relatedProducts = relatedProducts
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
