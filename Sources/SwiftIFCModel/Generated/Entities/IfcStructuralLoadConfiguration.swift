// IfcStructuralLoadConfiguration.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadConfiguration: IfcStructuralLoad, @unchecked Sendable {
        public var values: [IfcStructuralLoadOrResult] = []
        public var locations: [IfcLengthMeasure] = []

        public init(
            name: IfcLabel? = nil,
            values: [IfcStructuralLoadOrResult] = [],
            locations: [IfcLengthMeasure] = []
        ) {
            self.values = values
            self.locations = locations
            super.init(
                name: name
            )
        }
    }
}
