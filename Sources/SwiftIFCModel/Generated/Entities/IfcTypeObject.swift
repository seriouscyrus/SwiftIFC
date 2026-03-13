// IfcTypeObject.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTypeObject: IfcObjectDefinition, @unchecked Sendable {
        public var applicableOccurrence: IfcIdentifier? = nil
        public var hasPropertySets: [IfcPropertySetDefinition] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            applicableOccurrence: IfcIdentifier? = nil,
            hasPropertySets: [IfcPropertySetDefinition] = []
        ) {
            self.applicableOccurrence = applicableOccurrence
            self.hasPropertySets = hasPropertySets
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy
            )
        }
    }
}
