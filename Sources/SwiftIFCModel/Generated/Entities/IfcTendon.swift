// IfcTendon.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTendon: IfcReinforcingElement, @unchecked Sendable {
        public var predefinedType: IfcTendonTypeEnum? = nil
        public var nominalDiameter: IfcPositiveLengthMeasure? = nil
        public var crossSectionArea: IfcAreaMeasure? = nil
        public var tensionForce: IfcForceMeasure? = nil
        public var preStress: IfcPressureMeasure? = nil
        public var frictionCoefficient: IfcNormalisedRatioMeasure? = nil
        public var anchorageSlip: IfcPositiveLengthMeasure? = nil
        public var minCurvatureRadius: IfcPositiveLengthMeasure? = nil

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
            hasProjections: [IfcRelProjectsElement] = [],
            hasOpenings: [IfcRelVoidsElement] = [],
            steelGrade: IfcLabel? = nil,
            predefinedType: IfcTendonTypeEnum? = nil,
            nominalDiameter: IfcPositiveLengthMeasure? = nil,
            crossSectionArea: IfcAreaMeasure? = nil,
            tensionForce: IfcForceMeasure? = nil,
            preStress: IfcPressureMeasure? = nil,
            frictionCoefficient: IfcNormalisedRatioMeasure? = nil,
            anchorageSlip: IfcPositiveLengthMeasure? = nil,
            minCurvatureRadius: IfcPositiveLengthMeasure? = nil
        ) {
            self.predefinedType = predefinedType
            self.nominalDiameter = nominalDiameter
            self.crossSectionArea = crossSectionArea
            self.tensionForce = tensionForce
            self.preStress = preStress
            self.frictionCoefficient = frictionCoefficient
            self.anchorageSlip = anchorageSlip
            self.minCurvatureRadius = minCurvatureRadius
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
