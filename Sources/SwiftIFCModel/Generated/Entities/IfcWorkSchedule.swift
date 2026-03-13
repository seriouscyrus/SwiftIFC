// IfcWorkSchedule.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWorkSchedule: IfcWorkControl, @unchecked Sendable {
        public var predefinedType: IfcWorkScheduleTypeEnum? = nil

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
            creationDate: IfcDateTime? = nil,
            purpose: IfcLabel? = nil,
            duration: IfcDuration? = nil,
            totalFloat: IfcDuration? = nil,
            startTime: IfcDateTime? = nil,
            finishTime: IfcDateTime? = nil,
            creators: [IfcPerson] = [],
            predefinedType: IfcWorkScheduleTypeEnum? = nil
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
                creationDate: creationDate,
                purpose: purpose,
                duration: duration,
                totalFloat: totalFloat,
                startTime: startTime,
                finishTime: finishTime,
                creators: creators
            )
        }
    }
}
