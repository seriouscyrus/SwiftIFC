// IfcHalfSpaceSolid.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcHalfSpaceSolid: IfcGeometricRepresentationItem, @unchecked Sendable {
        public var agreementFlag: IfcBoolean? = nil
        public var baseSurface: IfcSurface? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            agreementFlag: IfcBoolean? = nil,
            baseSurface: IfcSurface? = nil
        ) {
            self.agreementFlag = agreementFlag
            self.baseSurface = baseSurface
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
