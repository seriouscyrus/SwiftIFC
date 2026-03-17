// IfcRelDefinesByType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelDefinesByType: IfcRelDefines, @unchecked Sendable {
        public var relatingType: IfcTypeObject? = nil
        public var relatedObjects: [IfcObject] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingType: IfcTypeObject? = nil,
            relatedObjects: [IfcObject] = []
        ) {
            self.relatingType = relatingType
            self.relatedObjects = relatedObjects
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
