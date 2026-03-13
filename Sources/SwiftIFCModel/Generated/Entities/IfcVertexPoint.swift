// IfcVertexPoint.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcVertexPoint: IfcVertex, @unchecked Sendable {
        public var vertexGeometry: IfcPoint? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            vertexGeometry: IfcPoint? = nil
        ) {
            self.vertexGeometry = vertexGeometry
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
