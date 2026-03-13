// IfcOrientedEdge.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcOrientedEdge: IfcEdge, @unchecked Sendable {
        public var orientation: IfcBoolean? = nil
        public var edgeElement: IfcEdge? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            edgeStart: IfcVertex? = nil,
            edgeEnd: IfcVertex? = nil,
            orientation: IfcBoolean? = nil,
            edgeElement: IfcEdge? = nil
        ) {
            self.orientation = orientation
            self.edgeElement = edgeElement
            super.init(
                styledByItem: styledByItem,
                edgeStart: edgeStart,
                edgeEnd: edgeEnd
            )
        }
    }
}
