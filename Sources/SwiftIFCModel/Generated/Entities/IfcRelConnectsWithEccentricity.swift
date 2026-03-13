// IfcRelConnectsWithEccentricity.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelConnectsWithEccentricity: IfcRelConnectsStructuralMember, @unchecked Sendable {
        public var connectionConstraint: IfcConnectionGeometry? = nil

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
            conditionCoordinateSystem: IfcAxis2Placement3D? = nil,
            connectionConstraint: IfcConnectionGeometry? = nil
        ) {
            self.connectionConstraint = connectionConstraint
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                supportedLength: supportedLength,
                relatingStructuralMember: relatingStructuralMember,
                relatedStructuralConnection: relatedStructuralConnection,
                appliedCondition: appliedCondition,
                additionalConditions: additionalConditions,
                conditionCoordinateSystem: conditionCoordinateSystem
            )
        }
    }
}
