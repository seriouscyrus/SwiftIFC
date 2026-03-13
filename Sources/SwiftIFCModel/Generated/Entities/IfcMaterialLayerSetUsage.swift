// IfcMaterialLayerSetUsage.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcMaterialLayerSetUsage: IfcMaterialUsageDefinition, @unchecked Sendable {
        public var layerSetDirection: IfcLayerSetDirectionEnum? = nil
        public var directionSense: IfcDirectionSenseEnum? = nil
        public var offsetFromReferenceLine: IfcLengthMeasure? = nil
        public var referenceExtent: IfcPositiveLengthMeasure? = nil
        public var forLayerSet: IfcMaterialLayerSet? = nil

        public init(
            layerSetDirection: IfcLayerSetDirectionEnum? = nil,
            directionSense: IfcDirectionSenseEnum? = nil,
            offsetFromReferenceLine: IfcLengthMeasure? = nil,
            referenceExtent: IfcPositiveLengthMeasure? = nil,
            forLayerSet: IfcMaterialLayerSet? = nil
        ) {
            self.layerSetDirection = layerSetDirection
            self.directionSense = directionSense
            self.offsetFromReferenceLine = offsetFromReferenceLine
            self.referenceExtent = referenceExtent
            self.forLayerSet = forLayerSet
            super.init()
        }
    }
}
