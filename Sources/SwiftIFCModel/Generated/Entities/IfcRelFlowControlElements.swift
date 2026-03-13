// IfcRelFlowControlElements.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelFlowControlElements: IfcRelConnects, @unchecked Sendable {
        public var relatedControlElements: [IfcDistributionControlElement] = []
        public var relatingFlowElement: IfcDistributionFlowElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedControlElements: [IfcDistributionControlElement] = [],
            relatingFlowElement: IfcDistributionFlowElement? = nil
        ) {
            self.relatedControlElements = relatedControlElements
            self.relatingFlowElement = relatingFlowElement
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
