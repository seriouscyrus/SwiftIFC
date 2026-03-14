// IfcTrimmedCurve.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTrimmedCurve: IfcBoundedCurve, @unchecked Sendable {
        public var senseAgreement: IfcBoolean? = nil
        public var masterRepresentation: IfcTrimmingPreference? = nil
        public var basisCurve: IfcCurve? = nil
        public var trim1: IfcTrimmingSelect? = nil
        public var trim2: IfcTrimmingSelect? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            senseAgreement: IfcBoolean? = nil,
            masterRepresentation: IfcTrimmingPreference? = nil,
            basisCurve: IfcCurve? = nil,
            trim1: IfcTrimmingSelect? = nil,
            trim2: IfcTrimmingSelect? = nil
        ) {
            self.senseAgreement = senseAgreement
            self.masterRepresentation = masterRepresentation
            self.basisCurve = basisCurve
            self.trim1 = trim1
            self.trim2 = trim2
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
