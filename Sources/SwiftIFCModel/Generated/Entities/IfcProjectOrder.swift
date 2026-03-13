// IfcProjectOrder.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProjectOrder: IfcControl, @unchecked Sendable {
        public var predefinedType: IfcProjectOrderTypeEnum? = nil
        public var status: IfcLabel? = nil
        public var longDescription: IfcText? = nil

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
            predefinedType: IfcProjectOrderTypeEnum? = nil,
            status: IfcLabel? = nil,
            longDescription: IfcText? = nil
        ) {
            self.predefinedType = predefinedType
            self.status = status
            self.longDescription = longDescription
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
