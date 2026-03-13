// IfcCartesianTransformationOperator2DnonUniform.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCartesianTransformationOperator2DnonUniform: IfcCartesianTransformationOperator2D, @unchecked Sendable {
        public var scale2: IfcReal? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            scale: IfcReal? = nil,
            axis1: IfcDirection? = nil,
            axis2: IfcDirection? = nil,
            localOrigin: IfcCartesianPoint? = nil,
            scale2: IfcReal? = nil
        ) {
            self.scale2 = scale2
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
