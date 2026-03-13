// IfcReinforcingBarType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReinforcingBarType: IfcReinforcingElementType, @unchecked Sendable {
        public var predefinedType: IfcReinforcingBarTypeEnum? = nil
        public var nominalDiameter: IfcPositiveLengthMeasure? = nil
        public var crossSectionArea: IfcAreaMeasure? = nil
        public var barLength: IfcPositiveLengthMeasure? = nil
        public var barSurface: IfcReinforcingBarSurfaceEnum? = nil
        public var bendingShapeCode: IfcLabel? = nil
        public var bendingParameters: IfcBendingParameterSelect? = nil

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
            predefinedType: IfcReinforcingBarTypeEnum? = nil,
            nominalDiameter: IfcPositiveLengthMeasure? = nil,
            crossSectionArea: IfcAreaMeasure? = nil,
            barLength: IfcPositiveLengthMeasure? = nil,
            barSurface: IfcReinforcingBarSurfaceEnum? = nil,
            bendingShapeCode: IfcLabel? = nil,
            bendingParameters: IfcBendingParameterSelect? = nil
        ) {
            self.predefinedType = predefinedType
            self.nominalDiameter = nominalDiameter
            self.crossSectionArea = crossSectionArea
            self.barLength = barLength
            self.barSurface = barSurface
            self.bendingShapeCode = bendingShapeCode
            self.bendingParameters = bendingParameters
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
