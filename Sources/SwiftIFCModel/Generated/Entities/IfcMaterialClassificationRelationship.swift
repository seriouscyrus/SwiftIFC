// IfcMaterialClassificationRelationship.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialClassificationRelationship: Entity {
        public var materialClassifications: IfcClassificationSelect? = nil
        public var classifiedMaterial: IfcMaterial? = nil

        public init(
            materialClassifications: IfcClassificationSelect? = nil,
            classifiedMaterial: IfcMaterial? = nil
        ) {
            self.materialClassifications = materialClassifications
            self.classifiedMaterial = classifiedMaterial
            super.init()
        }
    }
}
