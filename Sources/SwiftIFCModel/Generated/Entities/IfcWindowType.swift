// IfcWindowType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWindowType: IfcBuiltElementType, @unchecked Sendable {
        public var predefinedType: IfcWindowTypeEnum? = nil
        public var partitioningType: IfcWindowTypePartitioningEnum? = nil
        public var parameterTakesPrecedence: IfcBoolean? = nil
        public var userDefinedPartitioningType: IfcLabel? = nil

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
            predefinedType: IfcWindowTypeEnum? = nil,
            partitioningType: IfcWindowTypePartitioningEnum? = nil,
            parameterTakesPrecedence: IfcBoolean? = nil,
            userDefinedPartitioningType: IfcLabel? = nil
        ) {
            self.predefinedType = predefinedType
            self.partitioningType = partitioningType
            self.parameterTakesPrecedence = parameterTakesPrecedence
            self.userDefinedPartitioningType = userDefinedPartitioningType
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
