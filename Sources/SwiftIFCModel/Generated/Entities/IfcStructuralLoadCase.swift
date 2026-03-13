// IfcStructuralLoadCase.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadCase: IfcStructuralLoadGroup, @unchecked Sendable {
        public var selfWeightCoefficients: [IfcRatioMeasure] = []

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
            purpose: IfcLabel? = nil,
            selfWeightCoefficients: [IfcRatioMeasure] = []
        ) {
            self.selfWeightCoefficients = selfWeightCoefficients
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
                predefinedType: predefinedType,
                actionType: actionType,
                actionSource: actionSource,
                coefficient: coefficient,
                purpose: purpose
            )
        }
    }
}
