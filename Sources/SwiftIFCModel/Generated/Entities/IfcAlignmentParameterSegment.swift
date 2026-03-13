// IfcAlignmentParameterSegment.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcAlignmentParameterSegment: Entity { // ABSTRACT
        public var startTag: IfcLabel? = nil
        public var endTag: IfcLabel? = nil

        public init(
            startTag: IfcLabel? = nil,
            endTag: IfcLabel? = nil
        ) {
            self.startTag = startTag
            self.endTag = endTag
            super.init()
        }
    }
}
