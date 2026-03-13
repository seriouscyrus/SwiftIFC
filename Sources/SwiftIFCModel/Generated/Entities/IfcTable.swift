// IfcTable.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTable: Entity {
        public var name: IfcLabel? = nil
        public var rows: [IfcTableRow] = []
        public var columns: [IfcTableColumn] = []

        public init(
            name: IfcLabel? = nil,
            rows: [IfcTableRow] = [],
            columns: [IfcTableColumn] = []
        ) {
            self.name = name
            self.rows = rows
            self.columns = columns
            super.init()
        }
    }
}
