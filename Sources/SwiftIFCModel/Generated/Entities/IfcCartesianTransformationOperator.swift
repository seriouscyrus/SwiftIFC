// IfcCartesianTransformationOperator.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcCartesianTransformationOperator: IfcGeometricRepresentationItem, @unchecked Sendable { // ABSTRACT
        public var scale: IfcReal? = nil
        public var axis1: IfcDirection? = nil
        public var axis2: IfcDirection? = nil
        public var localOrigin: IfcCartesianPoint? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            scale: IfcReal? = nil,
            axis1: IfcDirection? = nil,
            axis2: IfcDirection? = nil,
            localOrigin: IfcCartesianPoint? = nil
        ) {
            self.scale = scale
            self.axis1 = axis1
            self.axis2 = axis2
            self.localOrigin = localOrigin
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
