// IfcRelInterferesElements.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelInterferesElements: IfcRelConnects, @unchecked Sendable {
        public var interferenceType: IfcIdentifier? = nil
        public var impliedOrder: IfcLogical? = nil
        public var relatingElement: IfcInterferenceSelect
        public var relatedElement: IfcInterferenceSelect
        public var interferenceGeometry: IfcConnectionGeometry? = nil
        public var interferenceSpace: IfcSpatialZone? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            interferenceType: IfcIdentifier? = nil,
            impliedOrder: IfcLogical? = nil,
            relatingElement: IfcInterferenceSelect,
            relatedElement: IfcInterferenceSelect,
            interferenceGeometry: IfcConnectionGeometry? = nil,
            interferenceSpace: IfcSpatialZone? = nil
        ) {
            self.interferenceType = interferenceType
            self.impliedOrder = impliedOrder
            self.relatingElement = relatingElement
            self.relatedElement = relatedElement
            self.interferenceGeometry = interferenceGeometry
            self.interferenceSpace = interferenceSpace
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
