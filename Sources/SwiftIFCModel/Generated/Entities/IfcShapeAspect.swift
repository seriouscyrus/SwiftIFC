// IfcShapeAspect.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcShapeAspect: Entity {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var productDefinitional: IfcLogical? = nil
        public var shapeRepresentations: [IfcShapeModel] = []
        public var partOfProductDefinitionShape: IfcProductRepresentationSelect? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            productDefinitional: IfcLogical? = nil,
            shapeRepresentations: [IfcShapeModel] = [],
            partOfProductDefinitionShape: IfcProductRepresentationSelect? = nil
        ) {
            self.name = name
            self.description = description
            self.productDefinitional = productDefinitional
            self.shapeRepresentations = shapeRepresentations
            self.partOfProductDefinitionShape = partOfProductDefinitionShape
            super.init()
        }
    }
}
