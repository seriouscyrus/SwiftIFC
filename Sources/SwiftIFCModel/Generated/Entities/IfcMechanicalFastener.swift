// IfcMechanicalFastener.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMechanicalFastener: IfcElementComponent, @unchecked Sendable {
        public var nominalDiameter: IfcPositiveLengthMeasure? = nil
        public var nominalLength: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcMechanicalFastenerTypeEnum? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            objectType: IfcLabel? = nil,
            isDeclaredBy: IfcRelDefinesByObject? = nil,
            isTypedBy: IfcRelDefinesByType? = nil,
            isDefinedBy: [IfcRelDefinesByProperties] = [],
            objectPlacement: IfcObjectPlacement? = nil,
            representation: IfcProductRepresentation? = nil,
            tag: IfcIdentifier? = nil,
            hasProjections: IfcRelProjectsElement? = nil,
            hasOpenings: IfcRelVoidsElement? = nil,
            nominalDiameter: IfcPositiveLengthMeasure? = nil,
            nominalLength: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcMechanicalFastenerTypeEnum? = nil
        ) {
            self.nominalDiameter = nominalDiameter
            self.nominalLength = nominalLength
            self.predefinedType = predefinedType
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy,
                objectType: objectType,
                isDeclaredBy: isDeclaredBy,
                isTypedBy: isTypedBy,
                isDefinedBy: isDefinedBy,
                objectPlacement: objectPlacement,
                representation: representation,
                tag: tag,
                hasProjections: hasProjections,
                hasOpenings: hasOpenings
            )
        }
    }
}
