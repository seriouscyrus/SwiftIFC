// IfcRelDefinesByObject.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelDefinesByObject: IfcRelDefines, @unchecked Sendable {
        public var relatedObjects: [IfcObject] = []
        public var relatingObject: IfcObject? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatedObjects: [IfcObject] = [],
            relatingObject: IfcObject? = nil
        ) {
            self.relatedObjects = relatedObjects
            self.relatingObject = relatingObject
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
