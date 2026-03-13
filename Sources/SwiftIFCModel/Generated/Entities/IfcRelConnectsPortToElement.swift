// IfcRelConnectsPortToElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsPortToElement: IfcRelConnects, @unchecked Sendable {
        public var relatingPort: IfcPort? = nil
        public var relatedElement: IfcDistributionElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingPort: IfcPort? = nil,
            relatedElement: IfcDistributionElement? = nil
        ) {
            self.relatingPort = relatingPort
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
