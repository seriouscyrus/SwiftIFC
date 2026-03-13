// IfcManifoldSolidBrep.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcManifoldSolidBrep: IfcSolidModel, @unchecked Sendable { // ABSTRACT
        public var outer: IfcClosedShell? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            outer: IfcClosedShell? = nil
        ) {
            self.outer = outer
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
