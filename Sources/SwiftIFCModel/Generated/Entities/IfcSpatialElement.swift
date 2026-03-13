// IfcSpatialElement.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSpatialElement: IfcProduct, @unchecked Sendable { // ABSTRACT
        public var longName: IfcLabel? = nil
        public var containsElements: [IfcRelContainedInSpatialStructure] = []
        public var referencesElements: [IfcRelReferencedInSpatialStructure] = []

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
            longName: IfcLabel? = nil,
            containsElements: [IfcRelContainedInSpatialStructure] = [],
            referencesElements: [IfcRelReferencedInSpatialStructure] = []
        ) {
            self.longName = longName
            self.containsElements = containsElements
            self.referencesElements = referencesElements
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
