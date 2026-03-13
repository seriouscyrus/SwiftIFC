// IfcWellKnownText.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcWellKnownText: Entity {
        public var wellKnownText: IfcWellKnownTextLiteral? = nil
        public var coordinateReferenceSystem: IfcCoordinateReferenceSystem? = nil

        public init(
            wellKnownText: IfcWellKnownTextLiteral? = nil,
            coordinateReferenceSystem: IfcCoordinateReferenceSystem? = nil
        ) {
            self.wellKnownText = wellKnownText
            self.coordinateReferenceSystem = coordinateReferenceSystem
            super.init()
        }
    }
}
