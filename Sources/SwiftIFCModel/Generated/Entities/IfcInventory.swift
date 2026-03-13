// IfcInventory.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcInventory: IfcGroup, @unchecked Sendable {
        public var predefinedType: IfcInventoryTypeEnum? = nil
        public var lastUpdateDate: IfcDate? = nil
        public var jurisdiction: IfcActorSelect? = nil
        public var responsiblePersons: [IfcPerson] = []
        public var currentValue: IfcCostValue? = nil
        public var originalValue: IfcCostValue? = nil

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
            predefinedType: IfcInventoryTypeEnum? = nil,
            lastUpdateDate: IfcDate? = nil,
            jurisdiction: IfcActorSelect? = nil,
            responsiblePersons: [IfcPerson] = [],
            currentValue: IfcCostValue? = nil,
            originalValue: IfcCostValue? = nil
        ) {
            self.predefinedType = predefinedType
            self.lastUpdateDate = lastUpdateDate
            self.jurisdiction = jurisdiction
            self.responsiblePersons = responsiblePersons
            self.currentValue = currentValue
            self.originalValue = originalValue
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
