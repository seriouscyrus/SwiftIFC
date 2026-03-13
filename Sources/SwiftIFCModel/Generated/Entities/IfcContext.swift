// IfcContext.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcContext: IfcObjectDefinition, @unchecked Sendable { // ABSTRACT
        public var objectType: IfcLabel? = nil
        public var longName: IfcLabel? = nil
        public var phase: IfcLabel? = nil
        public var representationContexts: [IfcRepresentationContext] = []
        public var unitsInContext: IfcUnitAssignment? = nil
        public var isDefinedBy: [IfcRelDefinesByProperties] = []
        public var declares: [IfcRelDeclares] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            objectType: IfcLabel? = nil,
            longName: IfcLabel? = nil,
            phase: IfcLabel? = nil,
            representationContexts: [IfcRepresentationContext] = [],
            unitsInContext: IfcUnitAssignment? = nil,
            isDefinedBy: [IfcRelDefinesByProperties] = [],
            declares: [IfcRelDeclares] = []
        ) {
            self.objectType = objectType
            self.longName = longName
            self.phase = phase
            self.representationContexts = representationContexts
            self.unitsInContext = unitsInContext
            self.isDefinedBy = isDefinedBy
            self.declares = declares
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy
            )
        }
    }
}
