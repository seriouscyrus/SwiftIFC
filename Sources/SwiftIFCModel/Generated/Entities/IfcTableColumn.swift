// IfcTableColumn.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTableColumn: Entity {
        public var identifier: IfcIdentifier? = nil
        public var name: IfcLabel? = nil
        public var description: IfcText? = nil
        public var unit: IfcUnit? = nil
        public var referencePath: IfcReference? = nil

        public init(
            identifier: IfcIdentifier? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            unit: IfcUnit? = nil,
            referencePath: IfcReference? = nil
        ) {
            self.identifier = identifier
            self.name = name
            self.description = description
            self.unit = unit
            self.referencePath = referencePath
            super.init()
        }
    }
}
