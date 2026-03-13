// IfcBSplineSurface.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBSplineSurface: IfcBoundedSurface, @unchecked Sendable { // ABSTRACT
        public var uDegree: IfcInteger? = nil
        public var vDegree: IfcInteger? = nil
        public var surfaceForm: IfcBSplineSurfaceForm? = nil
        public var uClosed: IfcLogical? = nil
        public var vClosed: IfcLogical? = nil
        public var selfIntersect: IfcLogical? = nil
        public var controlPointsList: [[IfcCartesianPoint]] = [[]]

        public init(
            styledByItem: IfcStyledItem? = nil,
            uDegree: IfcInteger? = nil,
            vDegree: IfcInteger? = nil,
            surfaceForm: IfcBSplineSurfaceForm? = nil,
            uClosed: IfcLogical? = nil,
            vClosed: IfcLogical? = nil,
            selfIntersect: IfcLogical? = nil,
            controlPointsList: [[IfcCartesianPoint]] = [[]]
        ) {
            self.uDegree = uDegree
            self.vDegree = vDegree
            self.surfaceForm = surfaceForm
            self.uClosed = uClosed
            self.vClosed = vClosed
            self.selfIntersect = selfIntersect
            self.controlPointsList = controlPointsList
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
