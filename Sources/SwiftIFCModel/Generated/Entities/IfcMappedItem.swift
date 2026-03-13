// IfcMappedItem.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMappedItem: IfcRepresentationItem, @unchecked Sendable {
        public var mappingSource: IfcRepresentationMap? = nil
        public var mappingTarget: IfcCartesianTransformationOperator? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            mappingSource: IfcRepresentationMap? = nil,
            mappingTarget: IfcCartesianTransformationOperator? = nil
        ) {
            self.mappingSource = mappingSource
            self.mappingTarget = mappingTarget
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
