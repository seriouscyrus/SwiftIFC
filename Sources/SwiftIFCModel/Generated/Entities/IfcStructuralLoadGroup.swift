// IfcStructuralLoadGroup.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadGroup: IfcGroup, @unchecked Sendable {
        public var predefinedType: IfcLoadGroupTypeEnum? = nil
        public var actionType: IfcActionTypeEnum? = nil
        public var actionSource: IfcActionSourceTypeEnum? = nil
        public var coefficient: IfcRatioMeasure? = nil
        public var purpose: IfcLabel? = nil

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
            predefinedType: IfcLoadGroupTypeEnum? = nil,
            actionType: IfcActionTypeEnum? = nil,
            actionSource: IfcActionSourceTypeEnum? = nil,
            coefficient: IfcRatioMeasure? = nil,
            purpose: IfcLabel? = nil
        ) {
            self.predefinedType = predefinedType
            self.actionType = actionType
            self.actionSource = actionSource
            self.coefficient = coefficient
            self.purpose = purpose
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
                isDefinedBy: isDefinedBy
            )
        }
    }
}
