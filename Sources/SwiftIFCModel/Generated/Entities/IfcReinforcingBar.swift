// IfcReinforcingBar.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReinforcingBar: IfcReinforcingElement, @unchecked Sendable {
        public var nominalDiameter: IfcPositiveLengthMeasure? = nil
        public var crossSectionArea: IfcAreaMeasure? = nil
        public var barLength: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcReinforcingBarTypeEnum? = nil
        public var barSurface: IfcReinforcingBarSurfaceEnum? = nil

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
            nominalDiameter: IfcPositiveLengthMeasure? = nil,
            crossSectionArea: IfcAreaMeasure? = nil,
            barLength: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcReinforcingBarTypeEnum? = nil,
            barSurface: IfcReinforcingBarSurfaceEnum? = nil
        ) {
            self.nominalDiameter = nominalDiameter
            self.crossSectionArea = crossSectionArea
            self.barLength = barLength
            self.predefinedType = predefinedType
            self.barSurface = barSurface
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
