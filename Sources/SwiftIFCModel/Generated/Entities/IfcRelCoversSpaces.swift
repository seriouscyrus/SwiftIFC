// IfcRelCoversSpaces.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelCoversSpaces: IfcRelConnects, @unchecked Sendable {
        public var relatingSpace: IfcSpace? = nil
        public var relatedCoverings: [IfcCovering] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            relatingSpace: IfcSpace? = nil,
            relatedCoverings: [IfcCovering] = []
        ) {
            self.relatingSpace = relatingSpace
            self.relatedCoverings = relatedCoverings
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
