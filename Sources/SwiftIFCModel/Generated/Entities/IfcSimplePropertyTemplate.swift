// IfcSimplePropertyTemplate.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSimplePropertyTemplate: IfcPropertyTemplate, @unchecked Sendable {
        public var templateType: IfcSimplePropertyTemplateTypeEnum? = nil
        public var primaryMeasureType: IfcLabel? = nil
        public var secondaryMeasureType: IfcLabel? = nil
        public var expression: IfcLabel? = nil
        public var accessState: IfcStateEnum? = nil
        public var enumerators: IfcPropertyEnumeration? = nil
        public var primaryUnit: IfcUnit? = nil
        public var secondaryUnit: IfcUnit? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            templateType: IfcSimplePropertyTemplateTypeEnum? = nil,
            primaryMeasureType: IfcLabel? = nil,
            secondaryMeasureType: IfcLabel? = nil,
            expression: IfcLabel? = nil,
            accessState: IfcStateEnum? = nil,
            enumerators: IfcPropertyEnumeration? = nil,
            primaryUnit: IfcUnit? = nil,
            secondaryUnit: IfcUnit? = nil
        ) {
            self.templateType = templateType
            self.primaryMeasureType = primaryMeasureType
            self.secondaryMeasureType = secondaryMeasureType
            self.expression = expression
            self.accessState = accessState
            self.enumerators = enumerators
            self.primaryUnit = primaryUnit
            self.secondaryUnit = secondaryUnit
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
