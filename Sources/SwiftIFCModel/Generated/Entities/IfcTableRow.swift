// IfcTableRow.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTableRow: Entity {
        public var isHeading: IfcBoolean? = nil
        public var rowCells: IfcValue? = nil

        public init(
            isHeading: IfcBoolean? = nil,
            rowCells: IfcValue? = nil
        ) {
            self.isHeading = isHeading
            self.rowCells = rowCells
            super.init()
        }
    }
}
