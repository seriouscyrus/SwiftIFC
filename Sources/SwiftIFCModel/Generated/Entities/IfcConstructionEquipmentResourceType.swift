// IfcConstructionEquipmentResourceType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConstructionEquipmentResourceType: IfcConstructionResourceType, @unchecked Sendable {
        public var predefinedType: IfcConstructionEquipmentResourceTypeEnum? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            applicableOccurrence: IfcIdentifier? = nil,
            hasPropertySets: [IfcPropertySetDefinition] = [],
            identification: IfcIdentifier? = nil,
            longDescription: IfcText? = nil,
            resourceType: IfcLabel? = nil,
            baseCosts: [IfcAppliedValue] = [],
            baseQuantity: IfcPhysicalQuantity? = nil,
            predefinedType: IfcConstructionEquipmentResourceTypeEnum? = nil
        ) {
            self.predefinedType = predefinedType
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy,
                applicableOccurrence: applicableOccurrence,
                hasPropertySets: hasPropertySets,
                identification: identification,
                longDescription: longDescription,
                resourceType: resourceType,
                baseCosts: baseCosts,
                baseQuantity: baseQuantity
            )
        }
    }
}
