// IfcElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcElement: IfcProduct, @unchecked Sendable { // ABSTRACT
        public var tag: IfcIdentifier? = nil
        public var hasProjections: [IfcRelProjectsElement] = []
        public var hasOpenings: [IfcRelVoidsElement] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            objectType: IfcLabel? = nil,
            isDeclaredBy: IfcRelDefinesByObject? = nil,
            isTypedBy: IfcRelDefinesByType? = nil,
            isDefinedBy: [IfcRelDefinesByProperties] = [],
            objectPlacement: IfcObjectPlacement? = nil,
            representation: IfcProductRepresentation? = nil,
            tag: IfcIdentifier? = nil,
            hasProjections: [IfcRelProjectsElement] = [],
            hasOpenings: [IfcRelVoidsElement] = []
        ) {
            self.tag = tag
            self.hasProjections = hasProjections
            self.hasOpenings = hasOpenings
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy,
                objectType: objectType,
                isDeclaredBy: isDeclaredBy,
                isTypedBy: isTypedBy,
                isDefinedBy: isDefinedBy,
                objectPlacement: objectPlacement,
                representation: representation
            )
        }
    }
}
