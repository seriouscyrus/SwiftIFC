// IfcPostalAddress.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPostalAddress: IfcAddress, @unchecked Sendable {
        public var internalLocation: IfcLabel? = nil
        public var postalBox: IfcLabel? = nil
        public var town: IfcLabel? = nil
        public var region: IfcLabel? = nil
        public var postalCode: IfcLabel? = nil
        public var country: IfcLabel? = nil
        public var addressLines: [IfcLabel] = []

        public init(
            purpose: IfcAddressTypeEnum? = nil,
            description: IfcText? = nil,
            userDefinedPurpose: IfcLabel? = nil,
            internalLocation: IfcLabel? = nil,
            postalBox: IfcLabel? = nil,
            town: IfcLabel? = nil,
            region: IfcLabel? = nil,
            postalCode: IfcLabel? = nil,
            country: IfcLabel? = nil,
            addressLines: [IfcLabel] = []
        ) {
            self.internalLocation = internalLocation
            self.postalBox = postalBox
            self.town = town
            self.region = region
            self.postalCode = postalCode
            self.country = country
            self.addressLines = addressLines
            super.init(
                purpose: purpose,
                description: description,
                userDefinedPurpose: userDefinedPurpose
            )
        }
    }
}
