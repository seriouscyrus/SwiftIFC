// IfcSubContractResource.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSubContractResource: IfcConstructionResource, @unchecked Sendable {
        public var predefinedType: IfcSubContractResourceTypeEnum? = nil

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
            longDescription: IfcText? = nil,
            usage: IfcResourceTime? = nil,
            baseCosts: [IfcAppliedValue] = [],
            baseQuantity: IfcPhysicalQuantity? = nil,
            predefinedType: IfcSubContractResourceTypeEnum? = nil
        ) {
            self.predefinedType = predefinedType
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
                identification: identification,
                longDescription: longDescription,
                usage: usage,
                baseCosts: baseCosts,
                baseQuantity: baseQuantity
            )
        }
    }
}
