// IfcWorkCalendar.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWorkCalendar: IfcControl, @unchecked Sendable {
        public var predefinedType: IfcWorkCalendarTypeEnum? = nil
        public var workingTimes: [IfcWorkTime] = []
        public var exceptionTimes: [IfcWorkTime] = []

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
            predefinedType: IfcWorkCalendarTypeEnum? = nil,
            workingTimes: [IfcWorkTime] = [],
            exceptionTimes: [IfcWorkTime] = []
        ) {
            self.predefinedType = predefinedType
            self.workingTimes = workingTimes
            self.exceptionTimes = exceptionTimes
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
