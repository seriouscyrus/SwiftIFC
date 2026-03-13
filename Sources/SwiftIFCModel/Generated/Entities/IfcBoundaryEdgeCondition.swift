// IfcBoundaryEdgeCondition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBoundaryEdgeCondition: IfcBoundaryCondition, @unchecked Sendable {
        public var translationalStiffnessByLengthX: IfcModulusOfTranslationalSubgradeReactionSelect? = nil
        public var translationalStiffnessByLengthY: IfcModulusOfTranslationalSubgradeReactionSelect? = nil
        public var translationalStiffnessByLengthZ: IfcModulusOfTranslationalSubgradeReactionSelect? = nil
        public var rotationalStiffnessByLengthX: IfcModulusOfRotationalSubgradeReactionSelect? = nil
        public var rotationalStiffnessByLengthY: IfcModulusOfRotationalSubgradeReactionSelect? = nil
        public var rotationalStiffnessByLengthZ: IfcModulusOfRotationalSubgradeReactionSelect? = nil

        public init(
            name: IfcLabel? = nil,
            translationalStiffnessByLengthX: IfcModulusOfTranslationalSubgradeReactionSelect? = nil,
            translationalStiffnessByLengthY: IfcModulusOfTranslationalSubgradeReactionSelect? = nil,
            translationalStiffnessByLengthZ: IfcModulusOfTranslationalSubgradeReactionSelect? = nil,
            rotationalStiffnessByLengthX: IfcModulusOfRotationalSubgradeReactionSelect? = nil,
            rotationalStiffnessByLengthY: IfcModulusOfRotationalSubgradeReactionSelect? = nil,
            rotationalStiffnessByLengthZ: IfcModulusOfRotationalSubgradeReactionSelect? = nil
        ) {
            self.translationalStiffnessByLengthX = translationalStiffnessByLengthX
            self.translationalStiffnessByLengthY = translationalStiffnessByLengthY
            self.translationalStiffnessByLengthZ = translationalStiffnessByLengthZ
            self.rotationalStiffnessByLengthX = rotationalStiffnessByLengthX
            self.rotationalStiffnessByLengthY = rotationalStiffnessByLengthY
            self.rotationalStiffnessByLengthZ = rotationalStiffnessByLengthZ
            super.init(
                name: name
            )
        }
    }
}
