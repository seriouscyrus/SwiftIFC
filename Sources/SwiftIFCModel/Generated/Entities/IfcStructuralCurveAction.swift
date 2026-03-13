// IfcStructuralCurveAction.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralCurveAction: IfcStructuralAction, @unchecked Sendable {
        public var projectedOrTrue: IfcProjectedOrTrueLengthEnum? = nil
        public var predefinedType: IfcStructuralCurveActivityTypeEnum? = nil

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
            globalOrLocal: IfcGlobalOrLocalEnum? = nil,
            appliedLoad: IfcStructuralLoad? = nil,
            destabilizingLoad: IfcBoolean? = nil,
            projectedOrTrue: IfcProjectedOrTrueLengthEnum? = nil,
            predefinedType: IfcStructuralCurveActivityTypeEnum? = nil
        ) {
            self.projectedOrTrue = projectedOrTrue
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
                globalOrLocal: globalOrLocal,
                appliedLoad: appliedLoad,
                destabilizingLoad: destabilizingLoad
            )
        }
    }
}
