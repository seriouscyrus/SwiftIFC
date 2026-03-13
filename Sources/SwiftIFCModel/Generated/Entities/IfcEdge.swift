// IfcEdge.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEdge: IfcTopologicalRepresentationItem, @unchecked Sendable {
        public var edgeStart: IfcVertex? = nil
        public var edgeEnd: IfcVertex? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            edgeStart: IfcVertex? = nil,
            edgeEnd: IfcVertex? = nil
        ) {
            self.edgeStart = edgeStart
            self.edgeEnd = edgeEnd
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
