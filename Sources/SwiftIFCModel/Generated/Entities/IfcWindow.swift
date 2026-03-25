// IfcWindow.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWindow: IfcBuiltElement, @unchecked Sendable {
        public var overallHeight: IfcPositiveLengthMeasure? = nil
        public var overallWidth: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcWindowTypeEnum? = nil
        public var partitioningType: IfcWindowTypePartitioningEnum? = nil
        public var userDefinedPartitioningType: IfcLabel? = nil

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
            overallHeight: IfcPositiveLengthMeasure? = nil,
            overallWidth: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcWindowTypeEnum? = nil,
            partitioningType: IfcWindowTypePartitioningEnum? = nil,
            userDefinedPartitioningType: IfcLabel? = nil
        ) {
            self.overallHeight = overallHeight
            self.overallWidth = overallWidth
            self.predefinedType = predefinedType
            self.partitioningType = partitioningType
            self.userDefinedPartitioningType = userDefinedPartitioningType
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
