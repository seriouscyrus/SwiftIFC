// IfcRationalBSplineCurveWithKnots.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRationalBSplineCurveWithKnots: IfcBSplineCurveWithKnots, @unchecked Sendable {
        public var weightsData: [IfcReal] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            degree: IfcInteger? = nil,
            curveForm: IfcBSplineCurveForm? = nil,
            closedCurve: IfcLogical? = nil,
            selfIntersect: IfcLogical? = nil,
            controlPointsList: [IfcCartesianPoint] = [],
            knotMultiplicities: [IfcInteger] = [],
            knots: [IfcParameterValue] = [],
            knotSpec: IfcKnotType? = nil,
            weightsData: [IfcReal] = []
        ) {
            self.weightsData = weightsData
            super.init(
                styledByItem: styledByItem,
                degree: degree,
                curveForm: curveForm,
                closedCurve: closedCurve,
                selfIntersect: selfIntersect,
                controlPointsList: controlPointsList,
                knotMultiplicities: knotMultiplicities,
                knots: knots,
                knotSpec: knotSpec
            )
        }
    }
}
