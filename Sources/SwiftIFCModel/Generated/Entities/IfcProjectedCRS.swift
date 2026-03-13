// IfcProjectedCRS.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcProjectedCRS: IfcCoordinateReferenceSystem, @unchecked Sendable {
        public var verticalDatum: IfcIdentifier? = nil
        public var mapProjection: IfcIdentifier? = nil
        public var mapZone: IfcIdentifier? = nil
        public var mapUnit: IfcNamedUnit? = nil

        public init(
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            geodeticDatum: IfcIdentifier? = nil,
            verticalDatum: IfcIdentifier? = nil,
            mapProjection: IfcIdentifier? = nil,
            mapZone: IfcIdentifier? = nil,
            mapUnit: IfcNamedUnit? = nil
        ) {
            self.verticalDatum = verticalDatum
            self.mapProjection = mapProjection
            self.mapZone = mapZone
            self.mapUnit = mapUnit
            super.init(
                name: name,
                description: description,
                geodeticDatum: geodeticDatum
            )
        }
    }
}
