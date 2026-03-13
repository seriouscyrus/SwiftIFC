// IfcPropertySetTemplate.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcPropertySetTemplate: IfcPropertyTemplateDefinition, @unchecked Sendable {
        public var templateType: IfcPropertySetTemplateTypeEnum? = nil
        public var applicableEntity: IfcIdentifier? = nil
        public var hasPropertyTemplates: [IfcPropertyTemplate] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            templateType: IfcPropertySetTemplateTypeEnum? = nil,
            applicableEntity: IfcIdentifier? = nil,
            hasPropertyTemplates: [IfcPropertyTemplate] = []
        ) {
            self.templateType = templateType
            self.applicableEntity = applicableEntity
            self.hasPropertyTemplates = hasPropertyTemplates
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
