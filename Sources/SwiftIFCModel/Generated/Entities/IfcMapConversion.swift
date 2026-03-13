// IfcMapConversion.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMapConversion: IfcCoordinateOperation, @unchecked Sendable {
        public var eastings: IfcLengthMeasure? = nil
        public var northings: IfcLengthMeasure? = nil
        public var orthogonalHeight: IfcLengthMeasure? = nil
        public var xAxisAbscissa: IfcReal? = nil
        public var xAxisOrdinate: IfcReal? = nil
        public var scale: IfcReal? = nil

        public init(
            targetCRS: IfcCoordinateReferenceSystem? = nil,
            eastings: IfcLengthMeasure? = nil,
            northings: IfcLengthMeasure? = nil,
            orthogonalHeight: IfcLengthMeasure? = nil,
            xAxisAbscissa: IfcReal? = nil,
            xAxisOrdinate: IfcReal? = nil,
            scale: IfcReal? = nil
        ) {
            self.eastings = eastings
            self.northings = northings
            self.orthogonalHeight = orthogonalHeight
            self.xAxisAbscissa = xAxisAbscissa
            self.xAxisOrdinate = xAxisOrdinate
            self.scale = scale
            super.init(
                targetCRS: targetCRS
            )
        }
    }
}
