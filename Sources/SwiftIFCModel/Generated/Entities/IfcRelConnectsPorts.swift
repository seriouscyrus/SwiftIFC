// IfcRelConnectsPorts.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsPorts: IfcRelConnects, @unchecked Sendable {
        public var relatingPort: IfcPort? = nil
        public var relatedPort: IfcPort? = nil
        public var realizingElement: IfcElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingPort: IfcPort? = nil,
            relatedPort: IfcPort? = nil,
            realizingElement: IfcElement? = nil
        ) {
            self.relatingPort = relatingPort
            self.relatedPort = relatedPort
            self.realizingElement = realizingElement
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
