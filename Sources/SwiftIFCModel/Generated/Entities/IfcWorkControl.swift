// IfcWorkControl.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWorkControl: IfcControl, @unchecked Sendable { // ABSTRACT
        public var creationDate: IfcDateTime? = nil
        public var purpose: IfcLabel? = nil
        public var duration: IfcDuration? = nil
        public var totalFloat: IfcDuration? = nil
        public var startTime: IfcDateTime? = nil
        public var finishTime: IfcDateTime? = nil
        public var creators: [IfcPerson] = []

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
            creators: [IfcPerson] = []
        ) {
            self.creationDate = creationDate
            self.purpose = purpose
            self.duration = duration
            self.totalFloat = totalFloat
            self.startTime = startTime
            self.finishTime = finishTime
            self.creators = creators
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
