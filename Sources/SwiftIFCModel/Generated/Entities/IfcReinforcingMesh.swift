// IfcReinforcingMesh.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReinforcingMesh: IfcReinforcingElement, @unchecked Sendable {
        public var meshLength: IfcPositiveLengthMeasure? = nil
        public var meshWidth: IfcPositiveLengthMeasure? = nil
        public var longitudinalBarNominalDiameter: IfcPositiveLengthMeasure? = nil
        public var transverseBarNominalDiameter: IfcPositiveLengthMeasure? = nil
        public var longitudinalBarCrossSectionArea: IfcAreaMeasure? = nil
        public var transverseBarCrossSectionArea: IfcAreaMeasure? = nil
        public var longitudinalBarSpacing: IfcPositiveLengthMeasure? = nil
        public var transverseBarSpacing: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcReinforcingMeshTypeEnum? = nil

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
            steelGrade: IfcLabel? = nil,
            meshLength: IfcPositiveLengthMeasure? = nil,
            meshWidth: IfcPositiveLengthMeasure? = nil,
            longitudinalBarNominalDiameter: IfcPositiveLengthMeasure? = nil,
            transverseBarNominalDiameter: IfcPositiveLengthMeasure? = nil,
            longitudinalBarCrossSectionArea: IfcAreaMeasure? = nil,
            transverseBarCrossSectionArea: IfcAreaMeasure? = nil,
            longitudinalBarSpacing: IfcPositiveLengthMeasure? = nil,
            transverseBarSpacing: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcReinforcingMeshTypeEnum? = nil
        ) {
            self.meshLength = meshLength
            self.meshWidth = meshWidth
            self.longitudinalBarNominalDiameter = longitudinalBarNominalDiameter
            self.transverseBarNominalDiameter = transverseBarNominalDiameter
            self.longitudinalBarCrossSectionArea = longitudinalBarCrossSectionArea
            self.transverseBarCrossSectionArea = transverseBarCrossSectionArea
            self.longitudinalBarSpacing = longitudinalBarSpacing
            self.transverseBarSpacing = transverseBarSpacing
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
                hasOpenings: hasOpenings,
                steelGrade: steelGrade
            )
        }
    }
}
