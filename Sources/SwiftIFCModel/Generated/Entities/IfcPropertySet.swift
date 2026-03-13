// IfcPropertySet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertySet: IfcPropertySetDefinition, @unchecked Sendable {
        public var hasProperties: [IfcProperty] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            hasProperties: [IfcProperty] = []
        ) {
            self.hasProperties = hasProperties
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
