// IfcRelCoversBldgElements.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelCoversBldgElements: IfcRelConnects, @unchecked Sendable {
        public var relatingBuildingElement: IfcElement? = nil
        public var relatedCoverings: [IfcCovering] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingBuildingElement: IfcElement? = nil,
            relatedCoverings: [IfcCovering] = []
        ) {
            self.relatingBuildingElement = relatingBuildingElement
            self.relatedCoverings = relatedCoverings
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
