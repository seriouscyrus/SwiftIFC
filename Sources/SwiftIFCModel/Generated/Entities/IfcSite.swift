// IfcSite.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSite: IfcSpatialStructureElement, @unchecked Sendable {
        public var refLatitude: IfcCompoundPlaneAngleMeasure? = nil
        public var refLongitude: IfcCompoundPlaneAngleMeasure? = nil
        public var refElevation: IfcLengthMeasure? = nil
        public var landTitleNumber: IfcLabel? = nil
        public var siteAddress: IfcPostalAddress? = nil

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
            longName: IfcLabel? = nil,
            containsElements: [IfcRelContainedInSpatialStructure] = [],
            referencesElements: [IfcRelReferencedInSpatialStructure] = [],
            compositionType: IfcElementCompositionEnum? = nil,
            refLatitude: IfcCompoundPlaneAngleMeasure? = nil,
            refLongitude: IfcCompoundPlaneAngleMeasure? = nil,
            refElevation: IfcLengthMeasure? = nil,
            landTitleNumber: IfcLabel? = nil,
            siteAddress: IfcPostalAddress? = nil
        ) {
            self.refLatitude = refLatitude
            self.refLongitude = refLongitude
            self.refElevation = refElevation
            self.landTitleNumber = landTitleNumber
            self.siteAddress = siteAddress
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
                longName: longName,
                containsElements: containsElements,
                referencesElements: referencesElements,
                compositionType: compositionType
            )
        }
    }
}
