// IfcCartesianTransformationOperator3D.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCartesianTransformationOperator3D: IfcCartesianTransformationOperator, @unchecked Sendable {
        public var axis3: IfcDirection? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            scale: IfcReal? = nil,
            axis1: IfcDirection? = nil,
            axis2: IfcDirection? = nil,
            localOrigin: IfcCartesianPoint? = nil,
            axis3: IfcDirection? = nil
        ) {
            self.axis3 = axis3
            super.init(
                styledByItem: styledByItem,
                scale: scale,
                axis1: axis1,
                axis2: axis2,
                localOrigin: localOrigin
            )
        }
    }
}
