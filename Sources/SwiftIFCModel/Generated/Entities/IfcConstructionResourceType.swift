// IfcConstructionResourceType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConstructionResourceType: IfcTypeResource, @unchecked Sendable { // ABSTRACT
        public var baseCosts: [IfcAppliedValue] = []
        public var baseQuantity: IfcPhysicalQuantity? = nil

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
            baseQuantity: IfcPhysicalQuantity? = nil
        ) {
            self.baseCosts = baseCosts
            self.baseQuantity = baseQuantity
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
                resourceType: resourceType
            )
        }
    }
}
