// IfcEvent.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEvent: IfcProcess, @unchecked Sendable {
        public var predefinedType: IfcEventTypeEnum? = nil
        public var eventTriggerType: IfcEventTriggerTypeEnum? = nil
        public var userDefinedEventTriggerType: IfcLabel? = nil
        public var eventOccurenceTime: IfcEventTime? = nil

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
            predefinedType: IfcEventTypeEnum? = nil,
            eventTriggerType: IfcEventTriggerTypeEnum? = nil,
            userDefinedEventTriggerType: IfcLabel? = nil,
            eventOccurenceTime: IfcEventTime? = nil
        ) {
            self.predefinedType = predefinedType
            self.eventTriggerType = eventTriggerType
            self.userDefinedEventTriggerType = userDefinedEventTriggerType
            self.eventOccurenceTime = eventOccurenceTime
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
