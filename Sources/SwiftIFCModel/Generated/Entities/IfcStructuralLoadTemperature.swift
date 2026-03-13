// IfcStructuralLoadTemperature.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcStructuralLoadTemperature: IfcStructuralLoadStatic, @unchecked Sendable {
        public var deltaTConstant: IfcThermodynamicTemperatureMeasure? = nil
        public var deltaTY: IfcThermodynamicTemperatureMeasure? = nil
        public var deltaTZ: IfcThermodynamicTemperatureMeasure? = nil

        public init(
            name: IfcLabel? = nil,
            deltaTConstant: IfcThermodynamicTemperatureMeasure? = nil,
            deltaTY: IfcThermodynamicTemperatureMeasure? = nil,
            deltaTZ: IfcThermodynamicTemperatureMeasure? = nil
        ) {
            self.deltaTConstant = deltaTConstant
            self.deltaTY = deltaTY
            self.deltaTZ = deltaTZ
            super.init(
                name: name
            )
        }
    }
}
