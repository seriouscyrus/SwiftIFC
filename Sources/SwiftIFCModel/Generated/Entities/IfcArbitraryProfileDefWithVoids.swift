// IfcArbitraryProfileDefWithVoids.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcArbitraryProfileDefWithVoids: IfcArbitraryClosedProfileDef, @unchecked Sendable {
        public var innerCurves: [IfcCurve] = []

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            outerCurve: IfcCurve? = nil,
            innerCurves: [IfcCurve] = []
        ) {
            self.innerCurves = innerCurves
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties,
                outerCurve: outerCurve
            )
        }
    }
}
