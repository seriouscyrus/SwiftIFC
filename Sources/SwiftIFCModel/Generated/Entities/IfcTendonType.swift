// IfcTendonType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTendonType: IfcReinforcingElementType, @unchecked Sendable {
        public var predefinedType: IfcTendonTypeEnum? = nil
        public var nominalDiameter: IfcPositiveLengthMeasure? = nil
        public var crossSectionArea: IfcAreaMeasure? = nil
        public var sheathDiameter: IfcPositiveLengthMeasure? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            isNestedBy: [IfcRelNests] = [],
            isDecomposedBy: [IfcRelAggregates] = [],
            applicableOccurrence: IfcIdentifier? = nil,
            hasPropertySets: [IfcPropertySetDefinition] = [],
            tag: IfcLabel? = nil,
            representationMaps: [IfcRepresentationMap] = [],
            elementType: IfcLabel? = nil,
            predefinedType: IfcTendonTypeEnum? = nil,
            nominalDiameter: IfcPositiveLengthMeasure? = nil,
            crossSectionArea: IfcAreaMeasure? = nil,
            sheathDiameter: IfcPositiveLengthMeasure? = nil
        ) {
            self.predefinedType = predefinedType
            self.nominalDiameter = nominalDiameter
            self.crossSectionArea = crossSectionArea
            self.sheathDiameter = sheathDiameter
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory,
                isNestedBy: isNestedBy,
                isDecomposedBy: isDecomposedBy,
                applicableOccurrence: applicableOccurrence,
                hasPropertySets: hasPropertySets,
                tag: tag,
                representationMaps: representationMaps,
                elementType: elementType
            )
        }
    }
}
