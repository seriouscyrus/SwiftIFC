// IfcConnectionVolumeGeometry.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConnectionVolumeGeometry: IfcConnectionGeometry, @unchecked Sendable {
        public var volumeOnRelatingElement: IfcSolidOrShell
        public var volumeOnRelatedElement: IfcSolidOrShell? = nil

        public init(
            volumeOnRelatingElement: IfcSolidOrShell,
            volumeOnRelatedElement: IfcSolidOrShell? = nil
        ) {
            self.volumeOnRelatingElement = volumeOnRelatingElement
            self.volumeOnRelatedElement = volumeOnRelatedElement
            super.init()
        }
    }
}
