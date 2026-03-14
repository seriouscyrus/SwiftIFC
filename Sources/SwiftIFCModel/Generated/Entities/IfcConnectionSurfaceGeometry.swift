// IfcConnectionSurfaceGeometry.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConnectionSurfaceGeometry: IfcConnectionGeometry, @unchecked Sendable {
        public var surfaceOnRelatingElement: IfcSurfaceOrFaceSurface? = nil
        public var surfaceOnRelatedElement: IfcSurfaceOrFaceSurface? = nil

        public init(
            surfaceOnRelatingElement: IfcSurfaceOrFaceSurface? = nil,
            surfaceOnRelatedElement: IfcSurfaceOrFaceSurface? = nil
        ) {
            self.surfaceOnRelatingElement = surfaceOnRelatingElement
            self.surfaceOnRelatedElement = surfaceOnRelatedElement
            super.init()
        }
    }
}
