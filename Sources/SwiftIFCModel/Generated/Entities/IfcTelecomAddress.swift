// IfcTelecomAddress.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTelecomAddress: IfcAddress, @unchecked Sendable {
        public var telephoneNumbers: [IfcLabel] = []
        public var facsimileNumbers: [IfcLabel] = []
        public var pagerNumber: IfcLabel? = nil
        public var electronicMailAddresses: [IfcLabel] = []
        public var wWWHomePageURL: IfcURIReference? = nil
        public var messagingIDs: [IfcURIReference] = []

        public init(
            purpose: IfcAddressTypeEnum? = nil,
            description: IfcText? = nil,
            userDefinedPurpose: IfcLabel? = nil,
            telephoneNumbers: [IfcLabel] = [],
            facsimileNumbers: [IfcLabel] = [],
            pagerNumber: IfcLabel? = nil,
            electronicMailAddresses: [IfcLabel] = [],
            wWWHomePageURL: IfcURIReference? = nil,
            messagingIDs: [IfcURIReference] = []
        ) {
            self.telephoneNumbers = telephoneNumbers
            self.facsimileNumbers = facsimileNumbers
            self.pagerNumber = pagerNumber
            self.electronicMailAddresses = electronicMailAddresses
            self.wWWHomePageURL = wWWHomePageURL
            self.messagingIDs = messagingIDs
            super.init(
                purpose: purpose,
                description: description,
                userDefinedPurpose: userDefinedPurpose
            )
        }
    }
}
