// IfcEventType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEventType: IfcTypeProcess, @unchecked Sendable {
        public var predefinedType: IfcEventTypeEnum? = nil
        public var eventTriggerType: IfcEventTriggerTypeEnum? = nil
        public var userDefinedEventTriggerType: IfcLabel? = nil

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
            processType: IfcLabel? = nil,
            predefinedType: IfcEventTypeEnum? = nil,
            eventTriggerType: IfcEventTriggerTypeEnum? = nil,
            userDefinedEventTriggerType: IfcLabel? = nil
        ) {
            self.predefinedType = predefinedType
            self.eventTriggerType = eventTriggerType
            self.userDefinedEventTriggerType = userDefinedEventTriggerType
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
                processType: processType
            )
        }
    }
}
