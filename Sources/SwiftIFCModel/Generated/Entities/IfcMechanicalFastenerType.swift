// IfcMechanicalFastenerType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMechanicalFastenerType: IfcElementComponentType, @unchecked Sendable {
        public var predefinedType: IfcMechanicalFastenerTypeEnum? = nil
        public var nominalDiameter: IfcPositiveLengthMeasure? = nil
        public var nominalLength: IfcPositiveLengthMeasure? = nil

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
            predefinedType: IfcMechanicalFastenerTypeEnum? = nil,
            nominalDiameter: IfcPositiveLengthMeasure? = nil,
            nominalLength: IfcPositiveLengthMeasure? = nil
        ) {
            self.predefinedType = predefinedType
            self.nominalDiameter = nominalDiameter
            self.nominalLength = nominalLength
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
