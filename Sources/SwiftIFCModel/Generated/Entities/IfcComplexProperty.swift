// IfcComplexProperty.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcComplexProperty: IfcProperty, @unchecked Sendable {
        public var usageName: IfcIdentifier? = nil
        public var hasProperties: [IfcProperty] = []

        public init(
            name: IfcIdentifier? = nil,
            specification: IfcText? = nil,
            usageName: IfcIdentifier? = nil,
            hasProperties: [IfcProperty] = []
        ) {
            self.usageName = usageName
            self.hasProperties = hasProperties
            super.init(
                name: name,
                specification: specification
            )
        }
    }
}
