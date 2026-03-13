// IfcBoundaryFaceCondition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBoundaryFaceCondition: IfcBoundaryCondition, @unchecked Sendable {
        public var translationalStiffnessByAreaX: IfcModulusOfSubgradeReactionSelect? = nil
        public var translationalStiffnessByAreaY: IfcModulusOfSubgradeReactionSelect? = nil
        public var translationalStiffnessByAreaZ: IfcModulusOfSubgradeReactionSelect? = nil

        public init(
            name: IfcLabel? = nil,
            translationalStiffnessByAreaX: IfcModulusOfSubgradeReactionSelect? = nil,
            translationalStiffnessByAreaY: IfcModulusOfSubgradeReactionSelect? = nil,
            translationalStiffnessByAreaZ: IfcModulusOfSubgradeReactionSelect? = nil
        ) {
            self.translationalStiffnessByAreaX = translationalStiffnessByAreaX
            self.translationalStiffnessByAreaY = translationalStiffnessByAreaY
            self.translationalStiffnessByAreaZ = translationalStiffnessByAreaZ
            super.init(
                name: name
            )
        }
    }
}
