// IfcLightSourceGoniometric.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcLightSourceGoniometric: IfcLightSource, @unchecked Sendable {
        public var colourTemperature: IfcThermodynamicTemperatureMeasure? = nil
        public var luminousFlux: IfcLuminousFluxMeasure? = nil
        public var lightEmissionSource: IfcLightEmissionSourceEnum? = nil
        public var position: IfcAxis2Placement3D? = nil
        public var colourAppearance: IfcColourRgb? = nil
        public var lightDistributionDataSource: IfcLightDistributionDataSourceSelect? = nil

        public init(
            styledByItem: IfcStyledItem? = nil,
            name: IfcLabel? = nil,
            ambientIntensity: IfcNormalisedRatioMeasure? = nil,
            intensity: IfcNormalisedRatioMeasure? = nil,
            lightColour: IfcColourRgb? = nil,
            colourTemperature: IfcThermodynamicTemperatureMeasure? = nil,
            luminousFlux: IfcLuminousFluxMeasure? = nil,
            lightEmissionSource: IfcLightEmissionSourceEnum? = nil,
            position: IfcAxis2Placement3D? = nil,
            colourAppearance: IfcColourRgb? = nil,
            lightDistributionDataSource: IfcLightDistributionDataSourceSelect? = nil
        ) {
            self.colourTemperature = colourTemperature
            self.luminousFlux = luminousFlux
            self.lightEmissionSource = lightEmissionSource
            self.position = position
            self.colourAppearance = colourAppearance
            self.lightDistributionDataSource = lightDistributionDataSource
            super.init(
                styledByItem: styledByItem,
                name: name,
                ambientIntensity: ambientIntensity,
                intensity: intensity,
                lightColour: lightColour
            )
        }
    }
}
