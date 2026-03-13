// IfcTextureVertex.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextureVertex: IfcPresentationItem, @unchecked Sendable {
        public var coordinates: [IfcParameterValue] = []

        public init(
            coordinates: [IfcParameterValue] = []
        ) {
            self.coordinates = coordinates
            super.init()
        }
    }
}
