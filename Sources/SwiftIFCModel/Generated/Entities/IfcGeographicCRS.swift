// IfcGeographicCRS.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcGeographicCRS: IfcCoordinateReferenceSystem, @unchecked Sendable {
        public var primeMeridian: IfcIdentifier? = nil
        public var angleUnit: IfcNamedUnit? = nil
        public var heightUnit: IfcNamedUnit? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            geodeticDatum: IfcIdentifier? = nil,
            primeMeridian: IfcIdentifier? = nil,
            angleUnit: IfcNamedUnit? = nil,
            heightUnit: IfcNamedUnit? = nil
        ) {
            self.primeMeridian = primeMeridian
            self.angleUnit = angleUnit
            self.heightUnit = heightUnit
            super.init(
                name: name,
                description: description,
                geodeticDatum: geodeticDatum
            )
        }
    }
}
