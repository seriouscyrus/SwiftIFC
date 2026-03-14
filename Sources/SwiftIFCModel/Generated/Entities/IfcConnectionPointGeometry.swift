// IfcConnectionPointGeometry.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConnectionPointGeometry: IfcConnectionGeometry, @unchecked Sendable {
        public var pointOnRelatingElement: IfcPointOrVertexPoint? = nil
        public var pointOnRelatedElement: IfcPointOrVertexPoint? = nil

        public init(
            pointOnRelatingElement: IfcPointOrVertexPoint? = nil,
            pointOnRelatedElement: IfcPointOrVertexPoint? = nil
        ) {
            self.pointOnRelatingElement = pointOnRelatingElement
            self.pointOnRelatedElement = pointOnRelatedElement
            super.init()
        }
    }
}
