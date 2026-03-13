// IfcObjectDefinition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcObjectDefinition: IfcRoot, @unchecked Sendable { // ABSTRACT
        public var isNestedBy: [IfcRelNests] = []
        public var isDecomposedBy: [IfcRelAggregates] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = []
        ) {
            self.isNestedBy = isNestedBy
            self.isDecomposedBy = isDecomposedBy
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
