// IfcStairFlight.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStairFlight: IfcBuiltElement, @unchecked Sendable {
        public var numberOfRisers: IfcInteger? = nil
        public var numberOfTreads: IfcInteger? = nil
        public var riserHeight: IfcPositiveLengthMeasure? = nil
        public var treadLength: IfcPositiveLengthMeasure? = nil
        public var predefinedType: IfcStairFlightTypeEnum? = nil

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
            numberOfRisers: IfcInteger? = nil,
            numberOfTreads: IfcInteger? = nil,
            riserHeight: IfcPositiveLengthMeasure? = nil,
            treadLength: IfcPositiveLengthMeasure? = nil,
            predefinedType: IfcStairFlightTypeEnum? = nil
        ) {
            self.numberOfRisers = numberOfRisers
            self.numberOfTreads = numberOfTreads
            self.riserHeight = riserHeight
            self.treadLength = treadLength
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
