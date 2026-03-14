// STEPSelectEncoding.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3.IfcActorSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .organization(let e): return .entityRef(e)
        case .person(let e): return .entityRef(e)
        case .personAndOrganization(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcOrganization { return .organization(v) }
            if let v = entity as? IFC4X3.IfcPerson { return .person(v) }
            if let v = entity as? IFC4X3.IfcPersonAndOrganization { return .personAndOrganization(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcAppliedValueSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .absorbedDoseMeasure(let v): return .select(typeName: "IFCABSORBEDDOSEMEASURE", value: .real(v))
        case .accelerationMeasure(let v): return .select(typeName: "IFCACCELERATIONMEASURE", value: .real(v))
        case .amountOfSubstanceMeasure(let v): return .select(typeName: "IFCAMOUNTOFSUBSTANCEMEASURE", value: .real(v))
        case .angularVelocityMeasure(let v): return .select(typeName: "IFCANGULARVELOCITYMEASURE", value: .real(v))
        case .areaDensityMeasure(let v): return .select(typeName: "IFCAREADENSITYMEASURE", value: .real(v))
        case .areaMeasure(let v): return .select(typeName: "IFCAREAMEASURE", value: .real(v))
        case .binary(let e): return .entityRef(e)
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .complexNumber(let e): return .entityRef(e)
        case .compoundPlaneAngleMeasure(let e): return .entityRef(e)
        case .contextDependentMeasure(let v): return .select(typeName: "IFCCONTEXTDEPENDENTMEASURE", value: .real(v))
        case .countMeasure(let v): return .select(typeName: "IFCCOUNTMEASURE", value: .integer(v))
        case .curvatureMeasure(let v): return .select(typeName: "IFCCURVATUREMEASURE", value: .real(v))
        case .date(let v): return .select(typeName: "IFCDATE", value: .string(v))
        case .dateTime(let v): return .select(typeName: "IFCDATETIME", value: .string(v))
        case .descriptiveMeasure(let v): return .select(typeName: "IFCDESCRIPTIVEMEASURE", value: .string(v))
        case .doseEquivalentMeasure(let v): return .select(typeName: "IFCDOSEEQUIVALENTMEASURE", value: .real(v))
        case .duration(let v): return .select(typeName: "IFCDURATION", value: .string(v))
        case .dynamicViscosityMeasure(let v): return .select(typeName: "IFCDYNAMICVISCOSITYMEASURE", value: .real(v))
        case .electricCapacitanceMeasure(let v): return .select(typeName: "IFCELECTRICCAPACITANCEMEASURE", value: .real(v))
        case .electricChargeMeasure(let v): return .select(typeName: "IFCELECTRICCHARGEMEASURE", value: .real(v))
        case .electricConductanceMeasure(let v): return .select(typeName: "IFCELECTRICCONDUCTANCEMEASURE", value: .real(v))
        case .electricCurrentMeasure(let v): return .select(typeName: "IFCELECTRICCURRENTMEASURE", value: .real(v))
        case .electricResistanceMeasure(let v): return .select(typeName: "IFCELECTRICRESISTANCEMEASURE", value: .real(v))
        case .electricVoltageMeasure(let v): return .select(typeName: "IFCELECTRICVOLTAGEMEASURE", value: .real(v))
        case .energyMeasure(let v): return .select(typeName: "IFCENERGYMEASURE", value: .real(v))
        case .forceMeasure(let v): return .select(typeName: "IFCFORCEMEASURE", value: .real(v))
        case .frequencyMeasure(let v): return .select(typeName: "IFCFREQUENCYMEASURE", value: .real(v))
        case .heatFluxDensityMeasure(let v): return .select(typeName: "IFCHEATFLUXDENSITYMEASURE", value: .real(v))
        case .heatingValueMeasure(let v): return .select(typeName: "IFCHEATINGVALUEMEASURE", value: .real(v))
        case .identifier(let v): return .select(typeName: "IFCIDENTIFIER", value: .string(v))
        case .illuminanceMeasure(let v): return .select(typeName: "IFCILLUMINANCEMEASURE", value: .real(v))
        case .inductanceMeasure(let v): return .select(typeName: "IFCINDUCTANCEMEASURE", value: .real(v))
        case .integer(let v): return .select(typeName: "IFCINTEGER", value: .integer(v))
        case .integerCountRateMeasure(let v): return .select(typeName: "IFCINTEGERCOUNTRATEMEASURE", value: .integer(v))
        case .ionConcentrationMeasure(let v): return .select(typeName: "IFCIONCONCENTRATIONMEASURE", value: .real(v))
        case .isothermalMoistureCapacityMeasure(let v): return .select(typeName: "IFCISOTHERMALMOISTURECAPACITYMEASURE", value: .real(v))
        case .kinematicViscosityMeasure(let v): return .select(typeName: "IFCKINEMATICVISCOSITYMEASURE", value: .real(v))
        case .label(let v): return .select(typeName: "IFCLABEL", value: .string(v))
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .linearForceMeasure(let v): return .select(typeName: "IFCLINEARFORCEMEASURE", value: .real(v))
        case .linearMomentMeasure(let v): return .select(typeName: "IFCLINEARMOMENTMEASURE", value: .real(v))
        case .linearStiffnessMeasure(let v): return .select(typeName: "IFCLINEARSTIFFNESSMEASURE", value: .real(v))
        case .linearVelocityMeasure(let v): return .select(typeName: "IFCLINEARVELOCITYMEASURE", value: .real(v))
        case .logical(let v): return .select(typeName: "IFCLOGICAL", value: .enumeration(v.rawValue))
        case .luminousFluxMeasure(let v): return .select(typeName: "IFCLUMINOUSFLUXMEASURE", value: .real(v))
        case .luminousIntensityDistributionMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE", value: .real(v))
        case .luminousIntensityMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYMEASURE", value: .real(v))
        case .magneticFluxDensityMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXDENSITYMEASURE", value: .real(v))
        case .magneticFluxMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXMEASURE", value: .real(v))
        case .massDensityMeasure(let v): return .select(typeName: "IFCMASSDENSITYMEASURE", value: .real(v))
        case .massFlowRateMeasure(let v): return .select(typeName: "IFCMASSFLOWRATEMEASURE", value: .real(v))
        case .massMeasure(let v): return .select(typeName: "IFCMASSMEASURE", value: .real(v))
        case .massPerLengthMeasure(let v): return .select(typeName: "IFCMASSPERLENGTHMEASURE", value: .real(v))
        case .measureWithUnit(let e): return .entityRef(e)
        case .modulusOfElasticityMeasure(let v): return .select(typeName: "IFCMODULUSOFELASTICITYMEASURE", value: .real(v))
        case .modulusOfLinearSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfRotationalSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFSUBGRADEREACTIONMEASURE", value: .real(v))
        case .moistureDiffusivityMeasure(let v): return .select(typeName: "IFCMOISTUREDIFFUSIVITYMEASURE", value: .real(v))
        case .molecularWeightMeasure(let v): return .select(typeName: "IFCMOLECULARWEIGHTMEASURE", value: .real(v))
        case .momentOfInertiaMeasure(let v): return .select(typeName: "IFCMOMENTOFINERTIAMEASURE", value: .real(v))
        case .monetaryMeasure(let v): return .select(typeName: "IFCMONETARYMEASURE", value: .real(v))
        case .nonNegativeLengthMeasure(let v): return .select(typeName: "IFCNONNEGATIVELENGTHMEASURE", value: .real(v))
        case .normalisedRatioMeasure(let v): return .select(typeName: "IFCNORMALISEDRATIOMEASURE", value: .real(v))
        case .numericMeasure(let v): return .select(typeName: "IFCNUMERICMEASURE", value: .real(v))
        case .pHMeasure(let v): return .select(typeName: "IFCPHMEASURE", value: .real(v))
        case .parameterValue(let v): return .select(typeName: "IFCPARAMETERVALUE", value: .real(v))
        case .planarForceMeasure(let v): return .select(typeName: "IFCPLANARFORCEMEASURE", value: .real(v))
        case .planeAngleMeasure(let v): return .select(typeName: "IFCPLANEANGLEMEASURE", value: .real(v))
        case .positiveInteger(let v): return .select(typeName: "IFCPOSITIVEINTEGER", value: .integer(v))
        case .positiveLengthMeasure(let v): return .select(typeName: "IFCPOSITIVELENGTHMEASURE", value: .real(v))
        case .positivePlaneAngleMeasure(let v): return .select(typeName: "IFCPOSITIVEPLANEANGLEMEASURE", value: .real(v))
        case .positiveRatioMeasure(let v): return .select(typeName: "IFCPOSITIVERATIOMEASURE", value: .real(v))
        case .powerMeasure(let v): return .select(typeName: "IFCPOWERMEASURE", value: .real(v))
        case .pressureMeasure(let v): return .select(typeName: "IFCPRESSUREMEASURE", value: .real(v))
        case .radioActivityMeasure(let v): return .select(typeName: "IFCRADIOACTIVITYMEASURE", value: .real(v))
        case .ratioMeasure(let v): return .select(typeName: "IFCRATIOMEASURE", value: .real(v))
        case .real(let v): return .select(typeName: "IFCREAL", value: .real(v))
        case .reference(let e): return .entityRef(e)
        case .rotationalFrequencyMeasure(let v): return .select(typeName: "IFCROTATIONALFREQUENCYMEASURE", value: .real(v))
        case .rotationalMassMeasure(let v): return .select(typeName: "IFCROTATIONALMASSMEASURE", value: .real(v))
        case .rotationalStiffnessMeasure(let v): return .select(typeName: "IFCROTATIONALSTIFFNESSMEASURE", value: .real(v))
        case .sectionModulusMeasure(let v): return .select(typeName: "IFCSECTIONMODULUSMEASURE", value: .real(v))
        case .sectionalAreaIntegralMeasure(let v): return .select(typeName: "IFCSECTIONALAREAINTEGRALMEASURE", value: .real(v))
        case .shearModulusMeasure(let v): return .select(typeName: "IFCSHEARMODULUSMEASURE", value: .real(v))
        case .solidAngleMeasure(let v): return .select(typeName: "IFCSOLIDANGLEMEASURE", value: .real(v))
        case .soundPowerLevelMeasure(let v): return .select(typeName: "IFCSOUNDPOWERLEVELMEASURE", value: .real(v))
        case .soundPowerMeasure(let v): return .select(typeName: "IFCSOUNDPOWERMEASURE", value: .real(v))
        case .soundPressureLevelMeasure(let v): return .select(typeName: "IFCSOUNDPRESSURELEVELMEASURE", value: .real(v))
        case .soundPressureMeasure(let v): return .select(typeName: "IFCSOUNDPRESSUREMEASURE", value: .real(v))
        case .specificHeatCapacityMeasure(let v): return .select(typeName: "IFCSPECIFICHEATCAPACITYMEASURE", value: .real(v))
        case .temperatureGradientMeasure(let v): return .select(typeName: "IFCTEMPERATUREGRADIENTMEASURE", value: .real(v))
        case .temperatureRateOfChangeMeasure(let v): return .select(typeName: "IFCTEMPERATURERATEOFCHANGEMEASURE", value: .real(v))
        case .text(let v): return .select(typeName: "IFCTEXT", value: .string(v))
        case .thermalAdmittanceMeasure(let v): return .select(typeName: "IFCTHERMALADMITTANCEMEASURE", value: .real(v))
        case .thermalConductivityMeasure(let v): return .select(typeName: "IFCTHERMALCONDUCTIVITYMEASURE", value: .real(v))
        case .thermalExpansionCoefficientMeasure(let v): return .select(typeName: "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE", value: .real(v))
        case .thermalResistanceMeasure(let v): return .select(typeName: "IFCTHERMALRESISTANCEMEASURE", value: .real(v))
        case .thermalTransmittanceMeasure(let v): return .select(typeName: "IFCTHERMALTRANSMITTANCEMEASURE", value: .real(v))
        case .thermodynamicTemperatureMeasure(let v): return .select(typeName: "IFCTHERMODYNAMICTEMPERATUREMEASURE", value: .real(v))
        case .time(let v): return .select(typeName: "IFCTIME", value: .string(v))
        case .timeMeasure(let v): return .select(typeName: "IFCTIMEMEASURE", value: .real(v))
        case .timeStamp(let v): return .select(typeName: "IFCTIMESTAMP", value: .integer(v))
        case .torqueMeasure(let v): return .select(typeName: "IFCTORQUEMEASURE", value: .real(v))
        case .uRIReference(let v): return .select(typeName: "IFCURIREFERENCE", value: .string(v))
        case .vaporPermeabilityMeasure(let v): return .select(typeName: "IFCVAPORPERMEABILITYMEASURE", value: .real(v))
        case .volumeMeasure(let v): return .select(typeName: "IFCVOLUMEMEASURE", value: .real(v))
        case .volumetricFlowRateMeasure(let v): return .select(typeName: "IFCVOLUMETRICFLOWRATEMEASURE", value: .real(v))
        case .warpingConstantMeasure(let v): return .select(typeName: "IFCWARPINGCONSTANTMEASURE", value: .real(v))
        case .warpingMomentMeasure(let v): return .select(typeName: "IFCWARPINGMOMENTMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcBinary { return .binary(v) }
            if let v = entity as? IFC4X3.IfcComplexNumber { return .complexNumber(v) }
            if let v = entity as? IFC4X3.IfcCompoundPlaneAngleMeasure { return .compoundPlaneAngleMeasure(v) }
            if let v = entity as? IFC4X3.IfcMeasureWithUnit { return .measureWithUnit(v) }
            if let v = entity as? IFC4X3.IfcReference { return .reference(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCABSORBEDDOSEMEASURE": if let v = inner.realValue { return .absorbedDoseMeasure(v) }
            case "IFCACCELERATIONMEASURE": if let v = inner.realValue { return .accelerationMeasure(v) }
            case "IFCAMOUNTOFSUBSTANCEMEASURE": if let v = inner.realValue { return .amountOfSubstanceMeasure(v) }
            case "IFCANGULARVELOCITYMEASURE": if let v = inner.realValue { return .angularVelocityMeasure(v) }
            case "IFCAREADENSITYMEASURE": if let v = inner.realValue { return .areaDensityMeasure(v) }
            case "IFCAREAMEASURE": if let v = inner.realValue { return .areaMeasure(v) }
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCCONTEXTDEPENDENTMEASURE": if let v = inner.realValue { return .contextDependentMeasure(v) }
            case "IFCCOUNTMEASURE": if let v = inner.integerValue { return .countMeasure(v) }
            case "IFCCURVATUREMEASURE": if let v = inner.realValue { return .curvatureMeasure(v) }
            case "IFCDATE": if let v = inner.stringValue { return .date(v) }
            case "IFCDATETIME": if let v = inner.stringValue { return .dateTime(v) }
            case "IFCDESCRIPTIVEMEASURE": if let v = inner.stringValue { return .descriptiveMeasure(v) }
            case "IFCDOSEEQUIVALENTMEASURE": if let v = inner.realValue { return .doseEquivalentMeasure(v) }
            case "IFCDURATION": if let v = inner.stringValue { return .duration(v) }
            case "IFCDYNAMICVISCOSITYMEASURE": if let v = inner.realValue { return .dynamicViscosityMeasure(v) }
            case "IFCELECTRICCAPACITANCEMEASURE": if let v = inner.realValue { return .electricCapacitanceMeasure(v) }
            case "IFCELECTRICCHARGEMEASURE": if let v = inner.realValue { return .electricChargeMeasure(v) }
            case "IFCELECTRICCONDUCTANCEMEASURE": if let v = inner.realValue { return .electricConductanceMeasure(v) }
            case "IFCELECTRICCURRENTMEASURE": if let v = inner.realValue { return .electricCurrentMeasure(v) }
            case "IFCELECTRICRESISTANCEMEASURE": if let v = inner.realValue { return .electricResistanceMeasure(v) }
            case "IFCELECTRICVOLTAGEMEASURE": if let v = inner.realValue { return .electricVoltageMeasure(v) }
            case "IFCENERGYMEASURE": if let v = inner.realValue { return .energyMeasure(v) }
            case "IFCFORCEMEASURE": if let v = inner.realValue { return .forceMeasure(v) }
            case "IFCFREQUENCYMEASURE": if let v = inner.realValue { return .frequencyMeasure(v) }
            case "IFCHEATFLUXDENSITYMEASURE": if let v = inner.realValue { return .heatFluxDensityMeasure(v) }
            case "IFCHEATINGVALUEMEASURE": if let v = inner.realValue { return .heatingValueMeasure(v) }
            case "IFCIDENTIFIER": if let v = inner.stringValue { return .identifier(v) }
            case "IFCILLUMINANCEMEASURE": if let v = inner.realValue { return .illuminanceMeasure(v) }
            case "IFCINDUCTANCEMEASURE": if let v = inner.realValue { return .inductanceMeasure(v) }
            case "IFCINTEGER": if let v = inner.integerValue { return .integer(v) }
            case "IFCINTEGERCOUNTRATEMEASURE": if let v = inner.integerValue { return .integerCountRateMeasure(v) }
            case "IFCIONCONCENTRATIONMEASURE": if let v = inner.realValue { return .ionConcentrationMeasure(v) }
            case "IFCISOTHERMALMOISTURECAPACITYMEASURE": if let v = inner.realValue { return .isothermalMoistureCapacityMeasure(v) }
            case "IFCKINEMATICVISCOSITYMEASURE": if let v = inner.realValue { return .kinematicViscosityMeasure(v) }
            case "IFCLABEL": if let v = inner.stringValue { return .label(v) }
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCLINEARFORCEMEASURE": if let v = inner.realValue { return .linearForceMeasure(v) }
            case "IFCLINEARMOMENTMEASURE": if let v = inner.realValue { return .linearMomentMeasure(v) }
            case "IFCLINEARSTIFFNESSMEASURE": if let v = inner.realValue { return .linearStiffnessMeasure(v) }
            case "IFCLINEARVELOCITYMEASURE": if let v = inner.realValue { return .linearVelocityMeasure(v) }
            case "IFCLOGICAL": if case .enumeration(let s) = inner, let v = IFC4X3.IfcLogical(rawValue: s) { return .logical(v) }
            case "IFCLUMINOUSFLUXMEASURE": if let v = inner.realValue { return .luminousFluxMeasure(v) }
            case "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE": if let v = inner.realValue { return .luminousIntensityDistributionMeasure(v) }
            case "IFCLUMINOUSINTENSITYMEASURE": if let v = inner.realValue { return .luminousIntensityMeasure(v) }
            case "IFCMAGNETICFLUXDENSITYMEASURE": if let v = inner.realValue { return .magneticFluxDensityMeasure(v) }
            case "IFCMAGNETICFLUXMEASURE": if let v = inner.realValue { return .magneticFluxMeasure(v) }
            case "IFCMASSDENSITYMEASURE": if let v = inner.realValue { return .massDensityMeasure(v) }
            case "IFCMASSFLOWRATEMEASURE": if let v = inner.realValue { return .massFlowRateMeasure(v) }
            case "IFCMASSMEASURE": if let v = inner.realValue { return .massMeasure(v) }
            case "IFCMASSPERLENGTHMEASURE": if let v = inner.realValue { return .massPerLengthMeasure(v) }
            case "IFCMODULUSOFELASTICITYMEASURE": if let v = inner.realValue { return .modulusOfElasticityMeasure(v) }
            case "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfLinearSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfRotationalSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfSubgradeReactionMeasure(v) }
            case "IFCMOISTUREDIFFUSIVITYMEASURE": if let v = inner.realValue { return .moistureDiffusivityMeasure(v) }
            case "IFCMOLECULARWEIGHTMEASURE": if let v = inner.realValue { return .molecularWeightMeasure(v) }
            case "IFCMOMENTOFINERTIAMEASURE": if let v = inner.realValue { return .momentOfInertiaMeasure(v) }
            case "IFCMONETARYMEASURE": if let v = inner.realValue { return .monetaryMeasure(v) }
            case "IFCNONNEGATIVELENGTHMEASURE": if let v = inner.realValue { return .nonNegativeLengthMeasure(v) }
            case "IFCNORMALISEDRATIOMEASURE": if let v = inner.realValue { return .normalisedRatioMeasure(v) }
            case "IFCNUMERICMEASURE": if let v = inner.realValue { return .numericMeasure(v) }
            case "IFCPHMEASURE": if let v = inner.realValue { return .pHMeasure(v) }
            case "IFCPARAMETERVALUE": if let v = inner.realValue { return .parameterValue(v) }
            case "IFCPLANARFORCEMEASURE": if let v = inner.realValue { return .planarForceMeasure(v) }
            case "IFCPLANEANGLEMEASURE": if let v = inner.realValue { return .planeAngleMeasure(v) }
            case "IFCPOSITIVEINTEGER": if let v = inner.integerValue { return .positiveInteger(v) }
            case "IFCPOSITIVELENGTHMEASURE": if let v = inner.realValue { return .positiveLengthMeasure(v) }
            case "IFCPOSITIVEPLANEANGLEMEASURE": if let v = inner.realValue { return .positivePlaneAngleMeasure(v) }
            case "IFCPOSITIVERATIOMEASURE": if let v = inner.realValue { return .positiveRatioMeasure(v) }
            case "IFCPOWERMEASURE": if let v = inner.realValue { return .powerMeasure(v) }
            case "IFCPRESSUREMEASURE": if let v = inner.realValue { return .pressureMeasure(v) }
            case "IFCRADIOACTIVITYMEASURE": if let v = inner.realValue { return .radioActivityMeasure(v) }
            case "IFCRATIOMEASURE": if let v = inner.realValue { return .ratioMeasure(v) }
            case "IFCREAL": if let v = inner.realValue { return .real(v) }
            case "IFCROTATIONALFREQUENCYMEASURE": if let v = inner.realValue { return .rotationalFrequencyMeasure(v) }
            case "IFCROTATIONALMASSMEASURE": if let v = inner.realValue { return .rotationalMassMeasure(v) }
            case "IFCROTATIONALSTIFFNESSMEASURE": if let v = inner.realValue { return .rotationalStiffnessMeasure(v) }
            case "IFCSECTIONMODULUSMEASURE": if let v = inner.realValue { return .sectionModulusMeasure(v) }
            case "IFCSECTIONALAREAINTEGRALMEASURE": if let v = inner.realValue { return .sectionalAreaIntegralMeasure(v) }
            case "IFCSHEARMODULUSMEASURE": if let v = inner.realValue { return .shearModulusMeasure(v) }
            case "IFCSOLIDANGLEMEASURE": if let v = inner.realValue { return .solidAngleMeasure(v) }
            case "IFCSOUNDPOWERLEVELMEASURE": if let v = inner.realValue { return .soundPowerLevelMeasure(v) }
            case "IFCSOUNDPOWERMEASURE": if let v = inner.realValue { return .soundPowerMeasure(v) }
            case "IFCSOUNDPRESSURELEVELMEASURE": if let v = inner.realValue { return .soundPressureLevelMeasure(v) }
            case "IFCSOUNDPRESSUREMEASURE": if let v = inner.realValue { return .soundPressureMeasure(v) }
            case "IFCSPECIFICHEATCAPACITYMEASURE": if let v = inner.realValue { return .specificHeatCapacityMeasure(v) }
            case "IFCTEMPERATUREGRADIENTMEASURE": if let v = inner.realValue { return .temperatureGradientMeasure(v) }
            case "IFCTEMPERATURERATEOFCHANGEMEASURE": if let v = inner.realValue { return .temperatureRateOfChangeMeasure(v) }
            case "IFCTEXT": if let v = inner.stringValue { return .text(v) }
            case "IFCTHERMALADMITTANCEMEASURE": if let v = inner.realValue { return .thermalAdmittanceMeasure(v) }
            case "IFCTHERMALCONDUCTIVITYMEASURE": if let v = inner.realValue { return .thermalConductivityMeasure(v) }
            case "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE": if let v = inner.realValue { return .thermalExpansionCoefficientMeasure(v) }
            case "IFCTHERMALRESISTANCEMEASURE": if let v = inner.realValue { return .thermalResistanceMeasure(v) }
            case "IFCTHERMALTRANSMITTANCEMEASURE": if let v = inner.realValue { return .thermalTransmittanceMeasure(v) }
            case "IFCTHERMODYNAMICTEMPERATUREMEASURE": if let v = inner.realValue { return .thermodynamicTemperatureMeasure(v) }
            case "IFCTIME": if let v = inner.stringValue { return .time(v) }
            case "IFCTIMEMEASURE": if let v = inner.realValue { return .timeMeasure(v) }
            case "IFCTIMESTAMP": if let v = inner.integerValue { return .timeStamp(v) }
            case "IFCTORQUEMEASURE": if let v = inner.realValue { return .torqueMeasure(v) }
            case "IFCURIREFERENCE": if let v = inner.stringValue { return .uRIReference(v) }
            case "IFCVAPORPERMEABILITYMEASURE": if let v = inner.realValue { return .vaporPermeabilityMeasure(v) }
            case "IFCVOLUMEMEASURE": if let v = inner.realValue { return .volumeMeasure(v) }
            case "IFCVOLUMETRICFLOWRATEMEASURE": if let v = inner.realValue { return .volumetricFlowRateMeasure(v) }
            case "IFCWARPINGCONSTANTMEASURE": if let v = inner.realValue { return .warpingConstantMeasure(v) }
            case "IFCWARPINGMOMENTMEASURE": if let v = inner.realValue { return .warpingMomentMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcAxis2Placement {
    public func stepEncode() -> STEPValue {
        switch self {
        case .axis2Placement2D(let e): return .entityRef(e)
        case .axis2Placement3D(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcAxis2Placement2D { return .axis2Placement2D(v) }
            if let v = entity as? IFC4X3.IfcAxis2Placement3D { return .axis2Placement3D(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcBendingParameterSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .planeAngleMeasure(let v): return .select(typeName: "IFCPLANEANGLEMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCPLANEANGLEMEASURE": if let v = inner.realValue { return .planeAngleMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcBooleanOperand {
    public func stepEncode() -> STEPValue {
        switch self {
        case .booleanResult(let e): return .entityRef(e)
        case .csgPrimitive3D(let e): return .entityRef(e)
        case .halfSpaceSolid(let e): return .entityRef(e)
        case .solidModel(let e): return .entityRef(e)
        case .tessellatedFaceSet(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcBooleanResult { return .booleanResult(v) }
            if let v = entity as? IFC4X3.IfcCsgPrimitive3D { return .csgPrimitive3D(v) }
            if let v = entity as? IFC4X3.IfcHalfSpaceSolid { return .halfSpaceSolid(v) }
            if let v = entity as? IFC4X3.IfcSolidModel { return .solidModel(v) }
            if let v = entity as? IFC4X3.IfcTessellatedFaceSet { return .tessellatedFaceSet(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcClassificationReferenceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .classification(let e): return .entityRef(e)
        case .classificationReference(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcClassification { return .classification(v) }
            if let v = entity as? IFC4X3.IfcClassificationReference { return .classificationReference(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcClassificationSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .classification(let e): return .entityRef(e)
        case .classificationReference(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcClassification { return .classification(v) }
            if let v = entity as? IFC4X3.IfcClassificationReference { return .classificationReference(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcColour {
    public func stepEncode() -> STEPValue {
        switch self {
        case .colourSpecification(let e): return .entityRef(e)
        case .preDefinedColour(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcColourSpecification { return .colourSpecification(v) }
            if let v = entity as? IFC4X3.IfcPreDefinedColour { return .preDefinedColour(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcColourOrFactor {
    public func stepEncode() -> STEPValue {
        switch self {
        case .colourRgb(let e): return .entityRef(e)
        case .normalisedRatioMeasure(let v): return .select(typeName: "IFCNORMALISEDRATIOMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcColourRgb { return .colourRgb(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCNORMALISEDRATIOMEASURE": if let v = inner.realValue { return .normalisedRatioMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcCoordinateReferenceSystemSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .coordinateReferenceSystem(let e): return .entityRef(e)
        case .geometricRepresentationContext(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCoordinateReferenceSystem { return .coordinateReferenceSystem(v) }
            if let v = entity as? IFC4X3.IfcGeometricRepresentationContext { return .geometricRepresentationContext(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcCsgSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .booleanResult(let e): return .entityRef(e)
        case .csgPrimitive3D(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcBooleanResult { return .booleanResult(v) }
            if let v = entity as? IFC4X3.IfcCsgPrimitive3D { return .csgPrimitive3D(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcCurveFontOrScaledCurveFontSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .curveStyleFont(let e): return .entityRef(e)
        case .curveStyleFontAndScaling(let e): return .entityRef(e)
        case .preDefinedCurveFont(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCurveStyleFont { return .curveStyleFont(v) }
            if let v = entity as? IFC4X3.IfcCurveStyleFontAndScaling { return .curveStyleFontAndScaling(v) }
            if let v = entity as? IFC4X3.IfcPreDefinedCurveFont { return .preDefinedCurveFont(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcCurveMeasureSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .parameterValue(let v): return .select(typeName: "IFCPARAMETERVALUE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCPARAMETERVALUE": if let v = inner.realValue { return .parameterValue(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcCurveOnSurface {
    public func stepEncode() -> STEPValue {
        switch self {
        case .compositeCurveOnSurface(let e): return .entityRef(e)
        case .pcurve(let e): return .entityRef(e)
        case .surfaceCurve(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCompositeCurveOnSurface { return .compositeCurveOnSurface(v) }
            if let v = entity as? IFC4X3.IfcPcurve { return .pcurve(v) }
            if let v = entity as? IFC4X3.IfcSurfaceCurve { return .surfaceCurve(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcCurveOrEdgeCurve {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boundedCurve(let e): return .entityRef(e)
        case .edgeCurve(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcBoundedCurve { return .boundedCurve(v) }
            if let v = entity as? IFC4X3.IfcEdgeCurve { return .edgeCurve(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcCurveStyleFontSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .curveStyleFont(let e): return .entityRef(e)
        case .preDefinedCurveFont(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCurveStyleFont { return .curveStyleFont(v) }
            if let v = entity as? IFC4X3.IfcPreDefinedCurveFont { return .preDefinedCurveFont(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcDefinitionSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .objectDefinition(let e): return .entityRef(e)
        case .propertyDefinition(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcObjectDefinition { return .objectDefinition(v) }
            if let v = entity as? IFC4X3.IfcPropertyDefinition { return .propertyDefinition(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcDerivedMeasureValue {
    public func stepEncode() -> STEPValue {
        switch self {
        case .absorbedDoseMeasure(let v): return .select(typeName: "IFCABSORBEDDOSEMEASURE", value: .real(v))
        case .accelerationMeasure(let v): return .select(typeName: "IFCACCELERATIONMEASURE", value: .real(v))
        case .angularVelocityMeasure(let v): return .select(typeName: "IFCANGULARVELOCITYMEASURE", value: .real(v))
        case .areaDensityMeasure(let v): return .select(typeName: "IFCAREADENSITYMEASURE", value: .real(v))
        case .compoundPlaneAngleMeasure(let e): return .entityRef(e)
        case .curvatureMeasure(let v): return .select(typeName: "IFCCURVATUREMEASURE", value: .real(v))
        case .doseEquivalentMeasure(let v): return .select(typeName: "IFCDOSEEQUIVALENTMEASURE", value: .real(v))
        case .dynamicViscosityMeasure(let v): return .select(typeName: "IFCDYNAMICVISCOSITYMEASURE", value: .real(v))
        case .electricCapacitanceMeasure(let v): return .select(typeName: "IFCELECTRICCAPACITANCEMEASURE", value: .real(v))
        case .electricChargeMeasure(let v): return .select(typeName: "IFCELECTRICCHARGEMEASURE", value: .real(v))
        case .electricConductanceMeasure(let v): return .select(typeName: "IFCELECTRICCONDUCTANCEMEASURE", value: .real(v))
        case .electricResistanceMeasure(let v): return .select(typeName: "IFCELECTRICRESISTANCEMEASURE", value: .real(v))
        case .electricVoltageMeasure(let v): return .select(typeName: "IFCELECTRICVOLTAGEMEASURE", value: .real(v))
        case .energyMeasure(let v): return .select(typeName: "IFCENERGYMEASURE", value: .real(v))
        case .forceMeasure(let v): return .select(typeName: "IFCFORCEMEASURE", value: .real(v))
        case .frequencyMeasure(let v): return .select(typeName: "IFCFREQUENCYMEASURE", value: .real(v))
        case .heatFluxDensityMeasure(let v): return .select(typeName: "IFCHEATFLUXDENSITYMEASURE", value: .real(v))
        case .heatingValueMeasure(let v): return .select(typeName: "IFCHEATINGVALUEMEASURE", value: .real(v))
        case .illuminanceMeasure(let v): return .select(typeName: "IFCILLUMINANCEMEASURE", value: .real(v))
        case .inductanceMeasure(let v): return .select(typeName: "IFCINDUCTANCEMEASURE", value: .real(v))
        case .integerCountRateMeasure(let v): return .select(typeName: "IFCINTEGERCOUNTRATEMEASURE", value: .integer(v))
        case .ionConcentrationMeasure(let v): return .select(typeName: "IFCIONCONCENTRATIONMEASURE", value: .real(v))
        case .isothermalMoistureCapacityMeasure(let v): return .select(typeName: "IFCISOTHERMALMOISTURECAPACITYMEASURE", value: .real(v))
        case .kinematicViscosityMeasure(let v): return .select(typeName: "IFCKINEMATICVISCOSITYMEASURE", value: .real(v))
        case .linearForceMeasure(let v): return .select(typeName: "IFCLINEARFORCEMEASURE", value: .real(v))
        case .linearMomentMeasure(let v): return .select(typeName: "IFCLINEARMOMENTMEASURE", value: .real(v))
        case .linearStiffnessMeasure(let v): return .select(typeName: "IFCLINEARSTIFFNESSMEASURE", value: .real(v))
        case .linearVelocityMeasure(let v): return .select(typeName: "IFCLINEARVELOCITYMEASURE", value: .real(v))
        case .luminousFluxMeasure(let v): return .select(typeName: "IFCLUMINOUSFLUXMEASURE", value: .real(v))
        case .luminousIntensityDistributionMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE", value: .real(v))
        case .magneticFluxDensityMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXDENSITYMEASURE", value: .real(v))
        case .magneticFluxMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXMEASURE", value: .real(v))
        case .massDensityMeasure(let v): return .select(typeName: "IFCMASSDENSITYMEASURE", value: .real(v))
        case .massFlowRateMeasure(let v): return .select(typeName: "IFCMASSFLOWRATEMEASURE", value: .real(v))
        case .massPerLengthMeasure(let v): return .select(typeName: "IFCMASSPERLENGTHMEASURE", value: .real(v))
        case .modulusOfElasticityMeasure(let v): return .select(typeName: "IFCMODULUSOFELASTICITYMEASURE", value: .real(v))
        case .modulusOfLinearSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfRotationalSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFSUBGRADEREACTIONMEASURE", value: .real(v))
        case .moistureDiffusivityMeasure(let v): return .select(typeName: "IFCMOISTUREDIFFUSIVITYMEASURE", value: .real(v))
        case .molecularWeightMeasure(let v): return .select(typeName: "IFCMOLECULARWEIGHTMEASURE", value: .real(v))
        case .momentOfInertiaMeasure(let v): return .select(typeName: "IFCMOMENTOFINERTIAMEASURE", value: .real(v))
        case .monetaryMeasure(let v): return .select(typeName: "IFCMONETARYMEASURE", value: .real(v))
        case .pHMeasure(let v): return .select(typeName: "IFCPHMEASURE", value: .real(v))
        case .planarForceMeasure(let v): return .select(typeName: "IFCPLANARFORCEMEASURE", value: .real(v))
        case .powerMeasure(let v): return .select(typeName: "IFCPOWERMEASURE", value: .real(v))
        case .pressureMeasure(let v): return .select(typeName: "IFCPRESSUREMEASURE", value: .real(v))
        case .radioActivityMeasure(let v): return .select(typeName: "IFCRADIOACTIVITYMEASURE", value: .real(v))
        case .rotationalFrequencyMeasure(let v): return .select(typeName: "IFCROTATIONALFREQUENCYMEASURE", value: .real(v))
        case .rotationalMassMeasure(let v): return .select(typeName: "IFCROTATIONALMASSMEASURE", value: .real(v))
        case .rotationalStiffnessMeasure(let v): return .select(typeName: "IFCROTATIONALSTIFFNESSMEASURE", value: .real(v))
        case .sectionModulusMeasure(let v): return .select(typeName: "IFCSECTIONMODULUSMEASURE", value: .real(v))
        case .sectionalAreaIntegralMeasure(let v): return .select(typeName: "IFCSECTIONALAREAINTEGRALMEASURE", value: .real(v))
        case .shearModulusMeasure(let v): return .select(typeName: "IFCSHEARMODULUSMEASURE", value: .real(v))
        case .soundPowerLevelMeasure(let v): return .select(typeName: "IFCSOUNDPOWERLEVELMEASURE", value: .real(v))
        case .soundPowerMeasure(let v): return .select(typeName: "IFCSOUNDPOWERMEASURE", value: .real(v))
        case .soundPressureLevelMeasure(let v): return .select(typeName: "IFCSOUNDPRESSURELEVELMEASURE", value: .real(v))
        case .soundPressureMeasure(let v): return .select(typeName: "IFCSOUNDPRESSUREMEASURE", value: .real(v))
        case .specificHeatCapacityMeasure(let v): return .select(typeName: "IFCSPECIFICHEATCAPACITYMEASURE", value: .real(v))
        case .temperatureGradientMeasure(let v): return .select(typeName: "IFCTEMPERATUREGRADIENTMEASURE", value: .real(v))
        case .temperatureRateOfChangeMeasure(let v): return .select(typeName: "IFCTEMPERATURERATEOFCHANGEMEASURE", value: .real(v))
        case .thermalAdmittanceMeasure(let v): return .select(typeName: "IFCTHERMALADMITTANCEMEASURE", value: .real(v))
        case .thermalConductivityMeasure(let v): return .select(typeName: "IFCTHERMALCONDUCTIVITYMEASURE", value: .real(v))
        case .thermalExpansionCoefficientMeasure(let v): return .select(typeName: "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE", value: .real(v))
        case .thermalResistanceMeasure(let v): return .select(typeName: "IFCTHERMALRESISTANCEMEASURE", value: .real(v))
        case .thermalTransmittanceMeasure(let v): return .select(typeName: "IFCTHERMALTRANSMITTANCEMEASURE", value: .real(v))
        case .torqueMeasure(let v): return .select(typeName: "IFCTORQUEMEASURE", value: .real(v))
        case .vaporPermeabilityMeasure(let v): return .select(typeName: "IFCVAPORPERMEABILITYMEASURE", value: .real(v))
        case .volumetricFlowRateMeasure(let v): return .select(typeName: "IFCVOLUMETRICFLOWRATEMEASURE", value: .real(v))
        case .warpingConstantMeasure(let v): return .select(typeName: "IFCWARPINGCONSTANTMEASURE", value: .real(v))
        case .warpingMomentMeasure(let v): return .select(typeName: "IFCWARPINGMOMENTMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCompoundPlaneAngleMeasure { return .compoundPlaneAngleMeasure(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCABSORBEDDOSEMEASURE": if let v = inner.realValue { return .absorbedDoseMeasure(v) }
            case "IFCACCELERATIONMEASURE": if let v = inner.realValue { return .accelerationMeasure(v) }
            case "IFCANGULARVELOCITYMEASURE": if let v = inner.realValue { return .angularVelocityMeasure(v) }
            case "IFCAREADENSITYMEASURE": if let v = inner.realValue { return .areaDensityMeasure(v) }
            case "IFCCURVATUREMEASURE": if let v = inner.realValue { return .curvatureMeasure(v) }
            case "IFCDOSEEQUIVALENTMEASURE": if let v = inner.realValue { return .doseEquivalentMeasure(v) }
            case "IFCDYNAMICVISCOSITYMEASURE": if let v = inner.realValue { return .dynamicViscosityMeasure(v) }
            case "IFCELECTRICCAPACITANCEMEASURE": if let v = inner.realValue { return .electricCapacitanceMeasure(v) }
            case "IFCELECTRICCHARGEMEASURE": if let v = inner.realValue { return .electricChargeMeasure(v) }
            case "IFCELECTRICCONDUCTANCEMEASURE": if let v = inner.realValue { return .electricConductanceMeasure(v) }
            case "IFCELECTRICRESISTANCEMEASURE": if let v = inner.realValue { return .electricResistanceMeasure(v) }
            case "IFCELECTRICVOLTAGEMEASURE": if let v = inner.realValue { return .electricVoltageMeasure(v) }
            case "IFCENERGYMEASURE": if let v = inner.realValue { return .energyMeasure(v) }
            case "IFCFORCEMEASURE": if let v = inner.realValue { return .forceMeasure(v) }
            case "IFCFREQUENCYMEASURE": if let v = inner.realValue { return .frequencyMeasure(v) }
            case "IFCHEATFLUXDENSITYMEASURE": if let v = inner.realValue { return .heatFluxDensityMeasure(v) }
            case "IFCHEATINGVALUEMEASURE": if let v = inner.realValue { return .heatingValueMeasure(v) }
            case "IFCILLUMINANCEMEASURE": if let v = inner.realValue { return .illuminanceMeasure(v) }
            case "IFCINDUCTANCEMEASURE": if let v = inner.realValue { return .inductanceMeasure(v) }
            case "IFCINTEGERCOUNTRATEMEASURE": if let v = inner.integerValue { return .integerCountRateMeasure(v) }
            case "IFCIONCONCENTRATIONMEASURE": if let v = inner.realValue { return .ionConcentrationMeasure(v) }
            case "IFCISOTHERMALMOISTURECAPACITYMEASURE": if let v = inner.realValue { return .isothermalMoistureCapacityMeasure(v) }
            case "IFCKINEMATICVISCOSITYMEASURE": if let v = inner.realValue { return .kinematicViscosityMeasure(v) }
            case "IFCLINEARFORCEMEASURE": if let v = inner.realValue { return .linearForceMeasure(v) }
            case "IFCLINEARMOMENTMEASURE": if let v = inner.realValue { return .linearMomentMeasure(v) }
            case "IFCLINEARSTIFFNESSMEASURE": if let v = inner.realValue { return .linearStiffnessMeasure(v) }
            case "IFCLINEARVELOCITYMEASURE": if let v = inner.realValue { return .linearVelocityMeasure(v) }
            case "IFCLUMINOUSFLUXMEASURE": if let v = inner.realValue { return .luminousFluxMeasure(v) }
            case "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE": if let v = inner.realValue { return .luminousIntensityDistributionMeasure(v) }
            case "IFCMAGNETICFLUXDENSITYMEASURE": if let v = inner.realValue { return .magneticFluxDensityMeasure(v) }
            case "IFCMAGNETICFLUXMEASURE": if let v = inner.realValue { return .magneticFluxMeasure(v) }
            case "IFCMASSDENSITYMEASURE": if let v = inner.realValue { return .massDensityMeasure(v) }
            case "IFCMASSFLOWRATEMEASURE": if let v = inner.realValue { return .massFlowRateMeasure(v) }
            case "IFCMASSPERLENGTHMEASURE": if let v = inner.realValue { return .massPerLengthMeasure(v) }
            case "IFCMODULUSOFELASTICITYMEASURE": if let v = inner.realValue { return .modulusOfElasticityMeasure(v) }
            case "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfLinearSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfRotationalSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfSubgradeReactionMeasure(v) }
            case "IFCMOISTUREDIFFUSIVITYMEASURE": if let v = inner.realValue { return .moistureDiffusivityMeasure(v) }
            case "IFCMOLECULARWEIGHTMEASURE": if let v = inner.realValue { return .molecularWeightMeasure(v) }
            case "IFCMOMENTOFINERTIAMEASURE": if let v = inner.realValue { return .momentOfInertiaMeasure(v) }
            case "IFCMONETARYMEASURE": if let v = inner.realValue { return .monetaryMeasure(v) }
            case "IFCPHMEASURE": if let v = inner.realValue { return .pHMeasure(v) }
            case "IFCPLANARFORCEMEASURE": if let v = inner.realValue { return .planarForceMeasure(v) }
            case "IFCPOWERMEASURE": if let v = inner.realValue { return .powerMeasure(v) }
            case "IFCPRESSUREMEASURE": if let v = inner.realValue { return .pressureMeasure(v) }
            case "IFCRADIOACTIVITYMEASURE": if let v = inner.realValue { return .radioActivityMeasure(v) }
            case "IFCROTATIONALFREQUENCYMEASURE": if let v = inner.realValue { return .rotationalFrequencyMeasure(v) }
            case "IFCROTATIONALMASSMEASURE": if let v = inner.realValue { return .rotationalMassMeasure(v) }
            case "IFCROTATIONALSTIFFNESSMEASURE": if let v = inner.realValue { return .rotationalStiffnessMeasure(v) }
            case "IFCSECTIONMODULUSMEASURE": if let v = inner.realValue { return .sectionModulusMeasure(v) }
            case "IFCSECTIONALAREAINTEGRALMEASURE": if let v = inner.realValue { return .sectionalAreaIntegralMeasure(v) }
            case "IFCSHEARMODULUSMEASURE": if let v = inner.realValue { return .shearModulusMeasure(v) }
            case "IFCSOUNDPOWERLEVELMEASURE": if let v = inner.realValue { return .soundPowerLevelMeasure(v) }
            case "IFCSOUNDPOWERMEASURE": if let v = inner.realValue { return .soundPowerMeasure(v) }
            case "IFCSOUNDPRESSURELEVELMEASURE": if let v = inner.realValue { return .soundPressureLevelMeasure(v) }
            case "IFCSOUNDPRESSUREMEASURE": if let v = inner.realValue { return .soundPressureMeasure(v) }
            case "IFCSPECIFICHEATCAPACITYMEASURE": if let v = inner.realValue { return .specificHeatCapacityMeasure(v) }
            case "IFCTEMPERATUREGRADIENTMEASURE": if let v = inner.realValue { return .temperatureGradientMeasure(v) }
            case "IFCTEMPERATURERATEOFCHANGEMEASURE": if let v = inner.realValue { return .temperatureRateOfChangeMeasure(v) }
            case "IFCTHERMALADMITTANCEMEASURE": if let v = inner.realValue { return .thermalAdmittanceMeasure(v) }
            case "IFCTHERMALCONDUCTIVITYMEASURE": if let v = inner.realValue { return .thermalConductivityMeasure(v) }
            case "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE": if let v = inner.realValue { return .thermalExpansionCoefficientMeasure(v) }
            case "IFCTHERMALRESISTANCEMEASURE": if let v = inner.realValue { return .thermalResistanceMeasure(v) }
            case "IFCTHERMALTRANSMITTANCEMEASURE": if let v = inner.realValue { return .thermalTransmittanceMeasure(v) }
            case "IFCTORQUEMEASURE": if let v = inner.realValue { return .torqueMeasure(v) }
            case "IFCVAPORPERMEABILITYMEASURE": if let v = inner.realValue { return .vaporPermeabilityMeasure(v) }
            case "IFCVOLUMETRICFLOWRATEMEASURE": if let v = inner.realValue { return .volumetricFlowRateMeasure(v) }
            case "IFCWARPINGCONSTANTMEASURE": if let v = inner.realValue { return .warpingConstantMeasure(v) }
            case "IFCWARPINGMOMENTMEASURE": if let v = inner.realValue { return .warpingMomentMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcDocumentSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .documentInformation(let e): return .entityRef(e)
        case .documentReference(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcDocumentInformation { return .documentInformation(v) }
            if let v = entity as? IFC4X3.IfcDocumentReference { return .documentReference(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcFillStyleSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .colourSpecification(let e): return .entityRef(e)
        case .externallyDefinedHatchStyle(let e): return .entityRef(e)
        case .fillAreaStyleHatching(let e): return .entityRef(e)
        case .fillAreaStyleTiles(let e): return .entityRef(e)
        case .preDefinedColour(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcColourSpecification { return .colourSpecification(v) }
            if let v = entity as? IFC4X3.IfcExternallyDefinedHatchStyle { return .externallyDefinedHatchStyle(v) }
            if let v = entity as? IFC4X3.IfcFillAreaStyleHatching { return .fillAreaStyleHatching(v) }
            if let v = entity as? IFC4X3.IfcFillAreaStyleTiles { return .fillAreaStyleTiles(v) }
            if let v = entity as? IFC4X3.IfcPreDefinedColour { return .preDefinedColour(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcGeometricSetSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .curve(let e): return .entityRef(e)
        case .point(let e): return .entityRef(e)
        case .surface(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCurve { return .curve(v) }
            if let v = entity as? IFC4X3.IfcPoint { return .point(v) }
            if let v = entity as? IFC4X3.IfcSurface { return .surface(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcGridPlacementDirectionSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .direction(let e): return .entityRef(e)
        case .virtualGridIntersection(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcDirection { return .direction(v) }
            if let v = entity as? IFC4X3.IfcVirtualGridIntersection { return .virtualGridIntersection(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcHatchLineDistanceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .positiveLengthMeasure(let v): return .select(typeName: "IFCPOSITIVELENGTHMEASURE", value: .real(v))
        case .vector(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcVector { return .vector(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCPOSITIVELENGTHMEASURE": if let v = inner.realValue { return .positiveLengthMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcInterferenceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .element(let e): return .entityRef(e)
        case .spatialElement(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcElement { return .element(v) }
            if let v = entity as? IFC4X3.IfcSpatialElement { return .spatialElement(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcLayeredItem {
    public func stepEncode() -> STEPValue {
        switch self {
        case .representation(let e): return .entityRef(e)
        case .representationItem(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcRepresentation { return .representation(v) }
            if let v = entity as? IFC4X3.IfcRepresentationItem { return .representationItem(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcLibrarySelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .libraryInformation(let e): return .entityRef(e)
        case .libraryReference(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcLibraryInformation { return .libraryInformation(v) }
            if let v = entity as? IFC4X3.IfcLibraryReference { return .libraryReference(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcLightDistributionDataSourceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .externalReference(let e): return .entityRef(e)
        case .lightIntensityDistribution(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcExternalReference { return .externalReference(v) }
            if let v = entity as? IFC4X3.IfcLightIntensityDistribution { return .lightIntensityDistribution(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcMaterialSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .materialDefinition(let e): return .entityRef(e)
        case .materialList(let e): return .entityRef(e)
        case .materialUsageDefinition(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcMaterialDefinition { return .materialDefinition(v) }
            if let v = entity as? IFC4X3.IfcMaterialList { return .materialList(v) }
            if let v = entity as? IFC4X3.IfcMaterialUsageDefinition { return .materialUsageDefinition(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcMeasureValue {
    public func stepEncode() -> STEPValue {
        switch self {
        case .amountOfSubstanceMeasure(let v): return .select(typeName: "IFCAMOUNTOFSUBSTANCEMEASURE", value: .real(v))
        case .areaMeasure(let v): return .select(typeName: "IFCAREAMEASURE", value: .real(v))
        case .complexNumber(let e): return .entityRef(e)
        case .contextDependentMeasure(let v): return .select(typeName: "IFCCONTEXTDEPENDENTMEASURE", value: .real(v))
        case .countMeasure(let v): return .select(typeName: "IFCCOUNTMEASURE", value: .integer(v))
        case .descriptiveMeasure(let v): return .select(typeName: "IFCDESCRIPTIVEMEASURE", value: .string(v))
        case .electricCurrentMeasure(let v): return .select(typeName: "IFCELECTRICCURRENTMEASURE", value: .real(v))
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .luminousIntensityMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYMEASURE", value: .real(v))
        case .massMeasure(let v): return .select(typeName: "IFCMASSMEASURE", value: .real(v))
        case .nonNegativeLengthMeasure(let v): return .select(typeName: "IFCNONNEGATIVELENGTHMEASURE", value: .real(v))
        case .normalisedRatioMeasure(let v): return .select(typeName: "IFCNORMALISEDRATIOMEASURE", value: .real(v))
        case .numericMeasure(let v): return .select(typeName: "IFCNUMERICMEASURE", value: .real(v))
        case .parameterValue(let v): return .select(typeName: "IFCPARAMETERVALUE", value: .real(v))
        case .planeAngleMeasure(let v): return .select(typeName: "IFCPLANEANGLEMEASURE", value: .real(v))
        case .positiveLengthMeasure(let v): return .select(typeName: "IFCPOSITIVELENGTHMEASURE", value: .real(v))
        case .positivePlaneAngleMeasure(let v): return .select(typeName: "IFCPOSITIVEPLANEANGLEMEASURE", value: .real(v))
        case .positiveRatioMeasure(let v): return .select(typeName: "IFCPOSITIVERATIOMEASURE", value: .real(v))
        case .ratioMeasure(let v): return .select(typeName: "IFCRATIOMEASURE", value: .real(v))
        case .solidAngleMeasure(let v): return .select(typeName: "IFCSOLIDANGLEMEASURE", value: .real(v))
        case .thermodynamicTemperatureMeasure(let v): return .select(typeName: "IFCTHERMODYNAMICTEMPERATUREMEASURE", value: .real(v))
        case .timeMeasure(let v): return .select(typeName: "IFCTIMEMEASURE", value: .real(v))
        case .volumeMeasure(let v): return .select(typeName: "IFCVOLUMEMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcComplexNumber { return .complexNumber(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCAMOUNTOFSUBSTANCEMEASURE": if let v = inner.realValue { return .amountOfSubstanceMeasure(v) }
            case "IFCAREAMEASURE": if let v = inner.realValue { return .areaMeasure(v) }
            case "IFCCONTEXTDEPENDENTMEASURE": if let v = inner.realValue { return .contextDependentMeasure(v) }
            case "IFCCOUNTMEASURE": if let v = inner.integerValue { return .countMeasure(v) }
            case "IFCDESCRIPTIVEMEASURE": if let v = inner.stringValue { return .descriptiveMeasure(v) }
            case "IFCELECTRICCURRENTMEASURE": if let v = inner.realValue { return .electricCurrentMeasure(v) }
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCLUMINOUSINTENSITYMEASURE": if let v = inner.realValue { return .luminousIntensityMeasure(v) }
            case "IFCMASSMEASURE": if let v = inner.realValue { return .massMeasure(v) }
            case "IFCNONNEGATIVELENGTHMEASURE": if let v = inner.realValue { return .nonNegativeLengthMeasure(v) }
            case "IFCNORMALISEDRATIOMEASURE": if let v = inner.realValue { return .normalisedRatioMeasure(v) }
            case "IFCNUMERICMEASURE": if let v = inner.realValue { return .numericMeasure(v) }
            case "IFCPARAMETERVALUE": if let v = inner.realValue { return .parameterValue(v) }
            case "IFCPLANEANGLEMEASURE": if let v = inner.realValue { return .planeAngleMeasure(v) }
            case "IFCPOSITIVELENGTHMEASURE": if let v = inner.realValue { return .positiveLengthMeasure(v) }
            case "IFCPOSITIVEPLANEANGLEMEASURE": if let v = inner.realValue { return .positivePlaneAngleMeasure(v) }
            case "IFCPOSITIVERATIOMEASURE": if let v = inner.realValue { return .positiveRatioMeasure(v) }
            case "IFCRATIOMEASURE": if let v = inner.realValue { return .ratioMeasure(v) }
            case "IFCSOLIDANGLEMEASURE": if let v = inner.realValue { return .solidAngleMeasure(v) }
            case "IFCTHERMODYNAMICTEMPERATUREMEASURE": if let v = inner.realValue { return .thermodynamicTemperatureMeasure(v) }
            case "IFCTIMEMEASURE": if let v = inner.realValue { return .timeMeasure(v) }
            case "IFCVOLUMEMEASURE": if let v = inner.realValue { return .volumeMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcMetricValueSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .absorbedDoseMeasure(let v): return .select(typeName: "IFCABSORBEDDOSEMEASURE", value: .real(v))
        case .accelerationMeasure(let v): return .select(typeName: "IFCACCELERATIONMEASURE", value: .real(v))
        case .amountOfSubstanceMeasure(let v): return .select(typeName: "IFCAMOUNTOFSUBSTANCEMEASURE", value: .real(v))
        case .angularVelocityMeasure(let v): return .select(typeName: "IFCANGULARVELOCITYMEASURE", value: .real(v))
        case .appliedValue(let e): return .entityRef(e)
        case .areaDensityMeasure(let v): return .select(typeName: "IFCAREADENSITYMEASURE", value: .real(v))
        case .areaMeasure(let v): return .select(typeName: "IFCAREAMEASURE", value: .real(v))
        case .binary(let e): return .entityRef(e)
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .complexNumber(let e): return .entityRef(e)
        case .compoundPlaneAngleMeasure(let e): return .entityRef(e)
        case .contextDependentMeasure(let v): return .select(typeName: "IFCCONTEXTDEPENDENTMEASURE", value: .real(v))
        case .countMeasure(let v): return .select(typeName: "IFCCOUNTMEASURE", value: .integer(v))
        case .curvatureMeasure(let v): return .select(typeName: "IFCCURVATUREMEASURE", value: .real(v))
        case .date(let v): return .select(typeName: "IFCDATE", value: .string(v))
        case .dateTime(let v): return .select(typeName: "IFCDATETIME", value: .string(v))
        case .descriptiveMeasure(let v): return .select(typeName: "IFCDESCRIPTIVEMEASURE", value: .string(v))
        case .doseEquivalentMeasure(let v): return .select(typeName: "IFCDOSEEQUIVALENTMEASURE", value: .real(v))
        case .duration(let v): return .select(typeName: "IFCDURATION", value: .string(v))
        case .dynamicViscosityMeasure(let v): return .select(typeName: "IFCDYNAMICVISCOSITYMEASURE", value: .real(v))
        case .electricCapacitanceMeasure(let v): return .select(typeName: "IFCELECTRICCAPACITANCEMEASURE", value: .real(v))
        case .electricChargeMeasure(let v): return .select(typeName: "IFCELECTRICCHARGEMEASURE", value: .real(v))
        case .electricConductanceMeasure(let v): return .select(typeName: "IFCELECTRICCONDUCTANCEMEASURE", value: .real(v))
        case .electricCurrentMeasure(let v): return .select(typeName: "IFCELECTRICCURRENTMEASURE", value: .real(v))
        case .electricResistanceMeasure(let v): return .select(typeName: "IFCELECTRICRESISTANCEMEASURE", value: .real(v))
        case .electricVoltageMeasure(let v): return .select(typeName: "IFCELECTRICVOLTAGEMEASURE", value: .real(v))
        case .energyMeasure(let v): return .select(typeName: "IFCENERGYMEASURE", value: .real(v))
        case .forceMeasure(let v): return .select(typeName: "IFCFORCEMEASURE", value: .real(v))
        case .frequencyMeasure(let v): return .select(typeName: "IFCFREQUENCYMEASURE", value: .real(v))
        case .heatFluxDensityMeasure(let v): return .select(typeName: "IFCHEATFLUXDENSITYMEASURE", value: .real(v))
        case .heatingValueMeasure(let v): return .select(typeName: "IFCHEATINGVALUEMEASURE", value: .real(v))
        case .identifier(let v): return .select(typeName: "IFCIDENTIFIER", value: .string(v))
        case .illuminanceMeasure(let v): return .select(typeName: "IFCILLUMINANCEMEASURE", value: .real(v))
        case .inductanceMeasure(let v): return .select(typeName: "IFCINDUCTANCEMEASURE", value: .real(v))
        case .integer(let v): return .select(typeName: "IFCINTEGER", value: .integer(v))
        case .integerCountRateMeasure(let v): return .select(typeName: "IFCINTEGERCOUNTRATEMEASURE", value: .integer(v))
        case .ionConcentrationMeasure(let v): return .select(typeName: "IFCIONCONCENTRATIONMEASURE", value: .real(v))
        case .isothermalMoistureCapacityMeasure(let v): return .select(typeName: "IFCISOTHERMALMOISTURECAPACITYMEASURE", value: .real(v))
        case .kinematicViscosityMeasure(let v): return .select(typeName: "IFCKINEMATICVISCOSITYMEASURE", value: .real(v))
        case .label(let v): return .select(typeName: "IFCLABEL", value: .string(v))
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .linearForceMeasure(let v): return .select(typeName: "IFCLINEARFORCEMEASURE", value: .real(v))
        case .linearMomentMeasure(let v): return .select(typeName: "IFCLINEARMOMENTMEASURE", value: .real(v))
        case .linearStiffnessMeasure(let v): return .select(typeName: "IFCLINEARSTIFFNESSMEASURE", value: .real(v))
        case .linearVelocityMeasure(let v): return .select(typeName: "IFCLINEARVELOCITYMEASURE", value: .real(v))
        case .logical(let v): return .select(typeName: "IFCLOGICAL", value: .enumeration(v.rawValue))
        case .luminousFluxMeasure(let v): return .select(typeName: "IFCLUMINOUSFLUXMEASURE", value: .real(v))
        case .luminousIntensityDistributionMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE", value: .real(v))
        case .luminousIntensityMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYMEASURE", value: .real(v))
        case .magneticFluxDensityMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXDENSITYMEASURE", value: .real(v))
        case .magneticFluxMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXMEASURE", value: .real(v))
        case .massDensityMeasure(let v): return .select(typeName: "IFCMASSDENSITYMEASURE", value: .real(v))
        case .massFlowRateMeasure(let v): return .select(typeName: "IFCMASSFLOWRATEMEASURE", value: .real(v))
        case .massMeasure(let v): return .select(typeName: "IFCMASSMEASURE", value: .real(v))
        case .massPerLengthMeasure(let v): return .select(typeName: "IFCMASSPERLENGTHMEASURE", value: .real(v))
        case .measureWithUnit(let e): return .entityRef(e)
        case .modulusOfElasticityMeasure(let v): return .select(typeName: "IFCMODULUSOFELASTICITYMEASURE", value: .real(v))
        case .modulusOfLinearSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfRotationalSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFSUBGRADEREACTIONMEASURE", value: .real(v))
        case .moistureDiffusivityMeasure(let v): return .select(typeName: "IFCMOISTUREDIFFUSIVITYMEASURE", value: .real(v))
        case .molecularWeightMeasure(let v): return .select(typeName: "IFCMOLECULARWEIGHTMEASURE", value: .real(v))
        case .momentOfInertiaMeasure(let v): return .select(typeName: "IFCMOMENTOFINERTIAMEASURE", value: .real(v))
        case .monetaryMeasure(let v): return .select(typeName: "IFCMONETARYMEASURE", value: .real(v))
        case .nonNegativeLengthMeasure(let v): return .select(typeName: "IFCNONNEGATIVELENGTHMEASURE", value: .real(v))
        case .normalisedRatioMeasure(let v): return .select(typeName: "IFCNORMALISEDRATIOMEASURE", value: .real(v))
        case .numericMeasure(let v): return .select(typeName: "IFCNUMERICMEASURE", value: .real(v))
        case .pHMeasure(let v): return .select(typeName: "IFCPHMEASURE", value: .real(v))
        case .parameterValue(let v): return .select(typeName: "IFCPARAMETERVALUE", value: .real(v))
        case .planarForceMeasure(let v): return .select(typeName: "IFCPLANARFORCEMEASURE", value: .real(v))
        case .planeAngleMeasure(let v): return .select(typeName: "IFCPLANEANGLEMEASURE", value: .real(v))
        case .positiveInteger(let v): return .select(typeName: "IFCPOSITIVEINTEGER", value: .integer(v))
        case .positiveLengthMeasure(let v): return .select(typeName: "IFCPOSITIVELENGTHMEASURE", value: .real(v))
        case .positivePlaneAngleMeasure(let v): return .select(typeName: "IFCPOSITIVEPLANEANGLEMEASURE", value: .real(v))
        case .positiveRatioMeasure(let v): return .select(typeName: "IFCPOSITIVERATIOMEASURE", value: .real(v))
        case .powerMeasure(let v): return .select(typeName: "IFCPOWERMEASURE", value: .real(v))
        case .pressureMeasure(let v): return .select(typeName: "IFCPRESSUREMEASURE", value: .real(v))
        case .radioActivityMeasure(let v): return .select(typeName: "IFCRADIOACTIVITYMEASURE", value: .real(v))
        case .ratioMeasure(let v): return .select(typeName: "IFCRATIOMEASURE", value: .real(v))
        case .real(let v): return .select(typeName: "IFCREAL", value: .real(v))
        case .reference(let e): return .entityRef(e)
        case .rotationalFrequencyMeasure(let v): return .select(typeName: "IFCROTATIONALFREQUENCYMEASURE", value: .real(v))
        case .rotationalMassMeasure(let v): return .select(typeName: "IFCROTATIONALMASSMEASURE", value: .real(v))
        case .rotationalStiffnessMeasure(let v): return .select(typeName: "IFCROTATIONALSTIFFNESSMEASURE", value: .real(v))
        case .sectionModulusMeasure(let v): return .select(typeName: "IFCSECTIONMODULUSMEASURE", value: .real(v))
        case .sectionalAreaIntegralMeasure(let v): return .select(typeName: "IFCSECTIONALAREAINTEGRALMEASURE", value: .real(v))
        case .shearModulusMeasure(let v): return .select(typeName: "IFCSHEARMODULUSMEASURE", value: .real(v))
        case .solidAngleMeasure(let v): return .select(typeName: "IFCSOLIDANGLEMEASURE", value: .real(v))
        case .soundPowerLevelMeasure(let v): return .select(typeName: "IFCSOUNDPOWERLEVELMEASURE", value: .real(v))
        case .soundPowerMeasure(let v): return .select(typeName: "IFCSOUNDPOWERMEASURE", value: .real(v))
        case .soundPressureLevelMeasure(let v): return .select(typeName: "IFCSOUNDPRESSURELEVELMEASURE", value: .real(v))
        case .soundPressureMeasure(let v): return .select(typeName: "IFCSOUNDPRESSUREMEASURE", value: .real(v))
        case .specificHeatCapacityMeasure(let v): return .select(typeName: "IFCSPECIFICHEATCAPACITYMEASURE", value: .real(v))
        case .table(let e): return .entityRef(e)
        case .temperatureGradientMeasure(let v): return .select(typeName: "IFCTEMPERATUREGRADIENTMEASURE", value: .real(v))
        case .temperatureRateOfChangeMeasure(let v): return .select(typeName: "IFCTEMPERATURERATEOFCHANGEMEASURE", value: .real(v))
        case .text(let v): return .select(typeName: "IFCTEXT", value: .string(v))
        case .thermalAdmittanceMeasure(let v): return .select(typeName: "IFCTHERMALADMITTANCEMEASURE", value: .real(v))
        case .thermalConductivityMeasure(let v): return .select(typeName: "IFCTHERMALCONDUCTIVITYMEASURE", value: .real(v))
        case .thermalExpansionCoefficientMeasure(let v): return .select(typeName: "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE", value: .real(v))
        case .thermalResistanceMeasure(let v): return .select(typeName: "IFCTHERMALRESISTANCEMEASURE", value: .real(v))
        case .thermalTransmittanceMeasure(let v): return .select(typeName: "IFCTHERMALTRANSMITTANCEMEASURE", value: .real(v))
        case .thermodynamicTemperatureMeasure(let v): return .select(typeName: "IFCTHERMODYNAMICTEMPERATUREMEASURE", value: .real(v))
        case .time(let v): return .select(typeName: "IFCTIME", value: .string(v))
        case .timeMeasure(let v): return .select(typeName: "IFCTIMEMEASURE", value: .real(v))
        case .timeSeries(let e): return .entityRef(e)
        case .timeStamp(let v): return .select(typeName: "IFCTIMESTAMP", value: .integer(v))
        case .torqueMeasure(let v): return .select(typeName: "IFCTORQUEMEASURE", value: .real(v))
        case .uRIReference(let v): return .select(typeName: "IFCURIREFERENCE", value: .string(v))
        case .vaporPermeabilityMeasure(let v): return .select(typeName: "IFCVAPORPERMEABILITYMEASURE", value: .real(v))
        case .volumeMeasure(let v): return .select(typeName: "IFCVOLUMEMEASURE", value: .real(v))
        case .volumetricFlowRateMeasure(let v): return .select(typeName: "IFCVOLUMETRICFLOWRATEMEASURE", value: .real(v))
        case .warpingConstantMeasure(let v): return .select(typeName: "IFCWARPINGCONSTANTMEASURE", value: .real(v))
        case .warpingMomentMeasure(let v): return .select(typeName: "IFCWARPINGMOMENTMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcAppliedValue { return .appliedValue(v) }
            if let v = entity as? IFC4X3.IfcBinary { return .binary(v) }
            if let v = entity as? IFC4X3.IfcComplexNumber { return .complexNumber(v) }
            if let v = entity as? IFC4X3.IfcCompoundPlaneAngleMeasure { return .compoundPlaneAngleMeasure(v) }
            if let v = entity as? IFC4X3.IfcMeasureWithUnit { return .measureWithUnit(v) }
            if let v = entity as? IFC4X3.IfcReference { return .reference(v) }
            if let v = entity as? IFC4X3.IfcTable { return .table(v) }
            if let v = entity as? IFC4X3.IfcTimeSeries { return .timeSeries(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCABSORBEDDOSEMEASURE": if let v = inner.realValue { return .absorbedDoseMeasure(v) }
            case "IFCACCELERATIONMEASURE": if let v = inner.realValue { return .accelerationMeasure(v) }
            case "IFCAMOUNTOFSUBSTANCEMEASURE": if let v = inner.realValue { return .amountOfSubstanceMeasure(v) }
            case "IFCANGULARVELOCITYMEASURE": if let v = inner.realValue { return .angularVelocityMeasure(v) }
            case "IFCAREADENSITYMEASURE": if let v = inner.realValue { return .areaDensityMeasure(v) }
            case "IFCAREAMEASURE": if let v = inner.realValue { return .areaMeasure(v) }
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCCONTEXTDEPENDENTMEASURE": if let v = inner.realValue { return .contextDependentMeasure(v) }
            case "IFCCOUNTMEASURE": if let v = inner.integerValue { return .countMeasure(v) }
            case "IFCCURVATUREMEASURE": if let v = inner.realValue { return .curvatureMeasure(v) }
            case "IFCDATE": if let v = inner.stringValue { return .date(v) }
            case "IFCDATETIME": if let v = inner.stringValue { return .dateTime(v) }
            case "IFCDESCRIPTIVEMEASURE": if let v = inner.stringValue { return .descriptiveMeasure(v) }
            case "IFCDOSEEQUIVALENTMEASURE": if let v = inner.realValue { return .doseEquivalentMeasure(v) }
            case "IFCDURATION": if let v = inner.stringValue { return .duration(v) }
            case "IFCDYNAMICVISCOSITYMEASURE": if let v = inner.realValue { return .dynamicViscosityMeasure(v) }
            case "IFCELECTRICCAPACITANCEMEASURE": if let v = inner.realValue { return .electricCapacitanceMeasure(v) }
            case "IFCELECTRICCHARGEMEASURE": if let v = inner.realValue { return .electricChargeMeasure(v) }
            case "IFCELECTRICCONDUCTANCEMEASURE": if let v = inner.realValue { return .electricConductanceMeasure(v) }
            case "IFCELECTRICCURRENTMEASURE": if let v = inner.realValue { return .electricCurrentMeasure(v) }
            case "IFCELECTRICRESISTANCEMEASURE": if let v = inner.realValue { return .electricResistanceMeasure(v) }
            case "IFCELECTRICVOLTAGEMEASURE": if let v = inner.realValue { return .electricVoltageMeasure(v) }
            case "IFCENERGYMEASURE": if let v = inner.realValue { return .energyMeasure(v) }
            case "IFCFORCEMEASURE": if let v = inner.realValue { return .forceMeasure(v) }
            case "IFCFREQUENCYMEASURE": if let v = inner.realValue { return .frequencyMeasure(v) }
            case "IFCHEATFLUXDENSITYMEASURE": if let v = inner.realValue { return .heatFluxDensityMeasure(v) }
            case "IFCHEATINGVALUEMEASURE": if let v = inner.realValue { return .heatingValueMeasure(v) }
            case "IFCIDENTIFIER": if let v = inner.stringValue { return .identifier(v) }
            case "IFCILLUMINANCEMEASURE": if let v = inner.realValue { return .illuminanceMeasure(v) }
            case "IFCINDUCTANCEMEASURE": if let v = inner.realValue { return .inductanceMeasure(v) }
            case "IFCINTEGER": if let v = inner.integerValue { return .integer(v) }
            case "IFCINTEGERCOUNTRATEMEASURE": if let v = inner.integerValue { return .integerCountRateMeasure(v) }
            case "IFCIONCONCENTRATIONMEASURE": if let v = inner.realValue { return .ionConcentrationMeasure(v) }
            case "IFCISOTHERMALMOISTURECAPACITYMEASURE": if let v = inner.realValue { return .isothermalMoistureCapacityMeasure(v) }
            case "IFCKINEMATICVISCOSITYMEASURE": if let v = inner.realValue { return .kinematicViscosityMeasure(v) }
            case "IFCLABEL": if let v = inner.stringValue { return .label(v) }
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCLINEARFORCEMEASURE": if let v = inner.realValue { return .linearForceMeasure(v) }
            case "IFCLINEARMOMENTMEASURE": if let v = inner.realValue { return .linearMomentMeasure(v) }
            case "IFCLINEARSTIFFNESSMEASURE": if let v = inner.realValue { return .linearStiffnessMeasure(v) }
            case "IFCLINEARVELOCITYMEASURE": if let v = inner.realValue { return .linearVelocityMeasure(v) }
            case "IFCLOGICAL": if case .enumeration(let s) = inner, let v = IFC4X3.IfcLogical(rawValue: s) { return .logical(v) }
            case "IFCLUMINOUSFLUXMEASURE": if let v = inner.realValue { return .luminousFluxMeasure(v) }
            case "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE": if let v = inner.realValue { return .luminousIntensityDistributionMeasure(v) }
            case "IFCLUMINOUSINTENSITYMEASURE": if let v = inner.realValue { return .luminousIntensityMeasure(v) }
            case "IFCMAGNETICFLUXDENSITYMEASURE": if let v = inner.realValue { return .magneticFluxDensityMeasure(v) }
            case "IFCMAGNETICFLUXMEASURE": if let v = inner.realValue { return .magneticFluxMeasure(v) }
            case "IFCMASSDENSITYMEASURE": if let v = inner.realValue { return .massDensityMeasure(v) }
            case "IFCMASSFLOWRATEMEASURE": if let v = inner.realValue { return .massFlowRateMeasure(v) }
            case "IFCMASSMEASURE": if let v = inner.realValue { return .massMeasure(v) }
            case "IFCMASSPERLENGTHMEASURE": if let v = inner.realValue { return .massPerLengthMeasure(v) }
            case "IFCMODULUSOFELASTICITYMEASURE": if let v = inner.realValue { return .modulusOfElasticityMeasure(v) }
            case "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfLinearSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfRotationalSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfSubgradeReactionMeasure(v) }
            case "IFCMOISTUREDIFFUSIVITYMEASURE": if let v = inner.realValue { return .moistureDiffusivityMeasure(v) }
            case "IFCMOLECULARWEIGHTMEASURE": if let v = inner.realValue { return .molecularWeightMeasure(v) }
            case "IFCMOMENTOFINERTIAMEASURE": if let v = inner.realValue { return .momentOfInertiaMeasure(v) }
            case "IFCMONETARYMEASURE": if let v = inner.realValue { return .monetaryMeasure(v) }
            case "IFCNONNEGATIVELENGTHMEASURE": if let v = inner.realValue { return .nonNegativeLengthMeasure(v) }
            case "IFCNORMALISEDRATIOMEASURE": if let v = inner.realValue { return .normalisedRatioMeasure(v) }
            case "IFCNUMERICMEASURE": if let v = inner.realValue { return .numericMeasure(v) }
            case "IFCPHMEASURE": if let v = inner.realValue { return .pHMeasure(v) }
            case "IFCPARAMETERVALUE": if let v = inner.realValue { return .parameterValue(v) }
            case "IFCPLANARFORCEMEASURE": if let v = inner.realValue { return .planarForceMeasure(v) }
            case "IFCPLANEANGLEMEASURE": if let v = inner.realValue { return .planeAngleMeasure(v) }
            case "IFCPOSITIVEINTEGER": if let v = inner.integerValue { return .positiveInteger(v) }
            case "IFCPOSITIVELENGTHMEASURE": if let v = inner.realValue { return .positiveLengthMeasure(v) }
            case "IFCPOSITIVEPLANEANGLEMEASURE": if let v = inner.realValue { return .positivePlaneAngleMeasure(v) }
            case "IFCPOSITIVERATIOMEASURE": if let v = inner.realValue { return .positiveRatioMeasure(v) }
            case "IFCPOWERMEASURE": if let v = inner.realValue { return .powerMeasure(v) }
            case "IFCPRESSUREMEASURE": if let v = inner.realValue { return .pressureMeasure(v) }
            case "IFCRADIOACTIVITYMEASURE": if let v = inner.realValue { return .radioActivityMeasure(v) }
            case "IFCRATIOMEASURE": if let v = inner.realValue { return .ratioMeasure(v) }
            case "IFCREAL": if let v = inner.realValue { return .real(v) }
            case "IFCROTATIONALFREQUENCYMEASURE": if let v = inner.realValue { return .rotationalFrequencyMeasure(v) }
            case "IFCROTATIONALMASSMEASURE": if let v = inner.realValue { return .rotationalMassMeasure(v) }
            case "IFCROTATIONALSTIFFNESSMEASURE": if let v = inner.realValue { return .rotationalStiffnessMeasure(v) }
            case "IFCSECTIONMODULUSMEASURE": if let v = inner.realValue { return .sectionModulusMeasure(v) }
            case "IFCSECTIONALAREAINTEGRALMEASURE": if let v = inner.realValue { return .sectionalAreaIntegralMeasure(v) }
            case "IFCSHEARMODULUSMEASURE": if let v = inner.realValue { return .shearModulusMeasure(v) }
            case "IFCSOLIDANGLEMEASURE": if let v = inner.realValue { return .solidAngleMeasure(v) }
            case "IFCSOUNDPOWERLEVELMEASURE": if let v = inner.realValue { return .soundPowerLevelMeasure(v) }
            case "IFCSOUNDPOWERMEASURE": if let v = inner.realValue { return .soundPowerMeasure(v) }
            case "IFCSOUNDPRESSURELEVELMEASURE": if let v = inner.realValue { return .soundPressureLevelMeasure(v) }
            case "IFCSOUNDPRESSUREMEASURE": if let v = inner.realValue { return .soundPressureMeasure(v) }
            case "IFCSPECIFICHEATCAPACITYMEASURE": if let v = inner.realValue { return .specificHeatCapacityMeasure(v) }
            case "IFCTEMPERATUREGRADIENTMEASURE": if let v = inner.realValue { return .temperatureGradientMeasure(v) }
            case "IFCTEMPERATURERATEOFCHANGEMEASURE": if let v = inner.realValue { return .temperatureRateOfChangeMeasure(v) }
            case "IFCTEXT": if let v = inner.stringValue { return .text(v) }
            case "IFCTHERMALADMITTANCEMEASURE": if let v = inner.realValue { return .thermalAdmittanceMeasure(v) }
            case "IFCTHERMALCONDUCTIVITYMEASURE": if let v = inner.realValue { return .thermalConductivityMeasure(v) }
            case "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE": if let v = inner.realValue { return .thermalExpansionCoefficientMeasure(v) }
            case "IFCTHERMALRESISTANCEMEASURE": if let v = inner.realValue { return .thermalResistanceMeasure(v) }
            case "IFCTHERMALTRANSMITTANCEMEASURE": if let v = inner.realValue { return .thermalTransmittanceMeasure(v) }
            case "IFCTHERMODYNAMICTEMPERATUREMEASURE": if let v = inner.realValue { return .thermodynamicTemperatureMeasure(v) }
            case "IFCTIME": if let v = inner.stringValue { return .time(v) }
            case "IFCTIMEMEASURE": if let v = inner.realValue { return .timeMeasure(v) }
            case "IFCTIMESTAMP": if let v = inner.integerValue { return .timeStamp(v) }
            case "IFCTORQUEMEASURE": if let v = inner.realValue { return .torqueMeasure(v) }
            case "IFCURIREFERENCE": if let v = inner.stringValue { return .uRIReference(v) }
            case "IFCVAPORPERMEABILITYMEASURE": if let v = inner.realValue { return .vaporPermeabilityMeasure(v) }
            case "IFCVOLUMEMEASURE": if let v = inner.realValue { return .volumeMeasure(v) }
            case "IFCVOLUMETRICFLOWRATEMEASURE": if let v = inner.realValue { return .volumetricFlowRateMeasure(v) }
            case "IFCWARPINGCONSTANTMEASURE": if let v = inner.realValue { return .warpingConstantMeasure(v) }
            case "IFCWARPINGMOMENTMEASURE": if let v = inner.realValue { return .warpingMomentMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcModulusOfRotationalSubgradeReactionSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .modulusOfRotationalSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfRotationalSubgradeReactionMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcModulusOfSubgradeReactionSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .modulusOfSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFSUBGRADEREACTIONMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCMODULUSOFSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfSubgradeReactionMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcModulusOfTranslationalSubgradeReactionSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .modulusOfLinearSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfLinearSubgradeReactionMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcObjectReferenceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .address(let e): return .entityRef(e)
        case .appliedValue(let e): return .entityRef(e)
        case .externalReference(let e): return .entityRef(e)
        case .materialDefinition(let e): return .entityRef(e)
        case .organization(let e): return .entityRef(e)
        case .person(let e): return .entityRef(e)
        case .personAndOrganization(let e): return .entityRef(e)
        case .table(let e): return .entityRef(e)
        case .timeSeries(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcAddress { return .address(v) }
            if let v = entity as? IFC4X3.IfcAppliedValue { return .appliedValue(v) }
            if let v = entity as? IFC4X3.IfcExternalReference { return .externalReference(v) }
            if let v = entity as? IFC4X3.IfcMaterialDefinition { return .materialDefinition(v) }
            if let v = entity as? IFC4X3.IfcOrganization { return .organization(v) }
            if let v = entity as? IFC4X3.IfcPerson { return .person(v) }
            if let v = entity as? IFC4X3.IfcPersonAndOrganization { return .personAndOrganization(v) }
            if let v = entity as? IFC4X3.IfcTable { return .table(v) }
            if let v = entity as? IFC4X3.IfcTimeSeries { return .timeSeries(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcPointOrVertexPoint {
    public func stepEncode() -> STEPValue {
        switch self {
        case .point(let e): return .entityRef(e)
        case .vertexPoint(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcPoint { return .point(v) }
            if let v = entity as? IFC4X3.IfcVertexPoint { return .vertexPoint(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcProcessSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .process(let e): return .entityRef(e)
        case .typeProcess(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcProcess { return .process(v) }
            if let v = entity as? IFC4X3.IfcTypeProcess { return .typeProcess(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcProductRepresentationSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .productDefinitionShape(let e): return .entityRef(e)
        case .representationMap(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcProductDefinitionShape { return .productDefinitionShape(v) }
            if let v = entity as? IFC4X3.IfcRepresentationMap { return .representationMap(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcProductSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .product(let e): return .entityRef(e)
        case .typeProduct(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcProduct { return .product(v) }
            if let v = entity as? IFC4X3.IfcTypeProduct { return .typeProduct(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcPropertySetDefinitionSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .propertySetDefinition(let e): return .entityRef(e)
        case .propertySetDefinitionSet(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcPropertySetDefinition { return .propertySetDefinition(v) }
            if let v = entity as? IFC4X3.IfcPropertySetDefinitionSet { return .propertySetDefinitionSet(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcResourceObjectSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .actorRole(let e): return .entityRef(e)
        case .appliedValue(let e): return .entityRef(e)
        case .approval(let e): return .entityRef(e)
        case .constraint(let e): return .entityRef(e)
        case .contextDependentUnit(let e): return .entityRef(e)
        case .conversionBasedUnit(let e): return .entityRef(e)
        case .externalInformation(let e): return .entityRef(e)
        case .externalReference(let e): return .entityRef(e)
        case .materialDefinition(let e): return .entityRef(e)
        case .organization(let e): return .entityRef(e)
        case .person(let e): return .entityRef(e)
        case .personAndOrganization(let e): return .entityRef(e)
        case .physicalQuantity(let e): return .entityRef(e)
        case .profileDef(let e): return .entityRef(e)
        case .propertyAbstraction(let e): return .entityRef(e)
        case .shapeAspect(let e): return .entityRef(e)
        case .timeSeries(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcActorRole { return .actorRole(v) }
            if let v = entity as? IFC4X3.IfcAppliedValue { return .appliedValue(v) }
            if let v = entity as? IFC4X3.IfcApproval { return .approval(v) }
            if let v = entity as? IFC4X3.IfcConstraint { return .constraint(v) }
            if let v = entity as? IFC4X3.IfcContextDependentUnit { return .contextDependentUnit(v) }
            if let v = entity as? IFC4X3.IfcConversionBasedUnit { return .conversionBasedUnit(v) }
            if let v = entity as? IFC4X3.IfcExternalInformation { return .externalInformation(v) }
            if let v = entity as? IFC4X3.IfcExternalReference { return .externalReference(v) }
            if let v = entity as? IFC4X3.IfcMaterialDefinition { return .materialDefinition(v) }
            if let v = entity as? IFC4X3.IfcOrganization { return .organization(v) }
            if let v = entity as? IFC4X3.IfcPerson { return .person(v) }
            if let v = entity as? IFC4X3.IfcPersonAndOrganization { return .personAndOrganization(v) }
            if let v = entity as? IFC4X3.IfcPhysicalQuantity { return .physicalQuantity(v) }
            if let v = entity as? IFC4X3.IfcProfileDef { return .profileDef(v) }
            if let v = entity as? IFC4X3.IfcPropertyAbstraction { return .propertyAbstraction(v) }
            if let v = entity as? IFC4X3.IfcShapeAspect { return .shapeAspect(v) }
            if let v = entity as? IFC4X3.IfcTimeSeries { return .timeSeries(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcResourceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .resource(let e): return .entityRef(e)
        case .typeResource(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcResource { return .resource(v) }
            if let v = entity as? IFC4X3.IfcTypeResource { return .typeResource(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcRotationalStiffnessSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .rotationalStiffnessMeasure(let v): return .select(typeName: "IFCROTATIONALSTIFFNESSMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCROTATIONALSTIFFNESSMEASURE": if let v = inner.realValue { return .rotationalStiffnessMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcSegmentIndexSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .arcIndex(let e): return .entityRef(e)
        case .lineIndex(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcArcIndex { return .arcIndex(v) }
            if let v = entity as? IFC4X3.IfcLineIndex { return .lineIndex(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcShell {
    public func stepEncode() -> STEPValue {
        switch self {
        case .closedShell(let e): return .entityRef(e)
        case .openShell(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcClosedShell { return .closedShell(v) }
            if let v = entity as? IFC4X3.IfcOpenShell { return .openShell(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcSimpleValue {
    public func stepEncode() -> STEPValue {
        switch self {
        case .binary(let e): return .entityRef(e)
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .date(let v): return .select(typeName: "IFCDATE", value: .string(v))
        case .dateTime(let v): return .select(typeName: "IFCDATETIME", value: .string(v))
        case .duration(let v): return .select(typeName: "IFCDURATION", value: .string(v))
        case .identifier(let v): return .select(typeName: "IFCIDENTIFIER", value: .string(v))
        case .integer(let v): return .select(typeName: "IFCINTEGER", value: .integer(v))
        case .label(let v): return .select(typeName: "IFCLABEL", value: .string(v))
        case .logical(let v): return .select(typeName: "IFCLOGICAL", value: .enumeration(v.rawValue))
        case .positiveInteger(let v): return .select(typeName: "IFCPOSITIVEINTEGER", value: .integer(v))
        case .real(let v): return .select(typeName: "IFCREAL", value: .real(v))
        case .text(let v): return .select(typeName: "IFCTEXT", value: .string(v))
        case .time(let v): return .select(typeName: "IFCTIME", value: .string(v))
        case .timeStamp(let v): return .select(typeName: "IFCTIMESTAMP", value: .integer(v))
        case .uRIReference(let v): return .select(typeName: "IFCURIREFERENCE", value: .string(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcBinary { return .binary(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCDATE": if let v = inner.stringValue { return .date(v) }
            case "IFCDATETIME": if let v = inner.stringValue { return .dateTime(v) }
            case "IFCDURATION": if let v = inner.stringValue { return .duration(v) }
            case "IFCIDENTIFIER": if let v = inner.stringValue { return .identifier(v) }
            case "IFCINTEGER": if let v = inner.integerValue { return .integer(v) }
            case "IFCLABEL": if let v = inner.stringValue { return .label(v) }
            case "IFCLOGICAL": if case .enumeration(let s) = inner, let v = IFC4X3.IfcLogical(rawValue: s) { return .logical(v) }
            case "IFCPOSITIVEINTEGER": if let v = inner.integerValue { return .positiveInteger(v) }
            case "IFCREAL": if let v = inner.realValue { return .real(v) }
            case "IFCTEXT": if let v = inner.stringValue { return .text(v) }
            case "IFCTIME": if let v = inner.stringValue { return .time(v) }
            case "IFCTIMESTAMP": if let v = inner.integerValue { return .timeStamp(v) }
            case "IFCURIREFERENCE": if let v = inner.stringValue { return .uRIReference(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcSizeSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .descriptiveMeasure(let v): return .select(typeName: "IFCDESCRIPTIVEMEASURE", value: .string(v))
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .normalisedRatioMeasure(let v): return .select(typeName: "IFCNORMALISEDRATIOMEASURE", value: .real(v))
        case .positiveLengthMeasure(let v): return .select(typeName: "IFCPOSITIVELENGTHMEASURE", value: .real(v))
        case .positiveRatioMeasure(let v): return .select(typeName: "IFCPOSITIVERATIOMEASURE", value: .real(v))
        case .ratioMeasure(let v): return .select(typeName: "IFCRATIOMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCDESCRIPTIVEMEASURE": if let v = inner.stringValue { return .descriptiveMeasure(v) }
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCNORMALISEDRATIOMEASURE": if let v = inner.realValue { return .normalisedRatioMeasure(v) }
            case "IFCPOSITIVELENGTHMEASURE": if let v = inner.realValue { return .positiveLengthMeasure(v) }
            case "IFCPOSITIVERATIOMEASURE": if let v = inner.realValue { return .positiveRatioMeasure(v) }
            case "IFCRATIOMEASURE": if let v = inner.realValue { return .ratioMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcSolidOrShell {
    public func stepEncode() -> STEPValue {
        switch self {
        case .closedShell(let e): return .entityRef(e)
        case .solidModel(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcClosedShell { return .closedShell(v) }
            if let v = entity as? IFC4X3.IfcSolidModel { return .solidModel(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcSpaceBoundarySelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .externalSpatialElement(let e): return .entityRef(e)
        case .space(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcExternalSpatialElement { return .externalSpatialElement(v) }
            if let v = entity as? IFC4X3.IfcSpace { return .space(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcSpatialReferenceSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .group(let e): return .entityRef(e)
        case .product(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcGroup { return .group(v) }
            if let v = entity as? IFC4X3.IfcProduct { return .product(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcSpecularHighlightSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .specularExponent(let v): return .select(typeName: "IFCSPECULAREXPONENT", value: .real(v))
        case .specularRoughness(let v): return .select(typeName: "IFCSPECULARROUGHNESS", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCSPECULAREXPONENT": if let v = inner.realValue { return .specularExponent(v) }
            case "IFCSPECULARROUGHNESS": if let v = inner.realValue { return .specularRoughness(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcStructuralActivityAssignmentSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .element(let e): return .entityRef(e)
        case .structuralItem(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcElement { return .element(v) }
            if let v = entity as? IFC4X3.IfcStructuralItem { return .structuralItem(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcSurfaceOrFaceSurface {
    public func stepEncode() -> STEPValue {
        switch self {
        case .faceBasedSurfaceModel(let e): return .entityRef(e)
        case .faceSurface(let e): return .entityRef(e)
        case .surface(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcFaceBasedSurfaceModel { return .faceBasedSurfaceModel(v) }
            if let v = entity as? IFC4X3.IfcFaceSurface { return .faceSurface(v) }
            if let v = entity as? IFC4X3.IfcSurface { return .surface(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcSurfaceStyleElementSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .externallyDefinedSurfaceStyle(let e): return .entityRef(e)
        case .surfaceStyleLighting(let e): return .entityRef(e)
        case .surfaceStyleRefraction(let e): return .entityRef(e)
        case .surfaceStyleShading(let e): return .entityRef(e)
        case .surfaceStyleWithTextures(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcExternallyDefinedSurfaceStyle { return .externallyDefinedSurfaceStyle(v) }
            if let v = entity as? IFC4X3.IfcSurfaceStyleLighting { return .surfaceStyleLighting(v) }
            if let v = entity as? IFC4X3.IfcSurfaceStyleRefraction { return .surfaceStyleRefraction(v) }
            if let v = entity as? IFC4X3.IfcSurfaceStyleShading { return .surfaceStyleShading(v) }
            if let v = entity as? IFC4X3.IfcSurfaceStyleWithTextures { return .surfaceStyleWithTextures(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcTextFontSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .externallyDefinedTextFont(let e): return .entityRef(e)
        case .preDefinedTextFont(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcExternallyDefinedTextFont { return .externallyDefinedTextFont(v) }
            if let v = entity as? IFC4X3.IfcPreDefinedTextFont { return .preDefinedTextFont(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcTimeOrRatioSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .duration(let v): return .select(typeName: "IFCDURATION", value: .string(v))
        case .ratioMeasure(let v): return .select(typeName: "IFCRATIOMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCDURATION": if let v = inner.stringValue { return .duration(v) }
            case "IFCRATIOMEASURE": if let v = inner.realValue { return .ratioMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcTranslationalStiffnessSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .linearStiffnessMeasure(let v): return .select(typeName: "IFCLINEARSTIFFNESSMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCLINEARSTIFFNESSMEASURE": if let v = inner.realValue { return .linearStiffnessMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcTrimmingSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .cartesianPoint(let e): return .entityRef(e)
        case .parameterValue(let v): return .select(typeName: "IFCPARAMETERVALUE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcCartesianPoint { return .cartesianPoint(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCPARAMETERVALUE": if let v = inner.realValue { return .parameterValue(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcUnit {
    public func stepEncode() -> STEPValue {
        switch self {
        case .derivedUnit(let e): return .entityRef(e)
        case .monetaryUnit(let e): return .entityRef(e)
        case .namedUnit(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcDerivedUnit { return .derivedUnit(v) }
            if let v = entity as? IFC4X3.IfcMonetaryUnit { return .monetaryUnit(v) }
            if let v = entity as? IFC4X3.IfcNamedUnit { return .namedUnit(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcValue {
    public func stepEncode() -> STEPValue {
        switch self {
        case .absorbedDoseMeasure(let v): return .select(typeName: "IFCABSORBEDDOSEMEASURE", value: .real(v))
        case .accelerationMeasure(let v): return .select(typeName: "IFCACCELERATIONMEASURE", value: .real(v))
        case .amountOfSubstanceMeasure(let v): return .select(typeName: "IFCAMOUNTOFSUBSTANCEMEASURE", value: .real(v))
        case .angularVelocityMeasure(let v): return .select(typeName: "IFCANGULARVELOCITYMEASURE", value: .real(v))
        case .areaDensityMeasure(let v): return .select(typeName: "IFCAREADENSITYMEASURE", value: .real(v))
        case .areaMeasure(let v): return .select(typeName: "IFCAREAMEASURE", value: .real(v))
        case .binary(let e): return .entityRef(e)
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .complexNumber(let e): return .entityRef(e)
        case .compoundPlaneAngleMeasure(let e): return .entityRef(e)
        case .contextDependentMeasure(let v): return .select(typeName: "IFCCONTEXTDEPENDENTMEASURE", value: .real(v))
        case .countMeasure(let v): return .select(typeName: "IFCCOUNTMEASURE", value: .integer(v))
        case .curvatureMeasure(let v): return .select(typeName: "IFCCURVATUREMEASURE", value: .real(v))
        case .date(let v): return .select(typeName: "IFCDATE", value: .string(v))
        case .dateTime(let v): return .select(typeName: "IFCDATETIME", value: .string(v))
        case .descriptiveMeasure(let v): return .select(typeName: "IFCDESCRIPTIVEMEASURE", value: .string(v))
        case .doseEquivalentMeasure(let v): return .select(typeName: "IFCDOSEEQUIVALENTMEASURE", value: .real(v))
        case .duration(let v): return .select(typeName: "IFCDURATION", value: .string(v))
        case .dynamicViscosityMeasure(let v): return .select(typeName: "IFCDYNAMICVISCOSITYMEASURE", value: .real(v))
        case .electricCapacitanceMeasure(let v): return .select(typeName: "IFCELECTRICCAPACITANCEMEASURE", value: .real(v))
        case .electricChargeMeasure(let v): return .select(typeName: "IFCELECTRICCHARGEMEASURE", value: .real(v))
        case .electricConductanceMeasure(let v): return .select(typeName: "IFCELECTRICCONDUCTANCEMEASURE", value: .real(v))
        case .electricCurrentMeasure(let v): return .select(typeName: "IFCELECTRICCURRENTMEASURE", value: .real(v))
        case .electricResistanceMeasure(let v): return .select(typeName: "IFCELECTRICRESISTANCEMEASURE", value: .real(v))
        case .electricVoltageMeasure(let v): return .select(typeName: "IFCELECTRICVOLTAGEMEASURE", value: .real(v))
        case .energyMeasure(let v): return .select(typeName: "IFCENERGYMEASURE", value: .real(v))
        case .forceMeasure(let v): return .select(typeName: "IFCFORCEMEASURE", value: .real(v))
        case .frequencyMeasure(let v): return .select(typeName: "IFCFREQUENCYMEASURE", value: .real(v))
        case .heatFluxDensityMeasure(let v): return .select(typeName: "IFCHEATFLUXDENSITYMEASURE", value: .real(v))
        case .heatingValueMeasure(let v): return .select(typeName: "IFCHEATINGVALUEMEASURE", value: .real(v))
        case .identifier(let v): return .select(typeName: "IFCIDENTIFIER", value: .string(v))
        case .illuminanceMeasure(let v): return .select(typeName: "IFCILLUMINANCEMEASURE", value: .real(v))
        case .inductanceMeasure(let v): return .select(typeName: "IFCINDUCTANCEMEASURE", value: .real(v))
        case .integer(let v): return .select(typeName: "IFCINTEGER", value: .integer(v))
        case .integerCountRateMeasure(let v): return .select(typeName: "IFCINTEGERCOUNTRATEMEASURE", value: .integer(v))
        case .ionConcentrationMeasure(let v): return .select(typeName: "IFCIONCONCENTRATIONMEASURE", value: .real(v))
        case .isothermalMoistureCapacityMeasure(let v): return .select(typeName: "IFCISOTHERMALMOISTURECAPACITYMEASURE", value: .real(v))
        case .kinematicViscosityMeasure(let v): return .select(typeName: "IFCKINEMATICVISCOSITYMEASURE", value: .real(v))
        case .label(let v): return .select(typeName: "IFCLABEL", value: .string(v))
        case .lengthMeasure(let v): return .select(typeName: "IFCLENGTHMEASURE", value: .real(v))
        case .linearForceMeasure(let v): return .select(typeName: "IFCLINEARFORCEMEASURE", value: .real(v))
        case .linearMomentMeasure(let v): return .select(typeName: "IFCLINEARMOMENTMEASURE", value: .real(v))
        case .linearStiffnessMeasure(let v): return .select(typeName: "IFCLINEARSTIFFNESSMEASURE", value: .real(v))
        case .linearVelocityMeasure(let v): return .select(typeName: "IFCLINEARVELOCITYMEASURE", value: .real(v))
        case .logical(let v): return .select(typeName: "IFCLOGICAL", value: .enumeration(v.rawValue))
        case .luminousFluxMeasure(let v): return .select(typeName: "IFCLUMINOUSFLUXMEASURE", value: .real(v))
        case .luminousIntensityDistributionMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE", value: .real(v))
        case .luminousIntensityMeasure(let v): return .select(typeName: "IFCLUMINOUSINTENSITYMEASURE", value: .real(v))
        case .magneticFluxDensityMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXDENSITYMEASURE", value: .real(v))
        case .magneticFluxMeasure(let v): return .select(typeName: "IFCMAGNETICFLUXMEASURE", value: .real(v))
        case .massDensityMeasure(let v): return .select(typeName: "IFCMASSDENSITYMEASURE", value: .real(v))
        case .massFlowRateMeasure(let v): return .select(typeName: "IFCMASSFLOWRATEMEASURE", value: .real(v))
        case .massMeasure(let v): return .select(typeName: "IFCMASSMEASURE", value: .real(v))
        case .massPerLengthMeasure(let v): return .select(typeName: "IFCMASSPERLENGTHMEASURE", value: .real(v))
        case .modulusOfElasticityMeasure(let v): return .select(typeName: "IFCMODULUSOFELASTICITYMEASURE", value: .real(v))
        case .modulusOfLinearSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfRotationalSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE", value: .real(v))
        case .modulusOfSubgradeReactionMeasure(let v): return .select(typeName: "IFCMODULUSOFSUBGRADEREACTIONMEASURE", value: .real(v))
        case .moistureDiffusivityMeasure(let v): return .select(typeName: "IFCMOISTUREDIFFUSIVITYMEASURE", value: .real(v))
        case .molecularWeightMeasure(let v): return .select(typeName: "IFCMOLECULARWEIGHTMEASURE", value: .real(v))
        case .momentOfInertiaMeasure(let v): return .select(typeName: "IFCMOMENTOFINERTIAMEASURE", value: .real(v))
        case .monetaryMeasure(let v): return .select(typeName: "IFCMONETARYMEASURE", value: .real(v))
        case .nonNegativeLengthMeasure(let v): return .select(typeName: "IFCNONNEGATIVELENGTHMEASURE", value: .real(v))
        case .normalisedRatioMeasure(let v): return .select(typeName: "IFCNORMALISEDRATIOMEASURE", value: .real(v))
        case .numericMeasure(let v): return .select(typeName: "IFCNUMERICMEASURE", value: .real(v))
        case .pHMeasure(let v): return .select(typeName: "IFCPHMEASURE", value: .real(v))
        case .parameterValue(let v): return .select(typeName: "IFCPARAMETERVALUE", value: .real(v))
        case .planarForceMeasure(let v): return .select(typeName: "IFCPLANARFORCEMEASURE", value: .real(v))
        case .planeAngleMeasure(let v): return .select(typeName: "IFCPLANEANGLEMEASURE", value: .real(v))
        case .positiveInteger(let v): return .select(typeName: "IFCPOSITIVEINTEGER", value: .integer(v))
        case .positiveLengthMeasure(let v): return .select(typeName: "IFCPOSITIVELENGTHMEASURE", value: .real(v))
        case .positivePlaneAngleMeasure(let v): return .select(typeName: "IFCPOSITIVEPLANEANGLEMEASURE", value: .real(v))
        case .positiveRatioMeasure(let v): return .select(typeName: "IFCPOSITIVERATIOMEASURE", value: .real(v))
        case .powerMeasure(let v): return .select(typeName: "IFCPOWERMEASURE", value: .real(v))
        case .pressureMeasure(let v): return .select(typeName: "IFCPRESSUREMEASURE", value: .real(v))
        case .radioActivityMeasure(let v): return .select(typeName: "IFCRADIOACTIVITYMEASURE", value: .real(v))
        case .ratioMeasure(let v): return .select(typeName: "IFCRATIOMEASURE", value: .real(v))
        case .real(let v): return .select(typeName: "IFCREAL", value: .real(v))
        case .rotationalFrequencyMeasure(let v): return .select(typeName: "IFCROTATIONALFREQUENCYMEASURE", value: .real(v))
        case .rotationalMassMeasure(let v): return .select(typeName: "IFCROTATIONALMASSMEASURE", value: .real(v))
        case .rotationalStiffnessMeasure(let v): return .select(typeName: "IFCROTATIONALSTIFFNESSMEASURE", value: .real(v))
        case .sectionModulusMeasure(let v): return .select(typeName: "IFCSECTIONMODULUSMEASURE", value: .real(v))
        case .sectionalAreaIntegralMeasure(let v): return .select(typeName: "IFCSECTIONALAREAINTEGRALMEASURE", value: .real(v))
        case .shearModulusMeasure(let v): return .select(typeName: "IFCSHEARMODULUSMEASURE", value: .real(v))
        case .solidAngleMeasure(let v): return .select(typeName: "IFCSOLIDANGLEMEASURE", value: .real(v))
        case .soundPowerLevelMeasure(let v): return .select(typeName: "IFCSOUNDPOWERLEVELMEASURE", value: .real(v))
        case .soundPowerMeasure(let v): return .select(typeName: "IFCSOUNDPOWERMEASURE", value: .real(v))
        case .soundPressureLevelMeasure(let v): return .select(typeName: "IFCSOUNDPRESSURELEVELMEASURE", value: .real(v))
        case .soundPressureMeasure(let v): return .select(typeName: "IFCSOUNDPRESSUREMEASURE", value: .real(v))
        case .specificHeatCapacityMeasure(let v): return .select(typeName: "IFCSPECIFICHEATCAPACITYMEASURE", value: .real(v))
        case .temperatureGradientMeasure(let v): return .select(typeName: "IFCTEMPERATUREGRADIENTMEASURE", value: .real(v))
        case .temperatureRateOfChangeMeasure(let v): return .select(typeName: "IFCTEMPERATURERATEOFCHANGEMEASURE", value: .real(v))
        case .text(let v): return .select(typeName: "IFCTEXT", value: .string(v))
        case .thermalAdmittanceMeasure(let v): return .select(typeName: "IFCTHERMALADMITTANCEMEASURE", value: .real(v))
        case .thermalConductivityMeasure(let v): return .select(typeName: "IFCTHERMALCONDUCTIVITYMEASURE", value: .real(v))
        case .thermalExpansionCoefficientMeasure(let v): return .select(typeName: "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE", value: .real(v))
        case .thermalResistanceMeasure(let v): return .select(typeName: "IFCTHERMALRESISTANCEMEASURE", value: .real(v))
        case .thermalTransmittanceMeasure(let v): return .select(typeName: "IFCTHERMALTRANSMITTANCEMEASURE", value: .real(v))
        case .thermodynamicTemperatureMeasure(let v): return .select(typeName: "IFCTHERMODYNAMICTEMPERATUREMEASURE", value: .real(v))
        case .time(let v): return .select(typeName: "IFCTIME", value: .string(v))
        case .timeMeasure(let v): return .select(typeName: "IFCTIMEMEASURE", value: .real(v))
        case .timeStamp(let v): return .select(typeName: "IFCTIMESTAMP", value: .integer(v))
        case .torqueMeasure(let v): return .select(typeName: "IFCTORQUEMEASURE", value: .real(v))
        case .uRIReference(let v): return .select(typeName: "IFCURIREFERENCE", value: .string(v))
        case .vaporPermeabilityMeasure(let v): return .select(typeName: "IFCVAPORPERMEABILITYMEASURE", value: .real(v))
        case .volumeMeasure(let v): return .select(typeName: "IFCVOLUMEMEASURE", value: .real(v))
        case .volumetricFlowRateMeasure(let v): return .select(typeName: "IFCVOLUMETRICFLOWRATEMEASURE", value: .real(v))
        case .warpingConstantMeasure(let v): return .select(typeName: "IFCWARPINGCONSTANTMEASURE", value: .real(v))
        case .warpingMomentMeasure(let v): return .select(typeName: "IFCWARPINGMOMENTMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcBinary { return .binary(v) }
            if let v = entity as? IFC4X3.IfcComplexNumber { return .complexNumber(v) }
            if let v = entity as? IFC4X3.IfcCompoundPlaneAngleMeasure { return .compoundPlaneAngleMeasure(v) }
        }
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCABSORBEDDOSEMEASURE": if let v = inner.realValue { return .absorbedDoseMeasure(v) }
            case "IFCACCELERATIONMEASURE": if let v = inner.realValue { return .accelerationMeasure(v) }
            case "IFCAMOUNTOFSUBSTANCEMEASURE": if let v = inner.realValue { return .amountOfSubstanceMeasure(v) }
            case "IFCANGULARVELOCITYMEASURE": if let v = inner.realValue { return .angularVelocityMeasure(v) }
            case "IFCAREADENSITYMEASURE": if let v = inner.realValue { return .areaDensityMeasure(v) }
            case "IFCAREAMEASURE": if let v = inner.realValue { return .areaMeasure(v) }
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCCONTEXTDEPENDENTMEASURE": if let v = inner.realValue { return .contextDependentMeasure(v) }
            case "IFCCOUNTMEASURE": if let v = inner.integerValue { return .countMeasure(v) }
            case "IFCCURVATUREMEASURE": if let v = inner.realValue { return .curvatureMeasure(v) }
            case "IFCDATE": if let v = inner.stringValue { return .date(v) }
            case "IFCDATETIME": if let v = inner.stringValue { return .dateTime(v) }
            case "IFCDESCRIPTIVEMEASURE": if let v = inner.stringValue { return .descriptiveMeasure(v) }
            case "IFCDOSEEQUIVALENTMEASURE": if let v = inner.realValue { return .doseEquivalentMeasure(v) }
            case "IFCDURATION": if let v = inner.stringValue { return .duration(v) }
            case "IFCDYNAMICVISCOSITYMEASURE": if let v = inner.realValue { return .dynamicViscosityMeasure(v) }
            case "IFCELECTRICCAPACITANCEMEASURE": if let v = inner.realValue { return .electricCapacitanceMeasure(v) }
            case "IFCELECTRICCHARGEMEASURE": if let v = inner.realValue { return .electricChargeMeasure(v) }
            case "IFCELECTRICCONDUCTANCEMEASURE": if let v = inner.realValue { return .electricConductanceMeasure(v) }
            case "IFCELECTRICCURRENTMEASURE": if let v = inner.realValue { return .electricCurrentMeasure(v) }
            case "IFCELECTRICRESISTANCEMEASURE": if let v = inner.realValue { return .electricResistanceMeasure(v) }
            case "IFCELECTRICVOLTAGEMEASURE": if let v = inner.realValue { return .electricVoltageMeasure(v) }
            case "IFCENERGYMEASURE": if let v = inner.realValue { return .energyMeasure(v) }
            case "IFCFORCEMEASURE": if let v = inner.realValue { return .forceMeasure(v) }
            case "IFCFREQUENCYMEASURE": if let v = inner.realValue { return .frequencyMeasure(v) }
            case "IFCHEATFLUXDENSITYMEASURE": if let v = inner.realValue { return .heatFluxDensityMeasure(v) }
            case "IFCHEATINGVALUEMEASURE": if let v = inner.realValue { return .heatingValueMeasure(v) }
            case "IFCIDENTIFIER": if let v = inner.stringValue { return .identifier(v) }
            case "IFCILLUMINANCEMEASURE": if let v = inner.realValue { return .illuminanceMeasure(v) }
            case "IFCINDUCTANCEMEASURE": if let v = inner.realValue { return .inductanceMeasure(v) }
            case "IFCINTEGER": if let v = inner.integerValue { return .integer(v) }
            case "IFCINTEGERCOUNTRATEMEASURE": if let v = inner.integerValue { return .integerCountRateMeasure(v) }
            case "IFCIONCONCENTRATIONMEASURE": if let v = inner.realValue { return .ionConcentrationMeasure(v) }
            case "IFCISOTHERMALMOISTURECAPACITYMEASURE": if let v = inner.realValue { return .isothermalMoistureCapacityMeasure(v) }
            case "IFCKINEMATICVISCOSITYMEASURE": if let v = inner.realValue { return .kinematicViscosityMeasure(v) }
            case "IFCLABEL": if let v = inner.stringValue { return .label(v) }
            case "IFCLENGTHMEASURE": if let v = inner.realValue { return .lengthMeasure(v) }
            case "IFCLINEARFORCEMEASURE": if let v = inner.realValue { return .linearForceMeasure(v) }
            case "IFCLINEARMOMENTMEASURE": if let v = inner.realValue { return .linearMomentMeasure(v) }
            case "IFCLINEARSTIFFNESSMEASURE": if let v = inner.realValue { return .linearStiffnessMeasure(v) }
            case "IFCLINEARVELOCITYMEASURE": if let v = inner.realValue { return .linearVelocityMeasure(v) }
            case "IFCLOGICAL": if case .enumeration(let s) = inner, let v = IFC4X3.IfcLogical(rawValue: s) { return .logical(v) }
            case "IFCLUMINOUSFLUXMEASURE": if let v = inner.realValue { return .luminousFluxMeasure(v) }
            case "IFCLUMINOUSINTENSITYDISTRIBUTIONMEASURE": if let v = inner.realValue { return .luminousIntensityDistributionMeasure(v) }
            case "IFCLUMINOUSINTENSITYMEASURE": if let v = inner.realValue { return .luminousIntensityMeasure(v) }
            case "IFCMAGNETICFLUXDENSITYMEASURE": if let v = inner.realValue { return .magneticFluxDensityMeasure(v) }
            case "IFCMAGNETICFLUXMEASURE": if let v = inner.realValue { return .magneticFluxMeasure(v) }
            case "IFCMASSDENSITYMEASURE": if let v = inner.realValue { return .massDensityMeasure(v) }
            case "IFCMASSFLOWRATEMEASURE": if let v = inner.realValue { return .massFlowRateMeasure(v) }
            case "IFCMASSMEASURE": if let v = inner.realValue { return .massMeasure(v) }
            case "IFCMASSPERLENGTHMEASURE": if let v = inner.realValue { return .massPerLengthMeasure(v) }
            case "IFCMODULUSOFELASTICITYMEASURE": if let v = inner.realValue { return .modulusOfElasticityMeasure(v) }
            case "IFCMODULUSOFLINEARSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfLinearSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFROTATIONALSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfRotationalSubgradeReactionMeasure(v) }
            case "IFCMODULUSOFSUBGRADEREACTIONMEASURE": if let v = inner.realValue { return .modulusOfSubgradeReactionMeasure(v) }
            case "IFCMOISTUREDIFFUSIVITYMEASURE": if let v = inner.realValue { return .moistureDiffusivityMeasure(v) }
            case "IFCMOLECULARWEIGHTMEASURE": if let v = inner.realValue { return .molecularWeightMeasure(v) }
            case "IFCMOMENTOFINERTIAMEASURE": if let v = inner.realValue { return .momentOfInertiaMeasure(v) }
            case "IFCMONETARYMEASURE": if let v = inner.realValue { return .monetaryMeasure(v) }
            case "IFCNONNEGATIVELENGTHMEASURE": if let v = inner.realValue { return .nonNegativeLengthMeasure(v) }
            case "IFCNORMALISEDRATIOMEASURE": if let v = inner.realValue { return .normalisedRatioMeasure(v) }
            case "IFCNUMERICMEASURE": if let v = inner.realValue { return .numericMeasure(v) }
            case "IFCPHMEASURE": if let v = inner.realValue { return .pHMeasure(v) }
            case "IFCPARAMETERVALUE": if let v = inner.realValue { return .parameterValue(v) }
            case "IFCPLANARFORCEMEASURE": if let v = inner.realValue { return .planarForceMeasure(v) }
            case "IFCPLANEANGLEMEASURE": if let v = inner.realValue { return .planeAngleMeasure(v) }
            case "IFCPOSITIVEINTEGER": if let v = inner.integerValue { return .positiveInteger(v) }
            case "IFCPOSITIVELENGTHMEASURE": if let v = inner.realValue { return .positiveLengthMeasure(v) }
            case "IFCPOSITIVEPLANEANGLEMEASURE": if let v = inner.realValue { return .positivePlaneAngleMeasure(v) }
            case "IFCPOSITIVERATIOMEASURE": if let v = inner.realValue { return .positiveRatioMeasure(v) }
            case "IFCPOWERMEASURE": if let v = inner.realValue { return .powerMeasure(v) }
            case "IFCPRESSUREMEASURE": if let v = inner.realValue { return .pressureMeasure(v) }
            case "IFCRADIOACTIVITYMEASURE": if let v = inner.realValue { return .radioActivityMeasure(v) }
            case "IFCRATIOMEASURE": if let v = inner.realValue { return .ratioMeasure(v) }
            case "IFCREAL": if let v = inner.realValue { return .real(v) }
            case "IFCROTATIONALFREQUENCYMEASURE": if let v = inner.realValue { return .rotationalFrequencyMeasure(v) }
            case "IFCROTATIONALMASSMEASURE": if let v = inner.realValue { return .rotationalMassMeasure(v) }
            case "IFCROTATIONALSTIFFNESSMEASURE": if let v = inner.realValue { return .rotationalStiffnessMeasure(v) }
            case "IFCSECTIONMODULUSMEASURE": if let v = inner.realValue { return .sectionModulusMeasure(v) }
            case "IFCSECTIONALAREAINTEGRALMEASURE": if let v = inner.realValue { return .sectionalAreaIntegralMeasure(v) }
            case "IFCSHEARMODULUSMEASURE": if let v = inner.realValue { return .shearModulusMeasure(v) }
            case "IFCSOLIDANGLEMEASURE": if let v = inner.realValue { return .solidAngleMeasure(v) }
            case "IFCSOUNDPOWERLEVELMEASURE": if let v = inner.realValue { return .soundPowerLevelMeasure(v) }
            case "IFCSOUNDPOWERMEASURE": if let v = inner.realValue { return .soundPowerMeasure(v) }
            case "IFCSOUNDPRESSURELEVELMEASURE": if let v = inner.realValue { return .soundPressureLevelMeasure(v) }
            case "IFCSOUNDPRESSUREMEASURE": if let v = inner.realValue { return .soundPressureMeasure(v) }
            case "IFCSPECIFICHEATCAPACITYMEASURE": if let v = inner.realValue { return .specificHeatCapacityMeasure(v) }
            case "IFCTEMPERATUREGRADIENTMEASURE": if let v = inner.realValue { return .temperatureGradientMeasure(v) }
            case "IFCTEMPERATURERATEOFCHANGEMEASURE": if let v = inner.realValue { return .temperatureRateOfChangeMeasure(v) }
            case "IFCTEXT": if let v = inner.stringValue { return .text(v) }
            case "IFCTHERMALADMITTANCEMEASURE": if let v = inner.realValue { return .thermalAdmittanceMeasure(v) }
            case "IFCTHERMALCONDUCTIVITYMEASURE": if let v = inner.realValue { return .thermalConductivityMeasure(v) }
            case "IFCTHERMALEXPANSIONCOEFFICIENTMEASURE": if let v = inner.realValue { return .thermalExpansionCoefficientMeasure(v) }
            case "IFCTHERMALRESISTANCEMEASURE": if let v = inner.realValue { return .thermalResistanceMeasure(v) }
            case "IFCTHERMALTRANSMITTANCEMEASURE": if let v = inner.realValue { return .thermalTransmittanceMeasure(v) }
            case "IFCTHERMODYNAMICTEMPERATUREMEASURE": if let v = inner.realValue { return .thermodynamicTemperatureMeasure(v) }
            case "IFCTIME": if let v = inner.stringValue { return .time(v) }
            case "IFCTIMEMEASURE": if let v = inner.realValue { return .timeMeasure(v) }
            case "IFCTIMESTAMP": if let v = inner.integerValue { return .timeStamp(v) }
            case "IFCTORQUEMEASURE": if let v = inner.realValue { return .torqueMeasure(v) }
            case "IFCURIREFERENCE": if let v = inner.stringValue { return .uRIReference(v) }
            case "IFCVAPORPERMEABILITYMEASURE": if let v = inner.realValue { return .vaporPermeabilityMeasure(v) }
            case "IFCVOLUMEMEASURE": if let v = inner.realValue { return .volumeMeasure(v) }
            case "IFCVOLUMETRICFLOWRATEMEASURE": if let v = inner.realValue { return .volumetricFlowRateMeasure(v) }
            case "IFCWARPINGCONSTANTMEASURE": if let v = inner.realValue { return .warpingConstantMeasure(v) }
            case "IFCWARPINGMOMENTMEASURE": if let v = inner.realValue { return .warpingMomentMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

extension IFC4X3.IfcVectorOrDirection {
    public func stepEncode() -> STEPValue {
        switch self {
        case .direction(let e): return .entityRef(e)
        case .vector(let e): return .entityRef(e)
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if let entity = value.entityValue {
            if let v = entity as? IFC4X3.IfcDirection { return .direction(v) }
            if let v = entity as? IFC4X3.IfcVector { return .vector(v) }
        }
        return nil
    }
}

extension IFC4X3.IfcWarpingStiffnessSelect {
    public func stepEncode() -> STEPValue {
        switch self {
        case .boolean(let v): return .select(typeName: "IFCBOOLEAN", value: .boolean(v))
        case .warpingMomentMeasure(let v): return .select(typeName: "IFCWARPINGMOMENTMEASURE", value: .real(v))
        }
    }

    public static func stepDecode(_ value: STEPValue) -> Self? {
        if case .select(let typeName, let inner) = value {
            switch typeName {
            case "IFCBOOLEAN": if let v = inner.boolValue { return .boolean(v) }
            case "IFCWARPINGMOMENTMEASURE": if let v = inner.realValue { return .warpingMomentMeasure(v) }
            default: break
            }
        }
        return nil
    }
}

