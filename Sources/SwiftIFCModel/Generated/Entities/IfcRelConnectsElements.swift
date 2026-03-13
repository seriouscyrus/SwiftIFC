// IfcRelConnectsElements.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsElements: IfcRelConnects, @unchecked Sendable {
        public var connectionGeometry: IfcConnectionGeometry? = nil
        public var relatingElement: IfcElement? = nil
        public var relatedElement: IfcElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            connectionGeometry: IfcConnectionGeometry? = nil,
            relatingElement: IfcElement? = nil,
            relatedElement: IfcElement? = nil
        ) {
            self.connectionGeometry = connectionGeometry
            self.relatingElement = relatingElement
            self.relatedElement = relatedElement
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
