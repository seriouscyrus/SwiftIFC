// IfcRelConnectsStructuralActivity.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsStructuralActivity: IfcRelConnects, @unchecked Sendable {
        public var relatingElement: IfcStructuralActivityAssignmentSelect
        public var relatedStructuralActivity: IfcStructuralActivity? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingElement: IfcStructuralActivityAssignmentSelect,
            relatedStructuralActivity: IfcStructuralActivity? = nil
        ) {
            self.relatingElement = relatingElement
            self.relatedStructuralActivity = relatedStructuralActivity
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
