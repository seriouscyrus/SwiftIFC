// IFCEnumerations.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public enum IfcActionRequestTypeEnum: String, Sendable, Codable, CaseIterable {
        case email
        case fax
        case phone
        case post
        case verbal
        case userdefined
        case notdefined
    }

    public enum IfcActionSourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case brakes
        case buoyancy
        case completion_g1
        case creep
        case current
        case dead_load_g
        case earthquake_e
        case erection
        case fire
        case ice
        case impact
        case impulse
        case lack_of_fit
        case live_load_q
        case prestressing_p
        case propping
        case rain
        case settlement_u
        case shrinkage
        case snow_s
        case system_imperfection
        case temperature_t
        case transport
        case wave
        case wind_w
        case userdefined
        case notdefined
    }

    public enum IfcActionTypeEnum: String, Sendable, Codable, CaseIterable {
        case extraordinary_a
        case permanent_g
        case variable_q
        case userdefined
        case notdefined
    }

    public enum IfcActuatorTypeEnum: String, Sendable, Codable, CaseIterable {
        case electricactuator
        case handoperatedactuator
        case hydraulicactuator
        case pneumaticactuator
        case thermostaticactuator
        case userdefined
        case notdefined
    }

    public enum IfcAddressTypeEnum: String, Sendable, Codable, CaseIterable {
        case distributionpoint
        case home
        case office
        case site
        case userdefined
    }

    public enum IfcAirTerminalBoxTypeEnum: String, Sendable, Codable, CaseIterable {
        case constantflow
        case variableflowpressuredependant
        case variableflowpressureindependant
        case userdefined
        case notdefined
    }

    public enum IfcAirTerminalTypeEnum: String, Sendable, Codable, CaseIterable {
        case diffuser
        case grille
        case louvre
        case register
        case userdefined
        case notdefined
    }

    public enum IfcAirToAirHeatRecoveryTypeEnum: String, Sendable, Codable, CaseIterable {
        case fixedplatecounterflowexchanger
        case fixedplatecrossflowexchanger
        case fixedplateparallelflowexchanger
        case heatpipe
        case rotarywheel
        case runaroundcoilloop
        case thermosiphoncoiltypeheatexchangers
        case thermosiphonsealedtubeheatexchangers
        case twintowerenthalpyrecoveryloops
        case userdefined
        case notdefined
    }

    public enum IfcAlarmTypeEnum: String, Sendable, Codable, CaseIterable {
        case bell
        case breakglassbutton
        case light
        case manualpullbox
        case railwaycrocodile
        case railwaydetonator
        case siren
        case whistle
        case userdefined
        case notdefined
    }

    public enum IfcAlignmentCantSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case blosscurve
        case constantcant
        case cosinecurve
        case helmertcurve
        case lineartransition
        case sinecurve
        case viennesebend
    }

    public enum IfcAlignmentHorizontalSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case blosscurve
        case circulararc
        case clothoid
        case cosinecurve
        case cubic
        case helmertcurve
        case line
        case sinecurve
        case viennesebend
    }

    public enum IfcAlignmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcAlignmentVerticalSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case circulararc
        case clothoid
        case constantgradient
        case parabolicarc
    }

    public enum IfcAnalysisModelTypeEnum: String, Sendable, Codable, CaseIterable {
        case in_plane_loading_2d
        case loading_3d
        case out_plane_loading_2d
        case userdefined
        case notdefined
    }

    public enum IfcAnalysisTheoryTypeEnum: String, Sendable, Codable, CaseIterable {
        case first_order_theory
        case full_nonlinear_theory
        case second_order_theory
        case third_order_theory
        case userdefined
        case notdefined
    }

    public enum IfcAnnotationTypeEnum: String, Sendable, Codable, CaseIterable {
        case contourline
        case dimension
        case isobar
        case isolux
        case isotherm
        case leader
        case survey
        case symbol
        case text
        case userdefined
        case notdefined
    }

    public enum IfcArithmeticOperatorEnum: String, Sendable, Codable, CaseIterable {
        case add
        case divide
        case modulo
        case multiply
        case subtract
    }

    public enum IfcAssemblyPlaceEnum: String, Sendable, Codable, CaseIterable {
        case factory
        case site
        case notdefined
    }

    public enum IfcAudioVisualApplianceTypeEnum: String, Sendable, Codable, CaseIterable {
        case amplifier
        case camera
        case communicationterminal
        case display
        case microphone
        case player
        case projector
        case receiver
        case recordingequipment
        case speaker
        case switcher
        case telephone
        case tuner
        case userdefined
        case notdefined
    }

    public enum IfcBSplineCurveForm: String, Sendable, Codable, CaseIterable {
        case circular_arc
        case elliptic_arc
        case hyperbolic_arc
        case parabolic_arc
        case polyline_form
        case unspecified
    }

    public enum IfcBSplineSurfaceForm: String, Sendable, Codable, CaseIterable {
        case conical_surf
        case cylindrical_surf
        case generalised_cone
        case plane_surf
        case quadric_surf
        case ruled_surf
        case spherical_surf
        case surf_of_linear_extrusion
        case surf_of_revolution
        case toroidal_surf
        case unspecified
    }

    public enum IfcBeamTypeEnum: String, Sendable, Codable, CaseIterable {
        case beam
        case cornice
        case diaphragm
        case edgebeam
        case girder_segment
        case hatstone
        case hollowcore
        case joist
        case lintel
        case piercap
        case spandrel
        case t_beam
        case userdefined
        case notdefined
    }

    public enum IfcBearingTypeEnum: String, Sendable, Codable, CaseIterable {
        case cylindrical
        case disk
        case elastomeric
        case guide
        case pot
        case rocker
        case roller
        case spherical
        case userdefined
        case notdefined
    }

    public enum IfcBenchmarkEnum: String, Sendable, Codable, CaseIterable {
        case equalto
        case greaterthan
        case greaterthanorequalto
        case includedin
        case includes
        case lessthan
        case lessthanorequalto
        case notequalto
        case notincludedin
        case notincludes
    }

    public enum IfcBoilerTypeEnum: String, Sendable, Codable, CaseIterable {
        case steam
        case water
        case userdefined
        case notdefined
    }

    public enum IfcBooleanOperator: String, Sendable, Codable, CaseIterable {
        case difference
        case intersection
        case union
    }

    public enum IfcBridgePartTypeEnum: String, Sendable, Codable, CaseIterable {
        case abutment
        case deck
        case deck_segment
        case foundation
        case pier
        case pier_segment
        case pylon
        case substructure
        case superstructure
        case surfacestructure
        case userdefined
        case notdefined
    }

    public enum IfcBridgeTypeEnum: String, Sendable, Codable, CaseIterable {
        case arched
        case cable_stayed
        case cantilever
        case culvert
        case framework
        case girder
        case suspension
        case truss
        case userdefined
        case notdefined
    }

    public enum IfcBuildingElementPartTypeEnum: String, Sendable, Codable, CaseIterable {
        case apron
        case armourunit
        case insulation
        case precastpanel
        case safetycage
        case userdefined
        case notdefined
    }

    public enum IfcBuildingElementProxyTypeEnum: String, Sendable, Codable, CaseIterable {
        case complex
        case element
        case partial
        case provisionforspace
        case provisionforvoid
        case userdefined
        case notdefined
    }

    public enum IfcBuildingSystemTypeEnum: String, Sendable, Codable, CaseIterable {
        case fenestration
        case foundation
        case loadbearing
        case outershell
        case shading
        case transport
        case userdefined
        case notdefined
    }

    public enum IfcBuiltSystemTypeEnum: String, Sendable, Codable, CaseIterable {
        case erosionprevention
        case fenestration
        case foundation
        case loadbearing
        case mooring
        case outershell
        case prestressing
        case railwayline
        case railwaytrack
        case reinforcing
        case shading
        case trackcircuit
        case transport
        case userdefined
        case notdefined
    }

    public enum IfcBurnerTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcCableCarrierFittingTypeEnum: String, Sendable, Codable, CaseIterable {
        case bend
        case connector
        case cross
        case junction
        case reducer
        case tee
        case transition
        case userdefined
        case notdefined
    }

    public enum IfcCableCarrierSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case cablebracket
        case cableladdersegment
        case cabletraysegment
        case cabletrunkingsegment
        case catenarywire
        case conduitsegment
        case dropper
        case userdefined
        case notdefined
    }

    public enum IfcCableFittingTypeEnum: String, Sendable, Codable, CaseIterable {
        case connector
        case entry
        case exit
        case fanout
        case junction
        case transition
        case userdefined
        case notdefined
    }

    public enum IfcCableSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case busbarsegment
        case cablesegment
        case conductorsegment
        case contactwiresegment
        case coresegment
        case fibersegment
        case fibertube
        case opticalcablesegment
        case stitchwire
        case wirepairsegment
        case userdefined
        case notdefined
    }

    public enum IfcCaissonFoundationTypeEnum: String, Sendable, Codable, CaseIterable {
        case caisson
        case well
        case userdefined
        case notdefined
    }

    public enum IfcChangeActionEnum: String, Sendable, Codable, CaseIterable {
        case added
        case deleted
        case modified
        case nochange
        case notdefined
    }

    public enum IfcChillerTypeEnum: String, Sendable, Codable, CaseIterable {
        case aircooled
        case heatrecovery
        case watercooled
        case userdefined
        case notdefined
    }

    public enum IfcChimneyTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcCoilTypeEnum: String, Sendable, Codable, CaseIterable {
        case dxcoolingcoil
        case electricheatingcoil
        case gasheatingcoil
        case hydroniccoil
        case steamheatingcoil
        case watercoolingcoil
        case waterheatingcoil
        case userdefined
        case notdefined
    }

    public enum IfcColumnTypeEnum: String, Sendable, Codable, CaseIterable {
        case column
        case pierstem
        case pierstem_segment
        case pilaster
        case standcolumn
        case userdefined
        case notdefined
    }

    public enum IfcCommunicationsApplianceTypeEnum: String, Sendable, Codable, CaseIterable {
        case antenna
        case automaton
        case computer
        case fax
        case gateway
        case intelligentperipheral
        case ipnetworkequipment
        case linesideelectronicunit
        case modem
        case networkappliance
        case networkbridge
        case networkhub
        case opticallineterminal
        case opticalnetworkunit
        case printer
        case radioblockcenter
        case repeater
        case router
        case scanner
        case telecommand
        case telephonyexchange
        case transitioncomponent
        case transponder
        case transportequipment
        case userdefined
        case notdefined
    }

    public enum IfcComplexPropertyTemplateTypeEnum: String, Sendable, Codable, CaseIterable {
        case p_complex
        case q_complex
    }

    public enum IfcCompressorTypeEnum: String, Sendable, Codable, CaseIterable {
        case booster
        case dynamic
        case hermetic
        case opentype
        case reciprocating
        case rollingpiston
        case rotary
        case rotaryvane
        case scroll
        case semihermetic
        case singlescrew
        case singlestage
        case trochoidal
        case twinscrew
        case weldedshellhermetic
        case userdefined
        case notdefined
    }

    public enum IfcCondenserTypeEnum: String, Sendable, Codable, CaseIterable {
        case aircooled
        case evaporativecooled
        case watercooled
        case watercooledbrazedplate
        case watercooledshellcoil
        case watercooledshelltube
        case watercooledtubeintube
        case userdefined
        case notdefined
    }

    public enum IfcConnectionTypeEnum: String, Sendable, Codable, CaseIterable {
        case atend
        case atpath
        case atstart
        case notdefined
    }

    public enum IfcConstraintEnum: String, Sendable, Codable, CaseIterable {
        case advisory
        case hard
        case soft
        case userdefined
        case notdefined
    }

    public enum IfcConstructionEquipmentResourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case demolishing
        case earthmoving
        case erecting
        case heating
        case lighting
        case paving
        case pumping
        case transporting
        case userdefined
        case notdefined
    }

    public enum IfcConstructionMaterialResourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case aggregates
        case concrete
        case drywall
        case fuel
        case gypsum
        case masonry
        case metal
        case plastic
        case wood
        case userdefined
        case notdefined
    }

    public enum IfcConstructionProductResourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case assembly
        case formwork
        case userdefined
        case notdefined
    }

    public enum IfcControllerTypeEnum: String, Sendable, Codable, CaseIterable {
        case floating
        case multiposition
        case programmable
        case proportional
        case twoposition
        case userdefined
        case notdefined
    }

    public enum IfcConveyorSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case beltconveyor
        case bucketconveyor
        case chuteconveyor
        case screwconveyor
        case userdefined
        case notdefined
    }

    public enum IfcCooledBeamTypeEnum: String, Sendable, Codable, CaseIterable {
        case active
        case passive
        case userdefined
        case notdefined
    }

    public enum IfcCoolingTowerTypeEnum: String, Sendable, Codable, CaseIterable {
        case mechanicalforceddraft
        case mechanicalinduceddraft
        case naturaldraft
        case userdefined
        case notdefined
    }

    public enum IfcCostItemTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcCostScheduleTypeEnum: String, Sendable, Codable, CaseIterable {
        case budget
        case costplan
        case estimate
        case pricedbillofquantities
        case scheduleofrates
        case tender
        case unpricedbillofquantities
        case userdefined
        case notdefined
    }

    public enum IfcCourseTypeEnum: String, Sendable, Codable, CaseIterable {
        case armour
        case ballastbed
        case core
        case filter
        case pavement
        case protection
        case userdefined
        case notdefined
    }

    public enum IfcCoveringTypeEnum: String, Sendable, Codable, CaseIterable {
        case ceiling
        case cladding
        case coping
        case flooring
        case insulation
        case membrane
        case molding
        case roofing
        case skirtingboard
        case sleeving
        case topping
        case wrapping
        case userdefined
        case notdefined
    }

    public enum IfcCrewResourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case office
        case site
        case userdefined
        case notdefined
    }

    public enum IfcCurtainWallTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcCurveInterpolationEnum: String, Sendable, Codable, CaseIterable {
        case linear
        case log_linear
        case log_log
        case notdefined
    }

    public enum IfcDamperTypeEnum: String, Sendable, Codable, CaseIterable {
        case backdraftdamper
        case balancingdamper
        case blastdamper
        case controldamper
        case firedamper
        case firesmokedamper
        case fumehoodexhaust
        case gravitydamper
        case gravityreliefdamper
        case reliefdamper
        case smokedamper
        case userdefined
        case notdefined
    }

    public enum IfcDataOriginEnum: String, Sendable, Codable, CaseIterable {
        case measured
        case predicted
        case simulated
        case userdefined
        case notdefined
    }

    public enum IfcDerivedUnitEnum: String, Sendable, Codable, CaseIterable {
        case accelerationunit
        case angularvelocityunit
        case areadensityunit
        case compoundplaneangleunit
        case curvatureunit
        case dynamicviscosityunit
        case heatfluxdensityunit
        case heatingvalueunit
        case integercountrateunit
        case ionconcentrationunit
        case isothermalmoisturecapacityunit
        case kinematicviscosityunit
        case linearforceunit
        case linearmomentunit
        case linearstiffnessunit
        case linearvelocityunit
        case luminousintensitydistributionunit
        case massdensityunit
        case massflowrateunit
        case massperlengthunit
        case modulusofelasticityunit
        case modulusoflinearsubgradereactionunit
        case modulusofrotationalsubgradereactionunit
        case modulusofsubgradereactionunit
        case moisturediffusivityunit
        case molecularweightunit
        case momentofinertiaunit
        case phunit
        case planarforceunit
        case rotationalfrequencyunit
        case rotationalmassunit
        case rotationalstiffnessunit
        case sectionareaintegralunit
        case sectionmodulusunit
        case shearmodulusunit
        case soundpowerlevelunit
        case soundpowerunit
        case soundpressurelevelunit
        case soundpressureunit
        case specificheatcapacityunit
        case temperaturegradientunit
        case temperaturerateofchangeunit
        case thermaladmittanceunit
        case thermalconductanceunit
        case thermalexpansioncoefficientunit
        case thermalresistanceunit
        case thermaltransmittanceunit
        case torqueunit
        case vaporpermeabilityunit
        case volumetricflowrateunit
        case warpingconstantunit
        case warpingmomentunit
        case userdefined
    }

    public enum IfcDirectionSenseEnum: String, Sendable, Codable, CaseIterable {
        case negative
        case positive
    }

    public enum IfcDiscreteAccessoryTypeEnum: String, Sendable, Codable, CaseIterable {
        case anchorplate
        case birdprotection
        case bracket
        case cablearranger
        case elastic_cushion
        case expansion_joint_device
        case filler
        case flashing
        case insulator
        case lock
        case panel_strengthening
        case pointmachinemountingdevice
        case point_machine_locking_device
        case railbrace
        case railpad
        case rail_lubrication
        case rail_mechanical_equipment
        case shoe
        case slidingchair
        case soundabsorption
        case tensioningequipment
        case userdefined
        case notdefined
    }

    public enum IfcDistributionBoardTypeEnum: String, Sendable, Codable, CaseIterable {
        case consumerunit
        case dispatchingboard
        case distributionboard
        case distributionframe
        case motorcontrolcentre
        case switchboard
        case userdefined
        case notdefined
    }

    public enum IfcDistributionChamberElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case formedduct
        case inspectionchamber
        case inspectionpit
        case manhole
        case meterchamber
        case sump
        case trench
        case valvechamber
        case userdefined
        case notdefined
    }

    public enum IfcDistributionPortTypeEnum: String, Sendable, Codable, CaseIterable {
        case cable
        case cablecarrier
        case duct
        case pipe
        case wireless
        case userdefined
        case notdefined
    }

    public enum IfcDistributionSystemEnum: String, Sendable, Codable, CaseIterable {
        case airconditioning
        case audiovisual
        case catenary_system
        case chemical
        case chilledwater
        case communication
        case compressedair
        case condenserwater
        case control
        case conveying
        case data
        case disposal
        case domesticcoldwater
        case domestichotwater
        case drainage
        case earthing
        case electrical
        case electroacoustic
        case exhaust
        case fireprotection
        case fixedtransmissionnetwork
        case fuel
        case gas
        case hazardous
        case heating
        case lighting
        case lightningprotection
        case mobilenetwork
        case monitoringsystem
        case municipalsolidwaste
        case oil
        case operational
        case operationaltelephonysystem
        case overhead_contactline_system
        case powergeneration
        case rainwater
        case refrigeration
        case return_circuit
        case security
        case sewage
        case signal
        case stormwater
        case telephone
        case tv
        case vacuum
        case vent
        case ventilation
        case wastewater
        case watersupply
        case userdefined
        case notdefined
    }

    public enum IfcDocumentConfidentialityEnum: String, Sendable, Codable, CaseIterable {
        case confidential
        case personal
        case `public` = "public"
        case restricted
        case userdefined
        case notdefined
    }

    public enum IfcDocumentStatusEnum: String, Sendable, Codable, CaseIterable {
        case draft
        case final
        case finaldraft
        case revision
        case notdefined
    }

    public enum IfcDoorPanelOperationEnum: String, Sendable, Codable, CaseIterable {
        case double_acting
        case fixedpanel
        case folding
        case revolving
        case rollingup
        case sliding
        case swinging
        case userdefined
        case notdefined
    }

    public enum IfcDoorPanelPositionEnum: String, Sendable, Codable, CaseIterable {
        case left
        case middle
        case right
        case notdefined
    }

    public enum IfcDoorTypeEnum: String, Sendable, Codable, CaseIterable {
        case boom_barrier
        case door
        case gate
        case trapdoor
        case turnstile
        case userdefined
        case notdefined
    }

    public enum IfcDoorTypeOperationEnum: String, Sendable, Codable, CaseIterable {
        case double_door_double_swing
        case double_door_folding
        case double_door_lifting_vertical
        case double_door_single_swing
        case double_door_single_swing_opposite_left
        case double_door_single_swing_opposite_right
        case double_door_sliding
        case double_swing_left
        case double_swing_right
        case folding_to_left
        case folding_to_right
        case lifting_horizontal
        case lifting_vertical_left
        case lifting_vertical_right
        case revolving
        case revolving_vertical
        case rollingup
        case single_swing_left
        case single_swing_right
        case sliding_to_left
        case sliding_to_right
        case swing_fixed_left
        case swing_fixed_right
        case userdefined
        case notdefined
    }

    public enum IfcDuctFittingTypeEnum: String, Sendable, Codable, CaseIterable {
        case bend
        case connector
        case entry
        case exit
        case junction
        case obstruction
        case transition
        case userdefined
        case notdefined
    }

    public enum IfcDuctSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case flexiblesegment
        case rigidsegment
        case userdefined
        case notdefined
    }

    public enum IfcDuctSilencerTypeEnum: String, Sendable, Codable, CaseIterable {
        case flatoval
        case rectangular
        case round
        case userdefined
        case notdefined
    }

    public enum IfcEarthworksCutTypeEnum: String, Sendable, Codable, CaseIterable {
        case base_excavation
        case cut
        case dredging
        case excavation
        case overexcavation
        case pavementmilling
        case stepexcavation
        case topsoilremoval
        case trench
        case userdefined
        case notdefined
    }

    public enum IfcEarthworksFillTypeEnum: String, Sendable, Codable, CaseIterable {
        case backfill
        case counterweight
        case embankment
        case slopefill
        case subgrade
        case subgradebed
        case transitionsection
        case userdefined
        case notdefined
    }

    public enum IfcElectricApplianceTypeEnum: String, Sendable, Codable, CaseIterable {
        case dishwasher
        case electriccooker
        case freestandingelectricheater
        case freestandingfan
        case freestandingwatercooler
        case freestandingwaterheater
        case freezer
        case fridge_freezer
        case handdryer
        case kitchenmachine
        case microwave
        case photocopier
        case refrigerator
        case tumbledryer
        case vendingmachine
        case washingmachine
        case userdefined
        case notdefined
    }

    public enum IfcElectricDistributionBoardTypeEnum: String, Sendable, Codable, CaseIterable {
        case consumerunit
        case distributionboard
        case motorcontrolcentre
        case switchboard
        case userdefined
        case notdefined
    }

    public enum IfcElectricFlowStorageDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case battery
        case capacitor
        case capacitorbank
        case compensator
        case harmonicfilter
        case inductor
        case inductorbank
        case recharger
        case ups
        case userdefined
        case notdefined
    }

    public enum IfcElectricFlowTreatmentDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case electronicfilter
        case userdefined
        case notdefined
    }

    public enum IfcElectricGeneratorTypeEnum: String, Sendable, Codable, CaseIterable {
        case chp
        case enginegenerator
        case standalone
        case userdefined
        case notdefined
    }

    public enum IfcElectricMotorTypeEnum: String, Sendable, Codable, CaseIterable {
        case dc
        case induction
        case polyphase
        case reluctancesynchronous
        case synchronous
        case userdefined
        case notdefined
    }

    public enum IfcElectricTimeControlTypeEnum: String, Sendable, Codable, CaseIterable {
        case relay
        case timeclock
        case timedelay
        case userdefined
        case notdefined
    }

    public enum IfcElementAssemblyTypeEnum: String, Sendable, Codable, CaseIterable {
        case abutment
        case accessory_assembly
        case arch
        case beam_grid
        case braced_frame
        case cross_bracing
        case deck
        case dilatationpanel
        case entranceworks
        case girder
        case grid
        case mast
        case pier
        case pylon
        case rail_mechanical_equipment_assembly
        case reinforcement_unit
        case rigid_frame
        case shelter
        case signalassembly
        case slab_field
        case sumpbuster
        case supportingassembly
        case suspensionassembly
        case trackpanel
        case traction_switching_assembly
        case traffic_calming_device
        case truss
        case turnoutpanel
        case userdefined
        case notdefined
    }

    public enum IfcElementCompositionEnum: String, Sendable, Codable, CaseIterable {
        case complex
        case element
        case partial
    }

    public enum IfcEngineTypeEnum: String, Sendable, Codable, CaseIterable {
        case externalcombustion
        case internalcombustion
        case userdefined
        case notdefined
    }

    public enum IfcEvaporativeCoolerTypeEnum: String, Sendable, Codable, CaseIterable {
        case directevaporativeairwasher
        case directevaporativepackagedrotaryaircooler
        case directevaporativerandommediaaircooler
        case directevaporativerigidmediaaircooler
        case directevaporativeslingerspackagedaircooler
        case indirectdirectcombination
        case indirectevaporativecoolingtowerorcoilcooler
        case indirectevaporativepackageaircooler
        case indirectevaporativewetcoil
        case userdefined
        case notdefined
    }

    public enum IfcEvaporatorTypeEnum: String, Sendable, Codable, CaseIterable {
        case directexpansion
        case directexpansionbrazedplate
        case directexpansionshellandtube
        case directexpansiontubeintube
        case floodedshellandtube
        case shellandcoil
        case userdefined
        case notdefined
    }

    public enum IfcEventTriggerTypeEnum: String, Sendable, Codable, CaseIterable {
        case eventcomplex
        case eventmessage
        case eventrule
        case eventtime
        case userdefined
        case notdefined
    }

    public enum IfcEventTypeEnum: String, Sendable, Codable, CaseIterable {
        case endevent
        case intermediateevent
        case startevent
        case userdefined
        case notdefined
    }

    public enum IfcExternalSpatialElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case external
        case external_earth
        case external_fire
        case external_water
        case userdefined
        case notdefined
    }

    public enum IfcFacilityPartCommonTypeEnum: String, Sendable, Codable, CaseIterable {
        case aboveground
        case belowground
        case junction
        case levelcrossing
        case segment
        case substructure
        case superstructure
        case terminal
        case userdefined
        case notdefined
    }

    public enum IfcFacilityUsageEnum: String, Sendable, Codable, CaseIterable {
        case lateral
        case longitudinal
        case region
        case vertical
        case userdefined
        case notdefined
    }

    public enum IfcFanTypeEnum: String, Sendable, Codable, CaseIterable {
        case centrifugalairfoil
        case centrifugalbackwardinclinedcurved
        case centrifugalforwardcurved
        case centrifugalradial
        case propelloraxial
        case tubeaxial
        case vaneaxial
        case userdefined
        case notdefined
    }

    public enum IfcFastenerTypeEnum: String, Sendable, Codable, CaseIterable {
        case glue
        case mortar
        case weld
        case userdefined
        case notdefined
    }

    public enum IfcFilterTypeEnum: String, Sendable, Codable, CaseIterable {
        case airparticlefilter
        case compressedairfilter
        case odorfilter
        case oilfilter
        case strainer
        case waterfilter
        case userdefined
        case notdefined
    }

    public enum IfcFireSuppressionTerminalTypeEnum: String, Sendable, Codable, CaseIterable {
        case breechinginlet
        case firehydrant
        case firemonitor
        case hosereel
        case sprinkler
        case sprinklerdeflector
        case userdefined
        case notdefined
    }

    public enum IfcFlowDirectionEnum: String, Sendable, Codable, CaseIterable {
        case sink
        case source
        case sourceandsink
        case notdefined
    }

    public enum IfcFlowInstrumentTypeEnum: String, Sendable, Codable, CaseIterable {
        case ammeter
        case combined
        case frequencymeter
        case phaseanglemeter
        case powerfactormeter
        case pressuregauge
        case thermometer
        case voltmeter
        case voltmeter_peak
        case voltmeter_rms
        case userdefined
        case notdefined
    }

    public enum IfcFlowMeterTypeEnum: String, Sendable, Codable, CaseIterable {
        case energymeter
        case gasmeter
        case oilmeter
        case watermeter
        case userdefined
        case notdefined
    }

    public enum IfcFootingTypeEnum: String, Sendable, Codable, CaseIterable {
        case caisson_foundation
        case footing_beam
        case pad_footing
        case pile_cap
        case strip_footing
        case userdefined
        case notdefined
    }

    public enum IfcFurnitureTypeEnum: String, Sendable, Codable, CaseIterable {
        case bed
        case chair
        case desk
        case filecabinet
        case shelf
        case sofa
        case table
        case technicalcabinet
        case userdefined
        case notdefined
    }

    public enum IfcGeographicElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case soil_boring_point
        case terrain
        case vegetation
        case userdefined
        case notdefined
    }

    public enum IfcGeometricProjectionEnum: String, Sendable, Codable, CaseIterable {
        case elevation_view
        case graph_view
        case model_view
        case plan_view
        case reflected_plan_view
        case section_view
        case sketch_view
        case userdefined
        case notdefined
    }

    public enum IfcGeotechnicalStratumTypeEnum: String, Sendable, Codable, CaseIterable {
        case solid
        case void
        case water
        case userdefined
        case notdefined
    }

    public enum IfcGlobalOrLocalEnum: String, Sendable, Codable, CaseIterable {
        case global_coords
        case local_coords
    }

    public enum IfcGridTypeEnum: String, Sendable, Codable, CaseIterable {
        case irregular
        case radial
        case rectangular
        case triangular
        case userdefined
        case notdefined
    }

    public enum IfcHeatExchangerTypeEnum: String, Sendable, Codable, CaseIterable {
        case plate
        case shellandtube
        case turnoutheating
        case userdefined
        case notdefined
    }

    public enum IfcHumidifierTypeEnum: String, Sendable, Codable, CaseIterable {
        case adiabaticairwasher
        case adiabaticatomizing
        case adiabaticcompressedairnozzle
        case adiabaticpan
        case adiabaticrigidmedia
        case adiabaticultrasonic
        case adiabaticwettedelement
        case assistedbutane
        case assistedelectric
        case assistednaturalgas
        case assistedpropane
        case assistedsteam
        case steaminjection
        case userdefined
        case notdefined
    }

    public enum IfcImpactProtectionDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case bumper
        case crashcushion
        case dampingsystem
        case fender
        case userdefined
        case notdefined
    }

    public enum IfcInterceptorTypeEnum: String, Sendable, Codable, CaseIterable {
        case cyclonic
        case grease
        case oil
        case petrol
        case userdefined
        case notdefined
    }

    public enum IfcInternalOrExternalEnum: String, Sendable, Codable, CaseIterable {
        case external
        case external_earth
        case external_fire
        case external_water
        case `internal` = "internal"
        case notdefined
    }

    public enum IfcInventoryTypeEnum: String, Sendable, Codable, CaseIterable {
        case assetinventory
        case furnitureinventory
        case spaceinventory
        case userdefined
        case notdefined
    }

    public enum IfcJunctionBoxTypeEnum: String, Sendable, Codable, CaseIterable {
        case data
        case power
        case userdefined
        case notdefined
    }

    public enum IfcKerbTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcKnotType: String, Sendable, Codable, CaseIterable {
        case piecewise_bezier_knots
        case quasi_uniform_knots
        case uniform_knots
        case unspecified
    }

    public enum IfcLaborResourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case administration
        case carpentry
        case cleaning
        case concrete
        case drywall
        case electric
        case finishing
        case flooring
        case general
        case hvac
        case landscaping
        case masonry
        case painting
        case paving
        case plumbing
        case roofing
        case sitegrading
        case steelwork
        case surveying
        case userdefined
        case notdefined
    }

    public enum IfcLampTypeEnum: String, Sendable, Codable, CaseIterable {
        case compactfluorescent
        case fluorescent
        case halogen
        case highpressuremercury
        case highpressuresodium
        case led
        case metalhalide
        case oled
        case tungstenfilament
        case userdefined
        case notdefined
    }

    public enum IfcLayerSetDirectionEnum: String, Sendable, Codable, CaseIterable {
        case axis1
        case axis2
        case axis3
    }

    public enum IfcLightDistributionCurveEnum: String, Sendable, Codable, CaseIterable {
        case type_a
        case type_b
        case type_c
        case notdefined
    }

    public enum IfcLightEmissionSourceEnum: String, Sendable, Codable, CaseIterable {
        case compactfluorescent
        case fluorescent
        case highpressuremercury
        case highpressuresodium
        case lightemittingdiode
        case lowpressuresodium
        case lowvoltagehalogen
        case mainvoltagehalogen
        case metalhalide
        case tungstenfilament
        case notdefined
    }

    public enum IfcLightFixtureTypeEnum: String, Sendable, Codable, CaseIterable {
        case directionsource
        case pointsource
        case securitylighting
        case userdefined
        case notdefined
    }

    public enum IfcLiquidTerminalTypeEnum: String, Sendable, Codable, CaseIterable {
        case hosereel
        case loadingarm
        case userdefined
        case notdefined
    }

    public enum IfcLoadGroupTypeEnum: String, Sendable, Codable, CaseIterable {
        case load_case
        case load_combination
        case load_group
        case userdefined
        case notdefined
    }

    public enum IfcLogicalOperatorEnum: String, Sendable, Codable, CaseIterable {
        case logicaland
        case logicalnotand
        case logicalnotor
        case logicalor
        case logicalxor
    }

    public enum IfcMarineFacilityTypeEnum: String, Sendable, Codable, CaseIterable {
        case barrierbeach
        case breakwater
        case canal
        case drydock
        case floatingdock
        case hydrolift
        case jetty
        case launchrecovery
        case marinedefence
        case navigationalchannel
        case port
        case quay
        case revetment
        case shiplift
        case shiplock
        case shipyard
        case slipway
        case waterway
        case waterwayshiplift
        case userdefined
        case notdefined
    }

    public enum IfcMarinePartTypeEnum: String, Sendable, Codable, CaseIterable {
        case abovewaterline
        case anchorage
        case approachchannel
        case belowwaterline
        case berthingstructure
        case chamber
        case cill_level
        case copelevel
        case core
        case crest
        case gatehead
        case gudingstructure
        case highwaterline
        case landfield
        case leewardside
        case lowwaterline
        case manufacturing
        case navigationalarea
        case protection
        case shiptransfer
        case storagearea
        case vehicleservicing
        case waterfield
        case weatherside
        case userdefined
        case notdefined
    }

    public enum IfcMechanicalFastenerTypeEnum: String, Sendable, Codable, CaseIterable {
        case anchorbolt
        case bolt
        case chain
        case coupler
        case dowel
        case nail
        case nailplate
        case railfastening
        case railjoint
        case rivet
        case rope
        case screw
        case shearconnector
        case staple
        case studshearconnector
        case userdefined
        case notdefined
    }

    public enum IfcMedicalDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case airstation
        case feedairunit
        case oxygengenerator
        case oxygenplant
        case vacuumstation
        case userdefined
        case notdefined
    }

    public enum IfcMemberTypeEnum: String, Sendable, Codable, CaseIterable {
        case arch_segment
        case brace
        case chord
        case collar
        case member
        case mullion
        case plate
        case post
        case purlin
        case rafter
        case stay_cable
        case stiffening_rib
        case stringer
        case structuralcable
        case strut
        case stud
        case suspender
        case suspension_cable
        case tiebar
        case userdefined
        case notdefined
    }

    public enum IfcMobileTelecommunicationsApplianceTypeEnum: String, Sendable, Codable, CaseIterable {
        case accesspoint
        case basebandunit
        case basetransceiverstation
        case e_utran_node_b
        case gateway_gprs_support_node
        case masterunit
        case mobileswitchingcenter
        case mscserver
        case packetcontrolunit
        case remoteradiounit
        case remoteunit
        case service_gprs_support_node
        case subscriberserver
        case userdefined
        case notdefined
    }

    public enum IfcMooringDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case bollard
        case linetensioner
        case magneticdevice
        case mooringhooks
        case vacuumdevice
        case userdefined
        case notdefined
    }

    public enum IfcMotorConnectionTypeEnum: String, Sendable, Codable, CaseIterable {
        case beltdrive
        case coupling
        case directdrive
        case userdefined
        case notdefined
    }

    public enum IfcNavigationElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case beacon
        case buoy
        case userdefined
        case notdefined
    }

    public enum IfcObjectiveEnum: String, Sendable, Codable, CaseIterable {
        case codecompliance
        case codewaiver
        case designintent
        case external
        case healthandsafety
        case mergeconflict
        case modelview
        case parameter
        case requirement
        case specification
        case triggercondition
        case userdefined
        case notdefined
    }

    public enum IfcOccupantTypeEnum: String, Sendable, Codable, CaseIterable {
        case assignee
        case assignor
        case lessee
        case lessor
        case lettingagent
        case owner
        case tenant
        case userdefined
        case notdefined
    }

    public enum IfcOpeningElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case opening
        case recess
        case userdefined
        case notdefined
    }

    public enum IfcOutletTypeEnum: String, Sendable, Codable, CaseIterable {
        case audiovisualoutlet
        case communicationsoutlet
        case dataoutlet
        case poweroutlet
        case telephoneoutlet
        case userdefined
        case notdefined
    }

    public enum IfcPavementTypeEnum: String, Sendable, Codable, CaseIterable {
        case flexible
        case rigid
        case userdefined
        case notdefined
    }

    public enum IfcPerformanceHistoryTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcPermeableCoveringOperationEnum: String, Sendable, Codable, CaseIterable {
        case grill
        case louver
        case screen
        case userdefined
        case notdefined
    }

    public enum IfcPermitTypeEnum: String, Sendable, Codable, CaseIterable {
        case access
        case building
        case work
        case userdefined
        case notdefined
    }

    public enum IfcPhysicalOrVirtualEnum: String, Sendable, Codable, CaseIterable {
        case physical
        case virtual
        case notdefined
    }

    public enum IfcPileConstructionEnum: String, Sendable, Codable, CaseIterable {
        case cast_in_place
        case composite
        case precast_concrete
        case prefab_steel
        case userdefined
        case notdefined
    }

    public enum IfcPileTypeEnum: String, Sendable, Codable, CaseIterable {
        case bored
        case cohesion
        case driven
        case friction
        case jetgrouting
        case support
        case userdefined
        case notdefined
    }

    public enum IfcPipeFittingTypeEnum: String, Sendable, Codable, CaseIterable {
        case bend
        case connector
        case entry
        case exit
        case junction
        case obstruction
        case transition
        case userdefined
        case notdefined
    }

    public enum IfcPipeSegmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case culvert
        case flexiblesegment
        case gutter
        case rigidsegment
        case spool
        case userdefined
        case notdefined
    }

    public enum IfcPlateTypeEnum: String, Sendable, Codable, CaseIterable {
        case base_plate
        case cover_plate
        case curtain_panel
        case flange_plate
        case gusset_plate
        case sheet
        case splice_plate
        case stiffener_plate
        case web_plate
        case userdefined
        case notdefined
    }

    public enum IfcPreferredSurfaceCurveRepresentation: String, Sendable, Codable, CaseIterable {
        case curve3d
        case pcurve_s1
        case pcurve_s2
    }

    public enum IfcProcedureTypeEnum: String, Sendable, Codable, CaseIterable {
        case advice_caution
        case advice_note
        case advice_warning
        case calibration
        case diagnostic
        case shutdown
        case startup
        case userdefined
        case notdefined
    }

    public enum IfcProfileTypeEnum: String, Sendable, Codable, CaseIterable {
        case area
        case curve
    }

    public enum IfcProjectOrderTypeEnum: String, Sendable, Codable, CaseIterable {
        case changeorder
        case maintenanceworkorder
        case moveorder
        case purchaseorder
        case workorder
        case userdefined
        case notdefined
    }

    public enum IfcProjectedOrTrueLengthEnum: String, Sendable, Codable, CaseIterable {
        case projected_length
        case true_length
    }

    public enum IfcProjectionElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case blister
        case deviator
        case userdefined
        case notdefined
    }

    public enum IfcPropertySetTemplateTypeEnum: String, Sendable, Codable, CaseIterable {
        case pset_materialdriven
        case pset_occurrencedriven
        case pset_performancedriven
        case pset_profiledriven
        case pset_typedrivenonly
        case pset_typedrivenoverride
        case qto_occurrencedriven
        case qto_typedrivenonly
        case qto_typedrivenoverride
        case notdefined
    }

    public enum IfcProtectiveDeviceTrippingUnitTypeEnum: String, Sendable, Codable, CaseIterable {
        case electromagnetic
        case electronic
        case residualcurrent
        case thermal
        case userdefined
        case notdefined
    }

    public enum IfcProtectiveDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case anti_arcing_device
        case circuitbreaker
        case earthingswitch
        case earthleakagecircuitbreaker
        case fusedisconnector
        case residualcurrentcircuitbreaker
        case residualcurrentswitch
        case sparkgap
        case varistor
        case voltagelimiter
        case userdefined
        case notdefined
    }

    public enum IfcPumpTypeEnum: String, Sendable, Codable, CaseIterable {
        case circulator
        case endsuction
        case splitcase
        case submersiblepump
        case sumppump
        case verticalinline
        case verticalturbine
        case userdefined
        case notdefined
    }

    public enum IfcRailTypeEnum: String, Sendable, Codable, CaseIterable {
        case blade
        case checkrail
        case guardrail
        case rackrail
        case rail
        case stockrail
        case userdefined
        case notdefined
    }

    public enum IfcRailingTypeEnum: String, Sendable, Codable, CaseIterable {
        case balustrade
        case fence
        case guardrail
        case handrail
        case userdefined
        case notdefined
    }

    public enum IfcRailwayPartTypeEnum: String, Sendable, Codable, CaseIterable {
        case abovetrack
        case dilationtrack
        case lineside
        case linesidepart
        case plaintrack
        case substructure
        case track
        case trackpart
        case turnouttrack
        case userdefined
        case notdefined
    }

    public enum IfcRailwayTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcRampFlightTypeEnum: String, Sendable, Codable, CaseIterable {
        case spiral
        case straight
        case userdefined
        case notdefined
    }

    public enum IfcRampTypeEnum: String, Sendable, Codable, CaseIterable {
        case half_turn_ramp
        case quarter_turn_ramp
        case spiral_ramp
        case straight_run_ramp
        case two_quarter_turn_ramp
        case two_straight_run_ramp
        case userdefined
        case notdefined
    }

    public enum IfcRecurrenceTypeEnum: String, Sendable, Codable, CaseIterable {
        case by_day_count
        case by_weekday_count
        case daily
        case monthly_by_day_of_month
        case monthly_by_position
        case weekly
        case yearly_by_day_of_month
        case yearly_by_position
    }

    public enum IfcReferentTypeEnum: String, Sendable, Codable, CaseIterable {
        case boundary
        case intersection
        case kilopoint
        case landmark
        case milepoint
        case position
        case referencemarker
        case station
        case superelevationevent
        case widthevent
        case userdefined
        case notdefined
    }

    public enum IfcReflectanceMethodEnum: String, Sendable, Codable, CaseIterable {
        case blinn
        case flat
        case glass
        case matt
        case metal
        case mirror
        case phong
        case physical
        case plastic
        case strauss
        case notdefined
    }

    public enum IfcReinforcedSoilTypeEnum: String, Sendable, Codable, CaseIterable {
        case dynamicallycompacted
        case grouted
        case replaced
        case rollercompacted
        case surchargepreloaded
        case verticallydrained
        case userdefined
        case notdefined
    }

    public enum IfcReinforcingBarRoleEnum: String, Sendable, Codable, CaseIterable {
        case anchoring
        case edge
        case ligature
        case main
        case punching
        case ring
        case shear
        case stud
        case userdefined
        case notdefined
    }

    public enum IfcReinforcingBarSurfaceEnum: String, Sendable, Codable, CaseIterable {
        case plain
        case textured
    }

    public enum IfcReinforcingBarTypeEnum: String, Sendable, Codable, CaseIterable {
        case anchoring
        case edge
        case ligature
        case main
        case punching
        case ring
        case shear
        case spacebar
        case stud
        case userdefined
        case notdefined
    }

    public enum IfcReinforcingMeshTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcRoadPartTypeEnum: String, Sendable, Codable, CaseIterable {
        case bicyclecrossing
        case bus_stop
        case carriageway
        case centralisland
        case centralreserve
        case hardshoulder
        case intersection
        case layby
        case parkingbay
        case passingbay
        case pedestrian_crossing
        case railwaycrossing
        case refugeisland
        case roadsegment
        case roadside
        case roadsidepart
        case roadwayplateau
        case roundabout
        case shoulder
        case sidewalk
        case softshoulder
        case tollplaza
        case trafficisland
        case trafficlane
        case userdefined
        case notdefined
    }

    public enum IfcRoadTypeEnum: String, Sendable, Codable, CaseIterable {
        case userdefined
        case notdefined
    }

    public enum IfcRoleEnum: String, Sendable, Codable, CaseIterable {
        case architect
        case buildingoperator
        case buildingowner
        case civilengineer
        case client
        case commissioningengineer
        case constructionmanager
        case consultant
        case contractor
        case costengineer
        case electricalengineer
        case engineer
        case facilitiesmanager
        case fieldconstructionmanager
        case manufacturer
        case mechanicalengineer
        case owner
        case projectmanager
        case reseller
        case structuralengineer
        case subcontractor
        case supplier
        case userdefined
    }

    public enum IfcRoofTypeEnum: String, Sendable, Codable, CaseIterable {
        case barrel_roof
        case butterfly_roof
        case dome_roof
        case flat_roof
        case freeform
        case gable_roof
        case gambrel_roof
        case hipped_gable_roof
        case hip_roof
        case mansard_roof
        case pavilion_roof
        case rainbow_roof
        case shed_roof
        case userdefined
        case notdefined
    }

    public enum IfcSIPrefix: String, Sendable, Codable, CaseIterable {
        case atto
        case centi
        case deca
        case deci
        case exa
        case femto
        case giga
        case hecto
        case kilo
        case mega
        case micro
        case milli
        case nano
        case peta
        case pico
        case tera
    }

    public enum IfcSIUnitName: String, Sendable, Codable, CaseIterable {
        case ampere
        case becquerel
        case candela
        case coulomb
        case cubic_metre
        case degree_celsius
        case farad
        case gram
        case gray
        case henry
        case hertz
        case joule
        case kelvin
        case lumen
        case lux
        case metre
        case mole
        case newton
        case ohm
        case pascal
        case radian
        case second
        case siemens
        case sievert
        case square_metre
        case steradian
        case tesla
        case volt
        case watt
        case weber
    }

    public enum IfcSanitaryTerminalTypeEnum: String, Sendable, Codable, CaseIterable {
        case bath
        case bidet
        case cistern
        case sanitaryfountain
        case shower
        case sink
        case toiletpan
        case urinal
        case washhandbasin
        case wcseat
        case userdefined
        case notdefined
    }

    public enum IfcSectionTypeEnum: String, Sendable, Codable, CaseIterable {
        case tapered
        case uniform
    }

    public enum IfcSensorTypeEnum: String, Sendable, Codable, CaseIterable {
        case co2sensor
        case conductancesensor
        case contactsensor
        case cosensor
        case earthquakesensor
        case firesensor
        case flowsensor
        case foreignobjectdetectionsensor
        case frostsensor
        case gassensor
        case heatsensor
        case humiditysensor
        case identifiersensor
        case ionconcentrationsensor
        case levelsensor
        case lightsensor
        case moisturesensor
        case movementsensor
        case obstaclesensor
        case phsensor
        case pressuresensor
        case radiationsensor
        case radioactivitysensor
        case rainsensor
        case smokesensor
        case snowdepthsensor
        case soundsensor
        case temperaturesensor
        case trainsensor
        case turnoutclosuresensor
        case wheelsensor
        case windsensor
        case userdefined
        case notdefined
    }

    public enum IfcSequenceEnum: String, Sendable, Codable, CaseIterable {
        case finish_finish
        case finish_start
        case start_finish
        case start_start
        case userdefined
        case notdefined
    }

    public enum IfcShadingDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case awning
        case jalousie
        case shutter
        case userdefined
        case notdefined
    }

    public enum IfcSignTypeEnum: String, Sendable, Codable, CaseIterable {
        case marker
        case mirror
        case pictoral
        case userdefined
        case notdefined
    }

    public enum IfcSignalTypeEnum: String, Sendable, Codable, CaseIterable {
        case audio
        case mixed
        case visual
        case userdefined
        case notdefined
    }

    public enum IfcSimplePropertyTemplateTypeEnum: String, Sendable, Codable, CaseIterable {
        case p_boundedvalue
        case p_enumeratedvalue
        case p_listvalue
        case p_referencevalue
        case p_singlevalue
        case p_tablevalue
        case q_area
        case q_count
        case q_length
        case q_number
        case q_time
        case q_volume
        case q_weight
    }

    public enum IfcSlabTypeEnum: String, Sendable, Codable, CaseIterable {
        case approach_slab
        case baseslab
        case floor
        case landing
        case paving
        case roof
        case sidewalk
        case trackslab
        case wearing
        case userdefined
        case notdefined
    }

    public enum IfcSolarDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case solarcollector
        case solarpanel
        case userdefined
        case notdefined
    }

    public enum IfcSpaceHeaterTypeEnum: String, Sendable, Codable, CaseIterable {
        case convector
        case radiator
        case userdefined
        case notdefined
    }

    public enum IfcSpaceTypeEnum: String, Sendable, Codable, CaseIterable {
        case berth
        case external
        case gfa
        case `internal` = "internal"
        case parking
        case space
        case userdefined
        case notdefined
    }

    public enum IfcSpatialZoneTypeEnum: String, Sendable, Codable, CaseIterable {
        case construction
        case firesafety
        case interference
        case lighting
        case occupancy
        case reservation
        case security
        case thermal
        case transport
        case ventilation
        case userdefined
        case notdefined
    }

    public enum IfcStackTerminalTypeEnum: String, Sendable, Codable, CaseIterable {
        case birdcage
        case cowl
        case rainwaterhopper
        case userdefined
        case notdefined
    }

    public enum IfcStairFlightTypeEnum: String, Sendable, Codable, CaseIterable {
        case curved
        case freeform
        case spiral
        case straight
        case winder
        case userdefined
        case notdefined
    }

    public enum IfcStairTypeEnum: String, Sendable, Codable, CaseIterable {
        case curved_run_stair
        case double_return_stair
        case half_turn_stair
        case half_winding_stair
        case ladder
        case quarter_turn_stair
        case quarter_winding_stair
        case spiral_stair
        case straight_run_stair
        case three_quarter_turn_stair
        case three_quarter_winding_stair
        case two_curved_run_stair
        case two_quarter_turn_stair
        case two_quarter_winding_stair
        case two_straight_run_stair
        case userdefined
        case notdefined
    }

    public enum IfcStateEnum: String, Sendable, Codable, CaseIterable {
        case locked
        case readonly
        case readonlylocked
        case readwrite
        case readwritelocked
    }

    public enum IfcStructuralCurveActivityTypeEnum: String, Sendable, Codable, CaseIterable {
        case const
        case discrete
        case equidistant
        case linear
        case parabola
        case polygonal
        case sinus
        case userdefined
        case notdefined
    }

    public enum IfcStructuralCurveMemberTypeEnum: String, Sendable, Codable, CaseIterable {
        case cable
        case compression_member
        case pin_joined_member
        case rigid_joined_member
        case tension_member
        case userdefined
        case notdefined
    }

    public enum IfcStructuralSurfaceActivityTypeEnum: String, Sendable, Codable, CaseIterable {
        case bilinear
        case const
        case discrete
        case isocontour
        case userdefined
        case notdefined
    }

    public enum IfcStructuralSurfaceMemberTypeEnum: String, Sendable, Codable, CaseIterable {
        case bending_element
        case membrane_element
        case shell
        case userdefined
        case notdefined
    }

    public enum IfcSubContractResourceTypeEnum: String, Sendable, Codable, CaseIterable {
        case purchase
        case work
        case userdefined
        case notdefined
    }

    public enum IfcSurfaceFeatureTypeEnum: String, Sendable, Codable, CaseIterable {
        case defect
        case hatchmarking
        case linemarking
        case mark
        case nonskidsurfacing
        case pavementsurfacemarking
        case rumblestrip
        case symbolmarking
        case tag
        case transverserumblestrip
        case treatment
        case userdefined
        case notdefined
    }

    public enum IfcSurfaceSide: String, Sendable, Codable, CaseIterable {
        case both
        case negative
        case positive
    }

    public enum IfcSwitchingDeviceTypeEnum: String, Sendable, Codable, CaseIterable {
        case contactor
        case dimmerswitch
        case emergencystop
        case keypad
        case momentaryswitch
        case relay
        case selectorswitch
        case starter
        case start_and_stop_equipment
        case switchdisconnector
        case toggleswitch
        case userdefined
        case notdefined
    }

    public enum IfcSystemFurnitureElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case panel
        case subrack
        case worksurface
        case userdefined
        case notdefined
    }

    public enum IfcTankTypeEnum: String, Sendable, Codable, CaseIterable {
        case basin
        case breakpressure
        case expansion
        case feedandexpansion
        case oilretentiontray
        case pressurevessel
        case storage
        case vessel
        case userdefined
        case notdefined
    }

    public enum IfcTaskDurationEnum: String, Sendable, Codable, CaseIterable {
        case elapsedtime
        case worktime
        case notdefined
    }

    public enum IfcTaskTypeEnum: String, Sendable, Codable, CaseIterable {
        case adjustment
        case attendance
        case calibration
        case construction
        case demolition
        case dismantle
        case disposal
        case emergency
        case inspection
        case installation
        case logistic
        case maintenance
        case move
        case operation
        case removal
        case renovation
        case safety
        case shutdown
        case startup
        case testing
        case troubleshooting
        case userdefined
        case notdefined
    }

    public enum IfcTendonAnchorTypeEnum: String, Sendable, Codable, CaseIterable {
        case coupler
        case fixed_end
        case tensioning_end
        case userdefined
        case notdefined
    }

    public enum IfcTendonConduitTypeEnum: String, Sendable, Codable, CaseIterable {
        case coupler
        case diabolo
        case duct
        case grouting_duct
        case trumpet
        case userdefined
        case notdefined
    }

    public enum IfcTendonTypeEnum: String, Sendable, Codable, CaseIterable {
        case bar
        case coated
        case strand
        case wire
        case userdefined
        case notdefined
    }

    public enum IfcTextPath: String, Sendable, Codable, CaseIterable {
        case down
        case left
        case right
        case up
    }

    public enum IfcTimeSeriesDataTypeEnum: String, Sendable, Codable, CaseIterable {
        case continuous
        case discrete
        case discretebinary
        case piecewisebinary
        case piecewiseconstant
        case piecewisecontinuous
        case notdefined
    }

    public enum IfcTrackElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case blockingdevice
        case derailer
        case frog
        case half_set_of_blades
        case sleeper
        case speedregulator
        case trackendofalignment
        case vehiclestop
        case userdefined
        case notdefined
    }

    public enum IfcTransformerTypeEnum: String, Sendable, Codable, CaseIterable {
        case chopper
        case combined
        case current
        case frequency
        case inverter
        case rectifier
        case voltage
        case userdefined
        case notdefined
    }

    public enum IfcTransitionCode: String, Sendable, Codable, CaseIterable {
        case continuous
        case contsamegradient
        case contsamegradientsamecurvature
        case discontinuous
    }

    public enum IfcTransportElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case craneway
        case elevator
        case escalator
        case haulinggear
        case liftinggear
        case movingwalkway
        case userdefined
        case notdefined
    }

    public enum IfcTrimmingPreference: String, Sendable, Codable, CaseIterable {
        case cartesian
        case parameter
        case unspecified
    }

    public enum IfcTubeBundleTypeEnum: String, Sendable, Codable, CaseIterable {
        case finned
        case userdefined
        case notdefined
    }

    public enum IfcUnitEnum: String, Sendable, Codable, CaseIterable {
        case absorbeddoseunit
        case amountofsubstanceunit
        case areaunit
        case doseequivalentunit
        case electriccapacitanceunit
        case electricchargeunit
        case electricconductanceunit
        case electriccurrentunit
        case electricresistanceunit
        case electricvoltageunit
        case energyunit
        case forceunit
        case frequencyunit
        case illuminanceunit
        case inductanceunit
        case lengthunit
        case luminousfluxunit
        case luminousintensityunit
        case magneticfluxdensityunit
        case magneticfluxunit
        case massunit
        case planeangleunit
        case powerunit
        case pressureunit
        case radioactivityunit
        case solidangleunit
        case thermodynamictemperatureunit
        case timeunit
        case volumeunit
        case userdefined
    }

    public enum IfcUnitaryControlElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case alarmpanel
        case basestationcontroller
        case combined
        case controlpanel
        case gasdetectionpanel
        case humidistat
        case indicatorpanel
        case mimicpanel
        case thermostat
        case weatherstation
        case userdefined
        case notdefined
    }

    public enum IfcUnitaryEquipmentTypeEnum: String, Sendable, Codable, CaseIterable {
        case airconditioningunit
        case airhandler
        case dehumidifier
        case rooftopunit
        case splitsystem
        case userdefined
        case notdefined
    }

    public enum IfcValveTypeEnum: String, Sendable, Codable, CaseIterable {
        case airrelease
        case antivacuum
        case changeover
        case check
        case commissioning
        case diverting
        case doublecheck
        case doubleregulating
        case drawoffcock
        case faucet
        case flushing
        case gascock
        case gastap
        case isolating
        case mixing
        case pressurereducing
        case pressurerelief
        case regulating
        case safetycutoff
        case steamtrap
        case stopcock
        case userdefined
        case notdefined
    }

    public enum IfcVehicleTypeEnum: String, Sendable, Codable, CaseIterable {
        case cargo
        case rollingstock
        case vehicle
        case vehicleair
        case vehiclemarine
        case vehicletracked
        case vehiclewheeled
        case userdefined
        case notdefined
    }

    public enum IfcVibrationDamperTypeEnum: String, Sendable, Codable, CaseIterable {
        case axial_yield
        case bending_yield
        case friction
        case rubber
        case shear_yield
        case viscous
        case userdefined
        case notdefined
    }

    public enum IfcVibrationIsolatorTypeEnum: String, Sendable, Codable, CaseIterable {
        case base
        case compression
        case spring
        case userdefined
        case notdefined
    }

    public enum IfcVirtualElementTypeEnum: String, Sendable, Codable, CaseIterable {
        case boundary
        case clearance
        case provisionforvoid
        case userdefined
        case notdefined
    }

    public enum IfcVoidingFeatureTypeEnum: String, Sendable, Codable, CaseIterable {
        case chamfer
        case cutout
        case edge
        case hole
        case miter
        case notch
        case userdefined
        case notdefined
    }

    public enum IfcWallTypeEnum: String, Sendable, Codable, CaseIterable {
        case elementedwall
        case movable
        case parapet
        case partitioning
        case plumbingwall
        case polygonal
        case retainingwall
        case shear
        case solidwall
        case standard
        case wavewall
        case userdefined
        case notdefined
    }

    public enum IfcWasteTerminalTypeEnum: String, Sendable, Codable, CaseIterable {
        case floortrap
        case floorwaste
        case gullysump
        case gullytrap
        case roofdrain
        case wastedisposalunit
        case wastetrap
        case userdefined
        case notdefined
    }

    public enum IfcWindowPanelOperationEnum: String, Sendable, Codable, CaseIterable {
        case bottomhung
        case fixedcasement
        case otheroperation
        case pivothorizontal
        case pivotvertical
        case removablecasement
        case sidehunglefthand
        case sidehungrighthand
        case slidinghorizontal
        case slidingvertical
        case tiltandturnlefthand
        case tiltandturnrighthand
        case tophung
        case notdefined
    }

    public enum IfcWindowPanelPositionEnum: String, Sendable, Codable, CaseIterable {
        case bottom
        case left
        case middle
        case right
        case top
        case notdefined
    }

    public enum IfcWindowTypeEnum: String, Sendable, Codable, CaseIterable {
        case lightdome
        case skylight
        case window
        case userdefined
        case notdefined
    }

    public enum IfcWindowTypePartitioningEnum: String, Sendable, Codable, CaseIterable {
        case double_panel_horizontal
        case double_panel_vertical
        case single_panel
        case triple_panel_bottom
        case triple_panel_horizontal
        case triple_panel_left
        case triple_panel_right
        case triple_panel_top
        case triple_panel_vertical
        case userdefined
        case notdefined
    }

    public enum IfcWorkCalendarTypeEnum: String, Sendable, Codable, CaseIterable {
        case firstshift
        case secondshift
        case thirdshift
        case userdefined
        case notdefined
    }

    public enum IfcWorkPlanTypeEnum: String, Sendable, Codable, CaseIterable {
        case actual
        case baseline
        case planned
        case userdefined
        case notdefined
    }

    public enum IfcWorkScheduleTypeEnum: String, Sendable, Codable, CaseIterable {
        case actual
        case baseline
        case planned
        case userdefined
        case notdefined
    }

    public enum IfcLogical: String, Sendable, Codable, CaseIterable {
        case `true` = "true"
        case `false` = "false"
        case unknown

        public var boolValue: Bool? {
            switch self {
            case .true: return true
            case .false: return false
            case .unknown: return nil
            }
        }
    }

}
