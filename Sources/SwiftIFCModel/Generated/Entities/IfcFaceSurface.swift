// IfcFaceSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFaceSurface: IfcFace, @unchecked Sendable {
        public var sameSense: IfcBoolean? = nil
        public var faceSurface: IfcSurface? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            bounds: [IfcFaceBound] = [],
            sameSense: IfcBoolean? = nil,
            faceSurface: IfcSurface? = nil
        ) {
            self.sameSense = sameSense
            self.faceSurface = faceSurface
            super.init(
                styledByItem: styledByItem,
                bounds: bounds
            )
        }
    }
}
