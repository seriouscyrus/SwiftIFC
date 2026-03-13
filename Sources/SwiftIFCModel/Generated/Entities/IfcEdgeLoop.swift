// IfcEdgeLoop.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEdgeLoop: IfcLoop, @unchecked Sendable {
        public var edgeList: [IfcOrientedEdge] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            edgeList: [IfcOrientedEdge] = []
        ) {
            self.edgeList = edgeList
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
