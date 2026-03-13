// IfcSurfaceStyleRefraction.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSurfaceStyleRefraction: IfcPresentationItem, @unchecked Sendable {
        public var refractionIndex: IfcReal? = nil
        public var dispersionFactor: IfcReal? = nil

        public init(
            refractionIndex: IfcReal? = nil,
            dispersionFactor: IfcReal? = nil
        ) {
            self.refractionIndex = refractionIndex
            self.dispersionFactor = dispersionFactor
            super.init()
        }
    }
}
