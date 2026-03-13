// IfcBoxedHalfSpace.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBoxedHalfSpace: IfcHalfSpaceSolid, @unchecked Sendable {
        public var enclosure: IfcBoundingBox? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            agreementFlag: IfcBoolean? = nil,
            baseSurface: IfcSurface? = nil,
            enclosure: IfcBoundingBox? = nil
        ) {
            self.enclosure = enclosure
            super.init(
                styledByItem: styledByItem,
                agreementFlag: agreementFlag,
                baseSurface: baseSurface
            )
        }
    }
}
