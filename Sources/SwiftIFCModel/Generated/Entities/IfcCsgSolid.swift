// IfcCsgSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCsgSolid: IfcSolidModel, @unchecked Sendable {
        public var treeRootExpression: IfcCsgSelect

        public init(
            styledByItem: IfcStyledItem? = nil,
            treeRootExpression: IfcCsgSelect
        ) {
            self.treeRootExpression = treeRootExpression
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
