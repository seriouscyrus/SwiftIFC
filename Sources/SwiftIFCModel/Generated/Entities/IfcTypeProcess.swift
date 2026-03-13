// IfcTypeProcess.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTypeProcess: IfcTypeObject, @unchecked Sendable { // ABSTRACT
        public var identification: IfcIdentifier? = nil
        public var longDescription: IfcText? = nil
        public var processType: IfcLabel? = nil

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
            processType: IfcLabel? = nil
        ) {
            self.identification = identification
            self.longDescription = longDescription
            self.processType = processType
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy,
                applicableOccurrence: applicableOccurrence,
                hasPropertySets: hasPropertySets
            )
        }
    }
}
