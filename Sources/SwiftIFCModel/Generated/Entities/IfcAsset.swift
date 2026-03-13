// IfcAsset.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAsset: IfcGroup, @unchecked Sendable {
        public var identification: IfcIdentifier? = nil
        public var incorporationDate: IfcDate? = nil
        public var originalValue: IfcCostValue? = nil
        public var currentValue: IfcCostValue? = nil
        public var totalReplacementCost: IfcCostValue? = nil
        public var owner: IfcActorSelect? = nil
        public var user: IfcActorSelect? = nil
        public var responsiblePerson: IfcPerson? = nil
        public var depreciatedValue: IfcCostValue? = nil

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
            identification: IfcIdentifier? = nil,
            incorporationDate: IfcDate? = nil,
            originalValue: IfcCostValue? = nil,
            currentValue: IfcCostValue? = nil,
            totalReplacementCost: IfcCostValue? = nil,
            owner: IfcActorSelect? = nil,
            user: IfcActorSelect? = nil,
            responsiblePerson: IfcPerson? = nil,
            depreciatedValue: IfcCostValue? = nil
        ) {
            self.identification = identification
            self.incorporationDate = incorporationDate
            self.originalValue = originalValue
            self.currentValue = currentValue
            self.totalReplacementCost = totalReplacementCost
            self.owner = owner
            self.user = user
            self.responsiblePerson = responsiblePerson
            self.depreciatedValue = depreciatedValue
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
