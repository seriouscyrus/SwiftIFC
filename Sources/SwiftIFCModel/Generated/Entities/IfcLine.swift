// IfcLine.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLine: IfcCurve, @unchecked Sendable {
        public var pnt: IfcCartesianPoint? = nil
        public var dir: IfcVector? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            pnt: IfcCartesianPoint? = nil,
            dir: IfcVector? = nil
        ) {
            self.pnt = pnt
            self.dir = dir
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
