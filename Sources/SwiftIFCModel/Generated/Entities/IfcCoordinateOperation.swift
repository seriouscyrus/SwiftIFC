// IfcCoordinateOperation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCoordinateOperation: Entity { // ABSTRACT
        public var targetCRS: IfcCoordinateReferenceSystem? = nil
        public var sourceCRS: IfcCoordinateReferenceSystemSelect? = nil

        public init(
            targetCRS: IfcCoordinateReferenceSystem? = nil,
            sourceCRS: IfcCoordinateReferenceSystemSelect? = nil
        ) {
            self.targetCRS = targetCRS
            self.sourceCRS = sourceCRS
            super.init()
        }
    }
}
