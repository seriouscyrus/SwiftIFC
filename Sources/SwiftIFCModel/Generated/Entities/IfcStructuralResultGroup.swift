// IfcStructuralResultGroup.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralResultGroup: IfcGroup, @unchecked Sendable {
        public var theoryType: IfcAnalysisTheoryTypeEnum? = nil
        public var isLinear: IfcBoolean? = nil
        public var resultForLoadGroup: IfcStructuralLoadGroup? = nil

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
            theoryType: IfcAnalysisTheoryTypeEnum? = nil,
            isLinear: IfcBoolean? = nil,
            resultForLoadGroup: IfcStructuralLoadGroup? = nil
        ) {
            self.theoryType = theoryType
            self.isLinear = isLinear
            self.resultForLoadGroup = resultForLoadGroup
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
