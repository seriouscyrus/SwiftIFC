// IfcFailureConnectionCondition.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcFailureConnectionCondition: IfcStructuralConnectionCondition, @unchecked Sendable {
        public var tensionFailureX: IfcForceMeasure? = nil
        public var tensionFailureY: IfcForceMeasure? = nil
        public var tensionFailureZ: IfcForceMeasure? = nil
        public var compressionFailureX: IfcForceMeasure? = nil
        public var compressionFailureY: IfcForceMeasure? = nil
        public var compressionFailureZ: IfcForceMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            tensionFailureX: IfcForceMeasure? = nil,
            tensionFailureY: IfcForceMeasure? = nil,
            tensionFailureZ: IfcForceMeasure? = nil,
            compressionFailureX: IfcForceMeasure? = nil,
            compressionFailureY: IfcForceMeasure? = nil,
            compressionFailureZ: IfcForceMeasure? = nil
        ) {
            self.tensionFailureX = tensionFailureX
            self.tensionFailureY = tensionFailureY
            self.tensionFailureZ = tensionFailureZ
            self.compressionFailureX = compressionFailureX
            self.compressionFailureY = compressionFailureY
            self.compressionFailureZ = compressionFailureZ
            super.init(
                name: name
            )
        }
    }
}
