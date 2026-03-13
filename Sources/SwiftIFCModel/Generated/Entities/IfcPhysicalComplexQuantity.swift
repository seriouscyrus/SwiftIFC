// IfcPhysicalComplexQuantity.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPhysicalComplexQuantity: IfcPhysicalQuantity, @unchecked Sendable {
        public var discrimination: IfcLabel? = nil
        public var quality: IfcLabel? = nil
        public var usage: IfcLabel? = nil
        public var hasQuantities: [IfcPhysicalQuantity] = []

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            discrimination: IfcLabel? = nil,
            quality: IfcLabel? = nil,
            usage: IfcLabel? = nil,
            hasQuantities: [IfcPhysicalQuantity] = []
        ) {
            self.discrimination = discrimination
            self.quality = quality
            self.usage = usage
            self.hasQuantities = hasQuantities
            super.init(
                name: name,
                description: description
            )
        }
    }
}
