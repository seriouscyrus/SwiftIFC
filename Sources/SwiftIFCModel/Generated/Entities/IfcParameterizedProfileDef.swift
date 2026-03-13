// IfcParameterizedProfileDef.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcParameterizedProfileDef: IfcProfileDef, @unchecked Sendable { // ABSTRACT
        public var position: IfcAxis2Placement2D? = nil

        public init(
            profileType: IfcProfileTypeEnum? = nil,
            profileName: IfcLabel? = nil,
            hasProperties: [IfcProfileProperties] = [],
            position: IfcAxis2Placement2D? = nil
        ) {
            self.position = position
            super.init(
                profileType: profileType,
                profileName: profileName,
                hasProperties: hasProperties
            )
        }
    }
}
