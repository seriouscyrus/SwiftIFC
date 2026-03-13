// IfcBSplineCurveWithKnots.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBSplineCurveWithKnots: IfcBSplineCurve, @unchecked Sendable {
        public var knotMultiplicities: [IfcInteger] = []
        public var knots: [IfcParameterValue] = []
        public var knotSpec: IfcKnotType? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            degree: IfcInteger? = nil,
            curveForm: IfcBSplineCurveForm? = nil,
            closedCurve: IfcLogical? = nil,
            selfIntersect: IfcLogical? = nil,
            controlPointsList: [IfcCartesianPoint] = [],
            knotMultiplicities: [IfcInteger] = [],
            knots: [IfcParameterValue] = [],
            knotSpec: IfcKnotType? = nil
        ) {
            self.knotMultiplicities = knotMultiplicities
            self.knots = knots
            self.knotSpec = knotSpec
            super.init(
                styledByItem: styledByItem,
                degree: degree,
                curveForm: curveForm,
                closedCurve: closedCurve,
                selfIntersect: selfIntersect,
                controlPointsList: controlPointsList
            )
        }
    }
}
