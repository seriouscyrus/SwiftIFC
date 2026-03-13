// IfcRelConnectsWithRealizingElements.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsWithRealizingElements: IfcRelConnectsElements, @unchecked Sendable {
        public var connectionType: IfcLabel? = nil
        public var realizingElements: [IfcElement] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            connectionGeometry: IfcConnectionGeometry? = nil,
            relatingElement: IfcElement? = nil,
            relatedElement: IfcElement? = nil,
            connectionType: IfcLabel? = nil,
            realizingElements: [IfcElement] = []
        ) {
            self.connectionType = connectionType
            self.realizingElements = realizingElements
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
