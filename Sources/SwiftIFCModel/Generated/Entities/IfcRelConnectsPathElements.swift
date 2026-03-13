// IfcRelConnectsPathElements.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsPathElements: IfcRelConnectsElements, @unchecked Sendable {
        public var relatingPriorities: [IfcInteger] = []
        public var relatedPriorities: [IfcInteger] = []
        public var relatedConnectionType: IfcConnectionTypeEnum? = nil
        public var relatingConnectionType: IfcConnectionTypeEnum? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            connectionGeometry: IfcConnectionGeometry? = nil,
            relatingElement: IfcElement? = nil,
            relatedElement: IfcElement? = nil,
            relatingPriorities: [IfcInteger] = [],
            relatedPriorities: [IfcInteger] = [],
            relatedConnectionType: IfcConnectionTypeEnum? = nil,
            relatingConnectionType: IfcConnectionTypeEnum? = nil
        ) {
            self.relatingPriorities = relatingPriorities
            self.relatedPriorities = relatedPriorities
            self.relatedConnectionType = relatedConnectionType
            self.relatingConnectionType = relatingConnectionType
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                connectionGeometry: connectionGeometry,
                relatingElement: relatingElement,
                relatedElement: relatedElement
            )
        }
    }
}
