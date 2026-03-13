// IfcBSplineCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBSplineCurve: IfcBoundedCurve, @unchecked Sendable { // ABSTRACT
        public var degree: IfcInteger? = nil
        public var curveForm: IfcBSplineCurveForm? = nil
        public var closedCurve: IfcLogical? = nil
        public var selfIntersect: IfcLogical? = nil
        public var controlPointsList: [IfcCartesianPoint] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            degree: IfcInteger? = nil,
            curveForm: IfcBSplineCurveForm? = nil,
            closedCurve: IfcLogical? = nil,
            selfIntersect: IfcLogical? = nil,
            controlPointsList: [IfcCartesianPoint] = []
        ) {
            self.degree = degree
            self.curveForm = curveForm
            self.closedCurve = closedCurve
            self.selfIntersect = selfIntersect
            self.controlPointsList = controlPointsList
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
