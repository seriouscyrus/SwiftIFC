// IfcElementQuantity.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcElementQuantity: IfcQuantitySet, @unchecked Sendable {
        public var methodOfMeasurement: IfcLabel? = nil
        public var quantities: [IfcPhysicalQuantity] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            methodOfMeasurement: IfcLabel? = nil,
            quantities: [IfcPhysicalQuantity] = []
        ) {
            self.methodOfMeasurement = methodOfMeasurement
            self.quantities = quantities
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
