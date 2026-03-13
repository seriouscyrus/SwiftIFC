// IfcSpaceType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSpaceType: IfcSpatialStructureElementType, @unchecked Sendable {
        public var predefinedType: IfcSpaceTypeEnum? = nil
        public var longName: IfcLabel? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            applicableOccurrence: IfcIdentifier? = nil,
            hasPropertySets: [IfcPropertySetDefinition] = [],
            tag: IfcLabel? = nil,
            representationMaps: [IfcRepresentationMap] = [],
            elementType: IfcLabel? = nil,
            predefinedType: IfcSpaceTypeEnum? = nil,
            longName: IfcLabel? = nil
        ) {
            self.predefinedType = predefinedType
            self.longName = longName
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy,
                applicableOccurrence: applicableOccurrence,
                hasPropertySets: hasPropertySets,
                tag: tag,
                representationMaps: representationMaps,
                elementType: elementType
            )
        }
    }
}
