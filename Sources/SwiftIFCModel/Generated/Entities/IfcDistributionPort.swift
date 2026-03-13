// IfcDistributionPort.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDistributionPort: IfcPort, @unchecked Sendable {
        public var flowDirection: IfcFlowDirectionEnum? = nil
        public var predefinedType: IfcDistributionPortTypeEnum? = nil
        public var systemType: IfcDistributionSystemEnum? = nil

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
            flowDirection: IfcFlowDirectionEnum? = nil,
            predefinedType: IfcDistributionPortTypeEnum? = nil,
            systemType: IfcDistributionSystemEnum? = nil
        ) {
            self.flowDirection = flowDirection
            self.predefinedType = predefinedType
            self.systemType = systemType
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
