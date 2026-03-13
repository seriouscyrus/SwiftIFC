// IfcVertexLoop.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcVertexLoop: IfcLoop, @unchecked Sendable {
        public var loopVertex: IfcVertex? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            loopVertex: IfcVertex? = nil
        ) {
            self.loopVertex = loopVertex
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
