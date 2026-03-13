// IfcDoorType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDoorType: IfcBuiltElementType, @unchecked Sendable {
        public var predefinedType: IfcDoorTypeEnum? = nil
        public var operationType: IfcDoorTypeOperationEnum? = nil
        public var parameterTakesPrecedence: IfcBoolean? = nil
        public var userDefinedOperationType: IfcLabel? = nil

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
            predefinedType: IfcDoorTypeEnum? = nil,
            operationType: IfcDoorTypeOperationEnum? = nil,
            parameterTakesPrecedence: IfcBoolean? = nil,
            userDefinedOperationType: IfcLabel? = nil
        ) {
            self.predefinedType = predefinedType
            self.operationType = operationType
            self.parameterTakesPrecedence = parameterTakesPrecedence
            self.userDefinedOperationType = userDefinedOperationType
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
