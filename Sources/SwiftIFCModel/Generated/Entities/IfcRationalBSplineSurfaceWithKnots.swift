// IfcRationalBSplineSurfaceWithKnots.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRationalBSplineSurfaceWithKnots: IfcBSplineSurfaceWithKnots, @unchecked Sendable {
        public var weightsData: [[IfcReal]] = [[]]

        public init(
            styledByItem: IfcStyledItem? = nil,
            uDegree: IfcInteger? = nil,
            vDegree: IfcInteger? = nil,
            surfaceForm: IfcBSplineSurfaceForm? = nil,
            uClosed: IfcLogical? = nil,
            vClosed: IfcLogical? = nil,
            selfIntersect: IfcLogical? = nil,
            controlPointsList: [[IfcCartesianPoint]] = [[]],
            uMultiplicities: [IfcInteger] = [],
            vMultiplicities: [IfcInteger] = [],
            uKnots: [IfcParameterValue] = [],
            vKnots: [IfcParameterValue] = [],
            knotSpec: IfcKnotType? = nil,
            weightsData: [[IfcReal]] = [[]]
        ) {
            self.weightsData = weightsData
            super.init(
                styledByItem: styledByItem,
                uDegree: uDegree,
                vDegree: vDegree,
                surfaceForm: surfaceForm,
                uClosed: uClosed,
                vClosed: vClosed,
                selfIntersect: selfIntersect,
                controlPointsList: controlPointsList,
                uMultiplicities: uMultiplicities,
                vMultiplicities: vMultiplicities,
                uKnots: uKnots,
                vKnots: vKnots,
                knotSpec: knotSpec
            )
        }
    }
}
