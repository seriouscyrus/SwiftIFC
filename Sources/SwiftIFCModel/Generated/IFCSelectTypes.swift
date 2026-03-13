// IFCSelectTypes.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public enum IfcActorSelect: Sendable {
        case organization(IfcOrganization)
        case person(IfcPerson)
        case personAndOrganization(IfcPersonAndOrganization)
    }

    public enum IfcAppliedValueSelect: Sendable {
        case absorbedDoseMeasure(Double)
        case accelerationMeasure(Double)
        case amountOfSubstanceMeasure(Double)
        case angularVelocityMeasure(Double)
        case areaDensityMeasure(Double)
        case areaMeasure(Double)
        case binary(IfcBinary)
        case boolean(Bool)
        case complexNumber(IfcComplexNumber)
        case compoundPlaneAngleMeasure(IfcCompoundPlaneAngleMeasure)
        case contextDependentMeasure(Double)
        case countMeasure(Int)
        case curvatureMeasure(Double)
        case date(String)
        case dateTime(String)
        case descriptiveMeasure(String)
        case doseEquivalentMeasure(Double)
        case duration(String)
        case dynamicViscosityMeasure(Double)
        case electricCapacitanceMeasure(Double)
        case electricChargeMeasure(Double)
        case electricConductanceMeasure(Double)
        case electricCurrentMeasure(Double)
        case electricResistanceMeasure(Double)
        case electricVoltageMeasure(Double)
        case energyMeasure(Double)
        case forceMeasure(Double)
        case frequencyMeasure(Double)
        case heatFluxDensityMeasure(Double)
        case heatingValueMeasure(Double)
        case identifier(String)
        case illuminanceMeasure(Double)
        case inductanceMeasure(Double)
        case integer(Int)
        case integerCountRateMeasure(Int)
        case ionConcentrationMeasure(Double)
        case isothermalMoistureCapacityMeasure(Double)
        case kinematicViscosityMeasure(Double)
        case label(String)
        case lengthMeasure(Double)
        case linearForceMeasure(Double)
        case linearMomentMeasure(Double)
        case linearStiffnessMeasure(Double)
        case linearVelocityMeasure(Double)
        case logical(IfcLogical)
        case luminousFluxMeasure(Double)
        case luminousIntensityDistributionMeasure(Double)
        case luminousIntensityMeasure(Double)
        case magneticFluxDensityMeasure(Double)
        case magneticFluxMeasure(Double)
        case massDensityMeasure(Double)
        case massFlowRateMeasure(Double)
        case massMeasure(Double)
        case massPerLengthMeasure(Double)
        case measureWithUnit(IfcMeasureWithUnit)
        case modulusOfElasticityMeasure(Double)
        case modulusOfLinearSubgradeReactionMeasure(Double)
        case modulusOfRotationalSubgradeReactionMeasure(Double)
        case modulusOfSubgradeReactionMeasure(Double)
        case moistureDiffusivityMeasure(Double)
        case molecularWeightMeasure(Double)
        case momentOfInertiaMeasure(Double)
        case monetaryMeasure(Double)
        case nonNegativeLengthMeasure(Double)
        case normalisedRatioMeasure(Double)
        case numericMeasure(Double)
        case pHMeasure(Double)
        case parameterValue(Double)
        case planarForceMeasure(Double)
        case planeAngleMeasure(Double)
        case positiveInteger(Int)
        case positiveLengthMeasure(Double)
        case positivePlaneAngleMeasure(Double)
        case positiveRatioMeasure(Double)
        case powerMeasure(Double)
        case pressureMeasure(Double)
        case radioActivityMeasure(Double)
        case ratioMeasure(Double)
        case real(Double)
        case reference(IfcReference)
        case rotationalFrequencyMeasure(Double)
        case rotationalMassMeasure(Double)
        case rotationalStiffnessMeasure(Double)
        case sectionModulusMeasure(Double)
        case sectionalAreaIntegralMeasure(Double)
        case shearModulusMeasure(Double)
        case solidAngleMeasure(Double)
        case soundPowerLevelMeasure(Double)
        case soundPowerMeasure(Double)
        case soundPressureLevelMeasure(Double)
        case soundPressureMeasure(Double)
        case specificHeatCapacityMeasure(Double)
        case temperatureGradientMeasure(Double)
        case temperatureRateOfChangeMeasure(Double)
        case text(String)
        case thermalAdmittanceMeasure(Double)
        case thermalConductivityMeasure(Double)
        case thermalExpansionCoefficientMeasure(Double)
        case thermalResistanceMeasure(Double)
        case thermalTransmittanceMeasure(Double)
        case thermodynamicTemperatureMeasure(Double)
        case time(String)
        case timeMeasure(Double)
        case timeStamp(Int)
        case torqueMeasure(Double)
        case uRIReference(String)
        case vaporPermeabilityMeasure(Double)
        case volumeMeasure(Double)
        case volumetricFlowRateMeasure(Double)
        case warpingConstantMeasure(Double)
        case warpingMomentMeasure(Double)
    }

    public enum IfcAxis2Placement: Sendable {
        case axis2Placement2D(IfcAxis2Placement2D)
        case axis2Placement3D(IfcAxis2Placement3D)
    }

    public enum IfcBendingParameterSelect: Sendable {
        case lengthMeasure(Double)
        case planeAngleMeasure(Double)
    }

    public enum IfcBooleanOperand: Sendable {
        case booleanResult(IfcBooleanResult)
        case csgPrimitive3D(IfcCsgPrimitive3D)
        case halfSpaceSolid(IfcHalfSpaceSolid)
        case solidModel(IfcSolidModel)
        case tessellatedFaceSet(IfcTessellatedFaceSet)
    }

    public enum IfcClassificationReferenceSelect: Sendable {
        case classification(IfcClassification)
        case classificationReference(IfcClassificationReference)
    }

    public enum IfcClassificationSelect: Sendable {
        case classification(IfcClassification)
        case classificationReference(IfcClassificationReference)
    }

    public enum IfcColour: Sendable {
        case colourSpecification(IfcColourSpecification)
        case preDefinedColour(IfcPreDefinedColour)
    }

    public enum IfcColourOrFactor: Sendable {
        case colourRgb(IfcColourRgb)
        case normalisedRatioMeasure(Double)
    }

    public enum IfcCoordinateReferenceSystemSelect: Sendable {
        case coordinateReferenceSystem(IfcCoordinateReferenceSystem)
        case geometricRepresentationContext(IfcGeometricRepresentationContext)
    }

    public enum IfcCsgSelect: Sendable {
        case booleanResult(IfcBooleanResult)
        case csgPrimitive3D(IfcCsgPrimitive3D)
    }

    public enum IfcCurveFontOrScaledCurveFontSelect: Sendable {
        case curveStyleFont(IfcCurveStyleFont)
        case curveStyleFontAndScaling(IfcCurveStyleFontAndScaling)
        case preDefinedCurveFont(IfcPreDefinedCurveFont)
    }

    public enum IfcCurveMeasureSelect: Sendable {
        case lengthMeasure(Double)
        case parameterValue(Double)
    }

    public enum IfcCurveOnSurface: Sendable {
        case compositeCurveOnSurface(IfcCompositeCurveOnSurface)
        case pcurve(IfcPcurve)
        case surfaceCurve(IfcSurfaceCurve)
    }

    public enum IfcCurveOrEdgeCurve: Sendable {
        case boundedCurve(IfcBoundedCurve)
        case edgeCurve(IfcEdgeCurve)
    }

    public enum IfcCurveStyleFontSelect: Sendable {
        case curveStyleFont(IfcCurveStyleFont)
        case preDefinedCurveFont(IfcPreDefinedCurveFont)
    }

    public enum IfcDefinitionSelect: Sendable {
        case objectDefinition(IfcObjectDefinition)
        case propertyDefinition(IfcPropertyDefinition)
    }

    public enum IfcDerivedMeasureValue: Sendable {
        case absorbedDoseMeasure(Double)
        case accelerationMeasure(Double)
        case angularVelocityMeasure(Double)
        case areaDensityMeasure(Double)
        case compoundPlaneAngleMeasure(IfcCompoundPlaneAngleMeasure)
        case curvatureMeasure(Double)
        case doseEquivalentMeasure(Double)
        case dynamicViscosityMeasure(Double)
        case electricCapacitanceMeasure(Double)
        case electricChargeMeasure(Double)
        case electricConductanceMeasure(Double)
        case electricResistanceMeasure(Double)
        case electricVoltageMeasure(Double)
        case energyMeasure(Double)
        case forceMeasure(Double)
        case frequencyMeasure(Double)
        case heatFluxDensityMeasure(Double)
        case heatingValueMeasure(Double)
        case illuminanceMeasure(Double)
        case inductanceMeasure(Double)
        case integerCountRateMeasure(Int)
        case ionConcentrationMeasure(Double)
        case isothermalMoistureCapacityMeasure(Double)
        case kinematicViscosityMeasure(Double)
        case linearForceMeasure(Double)
        case linearMomentMeasure(Double)
        case linearStiffnessMeasure(Double)
        case linearVelocityMeasure(Double)
        case luminousFluxMeasure(Double)
        case luminousIntensityDistributionMeasure(Double)
        case magneticFluxDensityMeasure(Double)
        case magneticFluxMeasure(Double)
        case massDensityMeasure(Double)
        case massFlowRateMeasure(Double)
        case massPerLengthMeasure(Double)
        case modulusOfElasticityMeasure(Double)
        case modulusOfLinearSubgradeReactionMeasure(Double)
        case modulusOfRotationalSubgradeReactionMeasure(Double)
        case modulusOfSubgradeReactionMeasure(Double)
        case moistureDiffusivityMeasure(Double)
        case molecularWeightMeasure(Double)
        case momentOfInertiaMeasure(Double)
        case monetaryMeasure(Double)
        case pHMeasure(Double)
        case planarForceMeasure(Double)
        case powerMeasure(Double)
        case pressureMeasure(Double)
        case radioActivityMeasure(Double)
        case rotationalFrequencyMeasure(Double)
        case rotationalMassMeasure(Double)
        case rotationalStiffnessMeasure(Double)
        case sectionModulusMeasure(Double)
        case sectionalAreaIntegralMeasure(Double)
        case shearModulusMeasure(Double)
        case soundPowerLevelMeasure(Double)
        case soundPowerMeasure(Double)
        case soundPressureLevelMeasure(Double)
        case soundPressureMeasure(Double)
        case specificHeatCapacityMeasure(Double)
        case temperatureGradientMeasure(Double)
        case temperatureRateOfChangeMeasure(Double)
        case thermalAdmittanceMeasure(Double)
        case thermalConductivityMeasure(Double)
        case thermalExpansionCoefficientMeasure(Double)
        case thermalResistanceMeasure(Double)
        case thermalTransmittanceMeasure(Double)
        case torqueMeasure(Double)
        case vaporPermeabilityMeasure(Double)
        case volumetricFlowRateMeasure(Double)
        case warpingConstantMeasure(Double)
        case warpingMomentMeasure(Double)
    }

    public enum IfcDocumentSelect: Sendable {
        case documentInformation(IfcDocumentInformation)
        case documentReference(IfcDocumentReference)
    }

    public enum IfcFillStyleSelect: Sendable {
        case colourSpecification(IfcColourSpecification)
        case externallyDefinedHatchStyle(IfcExternallyDefinedHatchStyle)
        case fillAreaStyleHatching(IfcFillAreaStyleHatching)
        case fillAreaStyleTiles(IfcFillAreaStyleTiles)
        case preDefinedColour(IfcPreDefinedColour)
    }

    public enum IfcGeometricSetSelect: Sendable {
        case curve(IfcCurve)
        case point(IfcPoint)
        case surface(IfcSurface)
    }

    public enum IfcGridPlacementDirectionSelect: Sendable {
        case direction(IfcDirection)
        case virtualGridIntersection(IfcVirtualGridIntersection)
    }

    public enum IfcHatchLineDistanceSelect: Sendable {
        case positiveLengthMeasure(Double)
        case vector(IfcVector)
    }

    public enum IfcInterferenceSelect: Sendable {
        case element(IfcElement)
        case spatialElement(IfcSpatialElement)
    }

    public enum IfcLayeredItem: Sendable {
        case representation(IfcRepresentation)
        case representationItem(IfcRepresentationItem)
    }

    public enum IfcLibrarySelect: Sendable {
        case libraryInformation(IfcLibraryInformation)
        case libraryReference(IfcLibraryReference)
    }

    public enum IfcLightDistributionDataSourceSelect: Sendable {
        case externalReference(IfcExternalReference)
        case lightIntensityDistribution(IfcLightIntensityDistribution)
    }

    public enum IfcMaterialSelect: Sendable {
        case materialDefinition(IfcMaterialDefinition)
        case materialList(IfcMaterialList)
        case materialUsageDefinition(IfcMaterialUsageDefinition)
    }

    public enum IfcMeasureValue: Sendable {
        case amountOfSubstanceMeasure(Double)
        case areaMeasure(Double)
        case complexNumber(IfcComplexNumber)
        case contextDependentMeasure(Double)
        case countMeasure(Int)
        case descriptiveMeasure(String)
        case electricCurrentMeasure(Double)
        case lengthMeasure(Double)
        case luminousIntensityMeasure(Double)
        case massMeasure(Double)
        case nonNegativeLengthMeasure(Double)
        case normalisedRatioMeasure(Double)
        case numericMeasure(Double)
        case parameterValue(Double)
        case planeAngleMeasure(Double)
        case positiveLengthMeasure(Double)
        case positivePlaneAngleMeasure(Double)
        case positiveRatioMeasure(Double)
        case ratioMeasure(Double)
        case solidAngleMeasure(Double)
        case thermodynamicTemperatureMeasure(Double)
        case timeMeasure(Double)
        case volumeMeasure(Double)
    }

    public enum IfcMetricValueSelect: Sendable {
        case absorbedDoseMeasure(Double)
        case accelerationMeasure(Double)
        case amountOfSubstanceMeasure(Double)
        case angularVelocityMeasure(Double)
        case appliedValue(IfcAppliedValue)
        case areaDensityMeasure(Double)
        case areaMeasure(Double)
        case binary(IfcBinary)
        case boolean(Bool)
        case complexNumber(IfcComplexNumber)
        case compoundPlaneAngleMeasure(IfcCompoundPlaneAngleMeasure)
        case contextDependentMeasure(Double)
        case countMeasure(Int)
        case curvatureMeasure(Double)
        case date(String)
        case dateTime(String)
        case descriptiveMeasure(String)
        case doseEquivalentMeasure(Double)
        case duration(String)
        case dynamicViscosityMeasure(Double)
        case electricCapacitanceMeasure(Double)
        case electricChargeMeasure(Double)
        case electricConductanceMeasure(Double)
        case electricCurrentMeasure(Double)
        case electricResistanceMeasure(Double)
        case electricVoltageMeasure(Double)
        case energyMeasure(Double)
        case forceMeasure(Double)
        case frequencyMeasure(Double)
        case heatFluxDensityMeasure(Double)
        case heatingValueMeasure(Double)
        case identifier(String)
        case illuminanceMeasure(Double)
        case inductanceMeasure(Double)
        case integer(Int)
        case integerCountRateMeasure(Int)
        case ionConcentrationMeasure(Double)
        case isothermalMoistureCapacityMeasure(Double)
        case kinematicViscosityMeasure(Double)
        case label(String)
        case lengthMeasure(Double)
        case linearForceMeasure(Double)
        case linearMomentMeasure(Double)
        case linearStiffnessMeasure(Double)
        case linearVelocityMeasure(Double)
        case logical(IfcLogical)
        case luminousFluxMeasure(Double)
        case luminousIntensityDistributionMeasure(Double)
        case luminousIntensityMeasure(Double)
        case magneticFluxDensityMeasure(Double)
        case magneticFluxMeasure(Double)
        case massDensityMeasure(Double)
        case massFlowRateMeasure(Double)
        case massMeasure(Double)
        case massPerLengthMeasure(Double)
        case measureWithUnit(IfcMeasureWithUnit)
        case modulusOfElasticityMeasure(Double)
        case modulusOfLinearSubgradeReactionMeasure(Double)
        case modulusOfRotationalSubgradeReactionMeasure(Double)
        case modulusOfSubgradeReactionMeasure(Double)
        case moistureDiffusivityMeasure(Double)
        case molecularWeightMeasure(Double)
        case momentOfInertiaMeasure(Double)
        case monetaryMeasure(Double)
        case nonNegativeLengthMeasure(Double)
        case normalisedRatioMeasure(Double)
        case numericMeasure(Double)
        case pHMeasure(Double)
        case parameterValue(Double)
        case planarForceMeasure(Double)
        case planeAngleMeasure(Double)
        case positiveInteger(Int)
        case positiveLengthMeasure(Double)
        case positivePlaneAngleMeasure(Double)
        case positiveRatioMeasure(Double)
        case powerMeasure(Double)
        case pressureMeasure(Double)
        case radioActivityMeasure(Double)
        case ratioMeasure(Double)
        case real(Double)
        case reference(IfcReference)
        case rotationalFrequencyMeasure(Double)
        case rotationalMassMeasure(Double)
        case rotationalStiffnessMeasure(Double)
        case sectionModulusMeasure(Double)
        case sectionalAreaIntegralMeasure(Double)
        case shearModulusMeasure(Double)
        case solidAngleMeasure(Double)
        case soundPowerLevelMeasure(Double)
        case soundPowerMeasure(Double)
        case soundPressureLevelMeasure(Double)
        case soundPressureMeasure(Double)
        case specificHeatCapacityMeasure(Double)
        case table(IfcTable)
        case temperatureGradientMeasure(Double)
        case temperatureRateOfChangeMeasure(Double)
        case text(String)
        case thermalAdmittanceMeasure(Double)
        case thermalConductivityMeasure(Double)
        case thermalExpansionCoefficientMeasure(Double)
        case thermalResistanceMeasure(Double)
        case thermalTransmittanceMeasure(Double)
        case thermodynamicTemperatureMeasure(Double)
        case time(String)
        case timeMeasure(Double)
        case timeSeries(IfcTimeSeries)
        case timeStamp(Int)
        case torqueMeasure(Double)
        case uRIReference(String)
        case vaporPermeabilityMeasure(Double)
        case volumeMeasure(Double)
        case volumetricFlowRateMeasure(Double)
        case warpingConstantMeasure(Double)
        case warpingMomentMeasure(Double)
    }

    public enum IfcModulusOfRotationalSubgradeReactionSelect: Sendable {
        case boolean(Bool)
        case modulusOfRotationalSubgradeReactionMeasure(Double)
    }

    public enum IfcModulusOfSubgradeReactionSelect: Sendable {
        case boolean(Bool)
        case modulusOfSubgradeReactionMeasure(Double)
    }

    public enum IfcModulusOfTranslationalSubgradeReactionSelect: Sendable {
        case boolean(Bool)
        case modulusOfLinearSubgradeReactionMeasure(Double)
    }

    public enum IfcObjectReferenceSelect: Sendable {
        case address(IfcAddress)
        case appliedValue(IfcAppliedValue)
        case externalReference(IfcExternalReference)
        case materialDefinition(IfcMaterialDefinition)
        case organization(IfcOrganization)
        case person(IfcPerson)
        case personAndOrganization(IfcPersonAndOrganization)
        case table(IfcTable)
        case timeSeries(IfcTimeSeries)
    }

    public enum IfcPointOrVertexPoint: Sendable {
        case point(IfcPoint)
        case vertexPoint(IfcVertexPoint)
    }

    public enum IfcProcessSelect: Sendable {
        case process(IfcProcess)
        case typeProcess(IfcTypeProcess)
    }

    public enum IfcProductRepresentationSelect: Sendable {
        case productDefinitionShape(IfcProductDefinitionShape)
        case representationMap(IfcRepresentationMap)
    }

    public enum IfcProductSelect: Sendable {
        case product(IfcProduct)
        case typeProduct(IfcTypeProduct)
    }

    public enum IfcPropertySetDefinitionSelect: Sendable {
        case propertySetDefinition(IfcPropertySetDefinition)
        case propertySetDefinitionSet(IfcPropertySetDefinitionSet)
    }

    public enum IfcResourceObjectSelect: Sendable {
        case actorRole(IfcActorRole)
        case appliedValue(IfcAppliedValue)
        case approval(IfcApproval)
        case constraint(IfcConstraint)
        case contextDependentUnit(IfcContextDependentUnit)
        case conversionBasedUnit(IfcConversionBasedUnit)
        case externalInformation(IfcExternalInformation)
        case externalReference(IfcExternalReference)
        case materialDefinition(IfcMaterialDefinition)
        case organization(IfcOrganization)
        case person(IfcPerson)
        case personAndOrganization(IfcPersonAndOrganization)
        case physicalQuantity(IfcPhysicalQuantity)
        case profileDef(IfcProfileDef)
        case propertyAbstraction(IfcPropertyAbstraction)
        case shapeAspect(IfcShapeAspect)
        case timeSeries(IfcTimeSeries)
    }

    public enum IfcResourceSelect: Sendable {
        case resource(IfcResource)
        case typeResource(IfcTypeResource)
    }

    public enum IfcRotationalStiffnessSelect: Sendable {
        case boolean(Bool)
        case rotationalStiffnessMeasure(Double)
    }

    public enum IfcSegmentIndexSelect: Sendable {
        case arcIndex(IfcArcIndex)
        case lineIndex(IfcLineIndex)
    }

    public enum IfcShell: Sendable {
        case closedShell(IfcClosedShell)
        case openShell(IfcOpenShell)
    }

    public enum IfcSimpleValue: Sendable {
        case binary(IfcBinary)
        case boolean(Bool)
        case date(String)
        case dateTime(String)
        case duration(String)
        case identifier(String)
        case integer(Int)
        case label(String)
        case logical(IfcLogical)
        case positiveInteger(Int)
        case real(Double)
        case text(String)
        case time(String)
        case timeStamp(Int)
        case uRIReference(String)
    }

    public enum IfcSizeSelect: Sendable {
        case descriptiveMeasure(String)
        case lengthMeasure(Double)
        case normalisedRatioMeasure(Double)
        case positiveLengthMeasure(Double)
        case positiveRatioMeasure(Double)
        case ratioMeasure(Double)
    }

    public enum IfcSolidOrShell: Sendable {
        case closedShell(IfcClosedShell)
        case solidModel(IfcSolidModel)
    }

    public enum IfcSpaceBoundarySelect: Sendable {
        case externalSpatialElement(IfcExternalSpatialElement)
        case space(IfcSpace)
    }

    public enum IfcSpatialReferenceSelect: Sendable {
        case group(IfcGroup)
        case product(IfcProduct)
    }

    public enum IfcSpecularHighlightSelect: Sendable {
        case specularExponent(Double)
        case specularRoughness(Double)
    }

    public enum IfcStructuralActivityAssignmentSelect: Sendable {
        case element(IfcElement)
        case structuralItem(IfcStructuralItem)
    }

    public enum IfcSurfaceOrFaceSurface: Sendable {
        case faceBasedSurfaceModel(IfcFaceBasedSurfaceModel)
        case faceSurface(IfcFaceSurface)
        case surface(IfcSurface)
    }

    public enum IfcSurfaceStyleElementSelect: Sendable {
        case externallyDefinedSurfaceStyle(IfcExternallyDefinedSurfaceStyle)
        case surfaceStyleLighting(IfcSurfaceStyleLighting)
        case surfaceStyleRefraction(IfcSurfaceStyleRefraction)
        case surfaceStyleShading(IfcSurfaceStyleShading)
        case surfaceStyleWithTextures(IfcSurfaceStyleWithTextures)
    }

    public enum IfcTextFontSelect: Sendable {
        case externallyDefinedTextFont(IfcExternallyDefinedTextFont)
        case preDefinedTextFont(IfcPreDefinedTextFont)
    }

    public enum IfcTimeOrRatioSelect: Sendable {
        case duration(String)
        case ratioMeasure(Double)
    }

    public enum IfcTranslationalStiffnessSelect: Sendable {
        case boolean(Bool)
        case linearStiffnessMeasure(Double)
    }

    public enum IfcTrimmingSelect: Sendable {
        case cartesianPoint(IfcCartesianPoint)
        case parameterValue(Double)
    }

    public enum IfcUnit: Sendable {
        case derivedUnit(IfcDerivedUnit)
        case monetaryUnit(IfcMonetaryUnit)
        case namedUnit(IfcNamedUnit)
    }

    public enum IfcValue: Sendable {
        case absorbedDoseMeasure(Double)
        case accelerationMeasure(Double)
        case amountOfSubstanceMeasure(Double)
        case angularVelocityMeasure(Double)
        case areaDensityMeasure(Double)
        case areaMeasure(Double)
        case binary(IfcBinary)
        case boolean(Bool)
        case complexNumber(IfcComplexNumber)
        case compoundPlaneAngleMeasure(IfcCompoundPlaneAngleMeasure)
        case contextDependentMeasure(Double)
        case countMeasure(Int)
        case curvatureMeasure(Double)
        case date(String)
        case dateTime(String)
        case descriptiveMeasure(String)
        case doseEquivalentMeasure(Double)
        case duration(String)
        case dynamicViscosityMeasure(Double)
        case electricCapacitanceMeasure(Double)
        case electricChargeMeasure(Double)
        case electricConductanceMeasure(Double)
        case electricCurrentMeasure(Double)
        case electricResistanceMeasure(Double)
        case electricVoltageMeasure(Double)
        case energyMeasure(Double)
        case forceMeasure(Double)
        case frequencyMeasure(Double)
        case heatFluxDensityMeasure(Double)
        case heatingValueMeasure(Double)
        case identifier(String)
        case illuminanceMeasure(Double)
        case inductanceMeasure(Double)
        case integer(Int)
        case integerCountRateMeasure(Int)
        case ionConcentrationMeasure(Double)
        case isothermalMoistureCapacityMeasure(Double)
        case kinematicViscosityMeasure(Double)
        case label(String)
        case lengthMeasure(Double)
        case linearForceMeasure(Double)
        case linearMomentMeasure(Double)
        case linearStiffnessMeasure(Double)
        case linearVelocityMeasure(Double)
        case logical(IfcLogical)
        case luminousFluxMeasure(Double)
        case luminousIntensityDistributionMeasure(Double)
        case luminousIntensityMeasure(Double)
        case magneticFluxDensityMeasure(Double)
        case magneticFluxMeasure(Double)
        case massDensityMeasure(Double)
        case massFlowRateMeasure(Double)
        case massMeasure(Double)
        case massPerLengthMeasure(Double)
        case modulusOfElasticityMeasure(Double)
        case modulusOfLinearSubgradeReactionMeasure(Double)
        case modulusOfRotationalSubgradeReactionMeasure(Double)
        case modulusOfSubgradeReactionMeasure(Double)
        case moistureDiffusivityMeasure(Double)
        case molecularWeightMeasure(Double)
        case momentOfInertiaMeasure(Double)
        case monetaryMeasure(Double)
        case nonNegativeLengthMeasure(Double)
        case normalisedRatioMeasure(Double)
        case numericMeasure(Double)
        case pHMeasure(Double)
        case parameterValue(Double)
        case planarForceMeasure(Double)
        case planeAngleMeasure(Double)
        case positiveInteger(Int)
        case positiveLengthMeasure(Double)
        case positivePlaneAngleMeasure(Double)
        case positiveRatioMeasure(Double)
        case powerMeasure(Double)
        case pressureMeasure(Double)
        case radioActivityMeasure(Double)
        case ratioMeasure(Double)
        case real(Double)
        case rotationalFrequencyMeasure(Double)
        case rotationalMassMeasure(Double)
        case rotationalStiffnessMeasure(Double)
        case sectionModulusMeasure(Double)
        case sectionalAreaIntegralMeasure(Double)
        case shearModulusMeasure(Double)
        case solidAngleMeasure(Double)
        case soundPowerLevelMeasure(Double)
        case soundPowerMeasure(Double)
        case soundPressureLevelMeasure(Double)
        case soundPressureMeasure(Double)
        case specificHeatCapacityMeasure(Double)
        case temperatureGradientMeasure(Double)
        case temperatureRateOfChangeMeasure(Double)
        case text(String)
        case thermalAdmittanceMeasure(Double)
        case thermalConductivityMeasure(Double)
        case thermalExpansionCoefficientMeasure(Double)
        case thermalResistanceMeasure(Double)
        case thermalTransmittanceMeasure(Double)
        case thermodynamicTemperatureMeasure(Double)
        case time(String)
        case timeMeasure(Double)
        case timeStamp(Int)
        case torqueMeasure(Double)
        case uRIReference(String)
        case vaporPermeabilityMeasure(Double)
        case volumeMeasure(Double)
        case volumetricFlowRateMeasure(Double)
        case warpingConstantMeasure(Double)
        case warpingMomentMeasure(Double)
    }

    public enum IfcVectorOrDirection: Sendable {
        case direction(IfcDirection)
        case vector(IfcVector)
    }

    public enum IfcWarpingStiffnessSelect: Sendable {
        case boolean(Bool)
        case warpingMomentMeasure(Double)
    }

}
