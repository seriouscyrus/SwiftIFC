// IfcElementAssembly.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcElementAssembly: IfcElement, @unchecked Sendable {
        public var assemblyPlace: IfcAssemblyPlaceEnum? = nil
        public var predefinedType: IfcElementAssemblyTypeEnum? = nil

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
            hasOpenings: [IfcRelVoidsElement] = [],
            assemblyPlace: IfcAssemblyPlaceEnum? = nil,
            predefinedType: IfcElementAssemblyTypeEnum? = nil
        ) {
            self.assemblyPlace = assemblyPlace
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
                tag: tag,
                hasProjections: hasProjections,
                hasOpenings: hasOpenings
            )
        }
    }
}
