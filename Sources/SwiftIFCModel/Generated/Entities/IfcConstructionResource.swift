// IfcConstructionResource.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConstructionResource: IfcResource, @unchecked Sendable { // ABSTRACT
        public var usage: IfcResourceTime? = nil
        public var baseCosts: [IfcAppliedValue] = []
        public var baseQuantity: IfcPhysicalQuantity? = nil

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
            baseQuantity: IfcPhysicalQuantity? = nil
        ) {
            self.usage = usage
            self.baseCosts = baseCosts
            self.baseQuantity = baseQuantity
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
                longDescription: longDescription
            )
        }
    }
}
