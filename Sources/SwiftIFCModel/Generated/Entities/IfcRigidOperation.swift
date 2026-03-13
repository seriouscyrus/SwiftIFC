// IfcRigidOperation.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRigidOperation: IfcCoordinateOperation, @unchecked Sendable {
        public var height: IfcLengthMeasure? = nil
        public var firstCoordinate: IfcMeasureValue
        public var secondCoordinate: IfcMeasureValue

        public init(
            targetCRS: IfcCoordinateReferenceSystem? = nil,
            height: IfcLengthMeasure? = nil,
            firstCoordinate: IfcMeasureValue,
            secondCoordinate: IfcMeasureValue
        ) {
            self.height = height
            self.firstCoordinate = firstCoordinate
            self.secondCoordinate = secondCoordinate
            super.init(
                targetCRS: targetCRS
            )
        }
    }
}
