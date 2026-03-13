// IfcObject.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcObject: IfcObjectDefinition, @unchecked Sendable { // ABSTRACT
        public var objectType: IfcLabel? = nil
        public var isDeclaredBy: IfcRelDefinesByObject? = nil
        public var isTypedBy: IfcRelDefinesByType? = nil
        public var isDefinedBy: [IfcRelDefinesByProperties] = []

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
            isDefinedBy: [IfcRelDefinesByProperties] = []
        ) {
            self.objectType = objectType
            self.isDeclaredBy = isDeclaredBy
            self.isTypedBy = isTypedBy
            self.isDefinedBy = isDefinedBy
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
