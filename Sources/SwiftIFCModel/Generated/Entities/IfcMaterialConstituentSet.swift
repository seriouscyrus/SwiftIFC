// IfcMaterialConstituentSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialConstituentSet: IfcMaterialDefinition, @unchecked Sendable {
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var materialConstituents: [IfcMaterialConstituent] = []

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            materialConstituents: [IfcMaterialConstituent] = []
        ) {
            self.name = name
            self.description = description
            self.materialConstituents = materialConstituents
            super.init(
                hasProperties: hasProperties
            )
        }
    }
}
