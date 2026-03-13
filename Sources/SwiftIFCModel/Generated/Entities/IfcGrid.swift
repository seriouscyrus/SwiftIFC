// IfcGrid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGrid: IfcPositioningElement, @unchecked Sendable {
        public var predefinedType: IfcGridTypeEnum? = nil
        public var uAxes: [IfcGridAxis] = []
        public var vAxes: [IfcGridAxis] = []
        public var wAxes: [IfcGridAxis] = []

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
            predefinedType: IfcGridTypeEnum? = nil,
            uAxes: [IfcGridAxis] = [],
            vAxes: [IfcGridAxis] = [],
            wAxes: [IfcGridAxis] = []
        ) {
            self.predefinedType = predefinedType
            self.uAxes = uAxes
            self.vAxes = vAxes
            self.wAxes = wAxes
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
                representation: representation
            )
        }
    }
}
