// IfcBSplineSurfaceWithKnots.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcBSplineSurfaceWithKnots: IfcBSplineSurface, @unchecked Sendable {
        public var uMultiplicities: [IfcInteger] = []
        public var vMultiplicities: [IfcInteger] = []
        public var uKnots: [IfcParameterValue] = []
        public var vKnots: [IfcParameterValue] = []
        public var knotSpec: IfcKnotType? = nil

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
            knotSpec: IfcKnotType? = nil
        ) {
            self.uMultiplicities = uMultiplicities
            self.vMultiplicities = vMultiplicities
            self.uKnots = uKnots
            self.vKnots = vKnots
            self.knotSpec = knotSpec
            super.init(
                styledByItem: styledByItem,
                uDegree: uDegree,
                vDegree: vDegree,
                surfaceForm: surfaceForm,
                uClosed: uClosed,
                vClosed: vClosed,
                selfIntersect: selfIntersect,
                controlPointsList: controlPointsList
            )
        }
    }
}
