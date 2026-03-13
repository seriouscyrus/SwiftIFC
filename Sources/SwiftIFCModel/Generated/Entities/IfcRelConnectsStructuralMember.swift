// IfcRelConnectsStructuralMember.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsStructuralMember: IfcRelConnects, @unchecked Sendable {
        public var supportedLength: IfcLengthMeasure? = nil
        public var relatingStructuralMember: IfcStructuralMember? = nil
        public var relatedStructuralConnection: IfcStructuralConnection? = nil
        public var appliedCondition: IfcBoundaryCondition? = nil
        public var additionalConditions: IfcStructuralConnectionCondition? = nil
        public var conditionCoordinateSystem: IfcAxis2Placement3D? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            supportedLength: IfcLengthMeasure? = nil,
            relatingStructuralMember: IfcStructuralMember? = nil,
            relatedStructuralConnection: IfcStructuralConnection? = nil,
            appliedCondition: IfcBoundaryCondition? = nil,
            additionalConditions: IfcStructuralConnectionCondition? = nil,
            conditionCoordinateSystem: IfcAxis2Placement3D? = nil
        ) {
            self.supportedLength = supportedLength
            self.relatingStructuralMember = relatingStructuralMember
            self.relatedStructuralConnection = relatedStructuralConnection
            self.appliedCondition = appliedCondition
            self.additionalConditions = additionalConditions
            self.conditionCoordinateSystem = conditionCoordinateSystem
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
