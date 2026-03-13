// IfcReinforcingMeshType.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcReinforcingMeshType: IfcReinforcingElementType, @unchecked Sendable {
        public var predefinedType: IfcReinforcingMeshTypeEnum? = nil
        public var meshLength: IfcPositiveLengthMeasure? = nil
        public var meshWidth: IfcPositiveLengthMeasure? = nil
        public var longitudinalBarNominalDiameter: IfcPositiveLengthMeasure? = nil
        public var transverseBarNominalDiameter: IfcPositiveLengthMeasure? = nil
        public var longitudinalBarCrossSectionArea: IfcAreaMeasure? = nil
        public var transverseBarCrossSectionArea: IfcAreaMeasure? = nil
        public var longitudinalBarSpacing: IfcPositiveLengthMeasure? = nil
        public var transverseBarSpacing: IfcPositiveLengthMeasure? = nil
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
            predefinedType: IfcReinforcingMeshTypeEnum? = nil,
            meshLength: IfcPositiveLengthMeasure? = nil,
            meshWidth: IfcPositiveLengthMeasure? = nil,
            longitudinalBarNominalDiameter: IfcPositiveLengthMeasure? = nil,
            transverseBarNominalDiameter: IfcPositiveLengthMeasure? = nil,
            longitudinalBarCrossSectionArea: IfcAreaMeasure? = nil,
            transverseBarCrossSectionArea: IfcAreaMeasure? = nil,
            longitudinalBarSpacing: IfcPositiveLengthMeasure? = nil,
            transverseBarSpacing: IfcPositiveLengthMeasure? = nil,
            bendingShapeCode: IfcLabel? = nil,
            bendingParameters: IfcBendingParameterSelect? = nil
        ) {
            self.predefinedType = predefinedType
            self.meshLength = meshLength
            self.meshWidth = meshWidth
            self.longitudinalBarNominalDiameter = longitudinalBarNominalDiameter
            self.transverseBarNominalDiameter = transverseBarNominalDiameter
            self.longitudinalBarCrossSectionArea = longitudinalBarCrossSectionArea
            self.transverseBarCrossSectionArea = transverseBarCrossSectionArea
            self.longitudinalBarSpacing = longitudinalBarSpacing
            self.transverseBarSpacing = transverseBarSpacing
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
