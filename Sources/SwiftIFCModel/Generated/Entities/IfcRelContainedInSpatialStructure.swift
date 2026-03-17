// IfcRelContainedInSpatialStructure.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelContainedInSpatialStructure: IfcRelConnects, @unchecked Sendable {
        public var relatedElements: [IfcProduct] = []
        public var relatingStructure: IfcSpatialElement? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedElements: [IfcProduct] = [],
            relatingStructure: IfcSpatialElement? = nil
        ) {
            self.relatedElements = relatedElements
            self.relatingStructure = relatingStructure
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
