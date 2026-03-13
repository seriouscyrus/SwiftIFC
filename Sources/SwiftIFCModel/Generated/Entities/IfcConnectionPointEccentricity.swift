// IfcConnectionPointEccentricity.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConnectionPointEccentricity: IfcConnectionPointGeometry, @unchecked Sendable {
        public var eccentricityInX: IfcLengthMeasure? = nil
        public var eccentricityInY: IfcLengthMeasure? = nil
        public var eccentricityInZ: IfcLengthMeasure? = nil

        public init(
            pointOnRelatingElement: IfcPointOrVertexPoint,
            pointOnRelatedElement: IfcPointOrVertexPoint? = nil,
            eccentricityInX: IfcLengthMeasure? = nil,
            eccentricityInY: IfcLengthMeasure? = nil,
            eccentricityInZ: IfcLengthMeasure? = nil
        ) {
            self.eccentricityInX = eccentricityInX
            self.eccentricityInY = eccentricityInY
            self.eccentricityInZ = eccentricityInZ
            super.init(
                pointOnRelatingElement: pointOnRelatingElement,
                pointOnRelatedElement: pointOnRelatedElement
            )
        }
    }
}
