// IfcAddress.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAddress: Entity { // ABSTRACT
        public var purpose: IfcAddressTypeEnum? = nil
        public var description: IfcText? = nil
        public var userDefinedPurpose: IfcLabel? = nil

        public init(
            purpose: IfcAddressTypeEnum? = nil,
            description: IfcText? = nil,
            userDefinedPurpose: IfcLabel? = nil
        ) {
            self.purpose = purpose
            self.description = description
            self.userDefinedPurpose = userDefinedPurpose
            super.init()
        }
    }
}
