// IfcProductDefinitionShape.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProductDefinitionShape: IfcProductRepresentation, @unchecked Sendable {
        public var hasShapeAspects: [IfcShapeAspect] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            representations: [IfcRepresentation] = [],
            hasShapeAspects: [IfcShapeAspect] = []
        ) {
            self.hasShapeAspects = hasShapeAspects
            super.init(
                name: name,
                description: description,
                representations: representations
            )
        }
    }
}
