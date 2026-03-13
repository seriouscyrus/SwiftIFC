// IfcRelServicesBuildings.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelServicesBuildings: IfcRelConnects, @unchecked Sendable {
        public var relatingSystem: IfcSystem? = nil
        public var relatedBuildings: [IfcSpatialElement] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingSystem: IfcSystem? = nil,
            relatedBuildings: [IfcSpatialElement] = []
        ) {
            self.relatingSystem = relatingSystem
            self.relatedBuildings = relatedBuildings
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
