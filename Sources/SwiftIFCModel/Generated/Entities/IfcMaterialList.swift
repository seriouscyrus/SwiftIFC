// IfcMaterialList.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialList: Entity {
        public var materials: [IfcMaterial] = []

        public init(
            materials: [IfcMaterial] = []
        ) {
            self.materials = materials
            super.init()
        }
    }
}
