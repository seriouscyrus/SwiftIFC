// IfcStairFlightType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStairFlightType: IfcBuiltElementType, @unchecked Sendable {
        public var predefinedType: IfcStairFlightTypeEnum? = nil

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
            predefinedType: IfcStairFlightTypeEnum? = nil
        ) {
            self.predefinedType = predefinedType
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
