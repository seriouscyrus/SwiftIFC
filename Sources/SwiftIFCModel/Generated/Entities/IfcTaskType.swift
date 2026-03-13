// IfcTaskType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTaskType: IfcTypeProcess, @unchecked Sendable {
        public var predefinedType: IfcTaskTypeEnum? = nil
        public var workMethod: IfcLabel? = nil

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
            predefinedType: IfcTaskTypeEnum? = nil,
            workMethod: IfcLabel? = nil
        ) {
            self.predefinedType = predefinedType
            self.workMethod = workMethod
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
