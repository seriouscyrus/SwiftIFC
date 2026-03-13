// IfcDerivedProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcDerivedProfileDef: IfcProfileDef, @unchecked Sendable {
        public var label: IfcLabel? = nil
        public var parentProfile: IfcProfileDef? = nil
        public var `operator`: IfcCartesianTransformationOperator2D? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            label: IfcLabel? = nil,
            parentProfile: IfcProfileDef? = nil,
            `operator`: IfcCartesianTransformationOperator2D? = nil
        ) {
            self.label = label
            self.parentProfile = parentProfile
            self.`operator` = `operator`
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties
            )
        }
    }
}
