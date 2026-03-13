// IfcSchedulingTime.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcSchedulingTime: Entity { // ABSTRACT
        public var name: IfcLabel? = nil
        public var dataOrigin: IfcDataOriginEnum? = nil
        public var userDefinedDataOrigin: IfcLabel? = nil

        public init(
            name: IfcLabel? = nil,
            dataOrigin: IfcDataOriginEnum? = nil,
            userDefinedDataOrigin: IfcLabel? = nil
        ) {
            self.name = name
            self.dataOrigin = dataOrigin
            self.userDefinedDataOrigin = userDefinedDataOrigin
            super.init()
        }
    }
}
