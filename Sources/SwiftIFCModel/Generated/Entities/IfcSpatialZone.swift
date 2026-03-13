// IfcSpatialZone.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSpatialZone: IfcSpatialElement, @unchecked Sendable {
        public var predefinedType: IfcSpatialZoneTypeEnum? = nil

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
            referencesElements: [IfcRelReferencedInSpatialStructure] = [],
            predefinedType: IfcSpatialZoneTypeEnum? = nil
        ) {
            self.predefinedType = predefinedType
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
                representation: representation,
                longName: longName,
                containsElements: containsElements,
                referencesElements: referencesElements
            )
        }
    }
}
