// IfcTask.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTask: IfcProcess, @unchecked Sendable {
        public var status: IfcLabel? = nil
        public var workMethod: IfcLabel? = nil
        public var isMilestone: IfcBoolean? = nil
        public var priority: IfcInteger? = nil
        public var predefinedType: IfcTaskTypeEnum? = nil
        public var taskTime: IfcTaskTime? = nil

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
            status: IfcLabel? = nil,
            workMethod: IfcLabel? = nil,
            isMilestone: IfcBoolean? = nil,
            priority: IfcInteger? = nil,
            predefinedType: IfcTaskTypeEnum? = nil,
            taskTime: IfcTaskTime? = nil
        ) {
            self.status = status
            self.workMethod = workMethod
            self.isMilestone = isMilestone
            self.priority = priority
            self.predefinedType = predefinedType
            self.taskTime = taskTime
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
