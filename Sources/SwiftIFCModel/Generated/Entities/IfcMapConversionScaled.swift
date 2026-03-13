// IfcMapConversionScaled.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMapConversionScaled: IfcMapConversion, @unchecked Sendable {
        public var factorX: IfcReal? = nil
        public var factorY: IfcReal? = nil
        public var factorZ: IfcReal? = nil

        public init(
            targetCRS: IfcCoordinateReferenceSystem? = nil,
            eastings: IfcLengthMeasure? = nil,
            northings: IfcLengthMeasure? = nil,
            orthogonalHeight: IfcLengthMeasure? = nil,
            xAxisAbscissa: IfcReal? = nil,
            xAxisOrdinate: IfcReal? = nil,
            scale: IfcReal? = nil,
            factorX: IfcReal? = nil,
            factorY: IfcReal? = nil,
            factorZ: IfcReal? = nil
        ) {
            self.factorX = factorX
            self.factorY = factorY
            self.factorZ = factorZ
            super.init(
                targetCRS: targetCRS,
                eastings: eastings,
                northings: northings,
                orthogonalHeight: orthogonalHeight,
                xAxisAbscissa: xAxisAbscissa,
                xAxisOrdinate: xAxisOrdinate,
                scale: scale
            )
        }
    }
}
