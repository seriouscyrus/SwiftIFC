// IfcRelFillsElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelFillsElement: IfcRelConnects, @unchecked Sendable {
        public var relatedBuildingElement: IfcElement? = nil
        public var relatingOpeningElement: IfcOpeningElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedBuildingElement: IfcElement? = nil,
            relatingOpeningElement: IfcOpeningElement? = nil
        ) {
            self.relatedBuildingElement = relatedBuildingElement
            self.relatingOpeningElement = relatingOpeningElement
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
