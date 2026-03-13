// IfcRoot.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRoot: Entity { // ABSTRACT
        public var globalId: IfcGloballyUniqueId? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var ownerHistory: IfcOwnerHistory? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil
        ) {
            self.globalId = globalId
            self.name = name
            self.description = description
            self.ownerHistory = ownerHistory
            super.init()
        }
    }
}
