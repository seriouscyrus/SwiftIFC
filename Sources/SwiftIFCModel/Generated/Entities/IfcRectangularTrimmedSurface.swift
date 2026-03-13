// IfcRectangularTrimmedSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRectangularTrimmedSurface: IfcBoundedSurface, @unchecked Sendable {
        public var u1: IfcParameterValue? = nil
        public var v1: IfcParameterValue? = nil
        public var u2: IfcParameterValue? = nil
        public var v2: IfcParameterValue? = nil
        public var usense: IfcBoolean? = nil
        public var vsense: IfcBoolean? = nil
        public var basisSurface: IfcSurface? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            u1: IfcParameterValue? = nil,
            v1: IfcParameterValue? = nil,
            u2: IfcParameterValue? = nil,
            v2: IfcParameterValue? = nil,
            usense: IfcBoolean? = nil,
            vsense: IfcBoolean? = nil,
            basisSurface: IfcSurface? = nil
        ) {
            self.u1 = u1
            self.v1 = v1
            self.u2 = u2
            self.v2 = v2
            self.usense = usense
            self.vsense = vsense
            self.basisSurface = basisSurface
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
