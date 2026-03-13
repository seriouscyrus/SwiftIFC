// IfcSlippageConnectionCondition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSlippageConnectionCondition: IfcStructuralConnectionCondition, @unchecked Sendable {
        public var slippageX: IfcLengthMeasure? = nil
        public var slippageY: IfcLengthMeasure? = nil
        public var slippageZ: IfcLengthMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            slippageX: IfcLengthMeasure? = nil,
            slippageY: IfcLengthMeasure? = nil,
            slippageZ: IfcLengthMeasure? = nil
        ) {
            self.slippageX = slippageX
            self.slippageY = slippageY
            self.slippageZ = slippageZ
            super.init(
                name: name
            )
        }
    }
}
