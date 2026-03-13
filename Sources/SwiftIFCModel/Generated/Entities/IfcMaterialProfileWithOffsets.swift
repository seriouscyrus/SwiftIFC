// IfcMaterialProfileWithOffsets.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialProfileWithOffsets: IfcMaterialProfile, @unchecked Sendable {
        public var offsetValues: [IfcLengthMeasure] = []

        public init(
            hasProperties: [IfcMaterialProperties] = [],
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            priority: IfcInteger? = nil,
            category: IfcLabel? = nil,
            material: IfcMaterial? = nil,
            profile: IfcProfileDef? = nil,
            offsetValues: [IfcLengthMeasure] = []
        ) {
            self.offsetValues = offsetValues
            super.init(
                hasProperties: hasProperties,
                name: name,
                description: description,
                priority: priority,
                category: category,
                material: material,
                profile: profile
            )
        }
    }
}
