// IfcCostSchedule.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCostSchedule: IfcControl, @unchecked Sendable {
        public var predefinedType: IfcCostScheduleTypeEnum? = nil
        public var status: IfcLabel? = nil
        public var submittedOn: IfcDateTime? = nil
        public var updateDate: IfcDateTime? = nil

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
            predefinedType: IfcCostScheduleTypeEnum? = nil,
            status: IfcLabel? = nil,
            submittedOn: IfcDateTime? = nil,
            updateDate: IfcDateTime? = nil
        ) {
            self.predefinedType = predefinedType
            self.status = status
            self.submittedOn = submittedOn
            self.updateDate = updateDate
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
