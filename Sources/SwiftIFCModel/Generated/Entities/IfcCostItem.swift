// IfcCostItem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCostItem: IfcControl, @unchecked Sendable {
        public var predefinedType: IfcCostItemTypeEnum? = nil
        public var costValues: [IfcCostValue] = []
        public var costQuantities: [IfcPhysicalQuantity] = []

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
            predefinedType: IfcCostItemTypeEnum? = nil,
            costValues: [IfcCostValue] = [],
            costQuantities: [IfcPhysicalQuantity] = []
        ) {
            self.predefinedType = predefinedType
            self.costValues = costValues
            self.costQuantities = costQuantities
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
                identification: identification
            )
        }
    }
}
