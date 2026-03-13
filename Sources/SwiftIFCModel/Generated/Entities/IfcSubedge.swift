// IfcSubedge.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSubedge: IfcEdge, @unchecked Sendable {
        public var parentEdge: IfcEdge? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            edgeStart: IfcVertex? = nil,
            edgeEnd: IfcVertex? = nil,
            parentEdge: IfcEdge? = nil
        ) {
            self.parentEdge = parentEdge
            super.init(
                styledByItem: styledByItem,
                edgeStart: edgeStart,
                edgeEnd: edgeEnd
            )
        }
    }
}
