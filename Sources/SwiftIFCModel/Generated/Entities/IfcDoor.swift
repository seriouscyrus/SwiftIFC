// IfcDoor.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDoor: IfcBuiltElement, @unchecked Sendable {
        public var overallHeight: IfcPositiveLengthMeasure? = nil
        public var overallWidth: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcDoorTypeEnum? = nil
        public var operationType: IfcDoorTypeOperationEnum? = nil
        public var userDefinedOperationType: IfcLabel? = nil

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
            hasProjections: IfcRelProjectsElement? = nil,
            hasOpenings: IfcRelVoidsElement? = nil,
            overallHeight: IfcPositiveLengthMeasure? = nil,
            overallWidth: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcDoorTypeEnum? = nil,
            operationType: IfcDoorTypeOperationEnum? = nil,
            userDefinedOperationType: IfcLabel? = nil
        ) {
            self.overallHeight = overallHeight
            self.overallWidth = overallWidth
            self.predefinedType = predefinedType
            self.operationType = operationType
            self.userDefinedOperationType = userDefinedOperationType
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
