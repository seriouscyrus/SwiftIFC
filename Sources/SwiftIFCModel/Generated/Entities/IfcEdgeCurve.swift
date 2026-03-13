// IfcEdgeCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcEdgeCurve: IfcEdge, @unchecked Sendable {
        public var sameSense: IfcBoolean? = nil
        public var edgeGeometry: IfcCurve? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            edgeStart: IfcVertex? = nil,
            edgeEnd: IfcVertex? = nil,
            sameSense: IfcBoolean? = nil,
            edgeGeometry: IfcCurve? = nil
        ) {
            self.sameSense = sameSense
            self.edgeGeometry = edgeGeometry
            super.init(
                styledByItem: styledByItem,
                edgeStart: edgeStart,
                edgeEnd: edgeEnd
            )
        }
    }
}
