// IfcStructuralAnalysisModel.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralAnalysisModel: IfcSystem, @unchecked Sendable {
        public var predefinedType: IfcAnalysisModelTypeEnum? = nil
        public var orientationOf2DPlane: IfcAxis2Placement3D? = nil
        public var loadedBy: [IfcStructuralLoadGroup] = []
        public var hasResults: [IfcStructuralResultGroup] = []
        public var sharedPlacement: IfcObjectPlacement? = nil

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
            predefinedType: IfcAnalysisModelTypeEnum? = nil,
            orientationOf2DPlane: IfcAxis2Placement3D? = nil,
            loadedBy: [IfcStructuralLoadGroup] = [],
            hasResults: [IfcStructuralResultGroup] = [],
            sharedPlacement: IfcObjectPlacement? = nil
        ) {
            self.predefinedType = predefinedType
            self.orientationOf2DPlane = orientationOf2DPlane
            self.loadedBy = loadedBy
            self.hasResults = hasResults
            self.sharedPlacement = sharedPlacement
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
                isDefinedBy: isDefinedBy
            )
        }
    }
}
