// IfcComplexPropertyTemplate.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcComplexPropertyTemplate: IfcPropertyTemplate, @unchecked Sendable {
        public var usageName: IfcLabel? = nil
        public var templateType: IfcComplexPropertyTemplateTypeEnum? = nil
        public var hasPropertyTemplates: [IfcPropertyTemplate] = []

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            usageName: IfcLabel? = nil,
            templateType: IfcComplexPropertyTemplateTypeEnum? = nil,
            hasPropertyTemplates: [IfcPropertyTemplate] = []
        ) {
            self.usageName = usageName
            self.templateType = templateType
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
