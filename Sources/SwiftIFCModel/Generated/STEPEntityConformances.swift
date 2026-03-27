// STEPEntityConformances.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public static let stepDescriptors: [ObjectIdentifier: STEPEntityDescriptor] = {
        var d = [ObjectIdentifier: STEPEntityDescriptor]()
        d.reserveCapacity(882)
        registerDescriptors_0(&d)
        registerDescriptors_1(&d)
        registerDescriptors_2(&d)
        registerDescriptors_3(&d)
        registerDescriptors_4(&d)
        registerDescriptors_5(&d)
        registerDescriptors_6(&d)
        registerDescriptors_7(&d)
        registerDescriptors_8(&d)
        return d
    }()

    private static func registerDescriptors_0(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcActionRequest.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCACTIONREQUEST",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "status", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcActionRequest else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.status.map { .string($0) } ?? .null
                case 2: return e.longDescription.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcActionRequest else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcActionRequestTypeEnum(rawValue: $0) }
                case 1: e.status = value.isNull ? nil : value.stringValue
                case 2: e.longDescription = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcActor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCACTOR",
            ownAttributes: [STEPAttributeDescriptor(name: "theActor", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcActor else { return .null }
                switch index {
                case 0: return e.theActor.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcActor else { return }
                switch index {
                case 0: e.theActor = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcActorRole.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCACTORROLE",
            ownAttributes: [STEPAttributeDescriptor(name: "role", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedRole", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcActorRole else { return .null }
                switch index {
                case 0: return e.role.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.userDefinedRole.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcActorRole else { return }
                switch index {
                case 0: e.role = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRoleEnum(rawValue: $0) }
                case 1: e.userDefinedRole = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcActuator.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCACTUATOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcActuator else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcActuator else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcActuatorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcActuatorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCACTUATORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcActuatorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcActuatorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcActuatorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAddress.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCADDRESS",
            ownAttributes: [STEPAttributeDescriptor(name: "purpose", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "userDefinedPurpose", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAddress else { return .null }
                switch index {
                case 0: return e.purpose.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.userDefinedPurpose.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAddress else { return }
                switch index {
                case 0: e.purpose = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAddressTypeEnum(rawValue: $0) }
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.userDefinedPurpose = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAdvancedBrep.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCADVANCEDBREP",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAdvancedBrep else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAdvancedBrep else { return }
            }
        )

        d[ObjectIdentifier(IfcAdvancedBrepWithVoids.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCADVANCEDBREPWITHVOIDS",
            ownAttributes: [STEPAttributeDescriptor(name: "voids", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAdvancedBrepWithVoids else { return .null }
                switch index {
                case 0: return .list(e.voids.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAdvancedBrepWithVoids else { return }
                switch index {
                case 0: if case .list(let items) = value { e.voids = items.compactMap { $0.entityValue as? IFC4X3.IfcClosedShell } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAdvancedFace.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCADVANCEDFACE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAdvancedFace else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAdvancedFace else { return }
            }
        )

        d[ObjectIdentifier(IfcAirTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAIRTERMINAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAirTerminal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAirTerminal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAirTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAirTerminalBox.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAIRTERMINALBOX",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAirTerminalBox else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAirTerminalBox else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAirTerminalBoxTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAirTerminalBoxType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAIRTERMINALBOXTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAirTerminalBoxType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAirTerminalBoxType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAirTerminalBoxTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAirTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAIRTERMINALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAirTerminalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAirTerminalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAirTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAirToAirHeatRecovery.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAIRTOAIRHEATRECOVERY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAirToAirHeatRecovery else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAirToAirHeatRecovery else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAirToAirHeatRecoveryTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAirToAirHeatRecoveryType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAIRTOAIRHEATRECOVERYTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAirToAirHeatRecoveryType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAirToAirHeatRecoveryType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAirToAirHeatRecoveryTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlarm.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALARM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlarm else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlarm else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAlarmTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlarmType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALARMTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlarmType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlarmType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAlarmTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAlignmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignmentCant.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTCANT",
            ownAttributes: [STEPAttributeDescriptor(name: "railHeadDistance", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentCant else { return .null }
                switch index {
                case 0: return e.railHeadDistance.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentCant else { return }
                switch index {
                case 0: e.railHeadDistance = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignmentCantSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTCANTSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "startDistAlong", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "horizontalLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "startCantLeft", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "endCantLeft", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "startCantRight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "endCantRight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentCantSegment else { return .null }
                switch index {
                case 0: return e.startDistAlong.map { .real($0) } ?? .null
                case 1: return e.horizontalLength.map { .real($0) } ?? .null
                case 2: return e.startCantLeft.map { .real($0) } ?? .null
                case 3: return e.endCantLeft.map { .real($0) } ?? .null
                case 4: return e.startCantRight.map { .real($0) } ?? .null
                case 5: return e.endCantRight.map { .real($0) } ?? .null
                case 6: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentCantSegment else { return }
                switch index {
                case 0: e.startDistAlong = value.isNull ? nil : value.realValue
                case 1: e.horizontalLength = value.isNull ? nil : value.realValue
                case 2: e.startCantLeft = value.isNull ? nil : value.realValue
                case 3: e.endCantLeft = value.isNull ? nil : value.realValue
                case 4: e.startCantRight = value.isNull ? nil : value.realValue
                case 5: e.endCantRight = value.isNull ? nil : value.realValue
                case 6: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAlignmentCantSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignmentHorizontal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTHORIZONTAL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentHorizontal else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentHorizontal else { return }
            }
        )

        d[ObjectIdentifier(IfcAlignmentHorizontalSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTHORIZONTALSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "startPoint", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "startDirection", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "startRadiusOfCurvature", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "endRadiusOfCurvature", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "segmentLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "gravityCenterLineHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentHorizontalSegment else { return .null }
                switch index {
                case 0: return e.startPoint.map { .entityRef($0) } ?? .null
                case 1: return e.startDirection.map { .real($0) } ?? .null
                case 2: return e.startRadiusOfCurvature.map { .real($0) } ?? .null
                case 3: return e.endRadiusOfCurvature.map { .real($0) } ?? .null
                case 4: return e.segmentLength.map { .real($0) } ?? .null
                case 5: return e.gravityCenterLineHeight.map { .real($0) } ?? .null
                case 6: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentHorizontalSegment else { return }
                switch index {
                case 0: e.startPoint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 1: e.startDirection = value.isNull ? nil : value.realValue
                case 2: e.startRadiusOfCurvature = value.isNull ? nil : value.realValue
                case 3: e.endRadiusOfCurvature = value.isNull ? nil : value.realValue
                case 4: e.segmentLength = value.isNull ? nil : value.realValue
                case 5: e.gravityCenterLineHeight = value.isNull ? nil : value.realValue
                case 6: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAlignmentHorizontalSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignmentParameterSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTPARAMETERSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "startTag", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "endTag", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentParameterSegment else { return .null }
                switch index {
                case 0: return e.startTag.map { .string($0) } ?? .null
                case 1: return e.endTag.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentParameterSegment else { return }
                switch index {
                case 0: e.startTag = value.isNull ? nil : value.stringValue
                case 1: e.endTag = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignmentSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "designParameters", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentSegment else { return .null }
                switch index {
                case 0: return e.designParameters.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentSegment else { return }
                switch index {
                case 0: e.designParameters = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAlignmentParameterSegment
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAlignmentVertical.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTVERTICAL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentVertical else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentVertical else { return }
            }
        )

        d[ObjectIdentifier(IfcAlignmentVerticalSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCALIGNMENTVERTICALSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "startDistAlong", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "horizontalLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "startHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "startGradient", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "endGradient", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "radiusOfCurvature", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAlignmentVerticalSegment else { return .null }
                switch index {
                case 0: return e.startDistAlong.map { .real($0) } ?? .null
                case 1: return e.horizontalLength.map { .real($0) } ?? .null
                case 2: return e.startHeight.map { .real($0) } ?? .null
                case 3: return e.startGradient.map { .real($0) } ?? .null
                case 4: return e.endGradient.map { .real($0) } ?? .null
                case 5: return e.radiusOfCurvature.map { .real($0) } ?? .null
                case 6: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAlignmentVerticalSegment else { return }
                switch index {
                case 0: e.startDistAlong = value.isNull ? nil : value.realValue
                case 1: e.horizontalLength = value.isNull ? nil : value.realValue
                case 2: e.startHeight = value.isNull ? nil : value.realValue
                case 3: e.startGradient = value.isNull ? nil : value.realValue
                case 4: e.endGradient = value.isNull ? nil : value.realValue
                case 5: e.radiusOfCurvature = value.isNull ? nil : value.realValue
                case 6: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAlignmentVerticalSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAnnotation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCANNOTATION",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAnnotation else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAnnotation else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAnnotationTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAnnotationFillArea.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCANNOTATIONFILLAREA",
            ownAttributes: [STEPAttributeDescriptor(name: "outerBoundary", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "innerBoundaries", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAnnotationFillArea else { return .null }
                switch index {
                case 0: return e.outerBoundary.map { .entityRef($0) } ?? .null
                case 1: return .list(e.innerBoundaries.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAnnotationFillArea else { return }
                switch index {
                case 0: e.outerBoundary = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: if case .list(let items) = value { e.innerBoundaries = items.compactMap { $0.entityValue as? IFC4X3.IfcCurve } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcApplication.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAPPLICATION",
            ownAttributes: [STEPAttributeDescriptor(name: "applicationDeveloper", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "version", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "applicationFullName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "applicationIdentifier", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcApplication else { return .null }
                switch index {
                case 0: return e.applicationDeveloper.map { .entityRef($0) } ?? .null
                case 1: return e.version.map { .string($0) } ?? .null
                case 2: return e.applicationFullName.map { .string($0) } ?? .null
                case 3: return e.applicationIdentifier.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcApplication else { return }
                switch index {
                case 0: e.applicationDeveloper = value.isNull ? nil : value.entityValue as? IFC4X3.IfcOrganization
                case 1: e.version = value.isNull ? nil : value.stringValue
                case 2: e.applicationFullName = value.isNull ? nil : value.stringValue
                case 3: e.applicationIdentifier = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAppliedValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAPPLIEDVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "appliedValue", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "unitBasis", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "applicableDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "fixedUntilDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "category", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "condition", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "arithmeticOperator", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "components", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAppliedValue else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.appliedValue.map { $0.stepEncode() } ?? .null
                case 3: return e.unitBasis.map { .entityRef($0) } ?? .null
                case 4: return e.applicableDate.map { .string($0) } ?? .null
                case 5: return e.fixedUntilDate.map { .string($0) } ?? .null
                case 6: return e.category.map { .string($0) } ?? .null
                case 7: return e.condition.map { .string($0) } ?? .null
                case 8: return e.arithmeticOperator.map { .enumeration($0.rawValue) } ?? .null
                case 9: return .list(e.components.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAppliedValue else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.appliedValue = value.isNull ? nil : IFC4X3.IfcAppliedValueSelect.stepDecode(value)
                case 3: e.unitBasis = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMeasureWithUnit
                case 4: e.applicableDate = value.isNull ? nil : value.stringValue
                case 5: e.fixedUntilDate = value.isNull ? nil : value.stringValue
                case 6: e.category = value.isNull ? nil : value.stringValue
                case 7: e.condition = value.isNull ? nil : value.stringValue
                case 8: e.arithmeticOperator = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcArithmeticOperatorEnum(rawValue: $0) }
                case 9: if case .list(let items) = value { e.components = items.compactMap { $0.entityValue as? IFC4X3.IfcAppliedValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcApproval.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAPPROVAL",
            ownAttributes: [STEPAttributeDescriptor(name: "identifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "timeOfApproval", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "status", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "level", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "qualifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "requestingApproval", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "givingApproval", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcApproval else { return .null }
                switch index {
                case 0: return e.identifier.map { .string($0) } ?? .null
                case 1: return e.name.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                case 3: return e.timeOfApproval.map { .string($0) } ?? .null
                case 4: return e.status.map { .string($0) } ?? .null
                case 5: return e.level.map { .string($0) } ?? .null
                case 6: return e.qualifier.map { .string($0) } ?? .null
                case 7: return e.requestingApproval.map { $0.stepEncode() } ?? .null
                case 8: return e.givingApproval.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcApproval else { return }
                switch index {
                case 0: e.identifier = value.isNull ? nil : value.stringValue
                case 1: e.name = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                case 3: e.timeOfApproval = value.isNull ? nil : value.stringValue
                case 4: e.status = value.isNull ? nil : value.stringValue
                case 5: e.level = value.isNull ? nil : value.stringValue
                case 6: e.qualifier = value.isNull ? nil : value.stringValue
                case 7: e.requestingApproval = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 8: e.givingApproval = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcApprovalRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAPPROVALRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingApproval", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedApprovals", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcApprovalRelationship else { return .null }
                switch index {
                case 0: return e.relatingApproval.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedApprovals.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcApprovalRelationship else { return }
                switch index {
                case 0: e.relatingApproval = value.isNull ? nil : value.entityValue as? IFC4X3.IfcApproval
                case 1: if case .list(let items) = value { e.relatedApprovals = items.compactMap { $0.entityValue as? IFC4X3.IfcApproval } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcArbitraryClosedProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCARBITRARYCLOSEDPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "outerCurve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcArbitraryClosedProfileDef else { return .null }
                switch index {
                case 0: return e.outerCurve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcArbitraryClosedProfileDef else { return }
                switch index {
                case 0: e.outerCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcArbitraryOpenProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCARBITRARYOPENPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "curve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcArbitraryOpenProfileDef else { return .null }
                switch index {
                case 0: return e.curve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcArbitraryOpenProfileDef else { return }
                switch index {
                case 0: e.curve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundedCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcArbitraryProfileDefWithVoids.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCARBITRARYPROFILEDEFWITHVOIDS",
            ownAttributes: [STEPAttributeDescriptor(name: "innerCurves", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcArbitraryProfileDefWithVoids else { return .null }
                switch index {
                case 0: return .list(e.innerCurves.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcArbitraryProfileDefWithVoids else { return }
                switch index {
                case 0: if case .list(let items) = value { e.innerCurves = items.compactMap { $0.entityValue as? IFC4X3.IfcCurve } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcArcIndex.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCARCINDEX",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcArcIndex else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcArcIndex else { return }
            }
        )

        d[ObjectIdentifier(IfcAsset.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCASSET",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "originalValue", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "currentValue", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "totalReplacementCost", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "owner", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "user", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "responsiblePerson", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "incorporationDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "depreciatedValue", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAsset else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.originalValue.map { .entityRef($0) } ?? .null
                case 2: return e.currentValue.map { .entityRef($0) } ?? .null
                case 3: return e.totalReplacementCost.map { .entityRef($0) } ?? .null
                case 4: return e.owner.map { $0.stepEncode() } ?? .null
                case 5: return e.user.map { $0.stepEncode() } ?? .null
                case 6: return e.responsiblePerson.map { .entityRef($0) } ?? .null
                case 7: return e.incorporationDate.map { .string($0) } ?? .null
                case 8: return e.depreciatedValue.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAsset else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.originalValue = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCostValue
                case 2: e.currentValue = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCostValue
                case 3: e.totalReplacementCost = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCostValue
                case 4: e.owner = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 5: e.user = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 6: e.responsiblePerson = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPerson
                case 7: e.incorporationDate = value.isNull ? nil : value.stringValue
                case 8: e.depreciatedValue = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCostValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAsymmetricIShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCASYMMETRICISHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "bottomFlangeWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "overallDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "bottomFlangeThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "bottomFlangeFilletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topFlangeWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topFlangeThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topFlangeFilletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "bottomFlangeEdgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "bottomFlangeSlope", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topFlangeEdgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topFlangeSlope", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAsymmetricIShapeProfileDef else { return .null }
                switch index {
                case 0: return e.bottomFlangeWidth.map { .real($0) } ?? .null
                case 1: return e.overallDepth.map { .real($0) } ?? .null
                case 2: return e.webThickness.map { .real($0) } ?? .null
                case 3: return e.bottomFlangeThickness.map { .real($0) } ?? .null
                case 4: return e.bottomFlangeFilletRadius.map { .real($0) } ?? .null
                case 5: return e.topFlangeWidth.map { .real($0) } ?? .null
                case 6: return e.topFlangeThickness.map { .real($0) } ?? .null
                case 7: return e.topFlangeFilletRadius.map { .real($0) } ?? .null
                case 8: return e.bottomFlangeEdgeRadius.map { .real($0) } ?? .null
                case 9: return e.bottomFlangeSlope.map { .real($0) } ?? .null
                case 10: return e.topFlangeEdgeRadius.map { .real($0) } ?? .null
                case 11: return e.topFlangeSlope.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAsymmetricIShapeProfileDef else { return }
                switch index {
                case 0: e.bottomFlangeWidth = value.isNull ? nil : value.realValue
                case 1: e.overallDepth = value.isNull ? nil : value.realValue
                case 2: e.webThickness = value.isNull ? nil : value.realValue
                case 3: e.bottomFlangeThickness = value.isNull ? nil : value.realValue
                case 4: e.bottomFlangeFilletRadius = value.isNull ? nil : value.realValue
                case 5: e.topFlangeWidth = value.isNull ? nil : value.realValue
                case 6: e.topFlangeThickness = value.isNull ? nil : value.realValue
                case 7: e.topFlangeFilletRadius = value.isNull ? nil : value.realValue
                case 8: e.bottomFlangeEdgeRadius = value.isNull ? nil : value.realValue
                case 9: e.bottomFlangeSlope = value.isNull ? nil : value.realValue
                case 10: e.topFlangeEdgeRadius = value.isNull ? nil : value.realValue
                case 11: e.topFlangeSlope = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAudioVisualAppliance.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAUDIOVISUALAPPLIANCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAudioVisualAppliance else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAudioVisualAppliance else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAudioVisualApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAudioVisualApplianceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAUDIOVISUALAPPLIANCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAudioVisualApplianceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAudioVisualApplianceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAudioVisualApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAxis1Placement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAXIS1PLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "axis", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAxis1Placement else { return .null }
                switch index {
                case 0: return e.axis.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAxis1Placement else { return }
                switch index {
                case 0: e.axis = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAxis2Placement2D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAXIS2PLACEMENT2D",
            ownAttributes: [STEPAttributeDescriptor(name: "refDirection", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAxis2Placement2D else { return .null }
                switch index {
                case 0: return e.refDirection.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAxis2Placement2D else { return }
                switch index {
                case 0: e.refDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAxis2Placement3D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAXIS2PLACEMENT3D",
            ownAttributes: [STEPAttributeDescriptor(name: "axis", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "refDirection", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAxis2Placement3D else { return .null }
                switch index {
                case 0: return e.axis.map { .entityRef($0) } ?? .null
                case 1: return e.refDirection.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAxis2Placement3D else { return }
                switch index {
                case 0: e.axis = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.refDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcAxis2PlacementLinear.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCAXIS2PLACEMENTLINEAR",
            ownAttributes: [STEPAttributeDescriptor(name: "axis", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "refDirection", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcAxis2PlacementLinear else { return .null }
                switch index {
                case 0: return e.axis.map { .entityRef($0) } ?? .null
                case 1: return e.refDirection.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcAxis2PlacementLinear else { return }
                switch index {
                case 0: e.axis = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.refDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBSplineCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBSPLINECURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "degree", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "controlPointsList", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "curveForm", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "closedCurve", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "selfIntersect", kind: .logical, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBSplineCurve else { return .null }
                switch index {
                case 0: return e.degree.map { .integer($0) } ?? .null
                case 1: return .list(e.controlPointsList.map { .entityRef($0) })
                case 2: return e.curveForm.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.closedCurve.map { .logical($0) } ?? .null
                case 4: return e.selfIntersect.map { .logical($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBSplineCurve else { return }
                switch index {
                case 0: e.degree = value.isNull ? nil : value.integerValue
                case 1: if case .list(let items) = value { e.controlPointsList = items.compactMap { $0.entityValue as? IFC4X3.IfcCartesianPoint } }
                case 2: e.curveForm = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBSplineCurveForm(rawValue: $0) }
                case 3: e.closedCurve = value.isNull ? nil : value.logicalValue
                case 4: e.selfIntersect = value.isNull ? nil : value.logicalValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBSplineCurveWithKnots.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBSPLINECURVEWITHKNOTS",
            ownAttributes: [STEPAttributeDescriptor(name: "knotMultiplicities", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "knots", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "knotSpec", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBSplineCurveWithKnots else { return .null }
                switch index {
                case 0: return .list(e.knotMultiplicities.map { .integer($0) })
                case 1: return .list(e.knots.map { .real($0) })
                case 2: return e.knotSpec.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBSplineCurveWithKnots else { return }
                switch index {
                case 0: if case .list(let items) = value { e.knotMultiplicities = items.compactMap { $0.integerValue } }
                case 1: if case .list(let items) = value { e.knots = items.compactMap { $0.realValue } }
                case 2: e.knotSpec = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcKnotType(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBSplineSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBSPLINESURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "uDegree", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "vDegree", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "controlPointsList", kind: .nestedList, isOptional: false), STEPAttributeDescriptor(name: "surfaceForm", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "uClosed", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "vClosed", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "selfIntersect", kind: .logical, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBSplineSurface else { return .null }
                switch index {
                case 0: return e.uDegree.map { .integer($0) } ?? .null
                case 1: return e.vDegree.map { .integer($0) } ?? .null
                case 2: return .list(e.controlPointsList.map { .list($0.map { .string(String(describing: $0)) }) })
                case 3: return e.surfaceForm.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.uClosed.map { .logical($0) } ?? .null
                case 5: return e.vClosed.map { .logical($0) } ?? .null
                case 6: return e.selfIntersect.map { .logical($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBSplineSurface else { return }
                switch index {
                case 0: e.uDegree = value.isNull ? nil : value.integerValue
                case 1: e.vDegree = value.isNull ? nil : value.integerValue
                case 2: if case .list(let outer) = value { e.controlPointsList = outer.compactMap { if case .list(let inner) = $0 { return inner.compactMap { $0.entityValue as? IFC4X3.IfcCartesianPoint } } else { return nil } } }
                case 3: e.surfaceForm = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBSplineSurfaceForm(rawValue: $0) }
                case 4: e.uClosed = value.isNull ? nil : value.logicalValue
                case 5: e.vClosed = value.isNull ? nil : value.logicalValue
                case 6: e.selfIntersect = value.isNull ? nil : value.logicalValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBSplineSurfaceWithKnots.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBSPLINESURFACEWITHKNOTS",
            ownAttributes: [STEPAttributeDescriptor(name: "uMultiplicities", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "vMultiplicities", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "uKnots", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "vKnots", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "knotSpec", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBSplineSurfaceWithKnots else { return .null }
                switch index {
                case 0: return .list(e.uMultiplicities.map { .integer($0) })
                case 1: return .list(e.vMultiplicities.map { .integer($0) })
                case 2: return .list(e.uKnots.map { .real($0) })
                case 3: return .list(e.vKnots.map { .real($0) })
                case 4: return e.knotSpec.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBSplineSurfaceWithKnots else { return }
                switch index {
                case 0: if case .list(let items) = value { e.uMultiplicities = items.compactMap { $0.integerValue } }
                case 1: if case .list(let items) = value { e.vMultiplicities = items.compactMap { $0.integerValue } }
                case 2: if case .list(let items) = value { e.uKnots = items.compactMap { $0.realValue } }
                case 3: if case .list(let items) = value { e.vKnots = items.compactMap { $0.realValue } }
                case 4: e.knotSpec = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcKnotType(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBeam.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBEAM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBeam else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBeam else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBeamTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBeamType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBEAMTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBeamType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBeamType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBeamTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBearing.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBEARING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBearing else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBearing else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBearingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBearingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBEARINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBearingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBearingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBearingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBinary.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBINARY",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBinary else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBinary else { return }
            }
        )

        d[ObjectIdentifier(IfcBlobTexture.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBLOBTEXTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "rasterFormat", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "rasterCode", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBlobTexture else { return .null }
                switch index {
                case 0: return e.rasterFormat.map { .string($0) } ?? .null
                case 1: return e.rasterCode.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBlobTexture else { return }
                switch index {
                case 0: e.rasterFormat = value.isNull ? nil : value.stringValue
                case 1: e.rasterCode = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBinary
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBlock.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBLOCK",
            ownAttributes: [STEPAttributeDescriptor(name: "xLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "yLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "zLength", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBlock else { return .null }
                switch index {
                case 0: return e.xLength.map { .real($0) } ?? .null
                case 1: return e.yLength.map { .real($0) } ?? .null
                case 2: return e.zLength.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBlock else { return }
                switch index {
                case 0: e.xLength = value.isNull ? nil : value.realValue
                case 1: e.yLength = value.isNull ? nil : value.realValue
                case 2: e.zLength = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoiler.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOILER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoiler else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoiler else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBoilerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoilerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOILERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoilerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoilerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBoilerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBooleanClippingResult.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOOLEANCLIPPINGRESULT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBooleanClippingResult else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBooleanClippingResult else { return }
            }
        )

        d[ObjectIdentifier(IfcBooleanResult.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOOLEANRESULT",
            ownAttributes: [STEPAttributeDescriptor(name: "`operator`", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "firstOperand", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "secondOperand", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBooleanResult else { return .null }
                switch index {
                case 0: return e.`operator`.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.firstOperand.map { $0.stepEncode() } ?? .null
                case 2: return e.secondOperand.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBooleanResult else { return }
                switch index {
                case 0: e.`operator` = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBooleanOperator(rawValue: $0) }
                case 1: e.firstOperand = value.isNull ? nil : IFC4X3.IfcBooleanOperand.stepDecode(value)
                case 2: e.secondOperand = value.isNull ? nil : IFC4X3.IfcBooleanOperand.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBorehole.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOREHOLE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBorehole else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBorehole else { return }
            }
        )

        d[ObjectIdentifier(IfcBoundaryCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDARYCONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundaryCondition else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundaryCondition else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoundaryCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDARYCURVE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundaryCurve else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundaryCurve else { return }
            }
        )

        d[ObjectIdentifier(IfcBoundaryEdgeCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDARYEDGECONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "translationalStiffnessByLengthX", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "translationalStiffnessByLengthY", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "translationalStiffnessByLengthZ", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "rotationalStiffnessByLengthX", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "rotationalStiffnessByLengthY", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "rotationalStiffnessByLengthZ", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundaryEdgeCondition else { return .null }
                switch index {
                case 0: return e.translationalStiffnessByLengthX.map { $0.stepEncode() } ?? .null
                case 1: return e.translationalStiffnessByLengthY.map { $0.stepEncode() } ?? .null
                case 2: return e.translationalStiffnessByLengthZ.map { $0.stepEncode() } ?? .null
                case 3: return e.rotationalStiffnessByLengthX.map { $0.stepEncode() } ?? .null
                case 4: return e.rotationalStiffnessByLengthY.map { $0.stepEncode() } ?? .null
                case 5: return e.rotationalStiffnessByLengthZ.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundaryEdgeCondition else { return }
                switch index {
                case 0: e.translationalStiffnessByLengthX = value.isNull ? nil : IFC4X3.IfcModulusOfTranslationalSubgradeReactionSelect.stepDecode(value)
                case 1: e.translationalStiffnessByLengthY = value.isNull ? nil : IFC4X3.IfcModulusOfTranslationalSubgradeReactionSelect.stepDecode(value)
                case 2: e.translationalStiffnessByLengthZ = value.isNull ? nil : IFC4X3.IfcModulusOfTranslationalSubgradeReactionSelect.stepDecode(value)
                case 3: e.rotationalStiffnessByLengthX = value.isNull ? nil : IFC4X3.IfcModulusOfRotationalSubgradeReactionSelect.stepDecode(value)
                case 4: e.rotationalStiffnessByLengthY = value.isNull ? nil : IFC4X3.IfcModulusOfRotationalSubgradeReactionSelect.stepDecode(value)
                case 5: e.rotationalStiffnessByLengthZ = value.isNull ? nil : IFC4X3.IfcModulusOfRotationalSubgradeReactionSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoundaryFaceCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDARYFACECONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "translationalStiffnessByAreaX", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "translationalStiffnessByAreaY", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "translationalStiffnessByAreaZ", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundaryFaceCondition else { return .null }
                switch index {
                case 0: return e.translationalStiffnessByAreaX.map { $0.stepEncode() } ?? .null
                case 1: return e.translationalStiffnessByAreaY.map { $0.stepEncode() } ?? .null
                case 2: return e.translationalStiffnessByAreaZ.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundaryFaceCondition else { return }
                switch index {
                case 0: e.translationalStiffnessByAreaX = value.isNull ? nil : IFC4X3.IfcModulusOfSubgradeReactionSelect.stepDecode(value)
                case 1: e.translationalStiffnessByAreaY = value.isNull ? nil : IFC4X3.IfcModulusOfSubgradeReactionSelect.stepDecode(value)
                case 2: e.translationalStiffnessByAreaZ = value.isNull ? nil : IFC4X3.IfcModulusOfSubgradeReactionSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoundaryNodeCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDARYNODECONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "translationalStiffnessX", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "translationalStiffnessY", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "translationalStiffnessZ", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "rotationalStiffnessX", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "rotationalStiffnessY", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "rotationalStiffnessZ", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundaryNodeCondition else { return .null }
                switch index {
                case 0: return e.translationalStiffnessX.map { $0.stepEncode() } ?? .null
                case 1: return e.translationalStiffnessY.map { $0.stepEncode() } ?? .null
                case 2: return e.translationalStiffnessZ.map { $0.stepEncode() } ?? .null
                case 3: return e.rotationalStiffnessX.map { $0.stepEncode() } ?? .null
                case 4: return e.rotationalStiffnessY.map { $0.stepEncode() } ?? .null
                case 5: return e.rotationalStiffnessZ.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundaryNodeCondition else { return }
                switch index {
                case 0: e.translationalStiffnessX = value.isNull ? nil : IFC4X3.IfcTranslationalStiffnessSelect.stepDecode(value)
                case 1: e.translationalStiffnessY = value.isNull ? nil : IFC4X3.IfcTranslationalStiffnessSelect.stepDecode(value)
                case 2: e.translationalStiffnessZ = value.isNull ? nil : IFC4X3.IfcTranslationalStiffnessSelect.stepDecode(value)
                case 3: e.rotationalStiffnessX = value.isNull ? nil : IFC4X3.IfcRotationalStiffnessSelect.stepDecode(value)
                case 4: e.rotationalStiffnessY = value.isNull ? nil : IFC4X3.IfcRotationalStiffnessSelect.stepDecode(value)
                case 5: e.rotationalStiffnessZ = value.isNull ? nil : IFC4X3.IfcRotationalStiffnessSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoundaryNodeConditionWarping.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDARYNODECONDITIONWARPING",
            ownAttributes: [STEPAttributeDescriptor(name: "warpingStiffness", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundaryNodeConditionWarping else { return .null }
                switch index {
                case 0: return e.warpingStiffness.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundaryNodeConditionWarping else { return }
                switch index {
                case 0: e.warpingStiffness = value.isNull ? nil : IFC4X3.IfcWarpingStiffnessSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoundedCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDEDCURVE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundedCurve else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundedCurve else { return }
            }
        )

        d[ObjectIdentifier(IfcBoundedSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDEDSURFACE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundedSurface else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundedSurface else { return }
            }
        )

        d[ObjectIdentifier(IfcBoundingBox.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOUNDINGBOX",
            ownAttributes: [STEPAttributeDescriptor(name: "corner", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "xDim", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "yDim", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "zDim", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoundingBox else { return .null }
                switch index {
                case 0: return e.corner.map { .entityRef($0) } ?? .null
                case 1: return e.xDim.map { .real($0) } ?? .null
                case 2: return e.yDim.map { .real($0) } ?? .null
                case 3: return e.zDim.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoundingBox else { return }
                switch index {
                case 0: e.corner = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 1: e.xDim = value.isNull ? nil : value.realValue
                case 2: e.yDim = value.isNull ? nil : value.realValue
                case 3: e.zDim = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBoxedHalfSpace.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBOXEDHALFSPACE",
            ownAttributes: [STEPAttributeDescriptor(name: "enclosure", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBoxedHalfSpace else { return .null }
                switch index {
                case 0: return e.enclosure.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBoxedHalfSpace else { return }
                switch index {
                case 0: e.enclosure = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundingBox
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBridge.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBRIDGE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBridge else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBridge else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBridgeTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBridgePart.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBRIDGEPART",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBridgePart else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBridgePart else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBridgePartTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuilding.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDING",
            ownAttributes: [STEPAttributeDescriptor(name: "elevationOfRefHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "elevationOfTerrain", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "buildingAddress", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuilding else { return .null }
                switch index {
                case 0: return e.elevationOfRefHeight.map { .real($0) } ?? .null
                case 1: return e.elevationOfTerrain.map { .real($0) } ?? .null
                case 2: return e.buildingAddress.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuilding else { return }
                switch index {
                case 0: e.elevationOfRefHeight = value.isNull ? nil : value.realValue
                case 1: e.elevationOfTerrain = value.isNull ? nil : value.realValue
                case 2: e.buildingAddress = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPostalAddress
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuildingElementPart.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDINGELEMENTPART",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuildingElementPart else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuildingElementPart else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBuildingElementPartTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuildingElementPartType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDINGELEMENTPARTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuildingElementPartType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuildingElementPartType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBuildingElementPartTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuildingElementProxy.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDINGELEMENTPROXY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuildingElementProxy else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuildingElementProxy else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBuildingElementProxyTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuildingElementProxyType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDINGELEMENTPROXYTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuildingElementProxyType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuildingElementProxyType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBuildingElementProxyTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuildingStorey.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDINGSTOREY",
            ownAttributes: [STEPAttributeDescriptor(name: "elevation", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuildingStorey else { return .null }
                switch index {
                case 0: return e.elevation.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuildingStorey else { return }
                switch index {
                case 0: e.elevation = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuildingSystem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILDINGSYSTEM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuildingSystem else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.longName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuildingSystem else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBuildingSystemTypeEnum(rawValue: $0) }
                case 1: e.longName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBuiltElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILTELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuiltElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuiltElement else { return }
            }
        )

        d[ObjectIdentifier(IfcBuiltElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILTELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuiltElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuiltElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcBuiltSystem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBUILTSYSTEM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBuiltSystem else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.longName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBuiltSystem else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBuiltSystemTypeEnum(rawValue: $0) }
                case 1: e.longName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBurner.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBURNER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBurner else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBurner else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBurnerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcBurnerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCBURNERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcBurnerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcBurnerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBurnerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCSHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "width", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "wallThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "girth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "internalFilletRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCShapeProfileDef else { return .null }
                switch index {
                case 0: return e.depth.map { .real($0) } ?? .null
                case 1: return e.width.map { .real($0) } ?? .null
                case 2: return e.wallThickness.map { .real($0) } ?? .null
                case 3: return e.girth.map { .real($0) } ?? .null
                case 4: return e.internalFilletRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCShapeProfileDef else { return }
                switch index {
                case 0: e.depth = value.isNull ? nil : value.realValue
                case 1: e.width = value.isNull ? nil : value.realValue
                case 2: e.wallThickness = value.isNull ? nil : value.realValue
                case 3: e.girth = value.isNull ? nil : value.realValue
                case 4: e.internalFilletRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableCarrierFitting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLECARRIERFITTING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableCarrierFitting else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableCarrierFitting else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableCarrierFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableCarrierFittingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLECARRIERFITTINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableCarrierFittingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableCarrierFittingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableCarrierFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableCarrierSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLECARRIERSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableCarrierSegment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableCarrierSegment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableCarrierSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableCarrierSegmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLECARRIERSEGMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableCarrierSegmentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableCarrierSegmentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableCarrierSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableFitting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLEFITTING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableFitting else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableFitting else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableFittingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLEFITTINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableFittingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableFittingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLESEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableSegment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableSegment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCableSegmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCABLESEGMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCableSegmentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCableSegmentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCableSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCaissonFoundation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCAISSONFOUNDATION",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCaissonFoundation else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCaissonFoundation else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCaissonFoundationTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCaissonFoundationType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCAISSONFOUNDATIONTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCaissonFoundationType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCaissonFoundationType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCaissonFoundationTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCartesianPoint.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANPOINT",
            ownAttributes: [STEPAttributeDescriptor(name: "coordinates", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianPoint else { return .null }
                switch index {
                case 0: return .list(e.coordinates.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianPoint else { return }
                switch index {
                case 0: if case .list(let items) = value { e.coordinates = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCartesianPointList.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANPOINTLIST",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianPointList else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianPointList else { return }
            }
        )

        d[ObjectIdentifier(IfcCartesianPointList2D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANPOINTLIST2D",
            ownAttributes: [STEPAttributeDescriptor(name: "coordList", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "tagList", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianPointList2D else { return .null }
                switch index {
                case 0: return .list(e.coordList.map { .real($0) })
                case 1: return .list(e.tagList.map { .string($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianPointList2D else { return }
                switch index {
                case 0: if case .list(let items) = value { e.coordList = items.compactMap { $0.realValue } }
                case 1: if case .list(let items) = value { e.tagList = items.compactMap { $0.stringValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCartesianPointList3D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANPOINTLIST3D",
            ownAttributes: [STEPAttributeDescriptor(name: "coordList", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "tagList", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianPointList3D else { return .null }
                switch index {
                case 0: return .list(e.coordList.map { .real($0) })
                case 1: return .list(e.tagList.map { .string($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianPointList3D else { return }
                switch index {
                case 0: if case .list(let items) = value { e.coordList = items.compactMap { $0.realValue } }
                case 1: if case .list(let items) = value { e.tagList = items.compactMap { $0.stringValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCartesianTransformationOperator.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANTRANSFORMATIONOPERATOR",
            ownAttributes: [STEPAttributeDescriptor(name: "axis1", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "axis2", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "localOrigin", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "scale", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianTransformationOperator else { return .null }
                switch index {
                case 0: return e.axis1.map { .entityRef($0) } ?? .null
                case 1: return e.axis2.map { .entityRef($0) } ?? .null
                case 2: return e.localOrigin.map { .entityRef($0) } ?? .null
                case 3: return e.scale.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianTransformationOperator else { return }
                switch index {
                case 0: e.axis1 = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.axis2 = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 2: e.localOrigin = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 3: e.scale = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_1(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcCartesianTransformationOperator2D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANTRANSFORMATIONOPERATOR2D",
            ownAttributes: [],
            derivedOverrides: ["axis2,?);"],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianTransformationOperator2D else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianTransformationOperator2D else { return }
            }
        )

        d[ObjectIdentifier(IfcCartesianTransformationOperator2DnonUniform.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANTRANSFORMATIONOPERATOR2DNONUNIFORM",
            ownAttributes: [STEPAttributeDescriptor(name: "scale2", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianTransformationOperator2DnonUniform else { return .null }
                switch index {
                case 0: return e.scale2.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianTransformationOperator2DnonUniform else { return }
                switch index {
                case 0: e.scale2 = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCartesianTransformationOperator3D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANTRANSFORMATIONOPERATOR3D",
            ownAttributes: [STEPAttributeDescriptor(name: "axis3", kind: .entityRef, isOptional: true)],
            derivedOverrides: ["axis2,Axis3);"],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianTransformationOperator3D else { return .null }
                switch index {
                case 0: return e.axis3.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianTransformationOperator3D else { return }
                switch index {
                case 0: e.axis3 = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCartesianTransformationOperator3DnonUniform.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCARTESIANTRANSFORMATIONOPERATOR3DNONUNIFORM",
            ownAttributes: [STEPAttributeDescriptor(name: "scale2", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "scale3", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCartesianTransformationOperator3DnonUniform else { return .null }
                switch index {
                case 0: return e.scale2.map { .real($0) } ?? .null
                case 1: return e.scale3.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCartesianTransformationOperator3DnonUniform else { return }
                switch index {
                case 0: e.scale2 = value.isNull ? nil : value.realValue
                case 1: e.scale3 = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCenterLineProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCENTERLINEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "thickness", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCenterLineProfileDef else { return .null }
                switch index {
                case 0: return e.thickness.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCenterLineProfileDef else { return }
                switch index {
                case 0: e.thickness = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcChiller.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCHILLER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcChiller else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcChiller else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcChillerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcChillerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCHILLERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcChillerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcChillerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcChillerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcChimney.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCHIMNEY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcChimney else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcChimney else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcChimneyTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcChimneyType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCHIMNEYTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcChimneyType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcChimneyType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcChimneyTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCircle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCIRCLE",
            ownAttributes: [STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCircle else { return .null }
                switch index {
                case 0: return e.radius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCircle else { return }
                switch index {
                case 0: e.radius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCircleHollowProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCIRCLEHOLLOWPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "wallThickness", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCircleHollowProfileDef else { return .null }
                switch index {
                case 0: return e.wallThickness.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCircleHollowProfileDef else { return }
                switch index {
                case 0: e.wallThickness = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCircleProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCIRCLEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCircleProfileDef else { return .null }
                switch index {
                case 0: return e.radius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCircleProfileDef else { return }
                switch index {
                case 0: e.radius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCivilElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCIVILELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCivilElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCivilElement else { return }
            }
        )

        d[ObjectIdentifier(IfcCivilElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCIVILELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCivilElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCivilElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcClassification.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCLASSIFICATION",
            ownAttributes: [STEPAttributeDescriptor(name: "source", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "edition", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "editionDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "specification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "referenceTokens", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcClassification else { return .null }
                switch index {
                case 0: return e.source.map { .string($0) } ?? .null
                case 1: return e.edition.map { .string($0) } ?? .null
                case 2: return e.editionDate.map { .string($0) } ?? .null
                case 3: return e.name.map { .string($0) } ?? .null
                case 4: return e.description.map { .string($0) } ?? .null
                case 5: return e.specification.map { .string($0) } ?? .null
                case 6: return .list(e.referenceTokens.map { .string($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcClassification else { return }
                switch index {
                case 0: e.source = value.isNull ? nil : value.stringValue
                case 1: e.edition = value.isNull ? nil : value.stringValue
                case 2: e.editionDate = value.isNull ? nil : value.stringValue
                case 3: e.name = value.isNull ? nil : value.stringValue
                case 4: e.description = value.isNull ? nil : value.stringValue
                case 5: e.specification = value.isNull ? nil : value.stringValue
                case 6: if case .list(let items) = value { e.referenceTokens = items.compactMap { $0.stringValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcClassificationReference.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCLASSIFICATIONREFERENCE",
            ownAttributes: [STEPAttributeDescriptor(name: "referencedSource", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "sort", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcClassificationReference else { return .null }
                switch index {
                case 0: return e.referencedSource.map { $0.stepEncode() } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.sort.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcClassificationReference else { return }
                switch index {
                case 0: e.referencedSource = value.isNull ? nil : IFC4X3.IfcClassificationReferenceSelect.stepDecode(value)
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.sort = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcClosedShell.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCLOSEDSHELL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcClosedShell else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcClosedShell else { return }
            }
        )

        d[ObjectIdentifier(IfcClothoid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCLOTHOID",
            ownAttributes: [STEPAttributeDescriptor(name: "clothoidConstant", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcClothoid else { return .null }
                switch index {
                case 0: return e.clothoidConstant.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcClothoid else { return }
                switch index {
                case 0: e.clothoidConstant = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoil.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOIL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoil else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoil else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCoilTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoilType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOILTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoilType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoilType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCoilTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcColourRgb.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOLOURRGB",
            ownAttributes: [STEPAttributeDescriptor(name: "red", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "green", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "blue", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcColourRgb else { return .null }
                switch index {
                case 0: return e.red.map { .real($0) } ?? .null
                case 1: return e.green.map { .real($0) } ?? .null
                case 2: return e.blue.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcColourRgb else { return }
                switch index {
                case 0: e.red = value.isNull ? nil : value.realValue
                case 1: e.green = value.isNull ? nil : value.realValue
                case 2: e.blue = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcColourRgbList.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOLOURRGBLIST",
            ownAttributes: [STEPAttributeDescriptor(name: "colourList", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcColourRgbList else { return .null }
                switch index {
                case 0: return .list(e.colourList.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcColourRgbList else { return }
                switch index {
                case 0: if case .list(let items) = value { e.colourList = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcColourSpecification.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOLOURSPECIFICATION",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcColourSpecification else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcColourSpecification else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcColumn.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOLUMN",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcColumn else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcColumn else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcColumnTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcColumnType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOLUMNTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcColumnType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcColumnType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcColumnTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCommunicationsAppliance.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMMUNICATIONSAPPLIANCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCommunicationsAppliance else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCommunicationsAppliance else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCommunicationsApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCommunicationsApplianceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMMUNICATIONSAPPLIANCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCommunicationsApplianceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCommunicationsApplianceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCommunicationsApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcComplexNumber.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPLEXNUMBER",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcComplexNumber else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcComplexNumber else { return }
            }
        )

        d[ObjectIdentifier(IfcComplexProperty.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPLEXPROPERTY",
            ownAttributes: [STEPAttributeDescriptor(name: "usageName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "hasProperties", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcComplexProperty else { return .null }
                switch index {
                case 0: return e.usageName.map { .string($0) } ?? .null
                case 1: return .list(e.hasProperties.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcComplexProperty else { return }
                switch index {
                case 0: e.usageName = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.hasProperties = items.compactMap { $0.entityValue as? IFC4X3.IfcProperty } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcComplexPropertyTemplate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPLEXPROPERTYTEMPLATE",
            ownAttributes: [STEPAttributeDescriptor(name: "usageName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "templateType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "hasPropertyTemplates", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcComplexPropertyTemplate else { return .null }
                switch index {
                case 0: return e.usageName.map { .string($0) } ?? .null
                case 1: return e.templateType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return .list(e.hasPropertyTemplates.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcComplexPropertyTemplate else { return }
                switch index {
                case 0: e.usageName = value.isNull ? nil : value.stringValue
                case 1: e.templateType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcComplexPropertyTemplateTypeEnum(rawValue: $0) }
                case 2: if case .list(let items) = value { e.hasPropertyTemplates = items.compactMap { $0.entityValue as? IFC4X3.IfcPropertyTemplate } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCompositeCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPOSITECURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "segments", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "selfIntersect", kind: .logical, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompositeCurve else { return .null }
                switch index {
                case 0: return .list(e.segments.map { .entityRef($0) })
                case 1: return e.selfIntersect.map { .logical($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompositeCurve else { return }
                switch index {
                case 0: if case .list(let items) = value { e.segments = items.compactMap { $0.entityValue as? IFC4X3.IfcSegment } }
                case 1: e.selfIntersect = value.isNull ? nil : value.logicalValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCompositeCurveOnSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPOSITECURVEONSURFACE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompositeCurveOnSurface else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompositeCurveOnSurface else { return }
            }
        )

        d[ObjectIdentifier(IfcCompositeCurveSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPOSITECURVESEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "sameSense", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "parentCurve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompositeCurveSegment else { return .null }
                switch index {
                case 0: return e.sameSense.map { .boolean($0) } ?? .null
                case 1: return e.parentCurve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompositeCurveSegment else { return }
                switch index {
                case 0: e.sameSense = value.isNull ? nil : value.boolValue
                case 1: e.parentCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCompositeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPOSITEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "profiles", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "label", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompositeProfileDef else { return .null }
                switch index {
                case 0: return .list(e.profiles.map { .entityRef($0) })
                case 1: return e.label.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompositeProfileDef else { return }
                switch index {
                case 0: if case .list(let items) = value { e.profiles = items.compactMap { $0.entityValue as? IFC4X3.IfcProfileDef } }
                case 1: e.label = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCompoundPlaneAngleMeasure.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPOUNDPLANEANGLEMEASURE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompoundPlaneAngleMeasure else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompoundPlaneAngleMeasure else { return }
            }
        )

        d[ObjectIdentifier(IfcCompressor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPRESSOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompressor else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompressor else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCompressorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCompressorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOMPRESSORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCompressorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCompressorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCompressorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCondenser.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONDENSER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCondenser else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCondenser else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCondenserTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCondenserType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONDENSERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCondenserType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCondenserType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCondenserTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConic.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONIC",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConic else { return .null }
                switch index {
                case 0: return e.position.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConic else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConnectedFaceSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTEDFACESET",
            ownAttributes: [STEPAttributeDescriptor(name: "cfsFaces", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectedFaceSet else { return .null }
                switch index {
                case 0: return .list(e.cfsFaces.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectedFaceSet else { return }
                switch index {
                case 0: if case .list(let items) = value { e.cfsFaces = items.compactMap { $0.entityValue as? IFC4X3.IfcFace } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConnectionCurveGeometry.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTIONCURVEGEOMETRY",
            ownAttributes: [STEPAttributeDescriptor(name: "curveOnRelatingElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "curveOnRelatedElement", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectionCurveGeometry else { return .null }
                switch index {
                case 0: return e.curveOnRelatingElement.map { $0.stepEncode() } ?? .null
                case 1: return e.curveOnRelatedElement.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectionCurveGeometry else { return }
                switch index {
                case 0: e.curveOnRelatingElement = value.isNull ? nil : IFC4X3.IfcCurveOrEdgeCurve.stepDecode(value)
                case 1: e.curveOnRelatedElement = value.isNull ? nil : IFC4X3.IfcCurveOrEdgeCurve.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConnectionGeometry.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTIONGEOMETRY",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectionGeometry else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectionGeometry else { return }
            }
        )

        d[ObjectIdentifier(IfcConnectionPointEccentricity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTIONPOINTECCENTRICITY",
            ownAttributes: [STEPAttributeDescriptor(name: "eccentricityInX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "eccentricityInY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "eccentricityInZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectionPointEccentricity else { return .null }
                switch index {
                case 0: return e.eccentricityInX.map { .real($0) } ?? .null
                case 1: return e.eccentricityInY.map { .real($0) } ?? .null
                case 2: return e.eccentricityInZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectionPointEccentricity else { return }
                switch index {
                case 0: e.eccentricityInX = value.isNull ? nil : value.realValue
                case 1: e.eccentricityInY = value.isNull ? nil : value.realValue
                case 2: e.eccentricityInZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConnectionPointGeometry.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTIONPOINTGEOMETRY",
            ownAttributes: [STEPAttributeDescriptor(name: "pointOnRelatingElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "pointOnRelatedElement", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectionPointGeometry else { return .null }
                switch index {
                case 0: return e.pointOnRelatingElement.map { $0.stepEncode() } ?? .null
                case 1: return e.pointOnRelatedElement.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectionPointGeometry else { return }
                switch index {
                case 0: e.pointOnRelatingElement = value.isNull ? nil : IFC4X3.IfcPointOrVertexPoint.stepDecode(value)
                case 1: e.pointOnRelatedElement = value.isNull ? nil : IFC4X3.IfcPointOrVertexPoint.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConnectionSurfaceGeometry.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTIONSURFACEGEOMETRY",
            ownAttributes: [STEPAttributeDescriptor(name: "surfaceOnRelatingElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "surfaceOnRelatedElement", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectionSurfaceGeometry else { return .null }
                switch index {
                case 0: return e.surfaceOnRelatingElement.map { $0.stepEncode() } ?? .null
                case 1: return e.surfaceOnRelatedElement.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectionSurfaceGeometry else { return }
                switch index {
                case 0: e.surfaceOnRelatingElement = value.isNull ? nil : IFC4X3.IfcSurfaceOrFaceSurface.stepDecode(value)
                case 1: e.surfaceOnRelatedElement = value.isNull ? nil : IFC4X3.IfcSurfaceOrFaceSurface.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConnectionVolumeGeometry.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONNECTIONVOLUMEGEOMETRY",
            ownAttributes: [STEPAttributeDescriptor(name: "volumeOnRelatingElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "volumeOnRelatedElement", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConnectionVolumeGeometry else { return .null }
                switch index {
                case 0: return e.volumeOnRelatingElement.map { $0.stepEncode() } ?? .null
                case 1: return e.volumeOnRelatedElement.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConnectionVolumeGeometry else { return }
                switch index {
                case 0: e.volumeOnRelatingElement = value.isNull ? nil : IFC4X3.IfcSolidOrShell.stepDecode(value)
                case 1: e.volumeOnRelatedElement = value.isNull ? nil : IFC4X3.IfcSolidOrShell.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstraint.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRAINT",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "constraintGrade", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "constraintSource", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "creatingActor", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "creationTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "userDefinedGrade", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstraint else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.constraintGrade.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.constraintSource.map { .string($0) } ?? .null
                case 4: return e.creatingActor.map { $0.stepEncode() } ?? .null
                case 5: return e.creationTime.map { .string($0) } ?? .null
                case 6: return e.userDefinedGrade.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstraint else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.constraintGrade = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstraintEnum(rawValue: $0) }
                case 3: e.constraintSource = value.isNull ? nil : value.stringValue
                case 4: e.creatingActor = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 5: e.creationTime = value.isNull ? nil : value.stringValue
                case 6: e.userDefinedGrade = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionEquipmentResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONEQUIPMENTRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionEquipmentResource else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionEquipmentResource else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstructionEquipmentResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionEquipmentResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONEQUIPMENTRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionEquipmentResourceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionEquipmentResourceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstructionEquipmentResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionMaterialResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONMATERIALRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionMaterialResource else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionMaterialResource else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstructionMaterialResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionMaterialResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONMATERIALRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionMaterialResourceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionMaterialResourceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstructionMaterialResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionProductResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONPRODUCTRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionProductResource else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionProductResource else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstructionProductResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionProductResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONPRODUCTRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionProductResourceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionProductResourceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConstructionProductResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "usage", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "baseCosts", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "baseQuantity", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionResource else { return .null }
                switch index {
                case 0: return e.usage.map { .entityRef($0) } ?? .null
                case 1: return .list(e.baseCosts.map { .entityRef($0) })
                case 2: return e.baseQuantity.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionResource else { return }
                switch index {
                case 0: e.usage = value.isNull ? nil : value.entityValue as? IFC4X3.IfcResourceTime
                case 1: if case .list(let items) = value { e.baseCosts = items.compactMap { $0.entityValue as? IFC4X3.IfcAppliedValue } }
                case 2: e.baseQuantity = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPhysicalQuantity
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConstructionResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONSTRUCTIONRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "baseCosts", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "baseQuantity", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConstructionResourceType else { return .null }
                switch index {
                case 0: return .list(e.baseCosts.map { .entityRef($0) })
                case 1: return e.baseQuantity.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConstructionResourceType else { return }
                switch index {
                case 0: if case .list(let items) = value { e.baseCosts = items.compactMap { $0.entityValue as? IFC4X3.IfcAppliedValue } }
                case 1: e.baseQuantity = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPhysicalQuantity
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcContext.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONTEXT",
            ownAttributes: [STEPAttributeDescriptor(name: "objectType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "phase", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "representationContexts", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "unitsInContext", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcContext else { return .null }
                switch index {
                case 0: return e.objectType.map { .string($0) } ?? .null
                case 1: return e.longName.map { .string($0) } ?? .null
                case 2: return e.phase.map { .string($0) } ?? .null
                case 3: return .list(e.representationContexts.map { .entityRef($0) })
                case 4: return e.unitsInContext.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcContext else { return }
                switch index {
                case 0: e.objectType = value.isNull ? nil : value.stringValue
                case 1: e.longName = value.isNull ? nil : value.stringValue
                case 2: e.phase = value.isNull ? nil : value.stringValue
                case 3: if case .list(let items) = value { e.representationContexts = items.compactMap { $0.entityValue as? IFC4X3.IfcRepresentationContext } }
                case 4: e.unitsInContext = value.isNull ? nil : value.entityValue as? IFC4X3.IfcUnitAssignment
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcContextDependentUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONTEXTDEPENDENTUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcContextDependentUnit else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcContextDependentUnit else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcControl.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONTROL",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcControl else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcControl else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcController.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONTROLLER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcController else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcController else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcControllerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcControllerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONTROLLERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcControllerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcControllerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcControllerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConversionBasedUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONVERSIONBASEDUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "conversionFactor", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConversionBasedUnit else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.conversionFactor.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConversionBasedUnit else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.conversionFactor = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMeasureWithUnit
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConversionBasedUnitWithOffset.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONVERSIONBASEDUNITWITHOFFSET",
            ownAttributes: [STEPAttributeDescriptor(name: "conversionOffset", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConversionBasedUnitWithOffset else { return .null }
                switch index {
                case 0: return e.conversionOffset.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConversionBasedUnitWithOffset else { return }
                switch index {
                case 0: e.conversionOffset = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConveyorSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONVEYORSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConveyorSegment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConveyorSegment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConveyorSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcConveyorSegmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCONVEYORSEGMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcConveyorSegmentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcConveyorSegmentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConveyorSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCooledBeam.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOOLEDBEAM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCooledBeam else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCooledBeam else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCooledBeamTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCooledBeamType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOOLEDBEAMTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCooledBeamType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCooledBeamType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCooledBeamTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoolingTower.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOOLINGTOWER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoolingTower else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoolingTower else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCoolingTowerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoolingTowerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOOLINGTOWERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoolingTowerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoolingTowerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCoolingTowerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoordinateOperation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOORDINATEOPERATION",
            ownAttributes: [STEPAttributeDescriptor(name: "sourceCRS", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "targetCRS", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoordinateOperation else { return .null }
                switch index {
                case 0: return e.sourceCRS.map { $0.stepEncode() } ?? .null
                case 1: return e.targetCRS.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoordinateOperation else { return }
                switch index {
                case 0: e.sourceCRS = value.isNull ? nil : IFC4X3.IfcCoordinateReferenceSystemSelect.stepDecode(value)
                case 1: e.targetCRS = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCoordinateReferenceSystem
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoordinateReferenceSystem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOORDINATEREFERENCESYSTEM",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "geodeticDatum", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoordinateReferenceSystem else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.geodeticDatum.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoordinateReferenceSystem else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.geodeticDatum = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCosineSpiral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOSINESPIRAL",
            ownAttributes: [STEPAttributeDescriptor(name: "cosineTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "constantTerm", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCosineSpiral else { return .null }
                switch index {
                case 0: return e.cosineTerm.map { .real($0) } ?? .null
                case 1: return e.constantTerm.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCosineSpiral else { return }
                switch index {
                case 0: e.cosineTerm = value.isNull ? nil : value.realValue
                case 1: e.constantTerm = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCostItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOSTITEM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "costValues", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "costQuantities", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCostItem else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return .list(e.costValues.map { .entityRef($0) })
                case 2: return .list(e.costQuantities.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCostItem else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCostItemTypeEnum(rawValue: $0) }
                case 1: if case .list(let items) = value { e.costValues = items.compactMap { $0.entityValue as? IFC4X3.IfcCostValue } }
                case 2: if case .list(let items) = value { e.costQuantities = items.compactMap { $0.entityValue as? IFC4X3.IfcPhysicalQuantity } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCostSchedule.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOSTSCHEDULE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "status", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "submittedOn", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "updateDate", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCostSchedule else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.status.map { .string($0) } ?? .null
                case 2: return e.submittedOn.map { .string($0) } ?? .null
                case 3: return e.updateDate.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCostSchedule else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCostScheduleTypeEnum(rawValue: $0) }
                case 1: e.status = value.isNull ? nil : value.stringValue
                case 2: e.submittedOn = value.isNull ? nil : value.stringValue
                case 3: e.updateDate = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCostValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOSTVALUE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCostValue else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCostValue else { return }
            }
        )

        d[ObjectIdentifier(IfcCourse.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOURSE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCourse else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCourse else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCourseTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCourseType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOURSETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCourseType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCourseType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCourseTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCovering.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOVERING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCovering else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCovering else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCoveringTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCoveringType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCOVERINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCoveringType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCoveringType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCoveringTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCrewResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCREWRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCrewResource else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCrewResource else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCrewResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCrewResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCREWRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCrewResourceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCrewResourceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCrewResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCsgPrimitive3D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCSGPRIMITIVE3D",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCsgPrimitive3D else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCsgPrimitive3D else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCsgSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCSGSOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "treeRootExpression", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCsgSolid else { return .null }
                switch index {
                case 0: return e.treeRootExpression.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCsgSolid else { return }
                switch index {
                case 0: e.treeRootExpression = value.isNull ? nil : IFC4X3.IfcCsgSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurrencyRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURRENCYRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingMonetaryUnit", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedMonetaryUnit", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "exchangeRate", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "rateDateTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "rateSource", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurrencyRelationship else { return .null }
                switch index {
                case 0: return e.relatingMonetaryUnit.map { .entityRef($0) } ?? .null
                case 1: return e.relatedMonetaryUnit.map { .entityRef($0) } ?? .null
                case 2: return e.exchangeRate.map { .real($0) } ?? .null
                case 3: return e.rateDateTime.map { .string($0) } ?? .null
                case 4: return e.rateSource.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurrencyRelationship else { return }
                switch index {
                case 0: e.relatingMonetaryUnit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMonetaryUnit
                case 1: e.relatedMonetaryUnit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMonetaryUnit
                case 2: e.exchangeRate = value.isNull ? nil : value.realValue
                case 3: e.rateDateTime = value.isNull ? nil : value.stringValue
                case 4: e.rateSource = value.isNull ? nil : value.entityValue as? IFC4X3.IfcLibraryInformation
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurtainWall.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURTAINWALL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurtainWall else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurtainWall else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCurtainWallTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurtainWallType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURTAINWALLTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurtainWallType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurtainWallType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCurtainWallTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurve else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurve else { return }
            }
        )

        d[ObjectIdentifier(IfcCurveBoundedPlane.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVEBOUNDEDPLANE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "outerBoundary", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "innerBoundaries", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveBoundedPlane else { return .null }
                switch index {
                case 0: return e.basisSurface.map { .entityRef($0) } ?? .null
                case 1: return e.outerBoundary.map { .entityRef($0) } ?? .null
                case 2: return .list(e.innerBoundaries.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveBoundedPlane else { return }
                switch index {
                case 0: e.basisSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPlane
                case 1: e.outerBoundary = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 2: if case .list(let items) = value { e.innerBoundaries = items.compactMap { $0.entityValue as? IFC4X3.IfcCurve } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurveBoundedSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVEBOUNDEDSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "boundaries", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "implicitOuter", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveBoundedSurface else { return .null }
                switch index {
                case 0: return e.basisSurface.map { .entityRef($0) } ?? .null
                case 1: return .list(e.boundaries.map { .entityRef($0) })
                case 2: return e.implicitOuter.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveBoundedSurface else { return }
                switch index {
                case 0: e.basisSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                case 1: if case .list(let items) = value { e.boundaries = items.compactMap { $0.entityValue as? IFC4X3.IfcBoundaryCurve } }
                case 2: e.implicitOuter = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurveSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVESEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "placement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "segmentStart", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "segmentLength", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "parentCurve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveSegment else { return .null }
                switch index {
                case 0: return e.placement.map { .entityRef($0) } ?? .null
                case 1: return e.segmentStart.map { $0.stepEncode() } ?? .null
                case 2: return e.segmentLength.map { $0.stepEncode() } ?? .null
                case 3: return e.parentCurve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveSegment else { return }
                switch index {
                case 0: e.placement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPlacement
                case 1: e.segmentStart = value.isNull ? nil : IFC4X3.IfcCurveMeasureSelect.stepDecode(value)
                case 2: e.segmentLength = value.isNull ? nil : IFC4X3.IfcCurveMeasureSelect.stepDecode(value)
                case 3: e.parentCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurveStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVESTYLE",
            ownAttributes: [STEPAttributeDescriptor(name: "curveFont", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "curveWidth", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "curveColour", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "modelOrDraughting", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveStyle else { return .null }
                switch index {
                case 0: return e.curveFont.map { $0.stepEncode() } ?? .null
                case 1: return e.curveWidth.map { $0.stepEncode() } ?? .null
                case 2: return e.curveColour.map { $0.stepEncode() } ?? .null
                case 3: return e.modelOrDraughting.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveStyle else { return }
                switch index {
                case 0: e.curveFont = value.isNull ? nil : IFC4X3.IfcCurveFontOrScaledCurveFontSelect.stepDecode(value)
                case 1: e.curveWidth = value.isNull ? nil : IFC4X3.IfcSizeSelect.stepDecode(value)
                case 2: e.curveColour = value.isNull ? nil : IFC4X3.IfcColour.stepDecode(value)
                case 3: e.modelOrDraughting = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurveStyleFont.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVESTYLEFONT",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "patternList", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveStyleFont else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return .list(e.patternList.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveStyleFont else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.patternList = items.compactMap { $0.entityValue as? IFC4X3.IfcCurveStyleFontPattern } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurveStyleFontAndScaling.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVESTYLEFONTANDSCALING",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "curveStyleFont", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "curveFontScaling", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveStyleFontAndScaling else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.curveStyleFont.map { $0.stepEncode() } ?? .null
                case 2: return e.curveFontScaling.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveStyleFontAndScaling else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.curveStyleFont = value.isNull ? nil : IFC4X3.IfcCurveStyleFontSelect.stepDecode(value)
                case 2: e.curveFontScaling = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCurveStyleFontPattern.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCURVESTYLEFONTPATTERN",
            ownAttributes: [STEPAttributeDescriptor(name: "visibleSegmentLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "invisibleSegmentLength", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCurveStyleFontPattern else { return .null }
                switch index {
                case 0: return e.visibleSegmentLength.map { .real($0) } ?? .null
                case 1: return e.invisibleSegmentLength.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCurveStyleFontPattern else { return }
                switch index {
                case 0: e.visibleSegmentLength = value.isNull ? nil : value.realValue
                case 1: e.invisibleSegmentLength = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcCylindricalSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCCYLINDRICALSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcCylindricalSurface else { return .null }
                switch index {
                case 0: return e.radius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcCylindricalSurface else { return }
                switch index {
                case 0: e.radius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDamper.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDAMPER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDamper else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDamper else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDamperTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDamperType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDAMPERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDamperType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDamperType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDamperTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDeepFoundation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDEEPFOUNDATION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDeepFoundation else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDeepFoundation else { return }
            }
        )

        d[ObjectIdentifier(IfcDeepFoundationType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDEEPFOUNDATIONTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDeepFoundationType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDeepFoundationType else { return }
            }
        )

        d[ObjectIdentifier(IfcDerivedProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDERIVEDPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "parentProfile", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "`operator`", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "label", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDerivedProfileDef else { return .null }
                switch index {
                case 0: return e.parentProfile.map { .entityRef($0) } ?? .null
                case 1: return e.`operator`.map { .entityRef($0) } ?? .null
                case 2: return e.label.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDerivedProfileDef else { return }
                switch index {
                case 0: e.parentProfile = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                case 1: e.`operator` = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianTransformationOperator2D
                case 2: e.label = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_2(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcDerivedUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDERIVEDUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "elements", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "unitType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDerivedUnit else { return .null }
                switch index {
                case 0: return .list(e.elements.map { .entityRef($0) })
                case 1: return e.unitType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.userDefinedType.map { .string($0) } ?? .null
                case 3: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDerivedUnit else { return }
                switch index {
                case 0: if case .list(let items) = value { e.elements = items.compactMap { $0.entityValue as? IFC4X3.IfcDerivedUnitElement } }
                case 1: e.unitType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDerivedUnitEnum(rawValue: $0) }
                case 2: e.userDefinedType = value.isNull ? nil : value.stringValue
                case 3: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDerivedUnitElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDERIVEDUNITELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "unit", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "exponent", kind: .integer, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDerivedUnitElement else { return .null }
                switch index {
                case 0: return e.unit.map { .entityRef($0) } ?? .null
                case 1: return e.exponent.map { .integer($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDerivedUnitElement else { return }
                switch index {
                case 0: e.unit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcNamedUnit
                case 1: e.exponent = value.isNull ? nil : value.integerValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDimensionalExponents.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDIMENSIONALEXPONENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "lengthExponent", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "massExponent", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "timeExponent", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "electricCurrentExponent", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "thermodynamicTemperatureExponent", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "amountOfSubstanceExponent", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "luminousIntensityExponent", kind: .integer, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDimensionalExponents else { return .null }
                switch index {
                case 0: return e.lengthExponent.map { .integer($0) } ?? .null
                case 1: return e.massExponent.map { .integer($0) } ?? .null
                case 2: return e.timeExponent.map { .integer($0) } ?? .null
                case 3: return e.electricCurrentExponent.map { .integer($0) } ?? .null
                case 4: return e.thermodynamicTemperatureExponent.map { .integer($0) } ?? .null
                case 5: return e.amountOfSubstanceExponent.map { .integer($0) } ?? .null
                case 6: return e.luminousIntensityExponent.map { .integer($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDimensionalExponents else { return }
                switch index {
                case 0: e.lengthExponent = value.isNull ? nil : value.integerValue
                case 1: e.massExponent = value.isNull ? nil : value.integerValue
                case 2: e.timeExponent = value.isNull ? nil : value.integerValue
                case 3: e.electricCurrentExponent = value.isNull ? nil : value.integerValue
                case 4: e.thermodynamicTemperatureExponent = value.isNull ? nil : value.integerValue
                case 5: e.amountOfSubstanceExponent = value.isNull ? nil : value.integerValue
                case 6: e.luminousIntensityExponent = value.isNull ? nil : value.integerValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDirection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDIRECTION",
            ownAttributes: [STEPAttributeDescriptor(name: "directionRatios", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDirection else { return .null }
                switch index {
                case 0: return .list(e.directionRatios.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDirection else { return }
                switch index {
                case 0: if case .list(let items) = value { e.directionRatios = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDirectrixCurveSweptAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDIRECTRIXCURVESWEPTAREASOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "directrix", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "startParam", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "endParam", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDirectrixCurveSweptAreaSolid else { return .null }
                switch index {
                case 0: return e.directrix.map { .entityRef($0) } ?? .null
                case 1: return e.startParam.map { $0.stepEncode() } ?? .null
                case 2: return e.endParam.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDirectrixCurveSweptAreaSolid else { return }
                switch index {
                case 0: e.directrix = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: e.startParam = value.isNull ? nil : IFC4X3.IfcCurveMeasureSelect.stepDecode(value)
                case 2: e.endParam = value.isNull ? nil : IFC4X3.IfcCurveMeasureSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDirectrixDerivedReferenceSweptAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDIRECTRIXDERIVEDREFERENCESWEPTAREASOLID",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDirectrixDerivedReferenceSweptAreaSolid else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDirectrixDerivedReferenceSweptAreaSolid else { return }
            }
        )

        d[ObjectIdentifier(IfcDiscreteAccessory.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISCRETEACCESSORY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDiscreteAccessory else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDiscreteAccessory else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDiscreteAccessoryTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDiscreteAccessoryType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISCRETEACCESSORYTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDiscreteAccessoryType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDiscreteAccessoryType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDiscreteAccessoryTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDistributionBoard.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONBOARD",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionBoard else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionBoard else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionBoardTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDistributionBoardType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONBOARDTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionBoardType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionBoardType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionBoardTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDistributionChamberElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONCHAMBERELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionChamberElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionChamberElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionChamberElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDistributionChamberElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONCHAMBERELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionChamberElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionChamberElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionChamberElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDistributionCircuit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONCIRCUIT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionCircuit else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionCircuit else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionControlElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONCONTROLELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionControlElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionControlElement else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionControlElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONCONTROLELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionControlElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionControlElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionElement else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionFlowElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONFLOWELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionFlowElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionFlowElement else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionFlowElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONFLOWELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionFlowElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionFlowElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcDistributionPort.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONPORT",
            ownAttributes: [STEPAttributeDescriptor(name: "flowDirection", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "systemType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionPort else { return .null }
                switch index {
                case 0: return e.flowDirection.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.systemType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionPort else { return }
                switch index {
                case 0: e.flowDirection = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFlowDirectionEnum(rawValue: $0) }
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionPortTypeEnum(rawValue: $0) }
                case 2: e.systemType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionSystemEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDistributionSystem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDISTRIBUTIONSYSTEM",
            ownAttributes: [STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDistributionSystem else { return .null }
                switch index {
                case 0: return e.longName.map { .string($0) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDistributionSystem else { return }
                switch index {
                case 0: e.longName = value.isNull ? nil : value.stringValue
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDistributionSystemEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDocumentInformation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOCUMENTINFORMATION",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "location", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "purpose", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "intendedUse", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scope", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "revision", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "documentOwner", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "editors", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "creationTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "lastRevisionTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "electronicFormat", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "validFrom", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "validUntil", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "confidentiality", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "status", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDocumentInformation else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.name.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                case 3: return e.location.map { .string($0) } ?? .null
                case 4: return e.purpose.map { .string($0) } ?? .null
                case 5: return e.intendedUse.map { .string($0) } ?? .null
                case 6: return e.scope.map { .string($0) } ?? .null
                case 7: return e.revision.map { .string($0) } ?? .null
                case 8: return e.documentOwner.map { $0.stepEncode() } ?? .null
                case 9: return e.editors.map { $0.stepEncode() } ?? .null
                case 10: return e.creationTime.map { .string($0) } ?? .null
                case 11: return e.lastRevisionTime.map { .string($0) } ?? .null
                case 12: return e.electronicFormat.map { .string($0) } ?? .null
                case 13: return e.validFrom.map { .string($0) } ?? .null
                case 14: return e.validUntil.map { .string($0) } ?? .null
                case 15: return e.confidentiality.map { .enumeration($0.rawValue) } ?? .null
                case 16: return e.status.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDocumentInformation else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.name = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                case 3: e.location = value.isNull ? nil : value.stringValue
                case 4: e.purpose = value.isNull ? nil : value.stringValue
                case 5: e.intendedUse = value.isNull ? nil : value.stringValue
                case 6: e.scope = value.isNull ? nil : value.stringValue
                case 7: e.revision = value.isNull ? nil : value.stringValue
                case 8: e.documentOwner = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 9: e.editors = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 10: e.creationTime = value.isNull ? nil : value.stringValue
                case 11: e.lastRevisionTime = value.isNull ? nil : value.stringValue
                case 12: e.electronicFormat = value.isNull ? nil : value.stringValue
                case 13: e.validFrom = value.isNull ? nil : value.stringValue
                case 14: e.validUntil = value.isNull ? nil : value.stringValue
                case 15: e.confidentiality = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDocumentConfidentialityEnum(rawValue: $0) }
                case 16: e.status = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDocumentStatusEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDocumentInformationRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOCUMENTINFORMATIONRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingDocument", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedDocuments", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relationshipType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDocumentInformationRelationship else { return .null }
                switch index {
                case 0: return e.relatingDocument.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedDocuments.map { .entityRef($0) })
                case 2: return e.relationshipType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDocumentInformationRelationship else { return }
                switch index {
                case 0: e.relatingDocument = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDocumentInformation
                case 1: if case .list(let items) = value { e.relatedDocuments = items.compactMap { $0.entityValue as? IFC4X3.IfcDocumentInformation } }
                case 2: e.relationshipType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDocumentReference.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOCUMENTREFERENCE",
            ownAttributes: [STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "referencedDocument", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDocumentReference else { return .null }
                switch index {
                case 0: return e.description.map { .string($0) } ?? .null
                case 1: return e.referencedDocument.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDocumentReference else { return }
                switch index {
                case 0: e.description = value.isNull ? nil : value.stringValue
                case 1: e.referencedDocument = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDocumentInformation
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDoor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOOR",
            ownAttributes: [STEPAttributeDescriptor(name: "overallHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "overallWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "operationType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedOperationType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDoor else { return .null }
                switch index {
                case 0: return e.overallHeight.map { .real($0) } ?? .null
                case 1: return e.overallWidth.map { .real($0) } ?? .null
                case 2: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.operationType.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.userDefinedOperationType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDoor else { return }
                switch index {
                case 0: e.overallHeight = value.isNull ? nil : value.realValue
                case 1: e.overallWidth = value.isNull ? nil : value.realValue
                case 2: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDoorTypeEnum(rawValue: $0) }
                case 3: e.operationType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDoorTypeOperationEnum(rawValue: $0) }
                case 4: e.userDefinedOperationType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDoorLiningProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOORLININGPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "liningDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "liningThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "thresholdDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "thresholdThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transomThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transomOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "liningOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "thresholdOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "casingThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "casingDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "shapeAspectStyle", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "liningToPanelOffsetX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "liningToPanelOffsetY", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDoorLiningProperties else { return .null }
                switch index {
                case 0: return e.liningDepth.map { .real($0) } ?? .null
                case 1: return e.liningThickness.map { .real($0) } ?? .null
                case 2: return e.thresholdDepth.map { .real($0) } ?? .null
                case 3: return e.thresholdThickness.map { .real($0) } ?? .null
                case 4: return e.transomThickness.map { .real($0) } ?? .null
                case 5: return e.transomOffset.map { .real($0) } ?? .null
                case 6: return e.liningOffset.map { .real($0) } ?? .null
                case 7: return e.thresholdOffset.map { .real($0) } ?? .null
                case 8: return e.casingThickness.map { .real($0) } ?? .null
                case 9: return e.casingDepth.map { .real($0) } ?? .null
                case 10: return e.shapeAspectStyle.map { .entityRef($0) } ?? .null
                case 11: return e.liningToPanelOffsetX.map { .real($0) } ?? .null
                case 12: return e.liningToPanelOffsetY.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDoorLiningProperties else { return }
                switch index {
                case 0: e.liningDepth = value.isNull ? nil : value.realValue
                case 1: e.liningThickness = value.isNull ? nil : value.realValue
                case 2: e.thresholdDepth = value.isNull ? nil : value.realValue
                case 3: e.thresholdThickness = value.isNull ? nil : value.realValue
                case 4: e.transomThickness = value.isNull ? nil : value.realValue
                case 5: e.transomOffset = value.isNull ? nil : value.realValue
                case 6: e.liningOffset = value.isNull ? nil : value.realValue
                case 7: e.thresholdOffset = value.isNull ? nil : value.realValue
                case 8: e.casingThickness = value.isNull ? nil : value.realValue
                case 9: e.casingDepth = value.isNull ? nil : value.realValue
                case 10: e.shapeAspectStyle = value.isNull ? nil : value.entityValue as? IFC4X3.IfcShapeAspect
                case 11: e.liningToPanelOffsetX = value.isNull ? nil : value.realValue
                case 12: e.liningToPanelOffsetY = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDoorPanelProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOORPANELPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "panelDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "panelOperation", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "panelWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "panelPosition", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "shapeAspectStyle", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDoorPanelProperties else { return .null }
                switch index {
                case 0: return e.panelDepth.map { .real($0) } ?? .null
                case 1: return e.panelOperation.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.panelWidth.map { .real($0) } ?? .null
                case 3: return e.panelPosition.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.shapeAspectStyle.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDoorPanelProperties else { return }
                switch index {
                case 0: e.panelDepth = value.isNull ? nil : value.realValue
                case 1: e.panelOperation = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDoorPanelOperationEnum(rawValue: $0) }
                case 2: e.panelWidth = value.isNull ? nil : value.realValue
                case 3: e.panelPosition = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDoorPanelPositionEnum(rawValue: $0) }
                case 4: e.shapeAspectStyle = value.isNull ? nil : value.entityValue as? IFC4X3.IfcShapeAspect
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDoorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDOORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "operationType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "parameterTakesPrecedence", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "userDefinedOperationType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDoorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.operationType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.parameterTakesPrecedence.map { .boolean($0) } ?? .null
                case 3: return e.userDefinedOperationType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDoorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDoorTypeEnum(rawValue: $0) }
                case 1: e.operationType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDoorTypeOperationEnum(rawValue: $0) }
                case 2: e.parameterTakesPrecedence = value.isNull ? nil : value.boolValue
                case 3: e.userDefinedOperationType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDraughtingPreDefinedColour.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDRAUGHTINGPREDEFINEDCOLOUR",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDraughtingPreDefinedColour else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDraughtingPreDefinedColour else { return }
            }
        )

        d[ObjectIdentifier(IfcDraughtingPreDefinedCurveFont.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDRAUGHTINGPREDEFINEDCURVEFONT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDraughtingPreDefinedCurveFont else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDraughtingPreDefinedCurveFont else { return }
            }
        )

        d[ObjectIdentifier(IfcDuctFitting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDUCTFITTING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDuctFitting else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDuctFitting else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDuctFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDuctFittingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDUCTFITTINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDuctFittingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDuctFittingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDuctFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDuctSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDUCTSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDuctSegment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDuctSegment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDuctSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDuctSegmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDUCTSEGMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDuctSegmentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDuctSegmentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDuctSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDuctSilencer.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDUCTSILENCER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDuctSilencer else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDuctSilencer else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDuctSilencerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcDuctSilencerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCDUCTSILENCERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcDuctSilencerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcDuctSilencerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDuctSilencerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEarthworksCut.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEARTHWORKSCUT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEarthworksCut else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEarthworksCut else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEarthworksCutTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEarthworksElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEARTHWORKSELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEarthworksElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEarthworksElement else { return }
            }
        )

        d[ObjectIdentifier(IfcEarthworksFill.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEARTHWORKSFILL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEarthworksFill else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEarthworksFill else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEarthworksFillTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEdge.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEDGE",
            ownAttributes: [STEPAttributeDescriptor(name: "edgeStart", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "edgeEnd", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEdge else { return .null }
                switch index {
                case 0: return e.edgeStart.map { .entityRef($0) } ?? .null
                case 1: return e.edgeEnd.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEdge else { return }
                switch index {
                case 0: e.edgeStart = value.isNull ? nil : value.entityValue as? IFC4X3.IfcVertex
                case 1: e.edgeEnd = value.isNull ? nil : value.entityValue as? IFC4X3.IfcVertex
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEdgeCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEDGECURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "edgeGeometry", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "sameSense", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEdgeCurve else { return .null }
                switch index {
                case 0: return e.edgeGeometry.map { .entityRef($0) } ?? .null
                case 1: return e.sameSense.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEdgeCurve else { return }
                switch index {
                case 0: e.edgeGeometry = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: e.sameSense = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEdgeLoop.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEDGELOOP",
            ownAttributes: [STEPAttributeDescriptor(name: "edgeList", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEdgeLoop else { return .null }
                switch index {
                case 0: return .list(e.edgeList.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEdgeLoop else { return }
                switch index {
                case 0: if case .list(let items) = value { e.edgeList = items.compactMap { $0.entityValue as? IFC4X3.IfcOrientedEdge } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricAppliance.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICAPPLIANCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricAppliance else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricAppliance else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricApplianceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICAPPLIANCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricApplianceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricApplianceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricDistributionBoard.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICDISTRIBUTIONBOARD",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricDistributionBoard else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricDistributionBoard else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricDistributionBoardTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricDistributionBoardType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICDISTRIBUTIONBOARDTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricDistributionBoardType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricDistributionBoardType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricDistributionBoardTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricFlowStorageDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICFLOWSTORAGEDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricFlowStorageDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricFlowStorageDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricFlowStorageDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricFlowStorageDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICFLOWSTORAGEDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricFlowStorageDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricFlowStorageDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricFlowStorageDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricFlowTreatmentDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICFLOWTREATMENTDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricFlowTreatmentDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricFlowTreatmentDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricFlowTreatmentDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricFlowTreatmentDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICFLOWTREATMENTDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricFlowTreatmentDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricFlowTreatmentDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricFlowTreatmentDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricGenerator.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICGENERATOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricGenerator else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricGenerator else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricGeneratorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricGeneratorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICGENERATORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricGeneratorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricGeneratorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricGeneratorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricMotor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICMOTOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricMotor else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricMotor else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricMotorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricMotorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICMOTORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricMotorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricMotorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricMotorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricTimeControl.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICTIMECONTROL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricTimeControl else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricTimeControl else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricTimeControlTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElectricTimeControlType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELECTRICTIMECONTROLTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElectricTimeControlType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElectricTimeControlType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElectricTimeControlTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "tag", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElement else { return .null }
                switch index {
                case 0: return e.tag.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElement else { return }
                switch index {
                case 0: e.tag = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElementAssembly.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTASSEMBLY",
            ownAttributes: [STEPAttributeDescriptor(name: "assemblyPlace", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementAssembly else { return .null }
                switch index {
                case 0: return e.assemblyPlace.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementAssembly else { return }
                switch index {
                case 0: e.assemblyPlace = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAssemblyPlaceEnum(rawValue: $0) }
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElementAssemblyTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElementAssemblyType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTASSEMBLYTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementAssemblyType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementAssemblyType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElementAssemblyTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElementComponent.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTCOMPONENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementComponent else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementComponent else { return }
            }
        )

        d[ObjectIdentifier(IfcElementComponentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTCOMPONENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementComponentType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementComponentType else { return }
            }
        )

        d[ObjectIdentifier(IfcElementQuantity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTQUANTITY",
            ownAttributes: [STEPAttributeDescriptor(name: "methodOfMeasurement", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "quantities", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementQuantity else { return .null }
                switch index {
                case 0: return e.methodOfMeasurement.map { .string($0) } ?? .null
                case 1: return .list(e.quantities.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementQuantity else { return }
                switch index {
                case 0: e.methodOfMeasurement = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.quantities = items.compactMap { $0.entityValue as? IFC4X3.IfcPhysicalQuantity } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "elementType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementType else { return .null }
                switch index {
                case 0: return e.elementType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementType else { return }
                switch index {
                case 0: e.elementType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcElementarySurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELEMENTARYSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcElementarySurface else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcElementarySurface else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEllipse.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELLIPSE",
            ownAttributes: [STEPAttributeDescriptor(name: "semiAxis1", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "semiAxis2", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEllipse else { return .null }
                switch index {
                case 0: return e.semiAxis1.map { .real($0) } ?? .null
                case 1: return e.semiAxis2.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEllipse else { return }
                switch index {
                case 0: e.semiAxis1 = value.isNull ? nil : value.realValue
                case 1: e.semiAxis2 = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEllipseProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCELLIPSEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "semiAxis1", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "semiAxis2", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEllipseProfileDef else { return .null }
                switch index {
                case 0: return e.semiAxis1.map { .real($0) } ?? .null
                case 1: return e.semiAxis2.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEllipseProfileDef else { return }
                switch index {
                case 0: e.semiAxis1 = value.isNull ? nil : value.realValue
                case 1: e.semiAxis2 = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEnergyConversionDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCENERGYCONVERSIONDEVICE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEnergyConversionDevice else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEnergyConversionDevice else { return }
            }
        )

        d[ObjectIdentifier(IfcEnergyConversionDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCENERGYCONVERSIONDEVICETYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEnergyConversionDeviceType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEnergyConversionDeviceType else { return }
            }
        )

        d[ObjectIdentifier(IfcEngine.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCENGINE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEngine else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEngine else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEngineTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEngineType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCENGINETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEngineType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEngineType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEngineTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEvaporativeCooler.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVAPORATIVECOOLER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEvaporativeCooler else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEvaporativeCooler else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEvaporativeCoolerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEvaporativeCoolerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVAPORATIVECOOLERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEvaporativeCoolerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEvaporativeCoolerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEvaporativeCoolerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEvaporator.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVAPORATOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEvaporator else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEvaporator else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEvaporatorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEvaporatorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVAPORATORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEvaporatorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEvaporatorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEvaporatorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEvent.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "eventTriggerType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedEventTriggerType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "eventOccurenceTime", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEvent else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.eventTriggerType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.userDefinedEventTriggerType.map { .string($0) } ?? .null
                case 3: return e.eventOccurenceTime.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEvent else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEventTypeEnum(rawValue: $0) }
                case 1: e.eventTriggerType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEventTriggerTypeEnum(rawValue: $0) }
                case 2: e.userDefinedEventTriggerType = value.isNull ? nil : value.stringValue
                case 3: e.eventOccurenceTime = value.isNull ? nil : value.entityValue as? IFC4X3.IfcEventTime
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEventTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVENTTIME",
            ownAttributes: [STEPAttributeDescriptor(name: "actualDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "earlyDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "lateDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scheduleDate", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEventTime else { return .null }
                switch index {
                case 0: return e.actualDate.map { .string($0) } ?? .null
                case 1: return e.earlyDate.map { .string($0) } ?? .null
                case 2: return e.lateDate.map { .string($0) } ?? .null
                case 3: return e.scheduleDate.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEventTime else { return }
                switch index {
                case 0: e.actualDate = value.isNull ? nil : value.stringValue
                case 1: e.earlyDate = value.isNull ? nil : value.stringValue
                case 2: e.lateDate = value.isNull ? nil : value.stringValue
                case 3: e.scheduleDate = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcEventType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEVENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "eventTriggerType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedEventTriggerType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcEventType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.eventTriggerType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.userDefinedEventTriggerType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcEventType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEventTypeEnum(rawValue: $0) }
                case 1: e.eventTriggerType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcEventTriggerTypeEnum(rawValue: $0) }
                case 2: e.userDefinedEventTriggerType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcExtendedProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTENDEDPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "properties", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExtendedProperties else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return .list(e.properties.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExtendedProperties else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: if case .list(let items) = value { e.properties = items.compactMap { $0.entityValue as? IFC4X3.IfcProperty } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcExternalInformation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALINFORMATION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternalInformation else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternalInformation else { return }
            }
        )

        d[ObjectIdentifier(IfcExternalReference.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALREFERENCE",
            ownAttributes: [STEPAttributeDescriptor(name: "location", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternalReference else { return .null }
                switch index {
                case 0: return e.location.map { .string($0) } ?? .null
                case 1: return e.identification.map { .string($0) } ?? .null
                case 2: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternalReference else { return }
                switch index {
                case 0: e.location = value.isNull ? nil : value.stringValue
                case 1: e.identification = value.isNull ? nil : value.stringValue
                case 2: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcExternalReferenceRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALREFERENCERELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingReference", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedResourceObjects", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternalReferenceRelationship else { return .null }
                switch index {
                case 0: return e.relatingReference.map { .entityRef($0) } ?? .null
                case 1: return e.relatedResourceObjects.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternalReferenceRelationship else { return }
                switch index {
                case 0: e.relatingReference = value.isNull ? nil : value.entityValue as? IFC4X3.IfcExternalReference
                case 1: e.relatedResourceObjects = value.isNull ? nil : IFC4X3.IfcResourceObjectSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcExternalSpatialElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALSPATIALELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternalSpatialElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternalSpatialElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcExternalSpatialElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcExternalSpatialStructureElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALSPATIALSTRUCTUREELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternalSpatialStructureElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternalSpatialStructureElement else { return }
            }
        )

        d[ObjectIdentifier(IfcExternallyDefinedHatchStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALLYDEFINEDHATCHSTYLE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternallyDefinedHatchStyle else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternallyDefinedHatchStyle else { return }
            }
        )

        d[ObjectIdentifier(IfcExternallyDefinedSurfaceStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALLYDEFINEDSURFACESTYLE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternallyDefinedSurfaceStyle else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternallyDefinedSurfaceStyle else { return }
            }
        )

        d[ObjectIdentifier(IfcExternallyDefinedTextFont.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTERNALLYDEFINEDTEXTFONT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExternallyDefinedTextFont else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExternallyDefinedTextFont else { return }
            }
        )

        d[ObjectIdentifier(IfcExtrudedAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTRUDEDAREASOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "extrudedDirection", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExtrudedAreaSolid else { return .null }
                switch index {
                case 0: return e.extrudedDirection.map { .entityRef($0) } ?? .null
                case 1: return e.depth.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExtrudedAreaSolid else { return }
                switch index {
                case 0: e.extrudedDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.depth = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcExtrudedAreaSolidTapered.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCEXTRUDEDAREASOLIDTAPERED",
            ownAttributes: [STEPAttributeDescriptor(name: "endSweptArea", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcExtrudedAreaSolidTapered else { return .null }
                switch index {
                case 0: return e.endSweptArea.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcExtrudedAreaSolidTapered else { return }
                switch index {
                case 0: e.endSweptArea = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFace.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "bounds", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFace else { return .null }
                switch index {
                case 0: return .list(e.bounds.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFace else { return }
                switch index {
                case 0: if case .list(let items) = value { e.bounds = items.compactMap { $0.entityValue as? IFC4X3.IfcFaceBound } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFaceBasedSurfaceModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACEBASEDSURFACEMODEL",
            ownAttributes: [STEPAttributeDescriptor(name: "fbsmFaces", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFaceBasedSurfaceModel else { return .null }
                switch index {
                case 0: return .list(e.fbsmFaces.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFaceBasedSurfaceModel else { return }
                switch index {
                case 0: if case .list(let items) = value { e.fbsmFaces = items.compactMap { $0.entityValue as? IFC4X3.IfcConnectedFaceSet } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFaceBound.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACEBOUND",
            ownAttributes: [STEPAttributeDescriptor(name: "bound", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "orientation", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFaceBound else { return .null }
                switch index {
                case 0: return e.bound.map { .entityRef($0) } ?? .null
                case 1: return e.orientation.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFaceBound else { return }
                switch index {
                case 0: e.bound = value.isNull ? nil : value.entityValue as? IFC4X3.IfcLoop
                case 1: e.orientation = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFaceOuterBound.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACEOUTERBOUND",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFaceOuterBound else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFaceOuterBound else { return }
            }
        )

        d[ObjectIdentifier(IfcFaceSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACESURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "faceSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "sameSense", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFaceSurface else { return .null }
                switch index {
                case 0: return e.faceSurface.map { .entityRef($0) } ?? .null
                case 1: return e.sameSense.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFaceSurface else { return }
                switch index {
                case 0: e.faceSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                case 1: e.sameSense = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFacetedBrep.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACETEDBREP",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFacetedBrep else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFacetedBrep else { return }
            }
        )

        d[ObjectIdentifier(IfcFacetedBrepWithVoids.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACETEDBREPWITHVOIDS",
            ownAttributes: [STEPAttributeDescriptor(name: "voids", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFacetedBrepWithVoids else { return .null }
                switch index {
                case 0: return .list(e.voids.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFacetedBrepWithVoids else { return }
                switch index {
                case 0: if case .list(let items) = value { e.voids = items.compactMap { $0.entityValue as? IFC4X3.IfcClosedShell } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFacility.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACILITY",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFacility else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFacility else { return }
            }
        )

        d[ObjectIdentifier(IfcFacilityPart.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACILITYPART",
            ownAttributes: [STEPAttributeDescriptor(name: "usageType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFacilityPart else { return .null }
                switch index {
                case 0: return e.usageType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFacilityPart else { return }
                switch index {
                case 0: e.usageType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFacilityUsageEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFacilityPartCommon.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFACILITYPARTCOMMON",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFacilityPartCommon else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFacilityPartCommon else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFacilityPartCommonTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFailureConnectionCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFAILURECONNECTIONCONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "tensionFailureX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "tensionFailureY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "tensionFailureZ", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "compressionFailureX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "compressionFailureY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "compressionFailureZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFailureConnectionCondition else { return .null }
                switch index {
                case 0: return e.tensionFailureX.map { .real($0) } ?? .null
                case 1: return e.tensionFailureY.map { .real($0) } ?? .null
                case 2: return e.tensionFailureZ.map { .real($0) } ?? .null
                case 3: return e.compressionFailureX.map { .real($0) } ?? .null
                case 4: return e.compressionFailureY.map { .real($0) } ?? .null
                case 5: return e.compressionFailureZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFailureConnectionCondition else { return }
                switch index {
                case 0: e.tensionFailureX = value.isNull ? nil : value.realValue
                case 1: e.tensionFailureY = value.isNull ? nil : value.realValue
                case 2: e.tensionFailureZ = value.isNull ? nil : value.realValue
                case 3: e.compressionFailureX = value.isNull ? nil : value.realValue
                case 4: e.compressionFailureY = value.isNull ? nil : value.realValue
                case 5: e.compressionFailureZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFan.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFAN",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFan else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFan else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFanTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_3(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcFanType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFANTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFanType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFanType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFanTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFastener.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFASTENER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFastener else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFastener else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFastenerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFastenerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFASTENERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFastenerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFastenerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFastenerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFeatureElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFEATUREELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFeatureElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFeatureElement else { return }
            }
        )

        d[ObjectIdentifier(IfcFeatureElementAddition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFEATUREELEMENTADDITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFeatureElementAddition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFeatureElementAddition else { return }
            }
        )

        d[ObjectIdentifier(IfcFeatureElementSubtraction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFEATUREELEMENTSUBTRACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFeatureElementSubtraction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFeatureElementSubtraction else { return }
            }
        )

        d[ObjectIdentifier(IfcFillAreaStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFILLAREASTYLE",
            ownAttributes: [STEPAttributeDescriptor(name: "fillStyles", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "modelOrDraughting", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFillAreaStyle else { return .null }
                switch index {
                case 0: return e.fillStyles.map { $0.stepEncode() } ?? .null
                case 1: return e.modelOrDraughting.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFillAreaStyle else { return }
                switch index {
                case 0: e.fillStyles = value.isNull ? nil : IFC4X3.IfcFillStyleSelect.stepDecode(value)
                case 1: e.modelOrDraughting = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFillAreaStyleHatching.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFILLAREASTYLEHATCHING",
            ownAttributes: [STEPAttributeDescriptor(name: "hatchLineAppearance", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "startOfNextHatchLine", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "pointOfReferenceHatchLine", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "patternStart", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "hatchLineAngle", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFillAreaStyleHatching else { return .null }
                switch index {
                case 0: return e.hatchLineAppearance.map { .entityRef($0) } ?? .null
                case 1: return e.startOfNextHatchLine.map { $0.stepEncode() } ?? .null
                case 2: return e.pointOfReferenceHatchLine.map { .entityRef($0) } ?? .null
                case 3: return e.patternStart.map { .entityRef($0) } ?? .null
                case 4: return e.hatchLineAngle.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFillAreaStyleHatching else { return }
                switch index {
                case 0: e.hatchLineAppearance = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurveStyle
                case 1: e.startOfNextHatchLine = value.isNull ? nil : IFC4X3.IfcHatchLineDistanceSelect.stepDecode(value)
                case 2: e.pointOfReferenceHatchLine = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 3: e.patternStart = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 4: e.hatchLineAngle = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFillAreaStyleTiles.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFILLAREASTYLETILES",
            ownAttributes: [STEPAttributeDescriptor(name: "tilingPattern", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "tiles", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "tilingScale", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFillAreaStyleTiles else { return .null }
                switch index {
                case 0: return .list(e.tilingPattern.map { .entityRef($0) })
                case 1: return .list(e.tiles.map { .entityRef($0) })
                case 2: return e.tilingScale.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFillAreaStyleTiles else { return }
                switch index {
                case 0: if case .list(let items) = value { e.tilingPattern = items.compactMap { $0.entityValue as? IFC4X3.IfcVector } }
                case 1: if case .list(let items) = value { e.tiles = items.compactMap { $0.entityValue as? IFC4X3.IfcStyledItem } }
                case 2: e.tilingScale = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFilter.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFILTER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFilter else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFilter else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFilterTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFilterType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFILTERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFilterType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFilterType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFilterTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFireSuppressionTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFIRESUPPRESSIONTERMINAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFireSuppressionTerminal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFireSuppressionTerminal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFireSuppressionTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFireSuppressionTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFIRESUPPRESSIONTERMINALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFireSuppressionTerminalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFireSuppressionTerminalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFireSuppressionTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFixedReferenceSweptAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFIXEDREFERENCESWEPTAREASOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "fixedReference", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFixedReferenceSweptAreaSolid else { return .null }
                switch index {
                case 0: return e.fixedReference.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFixedReferenceSweptAreaSolid else { return }
                switch index {
                case 0: e.fixedReference = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFlowController.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWCONTROLLER",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowController else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowController else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowControllerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWCONTROLLERTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowControllerType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowControllerType else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowFitting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWFITTING",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowFitting else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowFitting else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowFittingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWFITTINGTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowFittingType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowFittingType else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowInstrument.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWINSTRUMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowInstrument else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowInstrument else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFlowInstrumentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFlowInstrumentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWINSTRUMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowInstrumentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowInstrumentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFlowInstrumentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFlowMeter.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWMETER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowMeter else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowMeter else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFlowMeterTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFlowMeterType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWMETERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowMeterType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowMeterType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFlowMeterTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFlowMovingDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWMOVINGDEVICE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowMovingDevice else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowMovingDevice else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowMovingDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWMOVINGDEVICETYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowMovingDeviceType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowMovingDeviceType else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWSEGMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowSegment else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowSegment else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowSegmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWSEGMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowSegmentType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowSegmentType else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowStorageDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWSTORAGEDEVICE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowStorageDevice else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowStorageDevice else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowStorageDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWSTORAGEDEVICETYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowStorageDeviceType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowStorageDeviceType else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWTERMINAL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowTerminal else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowTerminal else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWTERMINALTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowTerminalType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowTerminalType else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowTreatmentDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWTREATMENTDEVICE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowTreatmentDevice else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowTreatmentDevice else { return }
            }
        )

        d[ObjectIdentifier(IfcFlowTreatmentDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFLOWTREATMENTDEVICETYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFlowTreatmentDeviceType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFlowTreatmentDeviceType else { return }
            }
        )

        d[ObjectIdentifier(IfcFooting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFOOTING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFooting else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFooting else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFootingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFootingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFOOTINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFootingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFootingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFootingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFurnishingElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFURNISHINGELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFurnishingElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFurnishingElement else { return }
            }
        )

        d[ObjectIdentifier(IfcFurnishingElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFURNISHINGELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFurnishingElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFurnishingElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcFurniture.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFURNITURE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFurniture else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFurniture else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFurnitureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcFurnitureType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCFURNITURETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "assemblyPlace", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcFurnitureType else { return .null }
                switch index {
                case 0: return e.assemblyPlace.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcFurnitureType else { return }
                switch index {
                case 0: e.assemblyPlace = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAssemblyPlaceEnum(rawValue: $0) }
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcFurnitureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeographicCRS.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOGRAPHICCRS",
            ownAttributes: [STEPAttributeDescriptor(name: "primeMeridian", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "angleUnit", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "heightUnit", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeographicCRS else { return .null }
                switch index {
                case 0: return e.primeMeridian.map { .string($0) } ?? .null
                case 1: return e.angleUnit.map { .entityRef($0) } ?? .null
                case 2: return e.heightUnit.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeographicCRS else { return }
                switch index {
                case 0: e.primeMeridian = value.isNull ? nil : value.stringValue
                case 1: e.angleUnit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcNamedUnit
                case 2: e.heightUnit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcNamedUnit
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeographicElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOGRAPHICELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeographicElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeographicElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcGeographicElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeographicElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOGRAPHICELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeographicElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeographicElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcGeographicElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeometricCurveSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOMETRICCURVESET",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeometricCurveSet else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeometricCurveSet else { return }
            }
        )

        d[ObjectIdentifier(IfcGeometricRepresentationContext.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOMETRICREPRESENTATIONCONTEXT",
            ownAttributes: [STEPAttributeDescriptor(name: "coordinateSpaceDimension", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "precision", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "worldCoordinateSystem", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "trueNorth", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeometricRepresentationContext else { return .null }
                switch index {
                case 0: return e.coordinateSpaceDimension.map { .integer($0) } ?? .null
                case 1: return e.precision.map { .real($0) } ?? .null
                case 2: return e.worldCoordinateSystem.map { $0.stepEncode() } ?? .null
                case 3: return e.trueNorth.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeometricRepresentationContext else { return }
                switch index {
                case 0: e.coordinateSpaceDimension = value.isNull ? nil : value.integerValue
                case 1: e.precision = value.isNull ? nil : value.realValue
                case 2: e.worldCoordinateSystem = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                case 3: e.trueNorth = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeometricRepresentationItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOMETRICREPRESENTATIONITEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeometricRepresentationItem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeometricRepresentationItem else { return }
            }
        )

        d[ObjectIdentifier(IfcGeometricRepresentationSubContext.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOMETRICREPRESENTATIONSUBCONTEXT",
            ownAttributes: [STEPAttributeDescriptor(name: "parentContext", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "targetScale", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "targetView", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedTargetView", kind: .string, isOptional: true)],
            derivedOverrides: ["worldCoordinateSystem", "coordinateSpaceDimension", "trueNorth", "precision"],
            getter: { entity, index in
                guard let e = entity as? IfcGeometricRepresentationSubContext else { return .null }
                switch index {
                case 0: return e.parentContext.map { .entityRef($0) } ?? .null
                case 1: return e.targetScale.map { .real($0) } ?? .null
                case 2: return e.targetView.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.userDefinedTargetView.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeometricRepresentationSubContext else { return }
                switch index {
                case 0: e.parentContext = value.isNull ? nil : value.entityValue as? IFC4X3.IfcGeometricRepresentationContext
                case 1: e.targetScale = value.isNull ? nil : value.realValue
                case 2: e.targetView = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcGeometricProjectionEnum(rawValue: $0) }
                case 3: e.userDefinedTargetView = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeometricSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOMETRICSET",
            ownAttributes: [STEPAttributeDescriptor(name: "elements", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeometricSet else { return .null }
                switch index {
                case 0: return e.elements.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeometricSet else { return }
                switch index {
                case 0: e.elements = value.isNull ? nil : IFC4X3.IfcGeometricSetSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGeomodel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOMODEL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeomodel else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeomodel else { return }
            }
        )

        d[ObjectIdentifier(IfcGeoslice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOSLICE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeoslice else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeoslice else { return }
            }
        )

        d[ObjectIdentifier(IfcGeotechnicalAssembly.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOTECHNICALASSEMBLY",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeotechnicalAssembly else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeotechnicalAssembly else { return }
            }
        )

        d[ObjectIdentifier(IfcGeotechnicalElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOTECHNICALELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeotechnicalElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeotechnicalElement else { return }
            }
        )

        d[ObjectIdentifier(IfcGeotechnicalStratum.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGEOTECHNICALSTRATUM",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGeotechnicalStratum else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGeotechnicalStratum else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcGeotechnicalStratumTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGradientCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGRADIENTCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "baseCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "endPoint", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGradientCurve else { return .null }
                switch index {
                case 0: return e.baseCurve.map { .entityRef($0) } ?? .null
                case 1: return e.endPoint.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGradientCurve else { return }
                switch index {
                case 0: e.baseCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundedCurve
                case 1: e.endPoint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPlacement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGrid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGRID",
            ownAttributes: [STEPAttributeDescriptor(name: "uAxes", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "vAxes", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "wAxes", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGrid else { return .null }
                switch index {
                case 0: return .list(e.uAxes.map { .entityRef($0) })
                case 1: return .list(e.vAxes.map { .entityRef($0) })
                case 2: return .list(e.wAxes.map { .entityRef($0) })
                case 3: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGrid else { return }
                switch index {
                case 0: if case .list(let items) = value { e.uAxes = items.compactMap { $0.entityValue as? IFC4X3.IfcGridAxis } }
                case 1: if case .list(let items) = value { e.vAxes = items.compactMap { $0.entityValue as? IFC4X3.IfcGridAxis } }
                case 2: if case .list(let items) = value { e.wAxes = items.compactMap { $0.entityValue as? IFC4X3.IfcGridAxis } }
                case 3: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcGridTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGridAxis.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGRIDAXIS",
            ownAttributes: [STEPAttributeDescriptor(name: "axisTag", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "axisCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "sameSense", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGridAxis else { return .null }
                switch index {
                case 0: return e.axisTag.map { .string($0) } ?? .null
                case 1: return e.axisCurve.map { .entityRef($0) } ?? .null
                case 2: return e.sameSense.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGridAxis else { return }
                switch index {
                case 0: e.axisTag = value.isNull ? nil : value.stringValue
                case 1: e.axisCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 2: e.sameSense = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGridPlacement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGRIDPLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "placementLocation", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "placementRefDirection", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGridPlacement else { return .null }
                switch index {
                case 0: return e.placementLocation.map { .entityRef($0) } ?? .null
                case 1: return e.placementRefDirection.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGridPlacement else { return }
                switch index {
                case 0: e.placementLocation = value.isNull ? nil : value.entityValue as? IFC4X3.IfcVirtualGridIntersection
                case 1: e.placementRefDirection = value.isNull ? nil : IFC4X3.IfcGridPlacementDirectionSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcGroup.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCGROUP",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcGroup else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcGroup else { return }
            }
        )

        d[ObjectIdentifier(IfcHalfSpaceSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCHALFSPACESOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "baseSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "agreementFlag", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcHalfSpaceSolid else { return .null }
                switch index {
                case 0: return e.baseSurface.map { .entityRef($0) } ?? .null
                case 1: return e.agreementFlag.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcHalfSpaceSolid else { return }
                switch index {
                case 0: e.baseSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                case 1: e.agreementFlag = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcHeatExchanger.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCHEATEXCHANGER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcHeatExchanger else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcHeatExchanger else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcHeatExchangerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcHeatExchangerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCHEATEXCHANGERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcHeatExchangerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcHeatExchangerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcHeatExchangerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcHumidifier.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCHUMIDIFIER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcHumidifier else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcHumidifier else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcHumidifierTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcHumidifierType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCHUMIDIFIERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcHumidifierType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcHumidifierType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcHumidifierTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCISHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "overallWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "overallDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "filletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeEdgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeSlope", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIShapeProfileDef else { return .null }
                switch index {
                case 0: return e.overallWidth.map { .real($0) } ?? .null
                case 1: return e.overallDepth.map { .real($0) } ?? .null
                case 2: return e.webThickness.map { .real($0) } ?? .null
                case 3: return e.flangeThickness.map { .real($0) } ?? .null
                case 4: return e.filletRadius.map { .real($0) } ?? .null
                case 5: return e.flangeEdgeRadius.map { .real($0) } ?? .null
                case 6: return e.flangeSlope.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIShapeProfileDef else { return }
                switch index {
                case 0: e.overallWidth = value.isNull ? nil : value.realValue
                case 1: e.overallDepth = value.isNull ? nil : value.realValue
                case 2: e.webThickness = value.isNull ? nil : value.realValue
                case 3: e.flangeThickness = value.isNull ? nil : value.realValue
                case 4: e.filletRadius = value.isNull ? nil : value.realValue
                case 5: e.flangeEdgeRadius = value.isNull ? nil : value.realValue
                case 6: e.flangeSlope = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcImageTexture.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCIMAGETEXTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "uRLReference", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcImageTexture else { return .null }
                switch index {
                case 0: return e.uRLReference.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcImageTexture else { return }
                switch index {
                case 0: e.uRLReference = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcImpactProtectionDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCIMPACTPROTECTIONDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcImpactProtectionDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcImpactProtectionDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcImpactProtectionDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcImpactProtectionDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCIMPACTPROTECTIONDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcImpactProtectionDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcImpactProtectionDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcImpactProtectionDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedColourMap.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDCOLOURMAP",
            ownAttributes: [STEPAttributeDescriptor(name: "mappedTo", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "opacity", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "colours", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "colourIndex", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedColourMap else { return .null }
                switch index {
                case 0: return e.mappedTo.map { .entityRef($0) } ?? .null
                case 1: return e.opacity.map { .real($0) } ?? .null
                case 2: return e.colours.map { .entityRef($0) } ?? .null
                case 3: return .list(e.colourIndex.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedColourMap else { return }
                switch index {
                case 0: e.mappedTo = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTessellatedFaceSet
                case 1: e.opacity = value.isNull ? nil : value.realValue
                case 2: e.colours = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgbList
                case 3: if case .list(let items) = value { e.colourIndex = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedPolyCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDPOLYCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "points", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "segments", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "selfIntersect", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedPolyCurve else { return .null }
                switch index {
                case 0: return e.points.map { .entityRef($0) } ?? .null
                case 1: return e.segments.map { $0.stepEncode() } ?? .null
                case 2: return e.selfIntersect.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedPolyCurve else { return }
                switch index {
                case 0: e.points = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPointList
                case 1: e.segments = value.isNull ? nil : IFC4X3.IfcSegmentIndexSelect.stepDecode(value)
                case 2: e.selfIntersect = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedPolygonalFace.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDPOLYGONALFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "coordIndex", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedPolygonalFace else { return .null }
                switch index {
                case 0: return .list(e.coordIndex.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedPolygonalFace else { return }
                switch index {
                case 0: if case .list(let items) = value { e.coordIndex = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedPolygonalFaceWithVoids.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDPOLYGONALFACEWITHVOIDS",
            ownAttributes: [STEPAttributeDescriptor(name: "innerCoordIndices", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedPolygonalFaceWithVoids else { return .null }
                switch index {
                case 0: return .list(e.innerCoordIndices.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedPolygonalFaceWithVoids else { return }
                switch index {
                case 0: if case .list(let items) = value { e.innerCoordIndices = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedPolygonalTextureMap.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDPOLYGONALTEXTUREMAP",
            ownAttributes: [STEPAttributeDescriptor(name: "texCoordIndices", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedPolygonalTextureMap else { return .null }
                switch index {
                case 0: return .list(e.texCoordIndices.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedPolygonalTextureMap else { return }
                switch index {
                case 0: if case .list(let items) = value { e.texCoordIndices = items.compactMap { $0.entityValue as? IFC4X3.IfcTextureCoordinateIndices } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedTextureMap.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDTEXTUREMAP",
            ownAttributes: [STEPAttributeDescriptor(name: "mappedTo", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "texCoords", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedTextureMap else { return .null }
                switch index {
                case 0: return e.mappedTo.map { .entityRef($0) } ?? .null
                case 1: return e.texCoords.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedTextureMap else { return }
                switch index {
                case 0: e.mappedTo = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTessellatedFaceSet
                case 1: e.texCoords = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTextureVertexList
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIndexedTriangleTextureMap.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINDEXEDTRIANGLETEXTUREMAP",
            ownAttributes: [STEPAttributeDescriptor(name: "texCoordIndex", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIndexedTriangleTextureMap else { return .null }
                switch index {
                case 0: return .list(e.texCoordIndex.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIndexedTriangleTextureMap else { return }
                switch index {
                case 0: if case .list(let items) = value { e.texCoordIndex = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcInterceptor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINTERCEPTOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcInterceptor else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcInterceptor else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcInterceptorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcInterceptorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINTERCEPTORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcInterceptorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcInterceptorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcInterceptorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIntersectionCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINTERSECTIONCURVE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIntersectionCurve else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIntersectionCurve else { return }
            }
        )

        d[ObjectIdentifier(IfcInventory.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCINVENTORY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "jurisdiction", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "responsiblePersons", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "lastUpdateDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "currentValue", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "originalValue", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcInventory else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.jurisdiction.map { $0.stepEncode() } ?? .null
                case 2: return .list(e.responsiblePersons.map { .entityRef($0) })
                case 3: return e.lastUpdateDate.map { .string($0) } ?? .null
                case 4: return e.currentValue.map { .entityRef($0) } ?? .null
                case 5: return e.originalValue.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcInventory else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcInventoryTypeEnum(rawValue: $0) }
                case 1: e.jurisdiction = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 2: if case .list(let items) = value { e.responsiblePersons = items.compactMap { $0.entityValue as? IFC4X3.IfcPerson } }
                case 3: e.lastUpdateDate = value.isNull ? nil : value.stringValue
                case 4: e.currentValue = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCostValue
                case 5: e.originalValue = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCostValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIrregularTimeSeries.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCIRREGULARTIMESERIES",
            ownAttributes: [STEPAttributeDescriptor(name: "values", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIrregularTimeSeries else { return .null }
                switch index {
                case 0: return .list(e.values.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIrregularTimeSeries else { return }
                switch index {
                case 0: if case .list(let items) = value { e.values = items.compactMap { $0.entityValue as? IFC4X3.IfcIrregularTimeSeriesValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcIrregularTimeSeriesValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCIRREGULARTIMESERIESVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "timeStamp", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "listValues", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcIrregularTimeSeriesValue else { return .null }
                switch index {
                case 0: return e.timeStamp.map { .string($0) } ?? .null
                case 1: return e.listValues.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcIrregularTimeSeriesValue else { return }
                switch index {
                case 0: e.timeStamp = value.isNull ? nil : value.stringValue
                case 1: e.listValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcJunctionBox.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCJUNCTIONBOX",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcJunctionBox else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcJunctionBox else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcJunctionBoxTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcJunctionBoxType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCJUNCTIONBOXTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcJunctionBoxType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcJunctionBoxType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcJunctionBoxTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcKerb.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCKERB",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcKerb else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcKerb else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcKerbTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcKerbType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCKERBTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcKerbType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcKerbType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcKerbTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLSHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "width", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "thickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "filletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "edgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "legSlope", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLShapeProfileDef else { return .null }
                switch index {
                case 0: return e.depth.map { .real($0) } ?? .null
                case 1: return e.width.map { .real($0) } ?? .null
                case 2: return e.thickness.map { .real($0) } ?? .null
                case 3: return e.filletRadius.map { .real($0) } ?? .null
                case 4: return e.edgeRadius.map { .real($0) } ?? .null
                case 5: return e.legSlope.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLShapeProfileDef else { return }
                switch index {
                case 0: e.depth = value.isNull ? nil : value.realValue
                case 1: e.width = value.isNull ? nil : value.realValue
                case 2: e.thickness = value.isNull ? nil : value.realValue
                case 3: e.filletRadius = value.isNull ? nil : value.realValue
                case 4: e.edgeRadius = value.isNull ? nil : value.realValue
                case 5: e.legSlope = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLaborResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLABORRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLaborResource else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLaborResource else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLaborResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLaborResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLABORRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLaborResourceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLaborResourceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLaborResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLagTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLAGTIME",
            ownAttributes: [STEPAttributeDescriptor(name: "lagValue", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "durationType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLagTime else { return .null }
                switch index {
                case 0: return e.lagValue.map { $0.stepEncode() } ?? .null
                case 1: return e.durationType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLagTime else { return }
                switch index {
                case 0: e.lagValue = value.isNull ? nil : IFC4X3.IfcTimeOrRatioSelect.stepDecode(value)
                case 1: e.durationType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTaskDurationEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLamp.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLAMP",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLamp else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLamp else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLampTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLampType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLAMPTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLampType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLampType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLampTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLibraryInformation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIBRARYINFORMATION",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "version", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "publisher", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "versionDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "location", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLibraryInformation else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.version.map { .string($0) } ?? .null
                case 2: return e.publisher.map { $0.stepEncode() } ?? .null
                case 3: return e.versionDate.map { .string($0) } ?? .null
                case 4: return e.location.map { .string($0) } ?? .null
                case 5: return e.description.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLibraryInformation else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.version = value.isNull ? nil : value.stringValue
                case 2: e.publisher = value.isNull ? nil : IFC4X3.IfcActorSelect.stepDecode(value)
                case 3: e.versionDate = value.isNull ? nil : value.stringValue
                case 4: e.location = value.isNull ? nil : value.stringValue
                case 5: e.description = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLibraryReference.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIBRARYREFERENCE",
            ownAttributes: [STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "language", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "referencedLibrary", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLibraryReference else { return .null }
                switch index {
                case 0: return e.description.map { .string($0) } ?? .null
                case 1: return e.language.map { .string($0) } ?? .null
                case 2: return e.referencedLibrary.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLibraryReference else { return }
                switch index {
                case 0: e.description = value.isNull ? nil : value.stringValue
                case 1: e.language = value.isNull ? nil : value.stringValue
                case 2: e.referencedLibrary = value.isNull ? nil : value.entityValue as? IFC4X3.IfcLibraryInformation
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightDistributionData.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTDISTRIBUTIONDATA",
            ownAttributes: [STEPAttributeDescriptor(name: "mainPlaneAngle", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "secondaryPlaneAngle", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "luminousIntensity", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightDistributionData else { return .null }
                switch index {
                case 0: return e.mainPlaneAngle.map { .real($0) } ?? .null
                case 1: return .list(e.secondaryPlaneAngle.map { .real($0) })
                case 2: return .list(e.luminousIntensity.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightDistributionData else { return }
                switch index {
                case 0: e.mainPlaneAngle = value.isNull ? nil : value.realValue
                case 1: if case .list(let items) = value { e.secondaryPlaneAngle = items.compactMap { $0.realValue } }
                case 2: if case .list(let items) = value { e.luminousIntensity = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightFixture.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTFIXTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightFixture else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightFixture else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLightFixtureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightFixtureType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTFIXTURETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightFixtureType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightFixtureType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLightFixtureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightIntensityDistribution.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTINTENSITYDISTRIBUTION",
            ownAttributes: [STEPAttributeDescriptor(name: "lightDistributionCurve", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "distributionData", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightIntensityDistribution else { return .null }
                switch index {
                case 0: return e.lightDistributionCurve.map { .enumeration($0.rawValue) } ?? .null
                case 1: return .list(e.distributionData.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightIntensityDistribution else { return }
                switch index {
                case 0: e.lightDistributionCurve = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLightDistributionCurveEnum(rawValue: $0) }
                case 1: if case .list(let items) = value { e.distributionData = items.compactMap { $0.entityValue as? IFC4X3.IfcLightDistributionData } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightSource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTSOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "lightColour", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "ambientIntensity", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "intensity", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightSource else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.lightColour.map { .entityRef($0) } ?? .null
                case 2: return e.ambientIntensity.map { .real($0) } ?? .null
                case 3: return e.intensity.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightSource else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.lightColour = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                case 2: e.ambientIntensity = value.isNull ? nil : value.realValue
                case 3: e.intensity = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightSourceAmbient.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTSOURCEAMBIENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightSourceAmbient else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightSourceAmbient else { return }
            }
        )

        d[ObjectIdentifier(IfcLightSourceDirectional.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTSOURCEDIRECTIONAL",
            ownAttributes: [STEPAttributeDescriptor(name: "orientation", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightSourceDirectional else { return .null }
                switch index {
                case 0: return e.orientation.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightSourceDirectional else { return }
                switch index {
                case 0: e.orientation = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightSourceGoniometric.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTSOURCEGONIOMETRIC",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "colourAppearance", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "colourTemperature", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "luminousFlux", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "lightEmissionSource", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "lightDistributionDataSource", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightSourceGoniometric else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                case 1: return e.colourAppearance.map { .entityRef($0) } ?? .null
                case 2: return e.colourTemperature.map { .real($0) } ?? .null
                case 3: return e.luminousFlux.map { .real($0) } ?? .null
                case 4: return e.lightEmissionSource.map { .enumeration($0.rawValue) } ?? .null
                case 5: return e.lightDistributionDataSource.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightSourceGoniometric else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                case 1: e.colourAppearance = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                case 2: e.colourTemperature = value.isNull ? nil : value.realValue
                case 3: e.luminousFlux = value.isNull ? nil : value.realValue
                case 4: e.lightEmissionSource = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLightEmissionSourceEnum(rawValue: $0) }
                case 5: e.lightDistributionDataSource = value.isNull ? nil : IFC4X3.IfcLightDistributionDataSourceSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightSourcePositional.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTSOURCEPOSITIONAL",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "constantAttenuation", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "distanceAttenuation", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "quadricAttenuation", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightSourcePositional else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                case 1: return e.radius.map { .real($0) } ?? .null
                case 2: return e.constantAttenuation.map { .real($0) } ?? .null
                case 3: return e.distanceAttenuation.map { .real($0) } ?? .null
                case 4: return e.quadricAttenuation.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightSourcePositional else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 1: e.radius = value.isNull ? nil : value.realValue
                case 2: e.constantAttenuation = value.isNull ? nil : value.realValue
                case 3: e.distanceAttenuation = value.isNull ? nil : value.realValue
                case 4: e.quadricAttenuation = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLightSourceSpot.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIGHTSOURCESPOT",
            ownAttributes: [STEPAttributeDescriptor(name: "orientation", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "concentrationExponent", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "spreadAngle", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "beamWidthAngle", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLightSourceSpot else { return .null }
                switch index {
                case 0: return e.orientation.map { .entityRef($0) } ?? .null
                case 1: return e.concentrationExponent.map { .real($0) } ?? .null
                case 2: return e.spreadAngle.map { .real($0) } ?? .null
                case 3: return e.beamWidthAngle.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLightSourceSpot else { return }
                switch index {
                case 0: e.orientation = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.concentrationExponent = value.isNull ? nil : value.realValue
                case 2: e.spreadAngle = value.isNull ? nil : value.realValue
                case 3: e.beamWidthAngle = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_4(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcLine.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLINE",
            ownAttributes: [STEPAttributeDescriptor(name: "pnt", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "dir", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLine else { return .null }
                switch index {
                case 0: return e.pnt.map { .entityRef($0) } ?? .null
                case 1: return e.dir.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLine else { return }
                switch index {
                case 0: e.pnt = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                case 1: e.dir = value.isNull ? nil : value.entityValue as? IFC4X3.IfcVector
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLineIndex.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLINEINDEX",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLineIndex else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLineIndex else { return }
            }
        )

        d[ObjectIdentifier(IfcLinearElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLINEARELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLinearElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLinearElement else { return }
            }
        )

        d[ObjectIdentifier(IfcLinearPlacement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLINEARPLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relativePlacement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "cartesianPosition", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLinearPlacement else { return .null }
                switch index {
                case 0: return e.relativePlacement.map { .entityRef($0) } ?? .null
                case 1: return e.cartesianPosition.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLinearPlacement else { return }
                switch index {
                case 0: e.relativePlacement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2PlacementLinear
                case 1: e.cartesianPosition = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLinearPositioningElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLINEARPOSITIONINGELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLinearPositioningElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLinearPositioningElement else { return }
            }
        )

        d[ObjectIdentifier(IfcLiquidTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIQUIDTERMINAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLiquidTerminal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLiquidTerminal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLiquidTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLiquidTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLIQUIDTERMINALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLiquidTerminalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLiquidTerminalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLiquidTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLocalPlacement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLOCALPLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relativePlacement", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLocalPlacement else { return .null }
                switch index {
                case 0: return e.relativePlacement.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLocalPlacement else { return }
                switch index {
                case 0: e.relativePlacement = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcLoop.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCLOOP",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcLoop else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcLoop else { return }
            }
        )

        d[ObjectIdentifier(IfcManifoldSolidBrep.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMANIFOLDSOLIDBREP",
            ownAttributes: [STEPAttributeDescriptor(name: "outer", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcManifoldSolidBrep else { return .null }
                switch index {
                case 0: return e.outer.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcManifoldSolidBrep else { return }
                switch index {
                case 0: e.outer = value.isNull ? nil : value.entityValue as? IFC4X3.IfcClosedShell
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMapConversion.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMAPCONVERSION",
            ownAttributes: [STEPAttributeDescriptor(name: "eastings", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "northings", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "orthogonalHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "xAxisAbscissa", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "xAxisOrdinate", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "scale", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMapConversion else { return .null }
                switch index {
                case 0: return e.eastings.map { .real($0) } ?? .null
                case 1: return e.northings.map { .real($0) } ?? .null
                case 2: return e.orthogonalHeight.map { .real($0) } ?? .null
                case 3: return e.xAxisAbscissa.map { .real($0) } ?? .null
                case 4: return e.xAxisOrdinate.map { .real($0) } ?? .null
                case 5: return e.scale.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMapConversion else { return }
                switch index {
                case 0: e.eastings = value.isNull ? nil : value.realValue
                case 1: e.northings = value.isNull ? nil : value.realValue
                case 2: e.orthogonalHeight = value.isNull ? nil : value.realValue
                case 3: e.xAxisAbscissa = value.isNull ? nil : value.realValue
                case 4: e.xAxisOrdinate = value.isNull ? nil : value.realValue
                case 5: e.scale = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMapConversionScaled.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMAPCONVERSIONSCALED",
            ownAttributes: [STEPAttributeDescriptor(name: "factorX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "factorY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "factorZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMapConversionScaled else { return .null }
                switch index {
                case 0: return e.factorX.map { .real($0) } ?? .null
                case 1: return e.factorY.map { .real($0) } ?? .null
                case 2: return e.factorZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMapConversionScaled else { return }
                switch index {
                case 0: e.factorX = value.isNull ? nil : value.realValue
                case 1: e.factorY = value.isNull ? nil : value.realValue
                case 2: e.factorZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMappedItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMAPPEDITEM",
            ownAttributes: [STEPAttributeDescriptor(name: "mappingSource", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "mappingTarget", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMappedItem else { return .null }
                switch index {
                case 0: return e.mappingSource.map { .entityRef($0) } ?? .null
                case 1: return e.mappingTarget.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMappedItem else { return }
                switch index {
                case 0: e.mappingSource = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRepresentationMap
                case 1: e.mappingTarget = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianTransformationOperator
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMarineFacility.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMARINEFACILITY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMarineFacility else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMarineFacility else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMarineFacilityTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMarinePart.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMARINEPART",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMarinePart else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMarinePart else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMarinePartTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterial.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIAL",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "category", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterial else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.category.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterial else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.category = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialClassificationRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALCLASSIFICATIONRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "materialClassifications", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "classifiedMaterial", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialClassificationRelationship else { return .null }
                switch index {
                case 0: return e.materialClassifications.map { $0.stepEncode() } ?? .null
                case 1: return e.classifiedMaterial.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialClassificationRelationship else { return }
                switch index {
                case 0: e.materialClassifications = value.isNull ? nil : IFC4X3.IfcClassificationSelect.stepDecode(value)
                case 1: e.classifiedMaterial = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterial
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialConstituent.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALCONSTITUENT",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "material", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "fraction", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "category", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialConstituent else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.material.map { .entityRef($0) } ?? .null
                case 3: return e.fraction.map { .real($0) } ?? .null
                case 4: return e.category.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialConstituent else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.material = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterial
                case 3: e.fraction = value.isNull ? nil : value.realValue
                case 4: e.category = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialConstituentSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALCONSTITUENTSET",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "materialConstituents", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialConstituentSet else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return .list(e.materialConstituents.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialConstituentSet else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: if case .list(let items) = value { e.materialConstituents = items.compactMap { $0.entityValue as? IFC4X3.IfcMaterialConstituent } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialDefinition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALDEFINITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialDefinition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialDefinition else { return }
            }
        )

        d[ObjectIdentifier(IfcMaterialDefinitionRepresentation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALDEFINITIONREPRESENTATION",
            ownAttributes: [STEPAttributeDescriptor(name: "representedMaterial", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialDefinitionRepresentation else { return .null }
                switch index {
                case 0: return e.representedMaterial.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialDefinitionRepresentation else { return }
                switch index {
                case 0: e.representedMaterial = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterial
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialLayer.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALLAYER",
            ownAttributes: [STEPAttributeDescriptor(name: "material", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "layerThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "isVentilated", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "category", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "priority", kind: .integer, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialLayer else { return .null }
                switch index {
                case 0: return e.material.map { .entityRef($0) } ?? .null
                case 1: return e.layerThickness.map { .real($0) } ?? .null
                case 2: return e.isVentilated.map { .logical($0) } ?? .null
                case 3: return e.name.map { .string($0) } ?? .null
                case 4: return e.description.map { .string($0) } ?? .null
                case 5: return e.category.map { .string($0) } ?? .null
                case 6: return e.priority.map { .integer($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialLayer else { return }
                switch index {
                case 0: e.material = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterial
                case 1: e.layerThickness = value.isNull ? nil : value.realValue
                case 2: e.isVentilated = value.isNull ? nil : value.logicalValue
                case 3: e.name = value.isNull ? nil : value.stringValue
                case 4: e.description = value.isNull ? nil : value.stringValue
                case 5: e.category = value.isNull ? nil : value.stringValue
                case 6: e.priority = value.isNull ? nil : value.integerValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialLayerSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALLAYERSET",
            ownAttributes: [STEPAttributeDescriptor(name: "materialLayers", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "layerSetName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialLayerSet else { return .null }
                switch index {
                case 0: return .list(e.materialLayers.map { .entityRef($0) })
                case 1: return e.layerSetName.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialLayerSet else { return }
                switch index {
                case 0: if case .list(let items) = value { e.materialLayers = items.compactMap { $0.entityValue as? IFC4X3.IfcMaterialLayer } }
                case 1: e.layerSetName = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialLayerSetUsage.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALLAYERSETUSAGE",
            ownAttributes: [STEPAttributeDescriptor(name: "forLayerSet", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "layerSetDirection", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "directionSense", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "offsetFromReferenceLine", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "referenceExtent", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialLayerSetUsage else { return .null }
                switch index {
                case 0: return e.forLayerSet.map { .entityRef($0) } ?? .null
                case 1: return e.layerSetDirection.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.directionSense.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.offsetFromReferenceLine.map { .real($0) } ?? .null
                case 4: return e.referenceExtent.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialLayerSetUsage else { return }
                switch index {
                case 0: e.forLayerSet = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterialLayerSet
                case 1: e.layerSetDirection = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLayerSetDirectionEnum(rawValue: $0) }
                case 2: e.directionSense = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDirectionSenseEnum(rawValue: $0) }
                case 3: e.offsetFromReferenceLine = value.isNull ? nil : value.realValue
                case 4: e.referenceExtent = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialLayerWithOffsets.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALLAYERWITHOFFSETS",
            ownAttributes: [STEPAttributeDescriptor(name: "offsetDirection", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "offsetValues", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialLayerWithOffsets else { return .null }
                switch index {
                case 0: return e.offsetDirection.map { .enumeration($0.rawValue) } ?? .null
                case 1: return .list(e.offsetValues.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialLayerWithOffsets else { return }
                switch index {
                case 0: e.offsetDirection = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLayerSetDirectionEnum(rawValue: $0) }
                case 1: if case .list(let items) = value { e.offsetValues = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialList.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALLIST",
            ownAttributes: [STEPAttributeDescriptor(name: "materials", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialList else { return .null }
                switch index {
                case 0: return .list(e.materials.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialList else { return }
                switch index {
                case 0: if case .list(let items) = value { e.materials = items.compactMap { $0.entityValue as? IFC4X3.IfcMaterial } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialProfile.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALPROFILE",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "material", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "profile", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "priority", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "category", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialProfile else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.material.map { .entityRef($0) } ?? .null
                case 3: return e.profile.map { .entityRef($0) } ?? .null
                case 4: return e.priority.map { .integer($0) } ?? .null
                case 5: return e.category.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialProfile else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.material = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterial
                case 3: e.profile = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                case 4: e.priority = value.isNull ? nil : value.integerValue
                case 5: e.category = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialProfileSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALPROFILESET",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "materialProfiles", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "compositeProfile", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialProfileSet else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return .list(e.materialProfiles.map { .entityRef($0) })
                case 3: return e.compositeProfile.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialProfileSet else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: if case .list(let items) = value { e.materialProfiles = items.compactMap { $0.entityValue as? IFC4X3.IfcMaterialProfile } }
                case 3: e.compositeProfile = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCompositeProfileDef
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialProfileSetUsage.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALPROFILESETUSAGE",
            ownAttributes: [STEPAttributeDescriptor(name: "forProfileSet", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "cardinalPoint", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "referenceExtent", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialProfileSetUsage else { return .null }
                switch index {
                case 0: return e.forProfileSet.map { .entityRef($0) } ?? .null
                case 1: return e.cardinalPoint.map { .integer($0) } ?? .null
                case 2: return e.referenceExtent.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialProfileSetUsage else { return }
                switch index {
                case 0: e.forProfileSet = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterialProfileSet
                case 1: e.cardinalPoint = value.isNull ? nil : value.integerValue
                case 2: e.referenceExtent = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialProfileSetUsageTapering.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALPROFILESETUSAGETAPERING",
            ownAttributes: [STEPAttributeDescriptor(name: "forProfileEndSet", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "cardinalEndPoint", kind: .integer, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialProfileSetUsageTapering else { return .null }
                switch index {
                case 0: return e.forProfileEndSet.map { .entityRef($0) } ?? .null
                case 1: return e.cardinalEndPoint.map { .integer($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialProfileSetUsageTapering else { return }
                switch index {
                case 0: e.forProfileEndSet = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterialProfileSet
                case 1: e.cardinalEndPoint = value.isNull ? nil : value.integerValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialProfileWithOffsets.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALPROFILEWITHOFFSETS",
            ownAttributes: [STEPAttributeDescriptor(name: "offsetValues", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialProfileWithOffsets else { return .null }
                switch index {
                case 0: return .list(e.offsetValues.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialProfileWithOffsets else { return }
                switch index {
                case 0: if case .list(let items) = value { e.offsetValues = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "material", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialProperties else { return .null }
                switch index {
                case 0: return e.material.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialProperties else { return }
                switch index {
                case 0: e.material = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterialDefinition
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingMaterial", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedMaterials", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "materialExpression", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialRelationship else { return .null }
                switch index {
                case 0: return e.relatingMaterial.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedMaterials.map { .entityRef($0) })
                case 2: return e.materialExpression.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialRelationship else { return }
                switch index {
                case 0: e.relatingMaterial = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMaterial
                case 1: if case .list(let items) = value { e.relatedMaterials = items.compactMap { $0.entityValue as? IFC4X3.IfcMaterial } }
                case 2: e.materialExpression = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMaterialUsageDefinition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMATERIALUSAGEDEFINITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMaterialUsageDefinition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMaterialUsageDefinition else { return }
            }
        )

        d[ObjectIdentifier(IfcMeasureWithUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMEASUREWITHUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "valueComponent", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "unitComponent", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMeasureWithUnit else { return .null }
                switch index {
                case 0: return e.valueComponent.map { $0.stepEncode() } ?? .null
                case 1: return e.unitComponent.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMeasureWithUnit else { return }
                switch index {
                case 0: e.valueComponent = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.unitComponent = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMechanicalFastener.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMECHANICALFASTENER",
            ownAttributes: [STEPAttributeDescriptor(name: "nominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "nominalLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMechanicalFastener else { return .null }
                switch index {
                case 0: return e.nominalDiameter.map { .real($0) } ?? .null
                case 1: return e.nominalLength.map { .real($0) } ?? .null
                case 2: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMechanicalFastener else { return }
                switch index {
                case 0: e.nominalDiameter = value.isNull ? nil : value.realValue
                case 1: e.nominalLength = value.isNull ? nil : value.realValue
                case 2: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMechanicalFastenerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMechanicalFastenerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMECHANICALFASTENERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "nominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "nominalLength", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMechanicalFastenerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.nominalDiameter.map { .real($0) } ?? .null
                case 2: return e.nominalLength.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMechanicalFastenerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMechanicalFastenerTypeEnum(rawValue: $0) }
                case 1: e.nominalDiameter = value.isNull ? nil : value.realValue
                case 2: e.nominalLength = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMedicalDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMEDICALDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMedicalDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMedicalDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMedicalDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMedicalDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMEDICALDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMedicalDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMedicalDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMedicalDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMember.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMEMBER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMember else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMember else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMemberTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMemberType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMEMBERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMemberType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMemberType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMemberTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMetric.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMETRIC",
            ownAttributes: [STEPAttributeDescriptor(name: "benchmark", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "valueSource", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "dataValue", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "referencePath", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMetric else { return .null }
                switch index {
                case 0: return e.benchmark.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.valueSource.map { .string($0) } ?? .null
                case 2: return e.dataValue.map { $0.stepEncode() } ?? .null
                case 3: return e.referencePath.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMetric else { return }
                switch index {
                case 0: e.benchmark = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcBenchmarkEnum(rawValue: $0) }
                case 1: e.valueSource = value.isNull ? nil : value.stringValue
                case 2: e.dataValue = value.isNull ? nil : IFC4X3.IfcMetricValueSelect.stepDecode(value)
                case 3: e.referencePath = value.isNull ? nil : value.entityValue as? IFC4X3.IfcReference
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMirroredProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMIRROREDPROFILEDEF",
            ownAttributes: [],
            derivedOverrides: ["`operator`"],
            getter: { entity, index in
                guard let e = entity as? IfcMirroredProfileDef else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMirroredProfileDef else { return }
            }
        )

        d[ObjectIdentifier(IfcMobileTelecommunicationsAppliance.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMOBILETELECOMMUNICATIONSAPPLIANCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMobileTelecommunicationsAppliance else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMobileTelecommunicationsAppliance else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMobileTelecommunicationsApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMobileTelecommunicationsApplianceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMOBILETELECOMMUNICATIONSAPPLIANCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMobileTelecommunicationsApplianceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMobileTelecommunicationsApplianceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMobileTelecommunicationsApplianceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMonetaryUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMONETARYUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "currency", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMonetaryUnit else { return .null }
                switch index {
                case 0: return e.currency.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMonetaryUnit else { return }
                switch index {
                case 0: e.currency = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMooringDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMOORINGDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMooringDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMooringDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMooringDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMooringDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMOORINGDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMooringDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMooringDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMooringDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMotorConnection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMOTORCONNECTION",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMotorConnection else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMotorConnection else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMotorConnectionTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcMotorConnectionType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCMOTORCONNECTIONTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcMotorConnectionType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcMotorConnectionType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcMotorConnectionTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcNamedUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCNAMEDUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "dimensions", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "unitType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcNamedUnit else { return .null }
                switch index {
                case 0: return e.dimensions.map { .entityRef($0) } ?? .null
                case 1: return e.unitType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcNamedUnit else { return }
                switch index {
                case 0: e.dimensions = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDimensionalExponents
                case 1: e.unitType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcUnitEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcNavigationElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCNAVIGATIONELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcNavigationElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcNavigationElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcNavigationElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcNavigationElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCNAVIGATIONELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcNavigationElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcNavigationElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcNavigationElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcObject.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOBJECT",
            ownAttributes: [STEPAttributeDescriptor(name: "objectType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcObject else { return .null }
                switch index {
                case 0: return e.objectType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcObject else { return }
                switch index {
                case 0: e.objectType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcObjectDefinition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOBJECTDEFINITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcObjectDefinition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcObjectDefinition else { return }
            }
        )

        d[ObjectIdentifier(IfcObjectPlacement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOBJECTPLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "placementRelTo", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcObjectPlacement else { return .null }
                switch index {
                case 0: return e.placementRelTo.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcObjectPlacement else { return }
                switch index {
                case 0: e.placementRelTo = value.isNull ? nil : value.entityValue as? IFC4X3.IfcObjectPlacement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcObjective.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOBJECTIVE",
            ownAttributes: [STEPAttributeDescriptor(name: "benchmarkValues", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "logicalAggregator", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "objectiveQualifier", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedQualifier", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcObjective else { return .null }
                switch index {
                case 0: return .list(e.benchmarkValues.map { .entityRef($0) })
                case 1: return e.logicalAggregator.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.objectiveQualifier.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.userDefinedQualifier.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcObjective else { return }
                switch index {
                case 0: if case .list(let items) = value { e.benchmarkValues = items.compactMap { $0.entityValue as? IFC4X3.IfcConstraint } }
                case 1: e.logicalAggregator = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLogicalOperatorEnum(rawValue: $0) }
                case 2: e.objectiveQualifier = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcObjectiveEnum(rawValue: $0) }
                case 3: e.userDefinedQualifier = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOccupant.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOCCUPANT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOccupant else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOccupant else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcOccupantTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOffsetCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOFFSETCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisCurve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOffsetCurve else { return .null }
                switch index {
                case 0: return e.basisCurve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOffsetCurve else { return }
                switch index {
                case 0: e.basisCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOffsetCurve2D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOFFSETCURVE2D",
            ownAttributes: [STEPAttributeDescriptor(name: "distance", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "selfIntersect", kind: .logical, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOffsetCurve2D else { return .null }
                switch index {
                case 0: return e.distance.map { .real($0) } ?? .null
                case 1: return e.selfIntersect.map { .logical($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOffsetCurve2D else { return }
                switch index {
                case 0: e.distance = value.isNull ? nil : value.realValue
                case 1: e.selfIntersect = value.isNull ? nil : value.logicalValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOffsetCurve3D.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOFFSETCURVE3D",
            ownAttributes: [STEPAttributeDescriptor(name: "distance", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "selfIntersect", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "refDirection", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOffsetCurve3D else { return .null }
                switch index {
                case 0: return e.distance.map { .real($0) } ?? .null
                case 1: return e.selfIntersect.map { .logical($0) } ?? .null
                case 2: return e.refDirection.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOffsetCurve3D else { return }
                switch index {
                case 0: e.distance = value.isNull ? nil : value.realValue
                case 1: e.selfIntersect = value.isNull ? nil : value.logicalValue
                case 2: e.refDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOffsetCurveByDistances.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOFFSETCURVEBYDISTANCES",
            ownAttributes: [STEPAttributeDescriptor(name: "offsetValues", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "tag", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOffsetCurveByDistances else { return .null }
                switch index {
                case 0: return .list(e.offsetValues.map { .entityRef($0) })
                case 1: return e.tag.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOffsetCurveByDistances else { return }
                switch index {
                case 0: if case .list(let items) = value { e.offsetValues = items.compactMap { $0.entityValue as? IFC4X3.IfcPointByDistanceExpression } }
                case 1: e.tag = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOpenCrossProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOPENCROSSPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "horizontalWidths", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "widths", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "slopes", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "tags", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "offsetPoint", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOpenCrossProfileDef else { return .null }
                switch index {
                case 0: return e.horizontalWidths.map { .boolean($0) } ?? .null
                case 1: return .list(e.widths.map { .real($0) })
                case 2: return .list(e.slopes.map { .real($0) })
                case 3: return .list(e.tags.map { .string($0) })
                case 4: return e.offsetPoint.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOpenCrossProfileDef else { return }
                switch index {
                case 0: e.horizontalWidths = value.isNull ? nil : value.boolValue
                case 1: if case .list(let items) = value { e.widths = items.compactMap { $0.realValue } }
                case 2: if case .list(let items) = value { e.slopes = items.compactMap { $0.realValue } }
                case 3: if case .list(let items) = value { e.tags = items.compactMap { $0.stringValue } }
                case 4: e.offsetPoint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPoint
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOpenShell.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOPENSHELL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOpenShell else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOpenShell else { return }
            }
        )

        d[ObjectIdentifier(IfcOpeningElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOPENINGELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOpeningElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOpeningElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcOpeningElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOrganization.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCORGANIZATION",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "roles", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "addresses", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOrganization else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.name.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                case 3: return .list(e.roles.map { .entityRef($0) })
                case 4: return .list(e.addresses.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOrganization else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.name = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                case 3: if case .list(let items) = value { e.roles = items.compactMap { $0.entityValue as? IFC4X3.IfcActorRole } }
                case 4: if case .list(let items) = value { e.addresses = items.compactMap { $0.entityValue as? IFC4X3.IfcAddress } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOrganizationRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCORGANIZATIONRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingOrganization", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedOrganizations", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOrganizationRelationship else { return .null }
                switch index {
                case 0: return e.relatingOrganization.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedOrganizations.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOrganizationRelationship else { return }
                switch index {
                case 0: e.relatingOrganization = value.isNull ? nil : value.entityValue as? IFC4X3.IfcOrganization
                case 1: if case .list(let items) = value { e.relatedOrganizations = items.compactMap { $0.entityValue as? IFC4X3.IfcOrganization } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOrientedEdge.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCORIENTEDEDGE",
            ownAttributes: [STEPAttributeDescriptor(name: "edgeElement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "orientation", kind: .boolean, isOptional: true)],
            derivedOverrides: ["edgeStart", "edgeEnd"],
            getter: { entity, index in
                guard let e = entity as? IfcOrientedEdge else { return .null }
                switch index {
                case 0: return e.edgeElement.map { .entityRef($0) } ?? .null
                case 1: return e.orientation.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOrientedEdge else { return }
                switch index {
                case 0: e.edgeElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcEdge
                case 1: e.orientation = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOuterBoundaryCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOUTERBOUNDARYCURVE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOuterBoundaryCurve else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOuterBoundaryCurve else { return }
            }
        )

        d[ObjectIdentifier(IfcOutlet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOUTLET",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOutlet else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOutlet else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcOutletTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOutletType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOUTLETTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOutletType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOutletType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcOutletTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcOwnerHistory.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCOWNERHISTORY",
            ownAttributes: [STEPAttributeDescriptor(name: "owningUser", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "owningApplication", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "state", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "changeAction", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "lastModifiedDate", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "lastModifyingUser", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "lastModifyingApplication", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "creationDate", kind: .integer, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcOwnerHistory else { return .null }
                switch index {
                case 0: return e.owningUser.map { .entityRef($0) } ?? .null
                case 1: return e.owningApplication.map { .entityRef($0) } ?? .null
                case 2: return e.state.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.changeAction.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.lastModifiedDate.map { .integer($0) } ?? .null
                case 5: return e.lastModifyingUser.map { .entityRef($0) } ?? .null
                case 6: return e.lastModifyingApplication.map { .entityRef($0) } ?? .null
                case 7: return e.creationDate.map { .integer($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcOwnerHistory else { return }
                switch index {
                case 0: e.owningUser = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPersonAndOrganization
                case 1: e.owningApplication = value.isNull ? nil : value.entityValue as? IFC4X3.IfcApplication
                case 2: e.state = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStateEnum(rawValue: $0) }
                case 3: e.changeAction = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcChangeActionEnum(rawValue: $0) }
                case 4: e.lastModifiedDate = value.isNull ? nil : value.integerValue
                case 5: e.lastModifyingUser = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPersonAndOrganization
                case 6: e.lastModifyingApplication = value.isNull ? nil : value.entityValue as? IFC4X3.IfcApplication
                case 7: e.creationDate = value.isNull ? nil : value.integerValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcParameterizedProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPARAMETERIZEDPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcParameterizedProfileDef else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcParameterizedProfileDef else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement2D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPath.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPATH",
            ownAttributes: [STEPAttributeDescriptor(name: "edgeList", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPath else { return .null }
                switch index {
                case 0: return .list(e.edgeList.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPath else { return }
                switch index {
                case 0: if case .list(let items) = value { e.edgeList = items.compactMap { $0.entityValue as? IFC4X3.IfcOrientedEdge } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPavement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPAVEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPavement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPavement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPavementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPavementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPAVEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPavementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPavementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPavementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPcurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "referenceCurve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPcurve else { return .null }
                switch index {
                case 0: return e.basisSurface.map { .entityRef($0) } ?? .null
                case 1: return e.referenceCurve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPcurve else { return }
                switch index {
                case 0: e.basisSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                case 1: e.referenceCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPerformanceHistory.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPERFORMANCEHISTORY",
            ownAttributes: [STEPAttributeDescriptor(name: "lifeCyclePhase", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPerformanceHistory else { return .null }
                switch index {
                case 0: return e.lifeCyclePhase.map { .string($0) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPerformanceHistory else { return }
                switch index {
                case 0: e.lifeCyclePhase = value.isNull ? nil : value.stringValue
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPerformanceHistoryTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPermeableCoveringProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPERMEABLECOVERINGPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "operationType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "panelPosition", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "frameDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "frameThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "shapeAspectStyle", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPermeableCoveringProperties else { return .null }
                switch index {
                case 0: return e.operationType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.panelPosition.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.frameDepth.map { .real($0) } ?? .null
                case 3: return e.frameThickness.map { .real($0) } ?? .null
                case 4: return e.shapeAspectStyle.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPermeableCoveringProperties else { return }
                switch index {
                case 0: e.operationType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPermeableCoveringOperationEnum(rawValue: $0) }
                case 1: e.panelPosition = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowPanelPositionEnum(rawValue: $0) }
                case 2: e.frameDepth = value.isNull ? nil : value.realValue
                case 3: e.frameThickness = value.isNull ? nil : value.realValue
                case 4: e.shapeAspectStyle = value.isNull ? nil : value.entityValue as? IFC4X3.IfcShapeAspect
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPermit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPERMIT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "status", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPermit else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.status.map { .string($0) } ?? .null
                case 2: return e.longDescription.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPermit else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPermitTypeEnum(rawValue: $0) }
                case 1: e.status = value.isNull ? nil : value.stringValue
                case 2: e.longDescription = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPerson.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPERSON",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "familyName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "givenName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "middleNames", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "prefixTitles", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "suffixTitles", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "roles", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "addresses", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPerson else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.familyName.map { .string($0) } ?? .null
                case 2: return e.givenName.map { .string($0) } ?? .null
                case 3: return .list(e.middleNames.map { .string($0) })
                case 4: return .list(e.prefixTitles.map { .string($0) })
                case 5: return .list(e.suffixTitles.map { .string($0) })
                case 6: return .list(e.roles.map { .entityRef($0) })
                case 7: return .list(e.addresses.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPerson else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.familyName = value.isNull ? nil : value.stringValue
                case 2: e.givenName = value.isNull ? nil : value.stringValue
                case 3: if case .list(let items) = value { e.middleNames = items.compactMap { $0.stringValue } }
                case 4: if case .list(let items) = value { e.prefixTitles = items.compactMap { $0.stringValue } }
                case 5: if case .list(let items) = value { e.suffixTitles = items.compactMap { $0.stringValue } }
                case 6: if case .list(let items) = value { e.roles = items.compactMap { $0.entityValue as? IFC4X3.IfcActorRole } }
                case 7: if case .list(let items) = value { e.addresses = items.compactMap { $0.entityValue as? IFC4X3.IfcAddress } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPersonAndOrganization.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPERSONANDORGANIZATION",
            ownAttributes: [STEPAttributeDescriptor(name: "thePerson", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "theOrganization", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "roles", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPersonAndOrganization else { return .null }
                switch index {
                case 0: return e.thePerson.map { .entityRef($0) } ?? .null
                case 1: return e.theOrganization.map { .entityRef($0) } ?? .null
                case 2: return .list(e.roles.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPersonAndOrganization else { return }
                switch index {
                case 0: e.thePerson = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPerson
                case 1: e.theOrganization = value.isNull ? nil : value.entityValue as? IFC4X3.IfcOrganization
                case 2: if case .list(let items) = value { e.roles = items.compactMap { $0.entityValue as? IFC4X3.IfcActorRole } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPhysicalComplexQuantity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPHYSICALCOMPLEXQUANTITY",
            ownAttributes: [STEPAttributeDescriptor(name: "hasQuantities", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "discrimination", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "quality", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "usage", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPhysicalComplexQuantity else { return .null }
                switch index {
                case 0: return .list(e.hasQuantities.map { .entityRef($0) })
                case 1: return e.discrimination.map { .string($0) } ?? .null
                case 2: return e.quality.map { .string($0) } ?? .null
                case 3: return e.usage.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPhysicalComplexQuantity else { return }
                switch index {
                case 0: if case .list(let items) = value { e.hasQuantities = items.compactMap { $0.entityValue as? IFC4X3.IfcPhysicalQuantity } }
                case 1: e.discrimination = value.isNull ? nil : value.stringValue
                case 2: e.quality = value.isNull ? nil : value.stringValue
                case 3: e.usage = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPhysicalQuantity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPHYSICALQUANTITY",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPhysicalQuantity else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPhysicalQuantity else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPhysicalSimpleQuantity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPHYSICALSIMPLEQUANTITY",
            ownAttributes: [STEPAttributeDescriptor(name: "unit", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPhysicalSimpleQuantity else { return .null }
                switch index {
                case 0: return e.unit.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPhysicalSimpleQuantity else { return }
                switch index {
                case 0: e.unit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcNamedUnit
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPile.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPILE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "constructionType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPile else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.constructionType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPile else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPileTypeEnum(rawValue: $0) }
                case 1: e.constructionType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPileConstructionEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPileType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPILETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPileType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPileType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPileTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPipeFitting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPIPEFITTING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPipeFitting else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPipeFitting else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPipeFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPipeFittingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPIPEFITTINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPipeFittingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPipeFittingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPipeFittingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPipeSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPIPESEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPipeSegment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPipeSegment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPipeSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPipeSegmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPIPESEGMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPipeSegmentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPipeSegmentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPipeSegmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPixelTexture.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPIXELTEXTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "width", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "height", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "colourComponents", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "pixel", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPixelTexture else { return .null }
                switch index {
                case 0: return e.width.map { .integer($0) } ?? .null
                case 1: return e.height.map { .integer($0) } ?? .null
                case 2: return e.colourComponents.map { .integer($0) } ?? .null
                case 3: return .list(e.pixel.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPixelTexture else { return }
                switch index {
                case 0: e.width = value.isNull ? nil : value.integerValue
                case 1: e.height = value.isNull ? nil : value.integerValue
                case 2: e.colourComponents = value.isNull ? nil : value.integerValue
                case 3: if case .list(let items) = value { e.pixel = items.compactMap { $0.entityValue as? IFC4X3.IfcBinary } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPlacement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "location", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPlacement else { return .null }
                switch index {
                case 0: return e.location.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPlacement else { return }
                switch index {
                case 0: e.location = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPoint
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPlanarBox.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPLANARBOX",
            ownAttributes: [STEPAttributeDescriptor(name: "placement", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPlanarBox else { return .null }
                switch index {
                case 0: return e.placement.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPlanarBox else { return }
                switch index {
                case 0: e.placement = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPlanarExtent.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPLANAREXTENT",
            ownAttributes: [STEPAttributeDescriptor(name: "sizeInX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "sizeInY", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPlanarExtent else { return .null }
                switch index {
                case 0: return e.sizeInX.map { .real($0) } ?? .null
                case 1: return e.sizeInY.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPlanarExtent else { return }
                switch index {
                case 0: e.sizeInX = value.isNull ? nil : value.realValue
                case 1: e.sizeInY = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPlane.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPLANE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPlane else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPlane else { return }
            }
        )

        d[ObjectIdentifier(IfcPlate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPLATE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPlate else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPlate else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPlateTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPlateType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPLATETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPlateType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPlateType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPlateTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPoint.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOINT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPoint else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPoint else { return }
            }
        )

        d[ObjectIdentifier(IfcPointByDistanceExpression.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOINTBYDISTANCEEXPRESSION",
            ownAttributes: [STEPAttributeDescriptor(name: "distanceAlong", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "offsetLateral", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "offsetVertical", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "offsetLongitudinal", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "basisCurve", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPointByDistanceExpression else { return .null }
                switch index {
                case 0: return e.distanceAlong.map { $0.stepEncode() } ?? .null
                case 1: return e.offsetLateral.map { .real($0) } ?? .null
                case 2: return e.offsetVertical.map { .real($0) } ?? .null
                case 3: return e.offsetLongitudinal.map { .real($0) } ?? .null
                case 4: return e.basisCurve.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPointByDistanceExpression else { return }
                switch index {
                case 0: e.distanceAlong = value.isNull ? nil : IFC4X3.IfcCurveMeasureSelect.stepDecode(value)
                case 1: e.offsetLateral = value.isNull ? nil : value.realValue
                case 2: e.offsetVertical = value.isNull ? nil : value.realValue
                case 3: e.offsetLongitudinal = value.isNull ? nil : value.realValue
                case 4: e.basisCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_5(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcPointOnCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOINTONCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "pointParameter", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPointOnCurve else { return .null }
                switch index {
                case 0: return e.basisCurve.map { .entityRef($0) } ?? .null
                case 1: return e.pointParameter.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPointOnCurve else { return }
                switch index {
                case 0: e.basisCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: e.pointParameter = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPointOnSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOINTONSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "pointParameterU", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "pointParameterV", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPointOnSurface else { return .null }
                switch index {
                case 0: return e.basisSurface.map { .entityRef($0) } ?? .null
                case 1: return e.pointParameterU.map { .real($0) } ?? .null
                case 2: return e.pointParameterV.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPointOnSurface else { return }
                switch index {
                case 0: e.basisSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                case 1: e.pointParameterU = value.isNull ? nil : value.realValue
                case 2: e.pointParameterV = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPolyLoop.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOLYLOOP",
            ownAttributes: [STEPAttributeDescriptor(name: "polygon", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPolyLoop else { return .null }
                switch index {
                case 0: return .list(e.polygon.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPolyLoop else { return }
                switch index {
                case 0: if case .list(let items) = value { e.polygon = items.compactMap { $0.entityValue as? IFC4X3.IfcCartesianPoint } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPolygonalBoundedHalfSpace.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOLYGONALBOUNDEDHALFSPACE",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "polygonalBoundary", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPolygonalBoundedHalfSpace else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                case 1: return e.polygonalBoundary.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPolygonalBoundedHalfSpace else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                case 1: e.polygonalBoundary = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundedCurve
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPolygonalFaceSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOLYGONALFACESET",
            ownAttributes: [STEPAttributeDescriptor(name: "closed", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "faces", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "pnIndex", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPolygonalFaceSet else { return .null }
                switch index {
                case 0: return e.closed.map { .boolean($0) } ?? .null
                case 1: return .list(e.faces.map { .entityRef($0) })
                case 2: return .list(e.pnIndex.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPolygonalFaceSet else { return }
                switch index {
                case 0: e.closed = value.isNull ? nil : value.boolValue
                case 1: if case .list(let items) = value { e.faces = items.compactMap { $0.entityValue as? IFC4X3.IfcIndexedPolygonalFace } }
                case 2: if case .list(let items) = value { e.pnIndex = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPolyline.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOLYLINE",
            ownAttributes: [STEPAttributeDescriptor(name: "points", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPolyline else { return .null }
                switch index {
                case 0: return .list(e.points.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPolyline else { return }
                switch index {
                case 0: if case .list(let items) = value { e.points = items.compactMap { $0.entityValue as? IFC4X3.IfcCartesianPoint } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPolynomialCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOLYNOMIALCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "coefficientsX", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "coefficientsY", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "coefficientsZ", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPolynomialCurve else { return .null }
                switch index {
                case 0: return e.position.map { .entityRef($0) } ?? .null
                case 1: return .list(e.coefficientsX.map { .real($0) })
                case 2: return .list(e.coefficientsY.map { .real($0) })
                case 3: return .list(e.coefficientsZ.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPolynomialCurve else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPlacement
                case 1: if case .list(let items) = value { e.coefficientsX = items.compactMap { $0.realValue } }
                case 2: if case .list(let items) = value { e.coefficientsY = items.compactMap { $0.realValue } }
                case 3: if case .list(let items) = value { e.coefficientsZ = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPort.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPORT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPort else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPort else { return }
            }
        )

        d[ObjectIdentifier(IfcPositioningElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOSITIONINGELEMENT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPositioningElement else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPositioningElement else { return }
            }
        )

        d[ObjectIdentifier(IfcPostalAddress.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPOSTALADDRESS",
            ownAttributes: [STEPAttributeDescriptor(name: "internalLocation", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "addressLines", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "postalBox", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "town", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "region", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "postalCode", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "country", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPostalAddress else { return .null }
                switch index {
                case 0: return e.internalLocation.map { .string($0) } ?? .null
                case 1: return .list(e.addressLines.map { .string($0) })
                case 2: return e.postalBox.map { .string($0) } ?? .null
                case 3: return e.town.map { .string($0) } ?? .null
                case 4: return e.region.map { .string($0) } ?? .null
                case 5: return e.postalCode.map { .string($0) } ?? .null
                case 6: return e.country.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPostalAddress else { return }
                switch index {
                case 0: e.internalLocation = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.addressLines = items.compactMap { $0.stringValue } }
                case 2: e.postalBox = value.isNull ? nil : value.stringValue
                case 3: e.town = value.isNull ? nil : value.stringValue
                case 4: e.region = value.isNull ? nil : value.stringValue
                case 5: e.postalCode = value.isNull ? nil : value.stringValue
                case 6: e.country = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPreDefinedColour.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPREDEFINEDCOLOUR",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPreDefinedColour else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPreDefinedColour else { return }
            }
        )

        d[ObjectIdentifier(IfcPreDefinedCurveFont.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPREDEFINEDCURVEFONT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPreDefinedCurveFont else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPreDefinedCurveFont else { return }
            }
        )

        d[ObjectIdentifier(IfcPreDefinedItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPREDEFINEDITEM",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPreDefinedItem else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPreDefinedItem else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPreDefinedProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPREDEFINEDPROPERTIES",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPreDefinedProperties else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPreDefinedProperties else { return }
            }
        )

        d[ObjectIdentifier(IfcPreDefinedPropertySet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPREDEFINEDPROPERTYSET",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPreDefinedPropertySet else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPreDefinedPropertySet else { return }
            }
        )

        d[ObjectIdentifier(IfcPreDefinedTextFont.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPREDEFINEDTEXTFONT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPreDefinedTextFont else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPreDefinedTextFont else { return }
            }
        )

        d[ObjectIdentifier(IfcPresentationItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRESENTATIONITEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPresentationItem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPresentationItem else { return }
            }
        )

        d[ObjectIdentifier(IfcPresentationLayerAssignment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRESENTATIONLAYERASSIGNMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "assignedItems", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "identifier", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPresentationLayerAssignment else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.assignedItems.map { $0.stepEncode() } ?? .null
                case 3: return e.identifier.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPresentationLayerAssignment else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.assignedItems = value.isNull ? nil : IFC4X3.IfcLayeredItem.stepDecode(value)
                case 3: e.identifier = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPresentationLayerWithStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRESENTATIONLAYERWITHSTYLE",
            ownAttributes: [STEPAttributeDescriptor(name: "layerOn", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "layerFrozen", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "layerBlocked", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "layerStyles", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPresentationLayerWithStyle else { return .null }
                switch index {
                case 0: return e.layerOn.map { .logical($0) } ?? .null
                case 1: return e.layerFrozen.map { .logical($0) } ?? .null
                case 2: return e.layerBlocked.map { .logical($0) } ?? .null
                case 3: return .list(e.layerStyles.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPresentationLayerWithStyle else { return }
                switch index {
                case 0: e.layerOn = value.isNull ? nil : value.logicalValue
                case 1: e.layerFrozen = value.isNull ? nil : value.logicalValue
                case 2: e.layerBlocked = value.isNull ? nil : value.logicalValue
                case 3: if case .list(let items) = value { e.layerStyles = items.compactMap { $0.entityValue as? IFC4X3.IfcPresentationStyle } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPresentationStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRESENTATIONSTYLE",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPresentationStyle else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPresentationStyle else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProcedure.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROCEDURE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProcedure else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProcedure else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProcedureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProcedureType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROCEDURETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProcedureType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProcedureType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProcedureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProcess.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROCESS",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProcess else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.longDescription.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProcess else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.longDescription = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProduct.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRODUCT",
            ownAttributes: [STEPAttributeDescriptor(name: "objectPlacement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "representation", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProduct else { return .null }
                switch index {
                case 0: return e.objectPlacement.map { .entityRef($0) } ?? .null
                case 1: return e.representation.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProduct else { return }
                switch index {
                case 0: e.objectPlacement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcObjectPlacement
                case 1: e.representation = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProductRepresentation
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProductDefinitionShape.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRODUCTDEFINITIONSHAPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProductDefinitionShape else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProductDefinitionShape else { return }
            }
        )

        d[ObjectIdentifier(IfcProductRepresentation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPRODUCTREPRESENTATION",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "representations", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProductRepresentation else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return .list(e.representations.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProductRepresentation else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: if case .list(let items) = value { e.representations = items.compactMap { $0.entityValue as? IFC4X3.IfcRepresentation } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "profileType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "profileName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProfileDef else { return .null }
                switch index {
                case 0: return e.profileType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.profileName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProfileDef else { return }
                switch index {
                case 0: e.profileType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProfileTypeEnum(rawValue: $0) }
                case 1: e.profileName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProfileProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROFILEPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "profileDefinition", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProfileProperties else { return .null }
                switch index {
                case 0: return e.profileDefinition.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProfileProperties else { return }
                switch index {
                case 0: e.profileDefinition = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProject.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROJECT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProject else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProject else { return }
            }
        )

        d[ObjectIdentifier(IfcProjectLibrary.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROJECTLIBRARY",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProjectLibrary else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProjectLibrary else { return }
            }
        )

        d[ObjectIdentifier(IfcProjectOrder.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROJECTORDER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "status", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProjectOrder else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.status.map { .string($0) } ?? .null
                case 2: return e.longDescription.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProjectOrder else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProjectOrderTypeEnum(rawValue: $0) }
                case 1: e.status = value.isNull ? nil : value.stringValue
                case 2: e.longDescription = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProjectedCRS.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROJECTEDCRS",
            ownAttributes: [STEPAttributeDescriptor(name: "verticalDatum", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "mapProjection", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "mapZone", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "mapUnit", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProjectedCRS else { return .null }
                switch index {
                case 0: return e.verticalDatum.map { .string($0) } ?? .null
                case 1: return e.mapProjection.map { .string($0) } ?? .null
                case 2: return e.mapZone.map { .string($0) } ?? .null
                case 3: return e.mapUnit.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProjectedCRS else { return }
                switch index {
                case 0: e.verticalDatum = value.isNull ? nil : value.stringValue
                case 1: e.mapProjection = value.isNull ? nil : value.stringValue
                case 2: e.mapZone = value.isNull ? nil : value.stringValue
                case 3: e.mapUnit = value.isNull ? nil : value.entityValue as? IFC4X3.IfcNamedUnit
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProjectionElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROJECTIONELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProjectionElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProjectionElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProjectionElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProperty.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTY",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "specification", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProperty else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.specification.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProperty else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.specification = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyAbstraction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYABSTRACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyAbstraction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyAbstraction else { return }
            }
        )

        d[ObjectIdentifier(IfcPropertyBoundedValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYBOUNDEDVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "upperBoundValue", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "lowerBoundValue", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "unit", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "setPointValue", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyBoundedValue else { return .null }
                switch index {
                case 0: return e.upperBoundValue.map { $0.stepEncode() } ?? .null
                case 1: return e.lowerBoundValue.map { $0.stepEncode() } ?? .null
                case 2: return e.unit.map { $0.stepEncode() } ?? .null
                case 3: return e.setPointValue.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyBoundedValue else { return }
                switch index {
                case 0: e.upperBoundValue = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.lowerBoundValue = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 2: e.unit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                case 3: e.setPointValue = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyDefinition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYDEFINITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyDefinition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyDefinition else { return }
            }
        )

        d[ObjectIdentifier(IfcPropertyDependencyRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYDEPENDENCYRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "dependingProperty", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "dependantProperty", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "expression", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyDependencyRelationship else { return .null }
                switch index {
                case 0: return e.dependingProperty.map { .entityRef($0) } ?? .null
                case 1: return e.dependantProperty.map { .entityRef($0) } ?? .null
                case 2: return e.expression.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyDependencyRelationship else { return }
                switch index {
                case 0: e.dependingProperty = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProperty
                case 1: e.dependantProperty = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProperty
                case 2: e.expression = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyEnumeratedValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYENUMERATEDVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "enumerationValues", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "enumerationReference", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyEnumeratedValue else { return .null }
                switch index {
                case 0: return e.enumerationValues.map { $0.stepEncode() } ?? .null
                case 1: return e.enumerationReference.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyEnumeratedValue else { return }
                switch index {
                case 0: e.enumerationValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.enumerationReference = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPropertyEnumeration
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyEnumeration.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYENUMERATION",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "enumerationValues", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "unit", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyEnumeration else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.enumerationValues.map { $0.stepEncode() } ?? .null
                case 2: return e.unit.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyEnumeration else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.enumerationValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 2: e.unit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyListValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYLISTVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "listValues", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "unit", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyListValue else { return .null }
                switch index {
                case 0: return e.listValues.map { $0.stepEncode() } ?? .null
                case 1: return e.unit.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyListValue else { return }
                switch index {
                case 0: e.listValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.unit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyReferenceValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYREFERENCEVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "usageName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "propertyReference", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyReferenceValue else { return .null }
                switch index {
                case 0: return e.usageName.map { .string($0) } ?? .null
                case 1: return e.propertyReference.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyReferenceValue else { return }
                switch index {
                case 0: e.usageName = value.isNull ? nil : value.stringValue
                case 1: e.propertyReference = value.isNull ? nil : IFC4X3.IfcObjectReferenceSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertySet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYSET",
            ownAttributes: [STEPAttributeDescriptor(name: "hasProperties", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertySet else { return .null }
                switch index {
                case 0: return .list(e.hasProperties.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertySet else { return }
                switch index {
                case 0: if case .list(let items) = value { e.hasProperties = items.compactMap { $0.entityValue as? IFC4X3.IfcProperty } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertySetDefinition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYSETDEFINITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertySetDefinition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertySetDefinition else { return }
            }
        )

        d[ObjectIdentifier(IfcPropertySetDefinitionSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYSETDEFINITIONSET",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertySetDefinitionSet else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertySetDefinitionSet else { return }
            }
        )

        d[ObjectIdentifier(IfcPropertySetTemplate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYSETTEMPLATE",
            ownAttributes: [STEPAttributeDescriptor(name: "templateType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "applicableEntity", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "hasPropertyTemplates", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertySetTemplate else { return .null }
                switch index {
                case 0: return e.templateType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.applicableEntity.map { .string($0) } ?? .null
                case 2: return .list(e.hasPropertyTemplates.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertySetTemplate else { return }
                switch index {
                case 0: e.templateType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPropertySetTemplateTypeEnum(rawValue: $0) }
                case 1: e.applicableEntity = value.isNull ? nil : value.stringValue
                case 2: if case .list(let items) = value { e.hasPropertyTemplates = items.compactMap { $0.entityValue as? IFC4X3.IfcPropertyTemplate } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertySingleValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYSINGLEVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "nominalValue", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "unit", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertySingleValue else { return .null }
                switch index {
                case 0: return e.nominalValue.map { $0.stepEncode() } ?? .null
                case 1: return e.unit.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertySingleValue else { return }
                switch index {
                case 0: e.nominalValue = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.unit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyTableValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYTABLEVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "definingValues", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "definedValues", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "expression", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "definingUnit", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "definedUnit", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "curveInterpolation", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyTableValue else { return .null }
                switch index {
                case 0: return e.definingValues.map { $0.stepEncode() } ?? .null
                case 1: return e.definedValues.map { $0.stepEncode() } ?? .null
                case 2: return e.expression.map { .string($0) } ?? .null
                case 3: return e.definingUnit.map { $0.stepEncode() } ?? .null
                case 4: return e.definedUnit.map { $0.stepEncode() } ?? .null
                case 5: return e.curveInterpolation.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyTableValue else { return }
                switch index {
                case 0: e.definingValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.definedValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 2: e.expression = value.isNull ? nil : value.stringValue
                case 3: e.definingUnit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                case 4: e.definedUnit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                case 5: e.curveInterpolation = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcCurveInterpolationEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPropertyTemplate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYTEMPLATE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyTemplate else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyTemplate else { return }
            }
        )

        d[ObjectIdentifier(IfcPropertyTemplateDefinition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROPERTYTEMPLATEDEFINITION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPropertyTemplateDefinition else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPropertyTemplateDefinition else { return }
            }
        )

        d[ObjectIdentifier(IfcProtectiveDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROTECTIVEDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProtectiveDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProtectiveDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProtectiveDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProtectiveDeviceTrippingUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROTECTIVEDEVICETRIPPINGUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProtectiveDeviceTrippingUnit else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProtectiveDeviceTrippingUnit else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProtectiveDeviceTrippingUnitTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProtectiveDeviceTrippingUnitType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROTECTIVEDEVICETRIPPINGUNITTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProtectiveDeviceTrippingUnitType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProtectiveDeviceTrippingUnitType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProtectiveDeviceTrippingUnitTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcProtectiveDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPROTECTIVEDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcProtectiveDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcProtectiveDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProtectiveDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPump.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPUMP",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPump else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPump else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPumpTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcPumpType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCPUMPTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcPumpType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcPumpType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPumpTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantityArea.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYAREA",
            ownAttributes: [STEPAttributeDescriptor(name: "areaValue", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityArea else { return .null }
                switch index {
                case 0: return e.areaValue.map { .real($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityArea else { return }
                switch index {
                case 0: e.areaValue = value.isNull ? nil : value.realValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantityCount.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYCOUNT",
            ownAttributes: [STEPAttributeDescriptor(name: "countValue", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityCount else { return .null }
                switch index {
                case 0: return e.countValue.map { .integer($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityCount else { return }
                switch index {
                case 0: e.countValue = value.isNull ? nil : value.integerValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantityLength.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYLENGTH",
            ownAttributes: [STEPAttributeDescriptor(name: "lengthValue", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityLength else { return .null }
                switch index {
                case 0: return e.lengthValue.map { .real($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityLength else { return }
                switch index {
                case 0: e.lengthValue = value.isNull ? nil : value.realValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantityNumber.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYNUMBER",
            ownAttributes: [STEPAttributeDescriptor(name: "numberValue", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityNumber else { return .null }
                switch index {
                case 0: return e.numberValue.map { .real($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityNumber else { return }
                switch index {
                case 0: e.numberValue = value.isNull ? nil : value.realValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantitySet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYSET",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantitySet else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantitySet else { return }
            }
        )

        d[ObjectIdentifier(IfcQuantityTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYTIME",
            ownAttributes: [STEPAttributeDescriptor(name: "timeValue", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityTime else { return .null }
                switch index {
                case 0: return e.timeValue.map { .real($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityTime else { return }
                switch index {
                case 0: e.timeValue = value.isNull ? nil : value.realValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantityVolume.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYVOLUME",
            ownAttributes: [STEPAttributeDescriptor(name: "volumeValue", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityVolume else { return .null }
                switch index {
                case 0: return e.volumeValue.map { .real($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityVolume else { return }
                switch index {
                case 0: e.volumeValue = value.isNull ? nil : value.realValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcQuantityWeight.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCQUANTITYWEIGHT",
            ownAttributes: [STEPAttributeDescriptor(name: "weightValue", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "formula", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcQuantityWeight else { return .null }
                switch index {
                case 0: return e.weightValue.map { .real($0) } ?? .null
                case 1: return e.formula.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcQuantityWeight else { return }
                switch index {
                case 0: e.weightValue = value.isNull ? nil : value.realValue
                case 1: e.formula = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRail.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAIL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRail else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRail else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRailTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRailType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAILTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRailType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRailType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRailTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRailing.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAILING",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRailing else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRailing else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRailingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRailingType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAILINGTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRailingType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRailingType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRailingTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRailway.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAILWAY",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRailway else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRailway else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRailwayTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRailwayPart.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAILWAYPART",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRailwayPart else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRailwayPart else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRailwayPartTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRamp.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAMP",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRamp else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRamp else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRampTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRampFlight.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAMPFLIGHT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRampFlight else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRampFlight else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRampFlightTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRampFlightType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAMPFLIGHTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRampFlightType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRampFlightType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRampFlightTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRampType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRAMPTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRampType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRampType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRampTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRationalBSplineCurveWithKnots.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRATIONALBSPLINECURVEWITHKNOTS",
            ownAttributes: [STEPAttributeDescriptor(name: "weightsData", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRationalBSplineCurveWithKnots else { return .null }
                switch index {
                case 0: return .list(e.weightsData.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRationalBSplineCurveWithKnots else { return }
                switch index {
                case 0: if case .list(let items) = value { e.weightsData = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRationalBSplineSurfaceWithKnots.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRATIONALBSPLINESURFACEWITHKNOTS",
            ownAttributes: [STEPAttributeDescriptor(name: "weightsData", kind: .nestedList, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRationalBSplineSurfaceWithKnots else { return .null }
                switch index {
                case 0: return .list(e.weightsData.map { .list($0.map { .string(String(describing: $0)) }) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRationalBSplineSurfaceWithKnots else { return }
                switch index {
                case 0: if case .list(let outer) = value { e.weightsData = outer.compactMap { if case .list(let inner) = $0 { return inner.compactMap { $0.realValue } } else { return nil } } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRectangleHollowProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRECTANGLEHOLLOWPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "wallThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "innerFilletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "outerFilletRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRectangleHollowProfileDef else { return .null }
                switch index {
                case 0: return e.wallThickness.map { .real($0) } ?? .null
                case 1: return e.innerFilletRadius.map { .real($0) } ?? .null
                case 2: return e.outerFilletRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRectangleHollowProfileDef else { return }
                switch index {
                case 0: e.wallThickness = value.isNull ? nil : value.realValue
                case 1: e.innerFilletRadius = value.isNull ? nil : value.realValue
                case 2: e.outerFilletRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRectangleProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRECTANGLEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "xDim", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "yDim", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRectangleProfileDef else { return .null }
                switch index {
                case 0: return e.xDim.map { .real($0) } ?? .null
                case 1: return e.yDim.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRectangleProfileDef else { return }
                switch index {
                case 0: e.xDim = value.isNull ? nil : value.realValue
                case 1: e.yDim = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRectangularPyramid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRECTANGULARPYRAMID",
            ownAttributes: [STEPAttributeDescriptor(name: "xLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "yLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "height", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRectangularPyramid else { return .null }
                switch index {
                case 0: return e.xLength.map { .real($0) } ?? .null
                case 1: return e.yLength.map { .real($0) } ?? .null
                case 2: return e.height.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRectangularPyramid else { return }
                switch index {
                case 0: e.xLength = value.isNull ? nil : value.realValue
                case 1: e.yLength = value.isNull ? nil : value.realValue
                case 2: e.height = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRectangularTrimmedSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRECTANGULARTRIMMEDSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisSurface", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "u1", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "v1", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "u2", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "v2", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "usense", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "vsense", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRectangularTrimmedSurface else { return .null }
                switch index {
                case 0: return e.basisSurface.map { .entityRef($0) } ?? .null
                case 1: return e.u1.map { .real($0) } ?? .null
                case 2: return e.v1.map { .real($0) } ?? .null
                case 3: return e.u2.map { .real($0) } ?? .null
                case 4: return e.v2.map { .real($0) } ?? .null
                case 5: return e.usense.map { .boolean($0) } ?? .null
                case 6: return e.vsense.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRectangularTrimmedSurface else { return }
                switch index {
                case 0: e.basisSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                case 1: e.u1 = value.isNull ? nil : value.realValue
                case 2: e.v1 = value.isNull ? nil : value.realValue
                case 3: e.u2 = value.isNull ? nil : value.realValue
                case 4: e.v2 = value.isNull ? nil : value.realValue
                case 5: e.usense = value.isNull ? nil : value.boolValue
                case 6: e.vsense = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRecurrencePattern.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRECURRENCEPATTERN",
            ownAttributes: [STEPAttributeDescriptor(name: "recurrenceType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "dayComponent", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "weekdayComponent", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "monthComponent", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "position", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "interval", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "occurrences", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "timePeriods", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRecurrencePattern else { return .null }
                switch index {
                case 0: return e.recurrenceType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return .list(e.dayComponent.map { .integer($0) })
                case 2: return .list(e.weekdayComponent.map { .integer($0) })
                case 3: return .list(e.monthComponent.map { .integer($0) })
                case 4: return e.position.map { .integer($0) } ?? .null
                case 5: return e.interval.map { .integer($0) } ?? .null
                case 6: return e.occurrences.map { .integer($0) } ?? .null
                case 7: return .list(e.timePeriods.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRecurrencePattern else { return }
                switch index {
                case 0: e.recurrenceType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRecurrenceTypeEnum(rawValue: $0) }
                case 1: if case .list(let items) = value { e.dayComponent = items.compactMap { $0.integerValue } }
                case 2: if case .list(let items) = value { e.weekdayComponent = items.compactMap { $0.integerValue } }
                case 3: if case .list(let items) = value { e.monthComponent = items.compactMap { $0.integerValue } }
                case 4: e.position = value.isNull ? nil : value.integerValue
                case 5: e.interval = value.isNull ? nil : value.integerValue
                case 6: e.occurrences = value.isNull ? nil : value.integerValue
                case 7: if case .list(let items) = value { e.timePeriods = items.compactMap { $0.entityValue as? IFC4X3.IfcTimePeriod } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReference.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREFERENCE",
            ownAttributes: [STEPAttributeDescriptor(name: "typeIdentifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "attributeIdentifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "instanceName", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "listPositions", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "innerReference", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReference else { return .null }
                switch index {
                case 0: return e.typeIdentifier.map { .string($0) } ?? .null
                case 1: return e.attributeIdentifier.map { .string($0) } ?? .null
                case 2: return e.instanceName.map { .string($0) } ?? .null
                case 3: return .list(e.listPositions.map { .integer($0) })
                case 4: return e.innerReference.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReference else { return }
                switch index {
                case 0: e.typeIdentifier = value.isNull ? nil : value.stringValue
                case 1: e.attributeIdentifier = value.isNull ? nil : value.stringValue
                case 2: e.instanceName = value.isNull ? nil : value.stringValue
                case 3: if case .list(let items) = value { e.listPositions = items.compactMap { $0.integerValue } }
                case 4: e.innerReference = value.isNull ? nil : value.entityValue as? IFC4X3.IfcReference
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReferent.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREFERENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReferent else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReferent else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReferentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRegularTimeSeries.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREGULARTIMESERIES",
            ownAttributes: [STEPAttributeDescriptor(name: "timeStep", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "values", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRegularTimeSeries else { return .null }
                switch index {
                case 0: return e.timeStep.map { .real($0) } ?? .null
                case 1: return .list(e.values.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRegularTimeSeries else { return }
                switch index {
                case 0: e.timeStep = value.isNull ? nil : value.realValue
                case 1: if case .list(let items) = value { e.values = items.compactMap { $0.entityValue as? IFC4X3.IfcTimeSeriesValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcedSoil.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCEDSOIL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcedSoil else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcedSoil else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcedSoilTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcementBarProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCEMENTBARPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "totalCrossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "steelGrade", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "barSurface", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "effectiveDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "nominalBarDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "barCount", kind: .integer, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcementBarProperties else { return .null }
                switch index {
                case 0: return e.totalCrossSectionArea.map { .real($0) } ?? .null
                case 1: return e.steelGrade.map { .string($0) } ?? .null
                case 2: return e.barSurface.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.effectiveDepth.map { .real($0) } ?? .null
                case 4: return e.nominalBarDiameter.map { .real($0) } ?? .null
                case 5: return e.barCount.map { .integer($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcementBarProperties else { return }
                switch index {
                case 0: e.totalCrossSectionArea = value.isNull ? nil : value.realValue
                case 1: e.steelGrade = value.isNull ? nil : value.stringValue
                case 2: e.barSurface = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingBarSurfaceEnum(rawValue: $0) }
                case 3: e.effectiveDepth = value.isNull ? nil : value.realValue
                case 4: e.nominalBarDiameter = value.isNull ? nil : value.realValue
                case 5: e.barCount = value.isNull ? nil : value.integerValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcementDefinitionProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCEMENTDEFINITIONPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "definitionType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "reinforcementSectionDefinitions", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcementDefinitionProperties else { return .null }
                switch index {
                case 0: return e.definitionType.map { .string($0) } ?? .null
                case 1: return .list(e.reinforcementSectionDefinitions.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcementDefinitionProperties else { return }
                switch index {
                case 0: e.definitionType = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.reinforcementSectionDefinitions = items.compactMap { $0.entityValue as? IFC4X3.IfcSectionReinforcementProperties } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcingBar.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCINGBAR",
            ownAttributes: [STEPAttributeDescriptor(name: "nominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "crossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "barLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "barSurface", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcingBar else { return .null }
                switch index {
                case 0: return e.nominalDiameter.map { .real($0) } ?? .null
                case 1: return e.crossSectionArea.map { .real($0) } ?? .null
                case 2: return e.barLength.map { .real($0) } ?? .null
                case 3: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.barSurface.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcingBar else { return }
                switch index {
                case 0: e.nominalDiameter = value.isNull ? nil : value.realValue
                case 1: e.crossSectionArea = value.isNull ? nil : value.realValue
                case 2: e.barLength = value.isNull ? nil : value.realValue
                case 3: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingBarTypeEnum(rawValue: $0) }
                case 4: e.barSurface = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingBarSurfaceEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcingBarType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCINGBARTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "nominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "crossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "barLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "barSurface", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "bendingShapeCode", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "bendingParameters", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcingBarType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.nominalDiameter.map { .real($0) } ?? .null
                case 2: return e.crossSectionArea.map { .real($0) } ?? .null
                case 3: return e.barLength.map { .real($0) } ?? .null
                case 4: return e.barSurface.map { .enumeration($0.rawValue) } ?? .null
                case 5: return e.bendingShapeCode.map { .string($0) } ?? .null
                case 6: return e.bendingParameters.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcingBarType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingBarTypeEnum(rawValue: $0) }
                case 1: e.nominalDiameter = value.isNull ? nil : value.realValue
                case 2: e.crossSectionArea = value.isNull ? nil : value.realValue
                case 3: e.barLength = value.isNull ? nil : value.realValue
                case 4: e.barSurface = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingBarSurfaceEnum(rawValue: $0) }
                case 5: e.bendingShapeCode = value.isNull ? nil : value.stringValue
                case 6: e.bendingParameters = value.isNull ? nil : IFC4X3.IfcBendingParameterSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcingElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCINGELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "steelGrade", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcingElement else { return .null }
                switch index {
                case 0: return e.steelGrade.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcingElement else { return }
                switch index {
                case 0: e.steelGrade = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcingElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCINGELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcingElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcingElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcReinforcingMesh.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCINGMESH",
            ownAttributes: [STEPAttributeDescriptor(name: "meshLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "meshWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalBarNominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transverseBarNominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalBarCrossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transverseBarCrossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalBarSpacing", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transverseBarSpacing", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcingMesh else { return .null }
                switch index {
                case 0: return e.meshLength.map { .real($0) } ?? .null
                case 1: return e.meshWidth.map { .real($0) } ?? .null
                case 2: return e.longitudinalBarNominalDiameter.map { .real($0) } ?? .null
                case 3: return e.transverseBarNominalDiameter.map { .real($0) } ?? .null
                case 4: return e.longitudinalBarCrossSectionArea.map { .real($0) } ?? .null
                case 5: return e.transverseBarCrossSectionArea.map { .real($0) } ?? .null
                case 6: return e.longitudinalBarSpacing.map { .real($0) } ?? .null
                case 7: return e.transverseBarSpacing.map { .real($0) } ?? .null
                case 8: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcingMesh else { return }
                switch index {
                case 0: e.meshLength = value.isNull ? nil : value.realValue
                case 1: e.meshWidth = value.isNull ? nil : value.realValue
                case 2: e.longitudinalBarNominalDiameter = value.isNull ? nil : value.realValue
                case 3: e.transverseBarNominalDiameter = value.isNull ? nil : value.realValue
                case 4: e.longitudinalBarCrossSectionArea = value.isNull ? nil : value.realValue
                case 5: e.transverseBarCrossSectionArea = value.isNull ? nil : value.realValue
                case 6: e.longitudinalBarSpacing = value.isNull ? nil : value.realValue
                case 7: e.transverseBarSpacing = value.isNull ? nil : value.realValue
                case 8: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingMeshTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcReinforcingMeshType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREINFORCINGMESHTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "meshLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "meshWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalBarNominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transverseBarNominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalBarCrossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transverseBarCrossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalBarSpacing", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transverseBarSpacing", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "bendingShapeCode", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "bendingParameters", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReinforcingMeshType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.meshLength.map { .real($0) } ?? .null
                case 2: return e.meshWidth.map { .real($0) } ?? .null
                case 3: return e.longitudinalBarNominalDiameter.map { .real($0) } ?? .null
                case 4: return e.transverseBarNominalDiameter.map { .real($0) } ?? .null
                case 5: return e.longitudinalBarCrossSectionArea.map { .real($0) } ?? .null
                case 6: return e.transverseBarCrossSectionArea.map { .real($0) } ?? .null
                case 7: return e.longitudinalBarSpacing.map { .real($0) } ?? .null
                case 8: return e.transverseBarSpacing.map { .real($0) } ?? .null
                case 9: return e.bendingShapeCode.map { .string($0) } ?? .null
                case 10: return e.bendingParameters.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReinforcingMeshType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingMeshTypeEnum(rawValue: $0) }
                case 1: e.meshLength = value.isNull ? nil : value.realValue
                case 2: e.meshWidth = value.isNull ? nil : value.realValue
                case 3: e.longitudinalBarNominalDiameter = value.isNull ? nil : value.realValue
                case 4: e.transverseBarNominalDiameter = value.isNull ? nil : value.realValue
                case 5: e.longitudinalBarCrossSectionArea = value.isNull ? nil : value.realValue
                case 6: e.transverseBarCrossSectionArea = value.isNull ? nil : value.realValue
                case 7: e.longitudinalBarSpacing = value.isNull ? nil : value.realValue
                case 8: e.transverseBarSpacing = value.isNull ? nil : value.realValue
                case 9: e.bendingShapeCode = value.isNull ? nil : value.stringValue
                case 10: e.bendingParameters = value.isNull ? nil : IFC4X3.IfcBendingParameterSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAdheresToElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELADHERESTOELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingElement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedSurfaceFeatures", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAdheresToElement else { return .null }
                switch index {
                case 0: return e.relatingElement.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedSurfaceFeatures.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAdheresToElement else { return }
                switch index {
                case 0: e.relatingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                case 1: if case .list(let items) = value { e.relatedSurfaceFeatures = items.compactMap { $0.entityValue as? IFC4X3.IfcSurfaceFeature } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAggregates.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELAGGREGATES",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingObject", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "relatedObjects", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAggregates else { return .null }
                switch index {
                case 0: return e.relatingObject.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedObjects.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAggregates else { return }
                switch index {
                case 0: e.relatingObject = value.isNull ? nil : value.entityValue as? IFC4X3.IfcObjectDefinition
                case 1: if case .list(let items) = value { e.relatedObjects = items.compactMap { $0.entityValue as? IFC4X3.IfcObjectDefinition } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssigns.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedObjects", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatedObjectsType", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssigns else { return .null }
                switch index {
                case 0: return .list(e.relatedObjects.map { .entityRef($0) })
                case 1: return e.relatedObjectsType.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssigns else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedObjects = items.compactMap { $0.entityValue as? IFC4X3.IfcObjectDefinition } }
                case 1: e.relatedObjectsType = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssignsToActor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTOACTOR",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingActor", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "actingRole", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToActor else { return .null }
                switch index {
                case 0: return e.relatingActor.map { .entityRef($0) } ?? .null
                case 1: return e.actingRole.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToActor else { return }
                switch index {
                case 0: e.relatingActor = value.isNull ? nil : value.entityValue as? IFC4X3.IfcActor
                case 1: e.actingRole = value.isNull ? nil : value.entityValue as? IFC4X3.IfcActorRole
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssignsToControl.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTOCONTROL",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingControl", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToControl else { return .null }
                switch index {
                case 0: return e.relatingControl.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToControl else { return }
                switch index {
                case 0: e.relatingControl = value.isNull ? nil : value.entityValue as? IFC4X3.IfcControl
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssignsToGroup.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTOGROUP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingGroup", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToGroup else { return .null }
                switch index {
                case 0: return e.relatingGroup.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToGroup else { return }
                switch index {
                case 0: e.relatingGroup = value.isNull ? nil : value.entityValue as? IFC4X3.IfcGroup
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssignsToGroupByFactor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTOGROUPBYFACTOR",
            ownAttributes: [STEPAttributeDescriptor(name: "factor", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToGroupByFactor else { return .null }
                switch index {
                case 0: return e.factor.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToGroupByFactor else { return }
                switch index {
                case 0: e.factor = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_6(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcRelAssignsToProcess.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTOPROCESS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingProcess", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "quantityInProcess", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToProcess else { return .null }
                switch index {
                case 0: return e.relatingProcess.map { $0.stepEncode() } ?? .null
                case 1: return e.quantityInProcess.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToProcess else { return }
                switch index {
                case 0: e.relatingProcess = value.isNull ? nil : IFC4X3.IfcProcessSelect.stepDecode(value)
                case 1: e.quantityInProcess = value.isNull ? nil : value.entityValue as? IFC4X3.IfcMeasureWithUnit
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssignsToProduct.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTOPRODUCT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingProduct", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToProduct else { return .null }
                switch index {
                case 0: return e.relatingProduct.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToProduct else { return }
                switch index {
                case 0: e.relatingProduct = value.isNull ? nil : IFC4X3.IfcProductSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssignsToResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSIGNSTORESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingResource", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssignsToResource else { return .null }
                switch index {
                case 0: return e.relatingResource.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssignsToResource else { return }
                switch index {
                case 0: e.relatingResource = value.isNull ? nil : IFC4X3.IfcResourceSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociates.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATES",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedObjects", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociates else { return .null }
                switch index {
                case 0: return e.relatedObjects.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociates else { return }
                switch index {
                case 0: e.relatedObjects = value.isNull ? nil : IFC4X3.IfcDefinitionSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesApproval.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESAPPROVAL",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingApproval", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesApproval else { return .null }
                switch index {
                case 0: return e.relatingApproval.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesApproval else { return }
                switch index {
                case 0: e.relatingApproval = value.isNull ? nil : value.entityValue as? IFC4X3.IfcApproval
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesClassification.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESCLASSIFICATION",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingClassification", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesClassification else { return .null }
                switch index {
                case 0: return e.relatingClassification.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesClassification else { return }
                switch index {
                case 0: e.relatingClassification = value.isNull ? nil : IFC4X3.IfcClassificationSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesConstraint.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESCONSTRAINT",
            ownAttributes: [STEPAttributeDescriptor(name: "intent", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "relatingConstraint", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesConstraint else { return .null }
                switch index {
                case 0: return e.intent.map { .string($0) } ?? .null
                case 1: return e.relatingConstraint.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesConstraint else { return }
                switch index {
                case 0: e.intent = value.isNull ? nil : value.stringValue
                case 1: e.relatingConstraint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcConstraint
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesDocument.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESDOCUMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingDocument", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesDocument else { return .null }
                switch index {
                case 0: return e.relatingDocument.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesDocument else { return }
                switch index {
                case 0: e.relatingDocument = value.isNull ? nil : IFC4X3.IfcDocumentSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesLibrary.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESLIBRARY",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingLibrary", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesLibrary else { return .null }
                switch index {
                case 0: return e.relatingLibrary.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesLibrary else { return }
                switch index {
                case 0: e.relatingLibrary = value.isNull ? nil : IFC4X3.IfcLibrarySelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesMaterial.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESMATERIAL",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingMaterial", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesMaterial else { return .null }
                switch index {
                case 0: return e.relatingMaterial.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesMaterial else { return }
                switch index {
                case 0: e.relatingMaterial = value.isNull ? nil : IFC4X3.IfcMaterialSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelAssociatesProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELASSOCIATESPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingProfileDef", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelAssociatesProfileDef else { return .null }
                switch index {
                case 0: return e.relatingProfileDef.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelAssociatesProfileDef else { return }
                switch index {
                case 0: e.relatingProfileDef = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnects.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTS",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnects else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnects else { return }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsElements.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSELEMENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "connectionGeometry", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatingElement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsElements else { return .null }
                switch index {
                case 0: return e.connectionGeometry.map { .entityRef($0) } ?? .null
                case 1: return e.relatingElement.map { .entityRef($0) } ?? .null
                case 2: return e.relatedElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsElements else { return }
                switch index {
                case 0: e.connectionGeometry = value.isNull ? nil : value.entityValue as? IFC4X3.IfcConnectionGeometry
                case 1: e.relatingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                case 2: e.relatedElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsPathElements.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSPATHELEMENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingPriorities", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "relatedPriorities", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "relatedConnectionType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "relatingConnectionType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsPathElements else { return .null }
                switch index {
                case 0: return .list(e.relatingPriorities.map { .integer($0) })
                case 1: return .list(e.relatedPriorities.map { .integer($0) })
                case 2: return e.relatedConnectionType.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.relatingConnectionType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsPathElements else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatingPriorities = items.compactMap { $0.integerValue } }
                case 1: if case .list(let items) = value { e.relatedPriorities = items.compactMap { $0.integerValue } }
                case 2: e.relatedConnectionType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConnectionTypeEnum(rawValue: $0) }
                case 3: e.relatingConnectionType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcConnectionTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsPortToElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSPORTTOELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingPort", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsPortToElement else { return .null }
                switch index {
                case 0: return e.relatingPort.map { .entityRef($0) } ?? .null
                case 1: return e.relatedElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsPortToElement else { return }
                switch index {
                case 0: e.relatingPort = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPort
                case 1: e.relatedElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDistributionElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsPorts.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSPORTS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingPort", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedPort", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "realizingElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsPorts else { return .null }
                switch index {
                case 0: return e.relatingPort.map { .entityRef($0) } ?? .null
                case 1: return e.relatedPort.map { .entityRef($0) } ?? .null
                case 2: return e.realizingElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsPorts else { return }
                switch index {
                case 0: e.relatingPort = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPort
                case 1: e.relatedPort = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPort
                case 2: e.realizingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsStructuralActivity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSSTRUCTURALACTIVITY",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "relatedStructuralActivity", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsStructuralActivity else { return .null }
                switch index {
                case 0: return e.relatingElement.map { $0.stepEncode() } ?? .null
                case 1: return e.relatedStructuralActivity.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsStructuralActivity else { return }
                switch index {
                case 0: e.relatingElement = value.isNull ? nil : IFC4X3.IfcStructuralActivityAssignmentSelect.stepDecode(value)
                case 1: e.relatedStructuralActivity = value.isNull ? nil : value.entityValue as? IFC4X3.IfcStructuralActivity
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsStructuralMember.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSSTRUCTURALMEMBER",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingStructuralMember", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedStructuralConnection", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "appliedCondition", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "additionalConditions", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "supportedLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "conditionCoordinateSystem", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsStructuralMember else { return .null }
                switch index {
                case 0: return e.relatingStructuralMember.map { .entityRef($0) } ?? .null
                case 1: return e.relatedStructuralConnection.map { .entityRef($0) } ?? .null
                case 2: return e.appliedCondition.map { .entityRef($0) } ?? .null
                case 3: return e.additionalConditions.map { .entityRef($0) } ?? .null
                case 4: return e.supportedLength.map { .real($0) } ?? .null
                case 5: return e.conditionCoordinateSystem.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsStructuralMember else { return }
                switch index {
                case 0: e.relatingStructuralMember = value.isNull ? nil : value.entityValue as? IFC4X3.IfcStructuralMember
                case 1: e.relatedStructuralConnection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcStructuralConnection
                case 2: e.appliedCondition = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundaryCondition
                case 3: e.additionalConditions = value.isNull ? nil : value.entityValue as? IFC4X3.IfcStructuralConnectionCondition
                case 4: e.supportedLength = value.isNull ? nil : value.realValue
                case 5: e.conditionCoordinateSystem = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsWithEccentricity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSWITHECCENTRICITY",
            ownAttributes: [STEPAttributeDescriptor(name: "connectionConstraint", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsWithEccentricity else { return .null }
                switch index {
                case 0: return e.connectionConstraint.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsWithEccentricity else { return }
                switch index {
                case 0: e.connectionConstraint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcConnectionGeometry
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelConnectsWithRealizingElements.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONNECTSWITHREALIZINGELEMENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "realizingElements", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "connectionType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelConnectsWithRealizingElements else { return .null }
                switch index {
                case 0: return .list(e.realizingElements.map { .entityRef($0) })
                case 1: return e.connectionType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelConnectsWithRealizingElements else { return }
                switch index {
                case 0: if case .list(let items) = value { e.realizingElements = items.compactMap { $0.entityValue as? IFC4X3.IfcElement } }
                case 1: e.connectionType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelContainedInSpatialStructure.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCONTAINEDINSPATIALSTRUCTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedElements", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatingStructure", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelContainedInSpatialStructure else { return .null }
                switch index {
                case 0: return .list(e.relatedElements.map { .entityRef($0) })
                case 1: return e.relatingStructure.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelContainedInSpatialStructure else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedElements = items.compactMap { $0.entityValue as? IFC4X3.IfcProduct } }
                case 1: e.relatingStructure = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSpatialElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelCoversBldgElements.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCOVERSBLDGELEMENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingBuildingElement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedCoverings", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelCoversBldgElements else { return .null }
                switch index {
                case 0: return e.relatingBuildingElement.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedCoverings.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelCoversBldgElements else { return }
                switch index {
                case 0: e.relatingBuildingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                case 1: if case .list(let items) = value { e.relatedCoverings = items.compactMap { $0.entityValue as? IFC4X3.IfcCovering } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelCoversSpaces.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELCOVERSSPACES",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingSpace", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedCoverings", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelCoversSpaces else { return .null }
                switch index {
                case 0: return e.relatingSpace.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedCoverings.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelCoversSpaces else { return }
                switch index {
                case 0: e.relatingSpace = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSpace
                case 1: if case .list(let items) = value { e.relatedCoverings = items.compactMap { $0.entityValue as? IFC4X3.IfcCovering } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelDeclares.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDECLARES",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingContext", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "relatedDefinitions", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDeclares else { return .null }
                switch index {
                case 0: return e.relatingContext.map { .entityRef($0) } ?? .null
                case 1: return e.relatedDefinitions.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDeclares else { return }
                switch index {
                case 0: e.relatingContext = value.isNull ? nil : value.entityValue as? IFC4X3.IfcContext
                case 1: e.relatedDefinitions = value.isNull ? nil : IFC4X3.IfcDefinitionSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelDecomposes.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDECOMPOSES",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDecomposes else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDecomposes else { return }
            }
        )

        d[ObjectIdentifier(IfcRelDefines.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDEFINES",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDefines else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDefines else { return }
            }
        )

        d[ObjectIdentifier(IfcRelDefinesByObject.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDEFINESBYOBJECT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedObjects", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatingObject", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDefinesByObject else { return .null }
                switch index {
                case 0: return .list(e.relatedObjects.map { .entityRef($0) })
                case 1: return e.relatingObject.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDefinesByObject else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedObjects = items.compactMap { $0.entityValue as? IFC4X3.IfcObject } }
                case 1: e.relatingObject = value.isNull ? nil : value.entityValue as? IFC4X3.IfcObject
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelDefinesByProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDEFINESBYPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedObjects", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatingPropertyDefinition", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDefinesByProperties else { return .null }
                switch index {
                case 0: return .list(e.relatedObjects.map { .entityRef($0) })
                case 1: return e.relatingPropertyDefinition.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDefinesByProperties else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedObjects = items.compactMap { $0.entityValue as? IFC4X3.IfcObjectDefinition } }
                case 1: e.relatingPropertyDefinition = value.isNull ? nil : IFC4X3.IfcPropertySetDefinitionSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelDefinesByTemplate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDEFINESBYTEMPLATE",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedPropertySets", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatingTemplate", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDefinesByTemplate else { return .null }
                switch index {
                case 0: return .list(e.relatedPropertySets.map { .entityRef($0) })
                case 1: return e.relatingTemplate.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDefinesByTemplate else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedPropertySets = items.compactMap { $0.entityValue as? IFC4X3.IfcPropertySetDefinition } }
                case 1: e.relatingTemplate = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPropertySetTemplate
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelDefinesByType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELDEFINESBYTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedObjects", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatingType", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelDefinesByType else { return .null }
                switch index {
                case 0: return .list(e.relatedObjects.map { .entityRef($0) })
                case 1: return e.relatingType.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelDefinesByType else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedObjects = items.compactMap { $0.entityValue as? IFC4X3.IfcObject } }
                case 1: e.relatingType = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTypeObject
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelFillsElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELFILLSELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingOpeningElement", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "relatedBuildingElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelFillsElement else { return .null }
                switch index {
                case 0: return e.relatingOpeningElement.map { .entityRef($0) } ?? .null
                case 1: return e.relatedBuildingElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelFillsElement else { return }
                switch index {
                case 0: e.relatingOpeningElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcOpeningElement
                case 1: e.relatedBuildingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelFlowControlElements.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELFLOWCONTROLELEMENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedControlElements", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "relatingFlowElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelFlowControlElements else { return .null }
                switch index {
                case 0: return .list(e.relatedControlElements.map { .entityRef($0) })
                case 1: return e.relatingFlowElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelFlowControlElements else { return }
                switch index {
                case 0: if case .list(let items) = value { e.relatedControlElements = items.compactMap { $0.entityValue as? IFC4X3.IfcDistributionControlElement } }
                case 1: e.relatingFlowElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDistributionFlowElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelInterferesElements.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELINTERFERESELEMENTS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "relatedElement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "interferenceGeometry", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "interferenceType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "impliedOrder", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "interferenceSpace", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelInterferesElements else { return .null }
                switch index {
                case 0: return e.relatingElement.map { $0.stepEncode() } ?? .null
                case 1: return e.relatedElement.map { $0.stepEncode() } ?? .null
                case 2: return e.interferenceGeometry.map { .entityRef($0) } ?? .null
                case 3: return e.interferenceType.map { .string($0) } ?? .null
                case 4: return e.impliedOrder.map { .logical($0) } ?? .null
                case 5: return e.interferenceSpace.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelInterferesElements else { return }
                switch index {
                case 0: e.relatingElement = value.isNull ? nil : IFC4X3.IfcInterferenceSelect.stepDecode(value)
                case 1: e.relatedElement = value.isNull ? nil : IFC4X3.IfcInterferenceSelect.stepDecode(value)
                case 2: e.interferenceGeometry = value.isNull ? nil : value.entityValue as? IFC4X3.IfcConnectionGeometry
                case 3: e.interferenceType = value.isNull ? nil : value.stringValue
                case 4: e.impliedOrder = value.isNull ? nil : value.logicalValue
                case 5: e.interferenceSpace = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSpatialZone
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelNests.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELNESTS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingObject", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "relatedObjects", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelNests else { return .null }
                switch index {
                case 0: return e.relatingObject.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedObjects.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelNests else { return }
                switch index {
                case 0: e.relatingObject = value.isNull ? nil : value.entityValue as? IFC4X3.IfcObjectDefinition
                case 1: if case .list(let items) = value { e.relatedObjects = items.compactMap { $0.entityValue as? IFC4X3.IfcObjectDefinition } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelPositions.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELPOSITIONS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingPositioningElement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedProducts", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelPositions else { return .null }
                switch index {
                case 0: return e.relatingPositioningElement.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedProducts.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelPositions else { return }
                switch index {
                case 0: e.relatingPositioningElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPositioningElement
                case 1: if case .list(let items) = value { e.relatedProducts = items.compactMap { $0.entityValue as? IFC4X3.IfcProduct } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelProjectsElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELPROJECTSELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingElement", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "relatedFeatureElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelProjectsElement else { return .null }
                switch index {
                case 0: return e.relatingElement.map { .entityRef($0) } ?? .null
                case 1: return e.relatedFeatureElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelProjectsElement else { return }
                switch index {
                case 0: e.relatingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                case 1: e.relatedFeatureElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcFeatureElementAddition
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelReferencedInSpatialStructure.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELREFERENCEDINSPATIALSTRUCTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedElements", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "relatingStructure", kind: .entityRef, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelReferencedInSpatialStructure else { return .null }
                switch index {
                case 0: return e.relatedElements.map { $0.stepEncode() } ?? .null
                case 1: return e.relatingStructure.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelReferencedInSpatialStructure else { return }
                switch index {
                case 0: e.relatedElements = value.isNull ? nil : IFC4X3.IfcSpatialReferenceSelect.stepDecode(value)
                case 1: e.relatingStructure = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSpatialElement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelSequence.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELSEQUENCE",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingProcess", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedProcess", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "timeLag", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "sequenceType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedSequenceType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelSequence else { return .null }
                switch index {
                case 0: return e.relatingProcess.map { .entityRef($0) } ?? .null
                case 1: return e.relatedProcess.map { .entityRef($0) } ?? .null
                case 2: return e.timeLag.map { .entityRef($0) } ?? .null
                case 3: return e.sequenceType.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.userDefinedSequenceType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelSequence else { return }
                switch index {
                case 0: e.relatingProcess = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProcess
                case 1: e.relatedProcess = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProcess
                case 2: e.timeLag = value.isNull ? nil : value.entityValue as? IFC4X3.IfcLagTime
                case 3: e.sequenceType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSequenceEnum(rawValue: $0) }
                case 4: e.userDefinedSequenceType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelServicesBuildings.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELSERVICESBUILDINGS",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingSystem", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedBuildings", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelServicesBuildings else { return .null }
                switch index {
                case 0: return e.relatingSystem.map { .entityRef($0) } ?? .null
                case 1: return .list(e.relatedBuildings.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelServicesBuildings else { return }
                switch index {
                case 0: e.relatingSystem = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSystem
                case 1: if case .list(let items) = value { e.relatedBuildings = items.compactMap { $0.entityValue as? IFC4X3.IfcSpatialElement } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelSpaceBoundary.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELSPACEBOUNDARY",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingSpace", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "relatedBuildingElement", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "connectionGeometry", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "physicalOrVirtualBoundary", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "internalOrExternalBoundary", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelSpaceBoundary else { return .null }
                switch index {
                case 0: return e.relatingSpace.map { $0.stepEncode() } ?? .null
                case 1: return e.relatedBuildingElement.map { .entityRef($0) } ?? .null
                case 2: return e.connectionGeometry.map { .entityRef($0) } ?? .null
                case 3: return e.physicalOrVirtualBoundary.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.internalOrExternalBoundary.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelSpaceBoundary else { return }
                switch index {
                case 0: e.relatingSpace = value.isNull ? nil : IFC4X3.IfcSpaceBoundarySelect.stepDecode(value)
                case 1: e.relatedBuildingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                case 2: e.connectionGeometry = value.isNull ? nil : value.entityValue as? IFC4X3.IfcConnectionGeometry
                case 3: e.physicalOrVirtualBoundary = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPhysicalOrVirtualEnum(rawValue: $0) }
                case 4: e.internalOrExternalBoundary = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcInternalOrExternalEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelSpaceBoundary1stLevel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELSPACEBOUNDARY1STLEVEL",
            ownAttributes: [STEPAttributeDescriptor(name: "parentBoundary", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelSpaceBoundary1stLevel else { return .null }
                switch index {
                case 0: return e.parentBoundary.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelSpaceBoundary1stLevel else { return }
                switch index {
                case 0: e.parentBoundary = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRelSpaceBoundary1stLevel
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelSpaceBoundary2ndLevel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELSPACEBOUNDARY2NDLEVEL",
            ownAttributes: [STEPAttributeDescriptor(name: "correspondingBoundary", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelSpaceBoundary2ndLevel else { return .null }
                switch index {
                case 0: return e.correspondingBoundary.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelSpaceBoundary2ndLevel else { return }
                switch index {
                case 0: e.correspondingBoundary = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRelSpaceBoundary2ndLevel
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelVoidsElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELVOIDSELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingBuildingElement", kind: .entityRef, isOptional: false), STEPAttributeDescriptor(name: "relatedOpeningElement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelVoidsElement else { return .null }
                switch index {
                case 0: return e.relatingBuildingElement.map { .entityRef($0) } ?? .null
                case 1: return e.relatedOpeningElement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelVoidsElement else { return }
                switch index {
                case 0: e.relatingBuildingElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcElement
                case 1: e.relatedOpeningElement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcFeatureElementSubtraction
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRELATIONSHIP",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRelationship else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRelationship else { return }
            }
        )

        d[ObjectIdentifier(IfcReparametrisedCompositeCurveSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREPARAMETRISEDCOMPOSITECURVESEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "paramLength", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcReparametrisedCompositeCurveSegment else { return .null }
                switch index {
                case 0: return e.paramLength.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcReparametrisedCompositeCurveSegment else { return }
                switch index {
                case 0: e.paramLength = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRepresentation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREPRESENTATION",
            ownAttributes: [STEPAttributeDescriptor(name: "contextOfItems", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "representationIdentifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "representationType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "items", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRepresentation else { return .null }
                switch index {
                case 0: return e.contextOfItems.map { .entityRef($0) } ?? .null
                case 1: return e.representationIdentifier.map { .string($0) } ?? .null
                case 2: return e.representationType.map { .string($0) } ?? .null
                case 3: return .list(e.items.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRepresentation else { return }
                switch index {
                case 0: e.contextOfItems = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRepresentationContext
                case 1: e.representationIdentifier = value.isNull ? nil : value.stringValue
                case 2: e.representationType = value.isNull ? nil : value.stringValue
                case 3: if case .list(let items) = value { e.items = items.compactMap { $0.entityValue as? IFC4X3.IfcRepresentationItem } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRepresentationContext.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREPRESENTATIONCONTEXT",
            ownAttributes: [STEPAttributeDescriptor(name: "contextIdentifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "contextType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRepresentationContext else { return .null }
                switch index {
                case 0: return e.contextIdentifier.map { .string($0) } ?? .null
                case 1: return e.contextType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRepresentationContext else { return }
                switch index {
                case 0: e.contextIdentifier = value.isNull ? nil : value.stringValue
                case 1: e.contextType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRepresentationItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREPRESENTATIONITEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRepresentationItem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRepresentationItem else { return }
            }
        )

        d[ObjectIdentifier(IfcRepresentationMap.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREPRESENTATIONMAP",
            ownAttributes: [STEPAttributeDescriptor(name: "mappingOrigin", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "mappedRepresentation", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRepresentationMap else { return .null }
                switch index {
                case 0: return e.mappingOrigin.map { $0.stepEncode() } ?? .null
                case 1: return e.mappedRepresentation.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRepresentationMap else { return }
                switch index {
                case 0: e.mappingOrigin = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                case 1: e.mappedRepresentation = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRepresentation
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcResource else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.longDescription.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcResource else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.longDescription = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcResourceApprovalRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRESOURCEAPPROVALRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatedResourceObjects", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "relatingApproval", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcResourceApprovalRelationship else { return .null }
                switch index {
                case 0: return e.relatedResourceObjects.map { $0.stepEncode() } ?? .null
                case 1: return e.relatingApproval.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcResourceApprovalRelationship else { return }
                switch index {
                case 0: e.relatedResourceObjects = value.isNull ? nil : IFC4X3.IfcResourceObjectSelect.stepDecode(value)
                case 1: e.relatingApproval = value.isNull ? nil : value.entityValue as? IFC4X3.IfcApproval
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcResourceConstraintRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRESOURCECONSTRAINTRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "relatingConstraint", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "relatedResourceObjects", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcResourceConstraintRelationship else { return .null }
                switch index {
                case 0: return e.relatingConstraint.map { .entityRef($0) } ?? .null
                case 1: return e.relatedResourceObjects.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcResourceConstraintRelationship else { return }
                switch index {
                case 0: e.relatingConstraint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcConstraint
                case 1: e.relatedResourceObjects = value.isNull ? nil : IFC4X3.IfcResourceObjectSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcResourceLevelRelationship.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRESOURCELEVELRELATIONSHIP",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcResourceLevelRelationship else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcResourceLevelRelationship else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcResourceTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRESOURCETIME",
            ownAttributes: [STEPAttributeDescriptor(name: "scheduleWork", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scheduleUsage", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "scheduleStart", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scheduleFinish", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scheduleContour", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "levelingDelay", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "isOverAllocated", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "statusTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "actualWork", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "actualUsage", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "actualStart", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "actualFinish", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "remainingWork", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "remainingUsage", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "completion", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcResourceTime else { return .null }
                switch index {
                case 0: return e.scheduleWork.map { .string($0) } ?? .null
                case 1: return e.scheduleUsage.map { .real($0) } ?? .null
                case 2: return e.scheduleStart.map { .string($0) } ?? .null
                case 3: return e.scheduleFinish.map { .string($0) } ?? .null
                case 4: return e.scheduleContour.map { .string($0) } ?? .null
                case 5: return e.levelingDelay.map { .string($0) } ?? .null
                case 6: return e.isOverAllocated.map { .boolean($0) } ?? .null
                case 7: return e.statusTime.map { .string($0) } ?? .null
                case 8: return e.actualWork.map { .string($0) } ?? .null
                case 9: return e.actualUsage.map { .real($0) } ?? .null
                case 10: return e.actualStart.map { .string($0) } ?? .null
                case 11: return e.actualFinish.map { .string($0) } ?? .null
                case 12: return e.remainingWork.map { .string($0) } ?? .null
                case 13: return e.remainingUsage.map { .real($0) } ?? .null
                case 14: return e.completion.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcResourceTime else { return }
                switch index {
                case 0: e.scheduleWork = value.isNull ? nil : value.stringValue
                case 1: e.scheduleUsage = value.isNull ? nil : value.realValue
                case 2: e.scheduleStart = value.isNull ? nil : value.stringValue
                case 3: e.scheduleFinish = value.isNull ? nil : value.stringValue
                case 4: e.scheduleContour = value.isNull ? nil : value.stringValue
                case 5: e.levelingDelay = value.isNull ? nil : value.stringValue
                case 6: e.isOverAllocated = value.isNull ? nil : value.boolValue
                case 7: e.statusTime = value.isNull ? nil : value.stringValue
                case 8: e.actualWork = value.isNull ? nil : value.stringValue
                case 9: e.actualUsage = value.isNull ? nil : value.realValue
                case 10: e.actualStart = value.isNull ? nil : value.stringValue
                case 11: e.actualFinish = value.isNull ? nil : value.stringValue
                case 12: e.remainingWork = value.isNull ? nil : value.stringValue
                case 13: e.remainingUsage = value.isNull ? nil : value.realValue
                case 14: e.completion = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRevolvedAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREVOLVEDAREASOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "axis", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "angle", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRevolvedAreaSolid else { return .null }
                switch index {
                case 0: return e.axis.map { .entityRef($0) } ?? .null
                case 1: return e.angle.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRevolvedAreaSolid else { return }
                switch index {
                case 0: e.axis = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis1Placement
                case 1: e.angle = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRevolvedAreaSolidTapered.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCREVOLVEDAREASOLIDTAPERED",
            ownAttributes: [STEPAttributeDescriptor(name: "endSweptArea", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRevolvedAreaSolidTapered else { return .null }
                switch index {
                case 0: return e.endSweptArea.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRevolvedAreaSolidTapered else { return }
                switch index {
                case 0: e.endSweptArea = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRightCircularCone.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRIGHTCIRCULARCONE",
            ownAttributes: [STEPAttributeDescriptor(name: "height", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "bottomRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRightCircularCone else { return .null }
                switch index {
                case 0: return e.height.map { .real($0) } ?? .null
                case 1: return e.bottomRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRightCircularCone else { return }
                switch index {
                case 0: e.height = value.isNull ? nil : value.realValue
                case 1: e.bottomRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRightCircularCylinder.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRIGHTCIRCULARCYLINDER",
            ownAttributes: [STEPAttributeDescriptor(name: "height", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRightCircularCylinder else { return .null }
                switch index {
                case 0: return e.height.map { .real($0) } ?? .null
                case 1: return e.radius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRightCircularCylinder else { return }
                switch index {
                case 0: e.height = value.isNull ? nil : value.realValue
                case 1: e.radius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRigidOperation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCRIGIDOPERATION",
            ownAttributes: [STEPAttributeDescriptor(name: "firstCoordinate", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "secondCoordinate", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "height", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRigidOperation else { return .null }
                switch index {
                case 0: return e.firstCoordinate.map { $0.stepEncode() } ?? .null
                case 1: return e.secondCoordinate.map { $0.stepEncode() } ?? .null
                case 2: return e.height.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRigidOperation else { return }
                switch index {
                case 0: e.firstCoordinate = value.isNull ? nil : IFC4X3.IfcMeasureValue.stepDecode(value)
                case 1: e.secondCoordinate = value.isNull ? nil : IFC4X3.IfcMeasureValue.stepDecode(value)
                case 2: e.height = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRoad.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCROAD",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRoad else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRoad else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRoadTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRoadPart.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCROADPART",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRoadPart else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRoadPart else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRoadPartTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRoof.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCROOF",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRoof else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRoof else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRoofTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRoofType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCROOFTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRoofType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRoofType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcRoofTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRoot.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCROOT",
            ownAttributes: [STEPAttributeDescriptor(name: "globalId", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "ownerHistory", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRoot else { return .null }
                switch index {
                case 0: return e.globalId.map { .string($0) } ?? .null
                case 1: return e.ownerHistory.map { .entityRef($0) } ?? .null
                case 2: return e.name.map { .string($0) } ?? .null
                case 3: return e.description.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRoot else { return }
                switch index {
                case 0: e.globalId = value.isNull ? nil : value.stringValue
                case 1: e.ownerHistory = value.isNull ? nil : value.entityValue as? IFC4X3.IfcOwnerHistory
                case 2: e.name = value.isNull ? nil : value.stringValue
                case 3: e.description = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcRoundedRectangleProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCROUNDEDRECTANGLEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "roundingRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcRoundedRectangleProfileDef else { return .null }
                switch index {
                case 0: return e.roundingRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcRoundedRectangleProfileDef else { return }
                switch index {
                case 0: e.roundingRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSIUnit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIUNIT",
            ownAttributes: [STEPAttributeDescriptor(name: "prefix", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .enumeration, isOptional: true)],
            derivedOverrides: ["dimensions"],
            getter: { entity, index in
                guard let e = entity as? IfcSIUnit else { return .null }
                switch index {
                case 0: return e.prefix.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.name.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSIUnit else { return }
                switch index {
                case 0: e.prefix = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSIPrefix(rawValue: $0) }
                case 1: e.name = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSIUnitName(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSanitaryTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSANITARYTERMINAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSanitaryTerminal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSanitaryTerminal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSanitaryTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSanitaryTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSANITARYTERMINALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSanitaryTerminalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSanitaryTerminalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSanitaryTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSchedulingTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSCHEDULINGTIME",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "dataOrigin", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedDataOrigin", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSchedulingTime else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.dataOrigin.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.userDefinedDataOrigin.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSchedulingTime else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.dataOrigin = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDataOriginEnum(rawValue: $0) }
                case 2: e.userDefinedDataOrigin = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSeamCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSEAMCURVE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSeamCurve else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSeamCurve else { return }
            }
        )

        d[ObjectIdentifier(IfcSecondOrderPolynomialSpiral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECONDORDERPOLYNOMIALSPIRAL",
            ownAttributes: [STEPAttributeDescriptor(name: "quadraticTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "constantTerm", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSecondOrderPolynomialSpiral else { return .null }
                switch index {
                case 0: return e.quadraticTerm.map { .real($0) } ?? .null
                case 1: return e.linearTerm.map { .real($0) } ?? .null
                case 2: return e.constantTerm.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSecondOrderPolynomialSpiral else { return }
                switch index {
                case 0: e.quadraticTerm = value.isNull ? nil : value.realValue
                case 1: e.linearTerm = value.isNull ? nil : value.realValue
                case 2: e.constantTerm = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSectionProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECTIONPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "sectionType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "startProfile", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "endProfile", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSectionProperties else { return .null }
                switch index {
                case 0: return e.sectionType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.startProfile.map { .entityRef($0) } ?? .null
                case 2: return e.endProfile.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSectionProperties else { return }
                switch index {
                case 0: e.sectionType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSectionTypeEnum(rawValue: $0) }
                case 1: e.startProfile = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                case 2: e.endProfile = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSectionReinforcementProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECTIONREINFORCEMENTPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "longitudinalStartPosition", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "longitudinalEndPosition", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transversePosition", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "reinforcementRole", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "sectionDefinition", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "crossSectionReinforcementDefinitions", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSectionReinforcementProperties else { return .null }
                switch index {
                case 0: return e.longitudinalStartPosition.map { .real($0) } ?? .null
                case 1: return e.longitudinalEndPosition.map { .real($0) } ?? .null
                case 2: return e.transversePosition.map { .real($0) } ?? .null
                case 3: return e.reinforcementRole.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.sectionDefinition.map { .entityRef($0) } ?? .null
                case 5: return .list(e.crossSectionReinforcementDefinitions.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSectionReinforcementProperties else { return }
                switch index {
                case 0: e.longitudinalStartPosition = value.isNull ? nil : value.realValue
                case 1: e.longitudinalEndPosition = value.isNull ? nil : value.realValue
                case 2: e.transversePosition = value.isNull ? nil : value.realValue
                case 3: e.reinforcementRole = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReinforcingBarRoleEnum(rawValue: $0) }
                case 4: e.sectionDefinition = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSectionProperties
                case 5: if case .list(let items) = value { e.crossSectionReinforcementDefinitions = items.compactMap { $0.entityValue as? IFC4X3.IfcReinforcementBarProperties } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSectionedSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECTIONEDSOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "directrix", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "crossSections", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSectionedSolid else { return .null }
                switch index {
                case 0: return e.directrix.map { .entityRef($0) } ?? .null
                case 1: return .list(e.crossSections.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSectionedSolid else { return }
                switch index {
                case 0: e.directrix = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: if case .list(let items) = value { e.crossSections = items.compactMap { $0.entityValue as? IFC4X3.IfcProfileDef } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSectionedSolidHorizontal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECTIONEDSOLIDHORIZONTAL",
            ownAttributes: [STEPAttributeDescriptor(name: "crossSectionPositions", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSectionedSolidHorizontal else { return .null }
                switch index {
                case 0: return .list(e.crossSectionPositions.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSectionedSolidHorizontal else { return }
                switch index {
                case 0: if case .list(let items) = value { e.crossSectionPositions = items.compactMap { $0.entityValue as? IFC4X3.IfcAxis2PlacementLinear } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSectionedSpine.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECTIONEDSPINE",
            ownAttributes: [STEPAttributeDescriptor(name: "spineCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "crossSections", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "crossSectionPositions", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSectionedSpine else { return .null }
                switch index {
                case 0: return e.spineCurve.map { .entityRef($0) } ?? .null
                case 1: return .list(e.crossSections.map { .entityRef($0) })
                case 2: return .list(e.crossSectionPositions.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSectionedSpine else { return }
                switch index {
                case 0: e.spineCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCompositeCurve
                case 1: if case .list(let items) = value { e.crossSections = items.compactMap { $0.entityValue as? IFC4X3.IfcProfileDef } }
                case 2: if case .list(let items) = value { e.crossSectionPositions = items.compactMap { $0.entityValue as? IFC4X3.IfcAxis2Placement3D } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSectionedSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSECTIONEDSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "directrix", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "crossSectionPositions", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "crossSections", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSectionedSurface else { return .null }
                switch index {
                case 0: return e.directrix.map { .entityRef($0) } ?? .null
                case 1: return .list(e.crossSectionPositions.map { .entityRef($0) })
                case 2: return .list(e.crossSections.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSectionedSurface else { return }
                switch index {
                case 0: e.directrix = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: if case .list(let items) = value { e.crossSectionPositions = items.compactMap { $0.entityValue as? IFC4X3.IfcAxis2PlacementLinear } }
                case 2: if case .list(let items) = value { e.crossSections = items.compactMap { $0.entityValue as? IFC4X3.IfcProfileDef } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSegment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSEGMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "transition", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSegment else { return .null }
                switch index {
                case 0: return e.transition.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSegment else { return }
                switch index {
                case 0: e.transition = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTransitionCode(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSegmentedReferenceCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSEGMENTEDREFERENCECURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "baseCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "endPoint", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSegmentedReferenceCurve else { return .null }
                switch index {
                case 0: return e.baseCurve.map { .entityRef($0) } ?? .null
                case 1: return e.endPoint.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSegmentedReferenceCurve else { return }
                switch index {
                case 0: e.baseCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundedCurve
                case 1: e.endPoint = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPlacement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSensor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSENSOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSensor else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSensor else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSensorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSensorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSENSORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSensorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSensorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSensorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSeventhOrderPolynomialSpiral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSEVENTHORDERPOLYNOMIALSPIRAL",
            ownAttributes: [STEPAttributeDescriptor(name: "septicTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "sexticTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "quinticTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "quarticTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "cubicTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "quadraticTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "constantTerm", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSeventhOrderPolynomialSpiral else { return .null }
                switch index {
                case 0: return e.septicTerm.map { .real($0) } ?? .null
                case 1: return e.sexticTerm.map { .real($0) } ?? .null
                case 2: return e.quinticTerm.map { .real($0) } ?? .null
                case 3: return e.quarticTerm.map { .real($0) } ?? .null
                case 4: return e.cubicTerm.map { .real($0) } ?? .null
                case 5: return e.quadraticTerm.map { .real($0) } ?? .null
                case 6: return e.linearTerm.map { .real($0) } ?? .null
                case 7: return e.constantTerm.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSeventhOrderPolynomialSpiral else { return }
                switch index {
                case 0: e.septicTerm = value.isNull ? nil : value.realValue
                case 1: e.sexticTerm = value.isNull ? nil : value.realValue
                case 2: e.quinticTerm = value.isNull ? nil : value.realValue
                case 3: e.quarticTerm = value.isNull ? nil : value.realValue
                case 4: e.cubicTerm = value.isNull ? nil : value.realValue
                case 5: e.quadraticTerm = value.isNull ? nil : value.realValue
                case 6: e.linearTerm = value.isNull ? nil : value.realValue
                case 7: e.constantTerm = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcShadingDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSHADINGDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcShadingDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcShadingDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcShadingDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcShadingDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSHADINGDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcShadingDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcShadingDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcShadingDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcShapeAspect.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSHAPEASPECT",
            ownAttributes: [STEPAttributeDescriptor(name: "shapeRepresentations", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "productDefinitional", kind: .logical, isOptional: true), STEPAttributeDescriptor(name: "partOfProductDefinitionShape", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcShapeAspect else { return .null }
                switch index {
                case 0: return .list(e.shapeRepresentations.map { .entityRef($0) })
                case 1: return e.name.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                case 3: return e.productDefinitional.map { .logical($0) } ?? .null
                case 4: return e.partOfProductDefinitionShape.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcShapeAspect else { return }
                switch index {
                case 0: if case .list(let items) = value { e.shapeRepresentations = items.compactMap { $0.entityValue as? IFC4X3.IfcShapeModel } }
                case 1: e.name = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                case 3: e.productDefinitional = value.isNull ? nil : value.logicalValue
                case 4: e.partOfProductDefinitionShape = value.isNull ? nil : IFC4X3.IfcProductRepresentationSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcShapeModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSHAPEMODEL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcShapeModel else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcShapeModel else { return }
            }
        )

        d[ObjectIdentifier(IfcShapeRepresentation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSHAPEREPRESENTATION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcShapeRepresentation else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcShapeRepresentation else { return }
            }
        )

        d[ObjectIdentifier(IfcShellBasedSurfaceModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSHELLBASEDSURFACEMODEL",
            ownAttributes: [STEPAttributeDescriptor(name: "sbsmBoundary", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcShellBasedSurfaceModel else { return .null }
                switch index {
                case 0: return e.sbsmBoundary.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcShellBasedSurfaceModel else { return }
                switch index {
                case 0: e.sbsmBoundary = value.isNull ? nil : IFC4X3.IfcShell.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSign.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIGN",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSign else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSign else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSignTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSignType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIGNTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSignType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSignType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSignTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSignal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIGNAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSignal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSignal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSignalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSignalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIGNALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSignalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSignalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSignalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSimpleProperty.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIMPLEPROPERTY",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSimpleProperty else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSimpleProperty else { return }
            }
        )

        d[ObjectIdentifier(IfcSimplePropertyTemplate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSIMPLEPROPERTYTEMPLATE",
            ownAttributes: [STEPAttributeDescriptor(name: "templateType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "primaryMeasureType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "secondaryMeasureType", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "enumerators", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "primaryUnit", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "secondaryUnit", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "expression", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "accessState", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSimplePropertyTemplate else { return .null }
                switch index {
                case 0: return e.templateType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.primaryMeasureType.map { .string($0) } ?? .null
                case 2: return e.secondaryMeasureType.map { .string($0) } ?? .null
                case 3: return e.enumerators.map { .entityRef($0) } ?? .null
                case 4: return e.primaryUnit.map { $0.stepEncode() } ?? .null
                case 5: return e.secondaryUnit.map { $0.stepEncode() } ?? .null
                case 6: return e.expression.map { .string($0) } ?? .null
                case 7: return e.accessState.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSimplePropertyTemplate else { return }
                switch index {
                case 0: e.templateType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSimplePropertyTemplateTypeEnum(rawValue: $0) }
                case 1: e.primaryMeasureType = value.isNull ? nil : value.stringValue
                case 2: e.secondaryMeasureType = value.isNull ? nil : value.stringValue
                case 3: e.enumerators = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPropertyEnumeration
                case 4: e.primaryUnit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                case 5: e.secondaryUnit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                case 6: e.expression = value.isNull ? nil : value.stringValue
                case 7: e.accessState = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStateEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSineSpiral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSINESPIRAL",
            ownAttributes: [STEPAttributeDescriptor(name: "sineTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "constantTerm", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSineSpiral else { return .null }
                switch index {
                case 0: return e.sineTerm.map { .real($0) } ?? .null
                case 1: return e.linearTerm.map { .real($0) } ?? .null
                case 2: return e.constantTerm.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSineSpiral else { return }
                switch index {
                case 0: e.sineTerm = value.isNull ? nil : value.realValue
                case 1: e.linearTerm = value.isNull ? nil : value.realValue
                case 2: e.constantTerm = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSite.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSITE",
            ownAttributes: [STEPAttributeDescriptor(name: "refLatitude", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "refLongitude", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "refElevation", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "landTitleNumber", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "siteAddress", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSite else { return .null }
                switch index {
                case 0: return e.refLatitude.map { .entityRef($0) } ?? .null
                case 1: return e.refLongitude.map { .entityRef($0) } ?? .null
                case 2: return e.refElevation.map { .real($0) } ?? .null
                case 3: return e.landTitleNumber.map { .string($0) } ?? .null
                case 4: return e.siteAddress.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSite else { return }
                switch index {
                case 0: e.refLatitude = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCompoundPlaneAngleMeasure
                case 1: e.refLongitude = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCompoundPlaneAngleMeasure
                case 2: e.refElevation = value.isNull ? nil : value.realValue
                case 3: e.landTitleNumber = value.isNull ? nil : value.stringValue
                case 4: e.siteAddress = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPostalAddress
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSlab.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSLAB",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSlab else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSlab else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSlabTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSlabType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSLABTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSlabType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSlabType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSlabTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSlippageConnectionCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSLIPPAGECONNECTIONCONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "slippageX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "slippageY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "slippageZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSlippageConnectionCondition else { return .null }
                switch index {
                case 0: return e.slippageX.map { .real($0) } ?? .null
                case 1: return e.slippageY.map { .real($0) } ?? .null
                case 2: return e.slippageZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSlippageConnectionCondition else { return }
                switch index {
                case 0: e.slippageX = value.isNull ? nil : value.realValue
                case 1: e.slippageY = value.isNull ? nil : value.realValue
                case 2: e.slippageZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSolarDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSOLARDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSolarDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSolarDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSolarDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_7(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcSolarDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSOLARDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSolarDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSolarDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSolarDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSolidModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSOLIDMODEL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSolidModel else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSolidModel else { return }
            }
        )

        d[ObjectIdentifier(IfcSpace.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPACE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "elevationWithFlooring", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpace else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.elevationWithFlooring.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpace else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSpaceTypeEnum(rawValue: $0) }
                case 1: e.elevationWithFlooring = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpaceHeater.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPACEHEATER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpaceHeater else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpaceHeater else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSpaceHeaterTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpaceHeaterType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPACEHEATERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpaceHeaterType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpaceHeaterType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSpaceHeaterTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpaceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPACETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpaceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.longName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpaceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSpaceTypeEnum(rawValue: $0) }
                case 1: e.longName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpatialElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPATIALELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpatialElement else { return .null }
                switch index {
                case 0: return e.longName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpatialElement else { return }
                switch index {
                case 0: e.longName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpatialElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPATIALELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "elementType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpatialElementType else { return .null }
                switch index {
                case 0: return e.elementType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpatialElementType else { return }
                switch index {
                case 0: e.elementType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpatialStructureElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPATIALSTRUCTUREELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "compositionType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpatialStructureElement else { return .null }
                switch index {
                case 0: return e.compositionType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpatialStructureElement else { return }
                switch index {
                case 0: e.compositionType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcElementCompositionEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpatialStructureElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPATIALSTRUCTUREELEMENTTYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpatialStructureElementType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpatialStructureElementType else { return }
            }
        )

        d[ObjectIdentifier(IfcSpatialZone.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPATIALZONE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpatialZone else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpatialZone else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSpatialZoneTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpatialZoneType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPATIALZONETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpatialZoneType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.longName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpatialZoneType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSpatialZoneTypeEnum(rawValue: $0) }
                case 1: e.longName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSphere.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPHERE",
            ownAttributes: [STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSphere else { return .null }
                switch index {
                case 0: return e.radius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSphere else { return }
                switch index {
                case 0: e.radius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSphericalSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPHERICALSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSphericalSurface else { return .null }
                switch index {
                case 0: return e.radius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSphericalSurface else { return }
                switch index {
                case 0: e.radius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSpiral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSPIRAL",
            ownAttributes: [STEPAttributeDescriptor(name: "position", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSpiral else { return .null }
                switch index {
                case 0: return e.position.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSpiral else { return }
                switch index {
                case 0: e.position = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStackTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTACKTERMINAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStackTerminal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStackTerminal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStackTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStackTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTACKTERMINALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStackTerminalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStackTerminalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStackTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStair.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTAIR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStair else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStair else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStairTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStairFlight.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTAIRFLIGHT",
            ownAttributes: [STEPAttributeDescriptor(name: "numberOfRisers", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "numberOfTreads", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "riserHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "treadLength", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStairFlight else { return .null }
                switch index {
                case 0: return e.numberOfRisers.map { .integer($0) } ?? .null
                case 1: return e.numberOfTreads.map { .integer($0) } ?? .null
                case 2: return e.riserHeight.map { .real($0) } ?? .null
                case 3: return e.treadLength.map { .real($0) } ?? .null
                case 4: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStairFlight else { return }
                switch index {
                case 0: e.numberOfRisers = value.isNull ? nil : value.integerValue
                case 1: e.numberOfTreads = value.isNull ? nil : value.integerValue
                case 2: e.riserHeight = value.isNull ? nil : value.realValue
                case 3: e.treadLength = value.isNull ? nil : value.realValue
                case 4: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStairFlightTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStairFlightType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTAIRFLIGHTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStairFlightType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStairFlightType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStairFlightTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStairType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTAIRTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStairType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStairType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStairTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralAction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALACTION",
            ownAttributes: [STEPAttributeDescriptor(name: "destabilizingLoad", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralAction else { return .null }
                switch index {
                case 0: return e.destabilizingLoad.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralAction else { return }
                switch index {
                case 0: e.destabilizingLoad = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralActivity.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALACTIVITY",
            ownAttributes: [STEPAttributeDescriptor(name: "appliedLoad", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "globalOrLocal", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralActivity else { return .null }
                switch index {
                case 0: return e.appliedLoad.map { .entityRef($0) } ?? .null
                case 1: return e.globalOrLocal.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralActivity else { return }
                switch index {
                case 0: e.appliedLoad = value.isNull ? nil : value.entityValue as? IFC4X3.IfcStructuralLoad
                case 1: e.globalOrLocal = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcGlobalOrLocalEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralAnalysisModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALANALYSISMODEL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "orientationOf2DPlane", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "loadedBy", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "hasResults", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "sharedPlacement", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralAnalysisModel else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.orientationOf2DPlane.map { .entityRef($0) } ?? .null
                case 2: return .list(e.loadedBy.map { .entityRef($0) })
                case 3: return .list(e.hasResults.map { .entityRef($0) })
                case 4: return e.sharedPlacement.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralAnalysisModel else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAnalysisModelTypeEnum(rawValue: $0) }
                case 1: e.orientationOf2DPlane = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                case 2: if case .list(let items) = value { e.loadedBy = items.compactMap { $0.entityValue as? IFC4X3.IfcStructuralLoadGroup } }
                case 3: if case .list(let items) = value { e.hasResults = items.compactMap { $0.entityValue as? IFC4X3.IfcStructuralResultGroup } }
                case 4: e.sharedPlacement = value.isNull ? nil : value.entityValue as? IFC4X3.IfcObjectPlacement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralConnection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCONNECTION",
            ownAttributes: [STEPAttributeDescriptor(name: "appliedCondition", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralConnection else { return .null }
                switch index {
                case 0: return e.appliedCondition.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralConnection else { return }
                switch index {
                case 0: e.appliedCondition = value.isNull ? nil : value.entityValue as? IFC4X3.IfcBoundaryCondition
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralConnectionCondition.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCONNECTIONCONDITION",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralConnectionCondition else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralConnectionCondition else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralCurveAction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCURVEACTION",
            ownAttributes: [STEPAttributeDescriptor(name: "projectedOrTrue", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralCurveAction else { return .null }
                switch index {
                case 0: return e.projectedOrTrue.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralCurveAction else { return }
                switch index {
                case 0: e.projectedOrTrue = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProjectedOrTrueLengthEnum(rawValue: $0) }
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStructuralCurveActivityTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralCurveConnection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCURVECONNECTION",
            ownAttributes: [STEPAttributeDescriptor(name: "axisDirection", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralCurveConnection else { return .null }
                switch index {
                case 0: return e.axisDirection.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralCurveConnection else { return }
                switch index {
                case 0: e.axisDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralCurveMember.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCURVEMEMBER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "axis", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralCurveMember else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.axis.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralCurveMember else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStructuralCurveMemberTypeEnum(rawValue: $0) }
                case 1: e.axis = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralCurveMemberVarying.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCURVEMEMBERVARYING",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralCurveMemberVarying else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralCurveMemberVarying else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralCurveReaction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALCURVEREACTION",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralCurveReaction else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralCurveReaction else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStructuralCurveActivityTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALITEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralItem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralItem else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralLinearAction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLINEARACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLinearAction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLinearAction else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoad.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOAD",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoad else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoad else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadCase.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADCASE",
            ownAttributes: [STEPAttributeDescriptor(name: "selfWeightCoefficients", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadCase else { return .null }
                switch index {
                case 0: return .list(e.selfWeightCoefficients.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadCase else { return }
                switch index {
                case 0: if case .list(let items) = value { e.selfWeightCoefficients = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadConfiguration.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADCONFIGURATION",
            ownAttributes: [STEPAttributeDescriptor(name: "values", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "locations", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadConfiguration else { return .null }
                switch index {
                case 0: return .list(e.values.map { .entityRef($0) })
                case 1: return .list(e.locations.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadConfiguration else { return }
                switch index {
                case 0: if case .list(let items) = value { e.values = items.compactMap { $0.entityValue as? IFC4X3.IfcStructuralLoadOrResult } }
                case 1: if case .list(let items) = value { e.locations = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadGroup.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADGROUP",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "actionType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "actionSource", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "coefficient", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "purpose", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadGroup else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.actionType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.actionSource.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.coefficient.map { .real($0) } ?? .null
                case 4: return e.purpose.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadGroup else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcLoadGroupTypeEnum(rawValue: $0) }
                case 1: e.actionType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcActionTypeEnum(rawValue: $0) }
                case 2: e.actionSource = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcActionSourceTypeEnum(rawValue: $0) }
                case 3: e.coefficient = value.isNull ? nil : value.realValue
                case 4: e.purpose = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadLinearForce.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADLINEARFORCE",
            ownAttributes: [STEPAttributeDescriptor(name: "linearForceX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearForceY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearForceZ", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearMomentX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearMomentY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearMomentZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadLinearForce else { return .null }
                switch index {
                case 0: return e.linearForceX.map { .real($0) } ?? .null
                case 1: return e.linearForceY.map { .real($0) } ?? .null
                case 2: return e.linearForceZ.map { .real($0) } ?? .null
                case 3: return e.linearMomentX.map { .real($0) } ?? .null
                case 4: return e.linearMomentY.map { .real($0) } ?? .null
                case 5: return e.linearMomentZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadLinearForce else { return }
                switch index {
                case 0: e.linearForceX = value.isNull ? nil : value.realValue
                case 1: e.linearForceY = value.isNull ? nil : value.realValue
                case 2: e.linearForceZ = value.isNull ? nil : value.realValue
                case 3: e.linearMomentX = value.isNull ? nil : value.realValue
                case 4: e.linearMomentY = value.isNull ? nil : value.realValue
                case 5: e.linearMomentZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadOrResult.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADORRESULT",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadOrResult else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadOrResult else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadPlanarForce.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADPLANARFORCE",
            ownAttributes: [STEPAttributeDescriptor(name: "planarForceX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "planarForceY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "planarForceZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadPlanarForce else { return .null }
                switch index {
                case 0: return e.planarForceX.map { .real($0) } ?? .null
                case 1: return e.planarForceY.map { .real($0) } ?? .null
                case 2: return e.planarForceZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadPlanarForce else { return }
                switch index {
                case 0: e.planarForceX = value.isNull ? nil : value.realValue
                case 1: e.planarForceY = value.isNull ? nil : value.realValue
                case 2: e.planarForceZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadSingleDisplacement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADSINGLEDISPLACEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "displacementX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "displacementY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "displacementZ", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "rotationalDisplacementRX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "rotationalDisplacementRY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "rotationalDisplacementRZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadSingleDisplacement else { return .null }
                switch index {
                case 0: return e.displacementX.map { .real($0) } ?? .null
                case 1: return e.displacementY.map { .real($0) } ?? .null
                case 2: return e.displacementZ.map { .real($0) } ?? .null
                case 3: return e.rotationalDisplacementRX.map { .real($0) } ?? .null
                case 4: return e.rotationalDisplacementRY.map { .real($0) } ?? .null
                case 5: return e.rotationalDisplacementRZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadSingleDisplacement else { return }
                switch index {
                case 0: e.displacementX = value.isNull ? nil : value.realValue
                case 1: e.displacementY = value.isNull ? nil : value.realValue
                case 2: e.displacementZ = value.isNull ? nil : value.realValue
                case 3: e.rotationalDisplacementRX = value.isNull ? nil : value.realValue
                case 4: e.rotationalDisplacementRY = value.isNull ? nil : value.realValue
                case 5: e.rotationalDisplacementRZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadSingleDisplacementDistortion.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADSINGLEDISPLACEMENTDISTORTION",
            ownAttributes: [STEPAttributeDescriptor(name: "distortion", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadSingleDisplacementDistortion else { return .null }
                switch index {
                case 0: return e.distortion.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadSingleDisplacementDistortion else { return }
                switch index {
                case 0: e.distortion = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadSingleForce.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADSINGLEFORCE",
            ownAttributes: [STEPAttributeDescriptor(name: "forceX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "forceY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "forceZ", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "momentX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "momentY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "momentZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadSingleForce else { return .null }
                switch index {
                case 0: return e.forceX.map { .real($0) } ?? .null
                case 1: return e.forceY.map { .real($0) } ?? .null
                case 2: return e.forceZ.map { .real($0) } ?? .null
                case 3: return e.momentX.map { .real($0) } ?? .null
                case 4: return e.momentY.map { .real($0) } ?? .null
                case 5: return e.momentZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadSingleForce else { return }
                switch index {
                case 0: e.forceX = value.isNull ? nil : value.realValue
                case 1: e.forceY = value.isNull ? nil : value.realValue
                case 2: e.forceZ = value.isNull ? nil : value.realValue
                case 3: e.momentX = value.isNull ? nil : value.realValue
                case 4: e.momentY = value.isNull ? nil : value.realValue
                case 5: e.momentZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadSingleForceWarping.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADSINGLEFORCEWARPING",
            ownAttributes: [STEPAttributeDescriptor(name: "warpingMoment", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadSingleForceWarping else { return .null }
                switch index {
                case 0: return e.warpingMoment.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadSingleForceWarping else { return }
                switch index {
                case 0: e.warpingMoment = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadStatic.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADSTATIC",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadStatic else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadStatic else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralLoadTemperature.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALLOADTEMPERATURE",
            ownAttributes: [STEPAttributeDescriptor(name: "deltaTConstant", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "deltaTY", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "deltaTZ", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralLoadTemperature else { return .null }
                switch index {
                case 0: return e.deltaTConstant.map { .real($0) } ?? .null
                case 1: return e.deltaTY.map { .real($0) } ?? .null
                case 2: return e.deltaTZ.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralLoadTemperature else { return }
                switch index {
                case 0: e.deltaTConstant = value.isNull ? nil : value.realValue
                case 1: e.deltaTY = value.isNull ? nil : value.realValue
                case 2: e.deltaTZ = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralMember.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALMEMBER",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralMember else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralMember else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralPlanarAction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALPLANARACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralPlanarAction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralPlanarAction else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralPointAction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALPOINTACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralPointAction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralPointAction else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralPointConnection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALPOINTCONNECTION",
            ownAttributes: [STEPAttributeDescriptor(name: "conditionCoordinateSystem", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralPointConnection else { return .null }
                switch index {
                case 0: return e.conditionCoordinateSystem.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralPointConnection else { return }
                switch index {
                case 0: e.conditionCoordinateSystem = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralPointReaction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALPOINTREACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralPointReaction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralPointReaction else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralReaction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALREACTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralReaction else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralReaction else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralResultGroup.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALRESULTGROUP",
            ownAttributes: [STEPAttributeDescriptor(name: "theoryType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "resultForLoadGroup", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "isLinear", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralResultGroup else { return .null }
                switch index {
                case 0: return e.theoryType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.resultForLoadGroup.map { .entityRef($0) } ?? .null
                case 2: return e.isLinear.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralResultGroup else { return }
                switch index {
                case 0: e.theoryType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcAnalysisTheoryTypeEnum(rawValue: $0) }
                case 1: e.resultForLoadGroup = value.isNull ? nil : value.entityValue as? IFC4X3.IfcStructuralLoadGroup
                case 2: e.isLinear = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralSurfaceAction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALSURFACEACTION",
            ownAttributes: [STEPAttributeDescriptor(name: "projectedOrTrue", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralSurfaceAction else { return .null }
                switch index {
                case 0: return e.projectedOrTrue.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralSurfaceAction else { return }
                switch index {
                case 0: e.projectedOrTrue = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcProjectedOrTrueLengthEnum(rawValue: $0) }
                case 1: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStructuralSurfaceActivityTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralSurfaceConnection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALSURFACECONNECTION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralSurfaceConnection else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralSurfaceConnection else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralSurfaceMember.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALSURFACEMEMBER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "thickness", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralSurfaceMember else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.thickness.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralSurfaceMember else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStructuralSurfaceMemberTypeEnum(rawValue: $0) }
                case 1: e.thickness = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStructuralSurfaceMemberVarying.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALSURFACEMEMBERVARYING",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralSurfaceMemberVarying else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralSurfaceMemberVarying else { return }
            }
        )

        d[ObjectIdentifier(IfcStructuralSurfaceReaction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTRUCTURALSURFACEREACTION",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStructuralSurfaceReaction else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStructuralSurfaceReaction else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcStructuralSurfaceActivityTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStyleModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTYLEMODEL",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStyleModel else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStyleModel else { return }
            }
        )

        d[ObjectIdentifier(IfcStyledItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTYLEDITEM",
            ownAttributes: [STEPAttributeDescriptor(name: "item", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "styles", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStyledItem else { return .null }
                switch index {
                case 0: return e.item.map { .entityRef($0) } ?? .null
                case 1: return .list(e.styles.map { .entityRef($0) })
                case 2: return e.name.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStyledItem else { return }
                switch index {
                case 0: e.item = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRepresentationItem
                case 1: if case .list(let items) = value { e.styles = items.compactMap { $0.entityValue as? IFC4X3.IfcPresentationStyle } }
                case 2: e.name = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcStyledRepresentation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSTYLEDREPRESENTATION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcStyledRepresentation else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcStyledRepresentation else { return }
            }
        )

        d[ObjectIdentifier(IfcSubContractResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSUBCONTRACTRESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSubContractResource else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSubContractResource else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSubContractResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSubContractResourceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSUBCONTRACTRESOURCETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSubContractResourceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSubContractResourceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSubContractResourceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSubedge.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSUBEDGE",
            ownAttributes: [STEPAttributeDescriptor(name: "parentEdge", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSubedge else { return .null }
                switch index {
                case 0: return e.parentEdge.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSubedge else { return }
                switch index {
                case 0: e.parentEdge = value.isNull ? nil : value.entityValue as? IFC4X3.IfcEdge
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurface else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurface else { return }
            }
        )

        d[ObjectIdentifier(IfcSurfaceCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACECURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "curve3D", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "associatedGeometry", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "masterRepresentation", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceCurve else { return .null }
                switch index {
                case 0: return e.curve3D.map { .entityRef($0) } ?? .null
                case 1: return .list(e.associatedGeometry.map { .entityRef($0) })
                case 2: return e.masterRepresentation.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceCurve else { return }
                switch index {
                case 0: e.curve3D = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: if case .list(let items) = value { e.associatedGeometry = items.compactMap { $0.entityValue as? IFC4X3.IfcPcurve } }
                case 2: e.masterRepresentation = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcPreferredSurfaceCurveRepresentation(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceCurveSweptAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACECURVESWEPTAREASOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "referenceSurface", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceCurveSweptAreaSolid else { return .null }
                switch index {
                case 0: return e.referenceSurface.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceCurveSweptAreaSolid else { return }
                switch index {
                case 0: e.referenceSurface = value.isNull ? nil : value.entityValue as? IFC4X3.IfcSurface
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceFeature.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACEFEATURE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceFeature else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceFeature else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSurfaceFeatureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceOfLinearExtrusion.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACEOFLINEAREXTRUSION",
            ownAttributes: [STEPAttributeDescriptor(name: "extrudedDirection", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceOfLinearExtrusion else { return .null }
                switch index {
                case 0: return e.extrudedDirection.map { .entityRef($0) } ?? .null
                case 1: return e.depth.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceOfLinearExtrusion else { return }
                switch index {
                case 0: e.extrudedDirection = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.depth = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceOfRevolution.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACEOFREVOLUTION",
            ownAttributes: [STEPAttributeDescriptor(name: "axisPosition", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceOfRevolution else { return .null }
                switch index {
                case 0: return e.axisPosition.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceOfRevolution else { return }
                switch index {
                case 0: e.axisPosition = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis1Placement
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceReinforcementArea.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACEREINFORCEMENTAREA",
            ownAttributes: [STEPAttributeDescriptor(name: "surfaceReinforcement1", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "surfaceReinforcement2", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "shearReinforcement", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceReinforcementArea else { return .null }
                switch index {
                case 0: return .list(e.surfaceReinforcement1.map { .real($0) })
                case 1: return .list(e.surfaceReinforcement2.map { .real($0) })
                case 2: return e.shearReinforcement.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceReinforcementArea else { return }
                switch index {
                case 0: if case .list(let items) = value { e.surfaceReinforcement1 = items.compactMap { $0.realValue } }
                case 1: if case .list(let items) = value { e.surfaceReinforcement2 = items.compactMap { $0.realValue } }
                case 2: e.shearReinforcement = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACESTYLE",
            ownAttributes: [STEPAttributeDescriptor(name: "side", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "styles", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceStyle else { return .null }
                switch index {
                case 0: return e.side.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.styles.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceStyle else { return }
                switch index {
                case 0: e.side = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSurfaceSide(rawValue: $0) }
                case 1: e.styles = value.isNull ? nil : IFC4X3.IfcSurfaceStyleElementSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceStyleLighting.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACESTYLELIGHTING",
            ownAttributes: [STEPAttributeDescriptor(name: "diffuseTransmissionColour", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "diffuseReflectionColour", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "transmissionColour", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "reflectanceColour", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceStyleLighting else { return .null }
                switch index {
                case 0: return e.diffuseTransmissionColour.map { .entityRef($0) } ?? .null
                case 1: return e.diffuseReflectionColour.map { .entityRef($0) } ?? .null
                case 2: return e.transmissionColour.map { .entityRef($0) } ?? .null
                case 3: return e.reflectanceColour.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceStyleLighting else { return }
                switch index {
                case 0: e.diffuseTransmissionColour = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                case 1: e.diffuseReflectionColour = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                case 2: e.transmissionColour = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                case 3: e.reflectanceColour = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceStyleRefraction.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACESTYLEREFRACTION",
            ownAttributes: [STEPAttributeDescriptor(name: "refractionIndex", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "dispersionFactor", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceStyleRefraction else { return .null }
                switch index {
                case 0: return e.refractionIndex.map { .real($0) } ?? .null
                case 1: return e.dispersionFactor.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceStyleRefraction else { return }
                switch index {
                case 0: e.refractionIndex = value.isNull ? nil : value.realValue
                case 1: e.dispersionFactor = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceStyleRendering.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACESTYLERENDERING",
            ownAttributes: [STEPAttributeDescriptor(name: "diffuseColour", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "transmissionColour", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "diffuseTransmissionColour", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "reflectionColour", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "specularColour", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "specularHighlight", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "reflectanceMethod", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceStyleRendering else { return .null }
                switch index {
                case 0: return e.diffuseColour.map { $0.stepEncode() } ?? .null
                case 1: return e.transmissionColour.map { $0.stepEncode() } ?? .null
                case 2: return e.diffuseTransmissionColour.map { $0.stepEncode() } ?? .null
                case 3: return e.reflectionColour.map { $0.stepEncode() } ?? .null
                case 4: return e.specularColour.map { $0.stepEncode() } ?? .null
                case 5: return e.specularHighlight.map { $0.stepEncode() } ?? .null
                case 6: return e.reflectanceMethod.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceStyleRendering else { return }
                switch index {
                case 0: e.diffuseColour = value.isNull ? nil : IFC4X3.IfcColourOrFactor.stepDecode(value)
                case 1: e.transmissionColour = value.isNull ? nil : IFC4X3.IfcColourOrFactor.stepDecode(value)
                case 2: e.diffuseTransmissionColour = value.isNull ? nil : IFC4X3.IfcColourOrFactor.stepDecode(value)
                case 3: e.reflectionColour = value.isNull ? nil : IFC4X3.IfcColourOrFactor.stepDecode(value)
                case 4: e.specularColour = value.isNull ? nil : IFC4X3.IfcColourOrFactor.stepDecode(value)
                case 5: e.specularHighlight = value.isNull ? nil : IFC4X3.IfcSpecularHighlightSelect.stepDecode(value)
                case 6: e.reflectanceMethod = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcReflectanceMethodEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceStyleShading.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACESTYLESHADING",
            ownAttributes: [STEPAttributeDescriptor(name: "surfaceColour", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "transparency", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceStyleShading else { return .null }
                switch index {
                case 0: return e.surfaceColour.map { .entityRef($0) } ?? .null
                case 1: return e.transparency.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceStyleShading else { return }
                switch index {
                case 0: e.surfaceColour = value.isNull ? nil : value.entityValue as? IFC4X3.IfcColourRgb
                case 1: e.transparency = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceStyleWithTextures.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACESTYLEWITHTEXTURES",
            ownAttributes: [STEPAttributeDescriptor(name: "textures", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceStyleWithTextures else { return .null }
                switch index {
                case 0: return .list(e.textures.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceStyleWithTextures else { return }
                switch index {
                case 0: if case .list(let items) = value { e.textures = items.compactMap { $0.entityValue as? IFC4X3.IfcSurfaceTexture } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSurfaceTexture.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSURFACETEXTURE",
            ownAttributes: [STEPAttributeDescriptor(name: "repeatS", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "repeatT", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "mode", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "textureTransform", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "parameter", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSurfaceTexture else { return .null }
                switch index {
                case 0: return e.repeatS.map { .boolean($0) } ?? .null
                case 1: return e.repeatT.map { .boolean($0) } ?? .null
                case 2: return e.mode.map { .string($0) } ?? .null
                case 3: return e.textureTransform.map { .entityRef($0) } ?? .null
                case 4: return .list(e.parameter.map { .string($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSurfaceTexture else { return }
                switch index {
                case 0: e.repeatS = value.isNull ? nil : value.boolValue
                case 1: e.repeatT = value.isNull ? nil : value.boolValue
                case 2: e.mode = value.isNull ? nil : value.stringValue
                case 3: e.textureTransform = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianTransformationOperator2D
                case 4: if case .list(let items) = value { e.parameter = items.compactMap { $0.stringValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSweptAreaSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSWEPTAREASOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "sweptArea", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSweptAreaSolid else { return .null }
                switch index {
                case 0: return e.sweptArea.map { .entityRef($0) } ?? .null
                case 1: return e.position.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSweptAreaSolid else { return }
                switch index {
                case 0: e.sweptArea = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                case 1: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSweptDiskSolid.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSWEPTDISKSOLID",
            ownAttributes: [STEPAttributeDescriptor(name: "directrix", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "radius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "innerRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "startParam", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "endParam", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSweptDiskSolid else { return .null }
                switch index {
                case 0: return e.directrix.map { .entityRef($0) } ?? .null
                case 1: return e.radius.map { .real($0) } ?? .null
                case 2: return e.innerRadius.map { .real($0) } ?? .null
                case 3: return e.startParam.map { .real($0) } ?? .null
                case 4: return e.endParam.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSweptDiskSolid else { return }
                switch index {
                case 0: e.directrix = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: e.radius = value.isNull ? nil : value.realValue
                case 2: e.innerRadius = value.isNull ? nil : value.realValue
                case 3: e.startParam = value.isNull ? nil : value.realValue
                case 4: e.endParam = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSweptDiskSolidPolygonal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSWEPTDISKSOLIDPOLYGONAL",
            ownAttributes: [STEPAttributeDescriptor(name: "filletRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSweptDiskSolidPolygonal else { return .null }
                switch index {
                case 0: return e.filletRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSweptDiskSolidPolygonal else { return }
                switch index {
                case 0: e.filletRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSweptSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSWEPTSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "sweptCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "position", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSweptSurface else { return .null }
                switch index {
                case 0: return e.sweptCurve.map { .entityRef($0) } ?? .null
                case 1: return e.position.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSweptSurface else { return }
                switch index {
                case 0: e.sweptCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcProfileDef
                case 1: e.position = value.isNull ? nil : value.entityValue as? IFC4X3.IfcAxis2Placement3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSwitchingDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSWITCHINGDEVICE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSwitchingDevice else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSwitchingDevice else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSwitchingDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSwitchingDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSWITCHINGDEVICETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSwitchingDeviceType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSwitchingDeviceType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSwitchingDeviceTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSystem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSYSTEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSystem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSystem else { return }
            }
        )

        d[ObjectIdentifier(IfcSystemFurnitureElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSYSTEMFURNITUREELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSystemFurnitureElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSystemFurnitureElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSystemFurnitureElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcSystemFurnitureElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCSYSTEMFURNITUREELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcSystemFurnitureElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcSystemFurnitureElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcSystemFurnitureElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTSHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "filletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeEdgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webEdgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webSlope", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeSlope", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTShapeProfileDef else { return .null }
                switch index {
                case 0: return e.depth.map { .real($0) } ?? .null
                case 1: return e.flangeWidth.map { .real($0) } ?? .null
                case 2: return e.webThickness.map { .real($0) } ?? .null
                case 3: return e.flangeThickness.map { .real($0) } ?? .null
                case 4: return e.filletRadius.map { .real($0) } ?? .null
                case 5: return e.flangeEdgeRadius.map { .real($0) } ?? .null
                case 6: return e.webEdgeRadius.map { .real($0) } ?? .null
                case 7: return e.webSlope.map { .real($0) } ?? .null
                case 8: return e.flangeSlope.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTShapeProfileDef else { return }
                switch index {
                case 0: e.depth = value.isNull ? nil : value.realValue
                case 1: e.flangeWidth = value.isNull ? nil : value.realValue
                case 2: e.webThickness = value.isNull ? nil : value.realValue
                case 3: e.flangeThickness = value.isNull ? nil : value.realValue
                case 4: e.filletRadius = value.isNull ? nil : value.realValue
                case 5: e.flangeEdgeRadius = value.isNull ? nil : value.realValue
                case 6: e.webEdgeRadius = value.isNull ? nil : value.realValue
                case 7: e.webSlope = value.isNull ? nil : value.realValue
                case 8: e.flangeSlope = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTable.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTABLE",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "rows", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "columns", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTable else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return .list(e.rows.map { .entityRef($0) })
                case 2: return .list(e.columns.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTable else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.rows = items.compactMap { $0.entityValue as? IFC4X3.IfcTableRow } }
                case 2: if case .list(let items) = value { e.columns = items.compactMap { $0.entityValue as? IFC4X3.IfcTableColumn } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTableColumn.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTABLECOLUMN",
            ownAttributes: [STEPAttributeDescriptor(name: "identifier", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "unit", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "referencePath", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTableColumn else { return .null }
                switch index {
                case 0: return e.identifier.map { .string($0) } ?? .null
                case 1: return e.name.map { .string($0) } ?? .null
                case 2: return e.description.map { .string($0) } ?? .null
                case 3: return e.unit.map { $0.stepEncode() } ?? .null
                case 4: return e.referencePath.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTableColumn else { return }
                switch index {
                case 0: e.identifier = value.isNull ? nil : value.stringValue
                case 1: e.name = value.isNull ? nil : value.stringValue
                case 2: e.description = value.isNull ? nil : value.stringValue
                case 3: e.unit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                case 4: e.referencePath = value.isNull ? nil : value.entityValue as? IFC4X3.IfcReference
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTableRow.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTABLEROW",
            ownAttributes: [STEPAttributeDescriptor(name: "rowCells", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "isHeading", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTableRow else { return .null }
                switch index {
                case 0: return e.rowCells.map { $0.stepEncode() } ?? .null
                case 1: return e.isHeading.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTableRow else { return }
                switch index {
                case 0: e.rowCells = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                case 1: e.isHeading = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTank.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTANK",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTank else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTank else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTankTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTankType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTANKTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTankType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTankType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTankTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTask.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTASK",
            ownAttributes: [STEPAttributeDescriptor(name: "status", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "workMethod", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "isMilestone", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "priority", kind: .integer, isOptional: true), STEPAttributeDescriptor(name: "taskTime", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTask else { return .null }
                switch index {
                case 0: return e.status.map { .string($0) } ?? .null
                case 1: return e.workMethod.map { .string($0) } ?? .null
                case 2: return e.isMilestone.map { .boolean($0) } ?? .null
                case 3: return e.priority.map { .integer($0) } ?? .null
                case 4: return e.taskTime.map { .entityRef($0) } ?? .null
                case 5: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTask else { return }
                switch index {
                case 0: e.status = value.isNull ? nil : value.stringValue
                case 1: e.workMethod = value.isNull ? nil : value.stringValue
                case 2: e.isMilestone = value.isNull ? nil : value.boolValue
                case 3: e.priority = value.isNull ? nil : value.integerValue
                case 4: e.taskTime = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTaskTime
                case 5: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTaskTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTaskTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTASKTIME",
            ownAttributes: [STEPAttributeDescriptor(name: "durationType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "scheduleDuration", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scheduleStart", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "scheduleFinish", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "earlyStart", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "earlyFinish", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "lateStart", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "lateFinish", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "freeFloat", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "totalFloat", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "isCritical", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "statusTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "actualDuration", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "actualStart", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "actualFinish", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "remainingTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "completion", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTaskTime else { return .null }
                switch index {
                case 0: return e.durationType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.scheduleDuration.map { .string($0) } ?? .null
                case 2: return e.scheduleStart.map { .string($0) } ?? .null
                case 3: return e.scheduleFinish.map { .string($0) } ?? .null
                case 4: return e.earlyStart.map { .string($0) } ?? .null
                case 5: return e.earlyFinish.map { .string($0) } ?? .null
                case 6: return e.lateStart.map { .string($0) } ?? .null
                case 7: return e.lateFinish.map { .string($0) } ?? .null
                case 8: return e.freeFloat.map { .string($0) } ?? .null
                case 9: return e.totalFloat.map { .string($0) } ?? .null
                case 10: return e.isCritical.map { .boolean($0) } ?? .null
                case 11: return e.statusTime.map { .string($0) } ?? .null
                case 12: return e.actualDuration.map { .string($0) } ?? .null
                case 13: return e.actualStart.map { .string($0) } ?? .null
                case 14: return e.actualFinish.map { .string($0) } ?? .null
                case 15: return e.remainingTime.map { .string($0) } ?? .null
                case 16: return e.completion.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTaskTime else { return }
                switch index {
                case 0: e.durationType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTaskDurationEnum(rawValue: $0) }
                case 1: e.scheduleDuration = value.isNull ? nil : value.stringValue
                case 2: e.scheduleStart = value.isNull ? nil : value.stringValue
                case 3: e.scheduleFinish = value.isNull ? nil : value.stringValue
                case 4: e.earlyStart = value.isNull ? nil : value.stringValue
                case 5: e.earlyFinish = value.isNull ? nil : value.stringValue
                case 6: e.lateStart = value.isNull ? nil : value.stringValue
                case 7: e.lateFinish = value.isNull ? nil : value.stringValue
                case 8: e.freeFloat = value.isNull ? nil : value.stringValue
                case 9: e.totalFloat = value.isNull ? nil : value.stringValue
                case 10: e.isCritical = value.isNull ? nil : value.boolValue
                case 11: e.statusTime = value.isNull ? nil : value.stringValue
                case 12: e.actualDuration = value.isNull ? nil : value.stringValue
                case 13: e.actualStart = value.isNull ? nil : value.stringValue
                case 14: e.actualFinish = value.isNull ? nil : value.stringValue
                case 15: e.remainingTime = value.isNull ? nil : value.stringValue
                case 16: e.completion = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTaskTimeRecurring.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTASKTIMERECURRING",
            ownAttributes: [STEPAttributeDescriptor(name: "recurrence", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTaskTimeRecurring else { return .null }
                switch index {
                case 0: return e.recurrence.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTaskTimeRecurring else { return }
                switch index {
                case 0: e.recurrence = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRecurrencePattern
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTaskType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTASKTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "workMethod", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTaskType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.workMethod.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTaskType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTaskTypeEnum(rawValue: $0) }
                case 1: e.workMethod = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTelecomAddress.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTELECOMADDRESS",
            ownAttributes: [STEPAttributeDescriptor(name: "telephoneNumbers", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "facsimileNumbers", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "pagerNumber", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "electronicMailAddresses", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "wWWHomePageURL", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "messagingIDs", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTelecomAddress else { return .null }
                switch index {
                case 0: return .list(e.telephoneNumbers.map { .string($0) })
                case 1: return .list(e.facsimileNumbers.map { .string($0) })
                case 2: return e.pagerNumber.map { .string($0) } ?? .null
                case 3: return .list(e.electronicMailAddresses.map { .string($0) })
                case 4: return e.wWWHomePageURL.map { .string($0) } ?? .null
                case 5: return .list(e.messagingIDs.map { .string($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTelecomAddress else { return }
                switch index {
                case 0: if case .list(let items) = value { e.telephoneNumbers = items.compactMap { $0.stringValue } }
                case 1: if case .list(let items) = value { e.facsimileNumbers = items.compactMap { $0.stringValue } }
                case 2: e.pagerNumber = value.isNull ? nil : value.stringValue
                case 3: if case .list(let items) = value { e.electronicMailAddresses = items.compactMap { $0.stringValue } }
                case 4: e.wWWHomePageURL = value.isNull ? nil : value.stringValue
                case 5: if case .list(let items) = value { e.messagingIDs = items.compactMap { $0.stringValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTendon.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTENDON",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "nominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "crossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "tensionForce", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "preStress", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "frictionCoefficient", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "anchorageSlip", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "minCurvatureRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTendon else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.nominalDiameter.map { .real($0) } ?? .null
                case 2: return e.crossSectionArea.map { .real($0) } ?? .null
                case 3: return e.tensionForce.map { .real($0) } ?? .null
                case 4: return e.preStress.map { .real($0) } ?? .null
                case 5: return e.frictionCoefficient.map { .real($0) } ?? .null
                case 6: return e.anchorageSlip.map { .real($0) } ?? .null
                case 7: return e.minCurvatureRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTendon else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTendonTypeEnum(rawValue: $0) }
                case 1: e.nominalDiameter = value.isNull ? nil : value.realValue
                case 2: e.crossSectionArea = value.isNull ? nil : value.realValue
                case 3: e.tensionForce = value.isNull ? nil : value.realValue
                case 4: e.preStress = value.isNull ? nil : value.realValue
                case 5: e.frictionCoefficient = value.isNull ? nil : value.realValue
                case 6: e.anchorageSlip = value.isNull ? nil : value.realValue
                case 7: e.minCurvatureRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTendonAnchor.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTENDONANCHOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTendonAnchor else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTendonAnchor else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTendonAnchorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

    }

    private static func registerDescriptors_8(_ d: inout [ObjectIdentifier: STEPEntityDescriptor]) {
        d[ObjectIdentifier(IfcTendonAnchorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTENDONANCHORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTendonAnchorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTendonAnchorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTendonAnchorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTendonConduit.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTENDONCONDUIT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTendonConduit else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTendonConduit else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTendonConduitTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTendonConduitType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTENDONCONDUITTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTendonConduitType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTendonConduitType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTendonConduitTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTendonType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTENDONTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "nominalDiameter", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "crossSectionArea", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "sheathDiameter", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTendonType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.nominalDiameter.map { .real($0) } ?? .null
                case 2: return e.crossSectionArea.map { .real($0) } ?? .null
                case 3: return e.sheathDiameter.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTendonType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTendonTypeEnum(rawValue: $0) }
                case 1: e.nominalDiameter = value.isNull ? nil : value.realValue
                case 2: e.crossSectionArea = value.isNull ? nil : value.realValue
                case 3: e.sheathDiameter = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTessellatedFaceSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTESSELLATEDFACESET",
            ownAttributes: [STEPAttributeDescriptor(name: "coordinates", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTessellatedFaceSet else { return .null }
                switch index {
                case 0: return e.coordinates.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTessellatedFaceSet else { return }
                switch index {
                case 0: e.coordinates = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCartesianPointList3D
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTessellatedItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTESSELLATEDITEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTessellatedItem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTessellatedItem else { return }
            }
        )

        d[ObjectIdentifier(IfcTextLiteral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTLITERAL",
            ownAttributes: [STEPAttributeDescriptor(name: "literal", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "placement", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "path", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextLiteral else { return .null }
                switch index {
                case 0: return e.literal.map { .string($0) } ?? .null
                case 1: return e.placement.map { $0.stepEncode() } ?? .null
                case 2: return e.path.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextLiteral else { return }
                switch index {
                case 0: e.literal = value.isNull ? nil : value.stringValue
                case 1: e.placement = value.isNull ? nil : IFC4X3.IfcAxis2Placement.stepDecode(value)
                case 2: e.path = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTextPath(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextLiteralWithExtent.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTLITERALWITHEXTENT",
            ownAttributes: [STEPAttributeDescriptor(name: "extent", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "boxAlignment", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextLiteralWithExtent else { return .null }
                switch index {
                case 0: return e.extent.map { .entityRef($0) } ?? .null
                case 1: return e.boxAlignment.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextLiteralWithExtent else { return }
                switch index {
                case 0: e.extent = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPlanarExtent
                case 1: e.boxAlignment = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextStyle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTSTYLE",
            ownAttributes: [STEPAttributeDescriptor(name: "textCharacterAppearance", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "textStyle", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "textFontStyle", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "modelOrDraughting", kind: .boolean, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextStyle else { return .null }
                switch index {
                case 0: return e.textCharacterAppearance.map { .entityRef($0) } ?? .null
                case 1: return e.textStyle.map { .entityRef($0) } ?? .null
                case 2: return e.textFontStyle.map { $0.stepEncode() } ?? .null
                case 3: return e.modelOrDraughting.map { .boolean($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextStyle else { return }
                switch index {
                case 0: e.textCharacterAppearance = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTextStyleForDefinedFont
                case 1: e.textStyle = value.isNull ? nil : value.entityValue as? IFC4X3.IfcTextStyleTextModel
                case 2: e.textFontStyle = value.isNull ? nil : IFC4X3.IfcTextFontSelect.stepDecode(value)
                case 3: e.modelOrDraughting = value.isNull ? nil : value.boolValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextStyleFontModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTSTYLEFONTMODEL",
            ownAttributes: [STEPAttributeDescriptor(name: "fontFamily", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "fontStyle", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "fontVariant", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "fontWeight", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "fontSize", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextStyleFontModel else { return .null }
                switch index {
                case 0: return .list(e.fontFamily.map { .string($0) })
                case 1: return e.fontStyle.map { .string($0) } ?? .null
                case 2: return e.fontVariant.map { .string($0) } ?? .null
                case 3: return e.fontWeight.map { .string($0) } ?? .null
                case 4: return e.fontSize.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextStyleFontModel else { return }
                switch index {
                case 0: if case .list(let items) = value { e.fontFamily = items.compactMap { $0.stringValue } }
                case 1: e.fontStyle = value.isNull ? nil : value.stringValue
                case 2: e.fontVariant = value.isNull ? nil : value.stringValue
                case 3: e.fontWeight = value.isNull ? nil : value.stringValue
                case 4: e.fontSize = value.isNull ? nil : IFC4X3.IfcSizeSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextStyleForDefinedFont.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTSTYLEFORDEFINEDFONT",
            ownAttributes: [STEPAttributeDescriptor(name: "colour", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "backgroundColour", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextStyleForDefinedFont else { return .null }
                switch index {
                case 0: return e.colour.map { $0.stepEncode() } ?? .null
                case 1: return e.backgroundColour.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextStyleForDefinedFont else { return }
                switch index {
                case 0: e.colour = value.isNull ? nil : IFC4X3.IfcColour.stepDecode(value)
                case 1: e.backgroundColour = value.isNull ? nil : IFC4X3.IfcColour.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextStyleTextModel.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTSTYLETEXTMODEL",
            ownAttributes: [STEPAttributeDescriptor(name: "textIndent", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "textAlign", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "textDecoration", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "letterSpacing", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "wordSpacing", kind: .select, isOptional: true), STEPAttributeDescriptor(name: "textTransform", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "lineHeight", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextStyleTextModel else { return .null }
                switch index {
                case 0: return e.textIndent.map { $0.stepEncode() } ?? .null
                case 1: return e.textAlign.map { .string($0) } ?? .null
                case 2: return e.textDecoration.map { .string($0) } ?? .null
                case 3: return e.letterSpacing.map { $0.stepEncode() } ?? .null
                case 4: return e.wordSpacing.map { $0.stepEncode() } ?? .null
                case 5: return e.textTransform.map { .string($0) } ?? .null
                case 6: return e.lineHeight.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextStyleTextModel else { return }
                switch index {
                case 0: e.textIndent = value.isNull ? nil : IFC4X3.IfcSizeSelect.stepDecode(value)
                case 1: e.textAlign = value.isNull ? nil : value.stringValue
                case 2: e.textDecoration = value.isNull ? nil : value.stringValue
                case 3: e.letterSpacing = value.isNull ? nil : IFC4X3.IfcSizeSelect.stepDecode(value)
                case 4: e.wordSpacing = value.isNull ? nil : IFC4X3.IfcSizeSelect.stepDecode(value)
                case 5: e.textTransform = value.isNull ? nil : value.stringValue
                case 6: e.lineHeight = value.isNull ? nil : IFC4X3.IfcSizeSelect.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureCoordinate.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTURECOORDINATE",
            ownAttributes: [STEPAttributeDescriptor(name: "maps", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureCoordinate else { return .null }
                switch index {
                case 0: return .list(e.maps.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureCoordinate else { return }
                switch index {
                case 0: if case .list(let items) = value { e.maps = items.compactMap { $0.entityValue as? IFC4X3.IfcSurfaceTexture } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureCoordinateGenerator.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTURECOORDINATEGENERATOR",
            ownAttributes: [STEPAttributeDescriptor(name: "mode", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "parameter", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureCoordinateGenerator else { return .null }
                switch index {
                case 0: return e.mode.map { .string($0) } ?? .null
                case 1: return .list(e.parameter.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureCoordinateGenerator else { return }
                switch index {
                case 0: e.mode = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.parameter = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureCoordinateIndices.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTURECOORDINATEINDICES",
            ownAttributes: [STEPAttributeDescriptor(name: "texCoordIndex", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "texCoordsOf", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureCoordinateIndices else { return .null }
                switch index {
                case 0: return .list(e.texCoordIndex.map { .integer($0) })
                case 1: return e.texCoordsOf.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureCoordinateIndices else { return }
                switch index {
                case 0: if case .list(let items) = value { e.texCoordIndex = items.compactMap { $0.integerValue } }
                case 1: e.texCoordsOf = value.isNull ? nil : value.entityValue as? IFC4X3.IfcIndexedPolygonalFace
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureCoordinateIndicesWithVoids.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTURECOORDINATEINDICESWITHVOIDS",
            ownAttributes: [STEPAttributeDescriptor(name: "innerTexCoordIndices", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureCoordinateIndicesWithVoids else { return .null }
                switch index {
                case 0: return .list(e.innerTexCoordIndices.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureCoordinateIndicesWithVoids else { return }
                switch index {
                case 0: if case .list(let items) = value { e.innerTexCoordIndices = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureMap.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTUREMAP",
            ownAttributes: [STEPAttributeDescriptor(name: "vertices", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "mappedTo", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureMap else { return .null }
                switch index {
                case 0: return .list(e.vertices.map { .entityRef($0) })
                case 1: return e.mappedTo.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureMap else { return }
                switch index {
                case 0: if case .list(let items) = value { e.vertices = items.compactMap { $0.entityValue as? IFC4X3.IfcTextureVertex } }
                case 1: e.mappedTo = value.isNull ? nil : value.entityValue as? IFC4X3.IfcFace
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureVertex.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTUREVERTEX",
            ownAttributes: [STEPAttributeDescriptor(name: "coordinates", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureVertex else { return .null }
                switch index {
                case 0: return .list(e.coordinates.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureVertex else { return }
                switch index {
                case 0: if case .list(let items) = value { e.coordinates = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTextureVertexList.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTEXTUREVERTEXLIST",
            ownAttributes: [STEPAttributeDescriptor(name: "texCoordsList", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTextureVertexList else { return .null }
                switch index {
                case 0: return .list(e.texCoordsList.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTextureVertexList else { return }
                switch index {
                case 0: if case .list(let items) = value { e.texCoordsList = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcThirdOrderPolynomialSpiral.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTHIRDORDERPOLYNOMIALSPIRAL",
            ownAttributes: [STEPAttributeDescriptor(name: "cubicTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "quadraticTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "linearTerm", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "constantTerm", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcThirdOrderPolynomialSpiral else { return .null }
                switch index {
                case 0: return e.cubicTerm.map { .real($0) } ?? .null
                case 1: return e.quadraticTerm.map { .real($0) } ?? .null
                case 2: return e.linearTerm.map { .real($0) } ?? .null
                case 3: return e.constantTerm.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcThirdOrderPolynomialSpiral else { return }
                switch index {
                case 0: e.cubicTerm = value.isNull ? nil : value.realValue
                case 1: e.quadraticTerm = value.isNull ? nil : value.realValue
                case 2: e.linearTerm = value.isNull ? nil : value.realValue
                case 3: e.constantTerm = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTimePeriod.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTIMEPERIOD",
            ownAttributes: [STEPAttributeDescriptor(name: "startTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "endTime", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTimePeriod else { return .null }
                switch index {
                case 0: return e.startTime.map { .string($0) } ?? .null
                case 1: return e.endTime.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTimePeriod else { return }
                switch index {
                case 0: e.startTime = value.isNull ? nil : value.stringValue
                case 1: e.endTime = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTimeSeries.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTIMESERIES",
            ownAttributes: [STEPAttributeDescriptor(name: "name", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "description", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "startTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "endTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "timeSeriesDataType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "dataOrigin", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedDataOrigin", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "unit", kind: .select, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTimeSeries else { return .null }
                switch index {
                case 0: return e.name.map { .string($0) } ?? .null
                case 1: return e.description.map { .string($0) } ?? .null
                case 2: return e.startTime.map { .string($0) } ?? .null
                case 3: return e.endTime.map { .string($0) } ?? .null
                case 4: return e.timeSeriesDataType.map { .enumeration($0.rawValue) } ?? .null
                case 5: return e.dataOrigin.map { .enumeration($0.rawValue) } ?? .null
                case 6: return e.userDefinedDataOrigin.map { .string($0) } ?? .null
                case 7: return e.unit.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTimeSeries else { return }
                switch index {
                case 0: e.name = value.isNull ? nil : value.stringValue
                case 1: e.description = value.isNull ? nil : value.stringValue
                case 2: e.startTime = value.isNull ? nil : value.stringValue
                case 3: e.endTime = value.isNull ? nil : value.stringValue
                case 4: e.timeSeriesDataType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTimeSeriesDataTypeEnum(rawValue: $0) }
                case 5: e.dataOrigin = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcDataOriginEnum(rawValue: $0) }
                case 6: e.userDefinedDataOrigin = value.isNull ? nil : value.stringValue
                case 7: e.unit = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTimeSeriesValue.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTIMESERIESVALUE",
            ownAttributes: [STEPAttributeDescriptor(name: "listValues", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTimeSeriesValue else { return .null }
                switch index {
                case 0: return e.listValues.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTimeSeriesValue else { return }
                switch index {
                case 0: e.listValues = value.isNull ? nil : IFC4X3.IfcValue.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTopologicalRepresentationItem.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTOPOLOGICALREPRESENTATIONITEM",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTopologicalRepresentationItem else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTopologicalRepresentationItem else { return }
            }
        )

        d[ObjectIdentifier(IfcTopologyRepresentation.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTOPOLOGYREPRESENTATION",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTopologyRepresentation else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTopologyRepresentation else { return }
            }
        )

        d[ObjectIdentifier(IfcToroidalSurface.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTOROIDALSURFACE",
            ownAttributes: [STEPAttributeDescriptor(name: "majorRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "minorRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcToroidalSurface else { return .null }
                switch index {
                case 0: return e.majorRadius.map { .real($0) } ?? .null
                case 1: return e.minorRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcToroidalSurface else { return }
                switch index {
                case 0: e.majorRadius = value.isNull ? nil : value.realValue
                case 1: e.minorRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTrackElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRACKELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTrackElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTrackElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTrackElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTrackElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRACKELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTrackElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTrackElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTrackElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTransformer.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRANSFORMER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTransformer else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTransformer else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTransformerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTransformerType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRANSFORMERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTransformerType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTransformerType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTransformerTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTransportElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRANSPORTELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTransportElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTransportElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTransportElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTransportElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRANSPORTELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTransportElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTransportElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTransportElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTransportationDevice.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRANSPORTATIONDEVICE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTransportationDevice else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTransportationDevice else { return }
            }
        )

        d[ObjectIdentifier(IfcTransportationDeviceType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRANSPORTATIONDEVICETYPE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTransportationDeviceType else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTransportationDeviceType else { return }
            }
        )

        d[ObjectIdentifier(IfcTrapeziumProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRAPEZIUMPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "bottomXDim", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topXDim", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "yDim", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "topXOffset", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTrapeziumProfileDef else { return .null }
                switch index {
                case 0: return e.bottomXDim.map { .real($0) } ?? .null
                case 1: return e.topXDim.map { .real($0) } ?? .null
                case 2: return e.yDim.map { .real($0) } ?? .null
                case 3: return e.topXOffset.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTrapeziumProfileDef else { return }
                switch index {
                case 0: e.bottomXDim = value.isNull ? nil : value.realValue
                case 1: e.topXDim = value.isNull ? nil : value.realValue
                case 2: e.yDim = value.isNull ? nil : value.realValue
                case 3: e.topXOffset = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTriangulatedFaceSet.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRIANGULATEDFACESET",
            ownAttributes: [STEPAttributeDescriptor(name: "normals", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "closed", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "coordIndex", kind: .list, isOptional: true), STEPAttributeDescriptor(name: "pnIndex", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTriangulatedFaceSet else { return .null }
                switch index {
                case 0: return .list(e.normals.map { .real($0) })
                case 1: return e.closed.map { .boolean($0) } ?? .null
                case 2: return .list(e.coordIndex.map { .integer($0) })
                case 3: return .list(e.pnIndex.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTriangulatedFaceSet else { return }
                switch index {
                case 0: if case .list(let items) = value { e.normals = items.compactMap { $0.realValue } }
                case 1: e.closed = value.isNull ? nil : value.boolValue
                case 2: if case .list(let items) = value { e.coordIndex = items.compactMap { $0.integerValue } }
                case 3: if case .list(let items) = value { e.pnIndex = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTriangulatedIrregularNetwork.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRIANGULATEDIRREGULARNETWORK",
            ownAttributes: [STEPAttributeDescriptor(name: "flags", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTriangulatedIrregularNetwork else { return .null }
                switch index {
                case 0: return .list(e.flags.map { .integer($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTriangulatedIrregularNetwork else { return }
                switch index {
                case 0: if case .list(let items) = value { e.flags = items.compactMap { $0.integerValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTrimmedCurve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTRIMMEDCURVE",
            ownAttributes: [STEPAttributeDescriptor(name: "basisCurve", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "trim1", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "trim2", kind: .select, isOptional: false), STEPAttributeDescriptor(name: "senseAgreement", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "masterRepresentation", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTrimmedCurve else { return .null }
                switch index {
                case 0: return e.basisCurve.map { .entityRef($0) } ?? .null
                case 1: return e.trim1.map { $0.stepEncode() } ?? .null
                case 2: return e.trim2.map { $0.stepEncode() } ?? .null
                case 3: return e.senseAgreement.map { .boolean($0) } ?? .null
                case 4: return e.masterRepresentation.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTrimmedCurve else { return }
                switch index {
                case 0: e.basisCurve = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCurve
                case 1: e.trim1 = value.isNull ? nil : IFC4X3.IfcTrimmingSelect.stepDecode(value)
                case 2: e.trim2 = value.isNull ? nil : IFC4X3.IfcTrimmingSelect.stepDecode(value)
                case 3: e.senseAgreement = value.isNull ? nil : value.boolValue
                case 4: e.masterRepresentation = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTrimmingPreference(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTubeBundle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTUBEBUNDLE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTubeBundle else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTubeBundle else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTubeBundleTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTubeBundleType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTUBEBUNDLETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTubeBundleType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTubeBundleType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcTubeBundleTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTypeObject.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTYPEOBJECT",
            ownAttributes: [STEPAttributeDescriptor(name: "applicableOccurrence", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "hasPropertySets", kind: .list, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTypeObject else { return .null }
                switch index {
                case 0: return e.applicableOccurrence.map { .string($0) } ?? .null
                case 1: return .list(e.hasPropertySets.map { .entityRef($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTypeObject else { return }
                switch index {
                case 0: e.applicableOccurrence = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.hasPropertySets = items.compactMap { $0.entityValue as? IFC4X3.IfcPropertySetDefinition } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTypeProcess.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTYPEPROCESS",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "processType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTypeProcess else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.longDescription.map { .string($0) } ?? .null
                case 2: return e.processType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTypeProcess else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.longDescription = value.isNull ? nil : value.stringValue
                case 2: e.processType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTypeProduct.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTYPEPRODUCT",
            ownAttributes: [STEPAttributeDescriptor(name: "representationMaps", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "tag", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTypeProduct else { return .null }
                switch index {
                case 0: return .list(e.representationMaps.map { .entityRef($0) })
                case 1: return e.tag.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTypeProduct else { return }
                switch index {
                case 0: if case .list(let items) = value { e.representationMaps = items.compactMap { $0.entityValue as? IFC4X3.IfcRepresentationMap } }
                case 1: e.tag = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcTypeResource.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCTYPERESOURCE",
            ownAttributes: [STEPAttributeDescriptor(name: "identification", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "longDescription", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "resourceType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcTypeResource else { return .null }
                switch index {
                case 0: return e.identification.map { .string($0) } ?? .null
                case 1: return e.longDescription.map { .string($0) } ?? .null
                case 2: return e.resourceType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcTypeResource else { return }
                switch index {
                case 0: e.identification = value.isNull ? nil : value.stringValue
                case 1: e.longDescription = value.isNull ? nil : value.stringValue
                case 2: e.resourceType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcUShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCUSHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "filletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "edgeRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeSlope", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcUShapeProfileDef else { return .null }
                switch index {
                case 0: return e.depth.map { .real($0) } ?? .null
                case 1: return e.flangeWidth.map { .real($0) } ?? .null
                case 2: return e.webThickness.map { .real($0) } ?? .null
                case 3: return e.flangeThickness.map { .real($0) } ?? .null
                case 4: return e.filletRadius.map { .real($0) } ?? .null
                case 5: return e.edgeRadius.map { .real($0) } ?? .null
                case 6: return e.flangeSlope.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcUShapeProfileDef else { return }
                switch index {
                case 0: e.depth = value.isNull ? nil : value.realValue
                case 1: e.flangeWidth = value.isNull ? nil : value.realValue
                case 2: e.webThickness = value.isNull ? nil : value.realValue
                case 3: e.flangeThickness = value.isNull ? nil : value.realValue
                case 4: e.filletRadius = value.isNull ? nil : value.realValue
                case 5: e.edgeRadius = value.isNull ? nil : value.realValue
                case 6: e.flangeSlope = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcUnitAssignment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCUNITASSIGNMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "units", kind: .select, isOptional: false)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcUnitAssignment else { return .null }
                switch index {
                case 0: return e.units.map { $0.stepEncode() } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcUnitAssignment else { return }
                switch index {
                case 0: e.units = value.isNull ? nil : IFC4X3.IfcUnit.stepDecode(value)
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcUnitaryControlElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCUNITARYCONTROLELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcUnitaryControlElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcUnitaryControlElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcUnitaryControlElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcUnitaryControlElementType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCUNITARYCONTROLELEMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcUnitaryControlElementType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcUnitaryControlElementType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcUnitaryControlElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcUnitaryEquipment.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCUNITARYEQUIPMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcUnitaryEquipment else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcUnitaryEquipment else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcUnitaryEquipmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcUnitaryEquipmentType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCUNITARYEQUIPMENTTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcUnitaryEquipmentType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcUnitaryEquipmentType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcUnitaryEquipmentTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcValve.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVALVE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcValve else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcValve else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcValveTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcValveType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVALVETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcValveType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcValveType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcValveTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVector.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVECTOR",
            ownAttributes: [STEPAttributeDescriptor(name: "orientation", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "magnitude", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVector else { return .null }
                switch index {
                case 0: return e.orientation.map { .entityRef($0) } ?? .null
                case 1: return e.magnitude.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVector else { return }
                switch index {
                case 0: e.orientation = value.isNull ? nil : value.entityValue as? IFC4X3.IfcDirection
                case 1: e.magnitude = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVehicle.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVEHICLE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVehicle else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVehicle else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVehicleTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVehicleType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVEHICLETYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVehicleType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVehicleType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVehicleTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVertex.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVERTEX",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVertex else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVertex else { return }
            }
        )

        d[ObjectIdentifier(IfcVertexLoop.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVERTEXLOOP",
            ownAttributes: [STEPAttributeDescriptor(name: "loopVertex", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVertexLoop else { return .null }
                switch index {
                case 0: return e.loopVertex.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVertexLoop else { return }
                switch index {
                case 0: e.loopVertex = value.isNull ? nil : value.entityValue as? IFC4X3.IfcVertex
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVertexPoint.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVERTEXPOINT",
            ownAttributes: [STEPAttributeDescriptor(name: "vertexGeometry", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVertexPoint else { return .null }
                switch index {
                case 0: return e.vertexGeometry.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVertexPoint else { return }
                switch index {
                case 0: e.vertexGeometry = value.isNull ? nil : value.entityValue as? IFC4X3.IfcPoint
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVibrationDamper.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVIBRATIONDAMPER",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVibrationDamper else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVibrationDamper else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVibrationDamperTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVibrationDamperType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVIBRATIONDAMPERTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVibrationDamperType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVibrationDamperType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVibrationDamperTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVibrationIsolator.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVIBRATIONISOLATOR",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVibrationIsolator else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVibrationIsolator else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVibrationIsolatorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVibrationIsolatorType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVIBRATIONISOLATORTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVibrationIsolatorType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVibrationIsolatorType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVibrationIsolatorTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVirtualElement.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVIRTUALELEMENT",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVirtualElement else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVirtualElement else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVirtualElementTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVirtualGridIntersection.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVIRTUALGRIDINTERSECTION",
            ownAttributes: [STEPAttributeDescriptor(name: "intersectingAxes", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "offsetDistances", kind: .list, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVirtualGridIntersection else { return .null }
                switch index {
                case 0: return .list(e.intersectingAxes.map { .entityRef($0) })
                case 1: return .list(e.offsetDistances.map { .real($0) })
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVirtualGridIntersection else { return }
                switch index {
                case 0: if case .list(let items) = value { e.intersectingAxes = items.compactMap { $0.entityValue as? IFC4X3.IfcGridAxis } }
                case 1: if case .list(let items) = value { e.offsetDistances = items.compactMap { $0.realValue } }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcVoidingFeature.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCVOIDINGFEATURE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcVoidingFeature else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcVoidingFeature else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcVoidingFeatureTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWall.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWALL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWall else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWall else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWallTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWallStandardCase.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWALLSTANDARDCASE",
            ownAttributes: [],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWallStandardCase else { return .null }
                return .null
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWallStandardCase else { return }
            }
        )

        d[ObjectIdentifier(IfcWallType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWALLTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWallType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWallType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWallTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWasteTerminal.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWASTETERMINAL",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWasteTerminal else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWasteTerminal else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWasteTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWasteTerminalType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWASTETERMINALTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWasteTerminalType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWasteTerminalType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWasteTerminalTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWellKnownText.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWELLKNOWNTEXT",
            ownAttributes: [STEPAttributeDescriptor(name: "wellKnownText", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "coordinateReferenceSystem", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWellKnownText else { return .null }
                switch index {
                case 0: return e.wellKnownText.map { .string($0) } ?? .null
                case 1: return e.coordinateReferenceSystem.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWellKnownText else { return }
                switch index {
                case 0: e.wellKnownText = value.isNull ? nil : value.stringValue
                case 1: e.coordinateReferenceSystem = value.isNull ? nil : value.entityValue as? IFC4X3.IfcCoordinateReferenceSystem
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWindow.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWINDOW",
            ownAttributes: [STEPAttributeDescriptor(name: "overallHeight", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "overallWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "partitioningType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "userDefinedPartitioningType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWindow else { return .null }
                switch index {
                case 0: return e.overallHeight.map { .real($0) } ?? .null
                case 1: return e.overallWidth.map { .real($0) } ?? .null
                case 2: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 3: return e.partitioningType.map { .enumeration($0.rawValue) } ?? .null
                case 4: return e.userDefinedPartitioningType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWindow else { return }
                switch index {
                case 0: e.overallHeight = value.isNull ? nil : value.realValue
                case 1: e.overallWidth = value.isNull ? nil : value.realValue
                case 2: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowTypeEnum(rawValue: $0) }
                case 3: e.partitioningType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowTypePartitioningEnum(rawValue: $0) }
                case 4: e.userDefinedPartitioningType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWindowLiningProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWINDOWLININGPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "liningDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "liningThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "transomThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "mullionThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "firstTransomOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "secondTransomOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "firstMullionOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "secondMullionOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "shapeAspectStyle", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "liningOffset", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "liningToPanelOffsetX", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "liningToPanelOffsetY", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWindowLiningProperties else { return .null }
                switch index {
                case 0: return e.liningDepth.map { .real($0) } ?? .null
                case 1: return e.liningThickness.map { .real($0) } ?? .null
                case 2: return e.transomThickness.map { .real($0) } ?? .null
                case 3: return e.mullionThickness.map { .real($0) } ?? .null
                case 4: return e.firstTransomOffset.map { .real($0) } ?? .null
                case 5: return e.secondTransomOffset.map { .real($0) } ?? .null
                case 6: return e.firstMullionOffset.map { .real($0) } ?? .null
                case 7: return e.secondMullionOffset.map { .real($0) } ?? .null
                case 8: return e.shapeAspectStyle.map { .entityRef($0) } ?? .null
                case 9: return e.liningOffset.map { .real($0) } ?? .null
                case 10: return e.liningToPanelOffsetX.map { .real($0) } ?? .null
                case 11: return e.liningToPanelOffsetY.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWindowLiningProperties else { return }
                switch index {
                case 0: e.liningDepth = value.isNull ? nil : value.realValue
                case 1: e.liningThickness = value.isNull ? nil : value.realValue
                case 2: e.transomThickness = value.isNull ? nil : value.realValue
                case 3: e.mullionThickness = value.isNull ? nil : value.realValue
                case 4: e.firstTransomOffset = value.isNull ? nil : value.realValue
                case 5: e.secondTransomOffset = value.isNull ? nil : value.realValue
                case 6: e.firstMullionOffset = value.isNull ? nil : value.realValue
                case 7: e.secondMullionOffset = value.isNull ? nil : value.realValue
                case 8: e.shapeAspectStyle = value.isNull ? nil : value.entityValue as? IFC4X3.IfcShapeAspect
                case 9: e.liningOffset = value.isNull ? nil : value.realValue
                case 10: e.liningToPanelOffsetX = value.isNull ? nil : value.realValue
                case 11: e.liningToPanelOffsetY = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWindowPanelProperties.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWINDOWPANELPROPERTIES",
            ownAttributes: [STEPAttributeDescriptor(name: "operationType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "panelPosition", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "frameDepth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "frameThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "shapeAspectStyle", kind: .entityRef, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWindowPanelProperties else { return .null }
                switch index {
                case 0: return e.operationType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.panelPosition.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.frameDepth.map { .real($0) } ?? .null
                case 3: return e.frameThickness.map { .real($0) } ?? .null
                case 4: return e.shapeAspectStyle.map { .entityRef($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWindowPanelProperties else { return }
                switch index {
                case 0: e.operationType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowPanelOperationEnum(rawValue: $0) }
                case 1: e.panelPosition = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowPanelPositionEnum(rawValue: $0) }
                case 2: e.frameDepth = value.isNull ? nil : value.realValue
                case 3: e.frameThickness = value.isNull ? nil : value.realValue
                case 4: e.shapeAspectStyle = value.isNull ? nil : value.entityValue as? IFC4X3.IfcShapeAspect
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWindowType.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWINDOWTYPE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "partitioningType", kind: .enumeration, isOptional: true), STEPAttributeDescriptor(name: "parameterTakesPrecedence", kind: .boolean, isOptional: true), STEPAttributeDescriptor(name: "userDefinedPartitioningType", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWindowType else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                case 1: return e.partitioningType.map { .enumeration($0.rawValue) } ?? .null
                case 2: return e.parameterTakesPrecedence.map { .boolean($0) } ?? .null
                case 3: return e.userDefinedPartitioningType.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWindowType else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowTypeEnum(rawValue: $0) }
                case 1: e.partitioningType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWindowTypePartitioningEnum(rawValue: $0) }
                case 2: e.parameterTakesPrecedence = value.isNull ? nil : value.boolValue
                case 3: e.userDefinedPartitioningType = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWorkCalendar.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWORKCALENDAR",
            ownAttributes: [STEPAttributeDescriptor(name: "workingTimes", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "exceptionTimes", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWorkCalendar else { return .null }
                switch index {
                case 0: return .list(e.workingTimes.map { .entityRef($0) })
                case 1: return .list(e.exceptionTimes.map { .entityRef($0) })
                case 2: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWorkCalendar else { return }
                switch index {
                case 0: if case .list(let items) = value { e.workingTimes = items.compactMap { $0.entityValue as? IFC4X3.IfcWorkTime } }
                case 1: if case .list(let items) = value { e.exceptionTimes = items.compactMap { $0.entityValue as? IFC4X3.IfcWorkTime } }
                case 2: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWorkCalendarTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWorkControl.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWORKCONTROL",
            ownAttributes: [STEPAttributeDescriptor(name: "creationDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "creators", kind: .list, isOptional: false), STEPAttributeDescriptor(name: "purpose", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "duration", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "totalFloat", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "startTime", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "finishTime", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWorkControl else { return .null }
                switch index {
                case 0: return e.creationDate.map { .string($0) } ?? .null
                case 1: return .list(e.creators.map { .entityRef($0) })
                case 2: return e.purpose.map { .string($0) } ?? .null
                case 3: return e.duration.map { .string($0) } ?? .null
                case 4: return e.totalFloat.map { .string($0) } ?? .null
                case 5: return e.startTime.map { .string($0) } ?? .null
                case 6: return e.finishTime.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWorkControl else { return }
                switch index {
                case 0: e.creationDate = value.isNull ? nil : value.stringValue
                case 1: if case .list(let items) = value { e.creators = items.compactMap { $0.entityValue as? IFC4X3.IfcPerson } }
                case 2: e.purpose = value.isNull ? nil : value.stringValue
                case 3: e.duration = value.isNull ? nil : value.stringValue
                case 4: e.totalFloat = value.isNull ? nil : value.stringValue
                case 5: e.startTime = value.isNull ? nil : value.stringValue
                case 6: e.finishTime = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWorkPlan.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWORKPLAN",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWorkPlan else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWorkPlan else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWorkPlanTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWorkSchedule.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWORKSCHEDULE",
            ownAttributes: [STEPAttributeDescriptor(name: "predefinedType", kind: .enumeration, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWorkSchedule else { return .null }
                switch index {
                case 0: return e.predefinedType.map { .enumeration($0.rawValue) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWorkSchedule else { return }
                switch index {
                case 0: e.predefinedType = value.isNull ? nil : value.stringValue.flatMap { IFC4X3.IfcWorkScheduleTypeEnum(rawValue: $0) }
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcWorkTime.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCWORKTIME",
            ownAttributes: [STEPAttributeDescriptor(name: "recurrencePattern", kind: .entityRef, isOptional: true), STEPAttributeDescriptor(name: "startDate", kind: .string, isOptional: true), STEPAttributeDescriptor(name: "finishDate", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcWorkTime else { return .null }
                switch index {
                case 0: return e.recurrencePattern.map { .entityRef($0) } ?? .null
                case 1: return e.startDate.map { .string($0) } ?? .null
                case 2: return e.finishDate.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcWorkTime else { return }
                switch index {
                case 0: e.recurrencePattern = value.isNull ? nil : value.entityValue as? IFC4X3.IfcRecurrencePattern
                case 1: e.startDate = value.isNull ? nil : value.stringValue
                case 2: e.finishDate = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcZShapeProfileDef.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCZSHAPEPROFILEDEF",
            ownAttributes: [STEPAttributeDescriptor(name: "depth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeWidth", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "webThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "flangeThickness", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "filletRadius", kind: .real, isOptional: true), STEPAttributeDescriptor(name: "edgeRadius", kind: .real, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcZShapeProfileDef else { return .null }
                switch index {
                case 0: return e.depth.map { .real($0) } ?? .null
                case 1: return e.flangeWidth.map { .real($0) } ?? .null
                case 2: return e.webThickness.map { .real($0) } ?? .null
                case 3: return e.flangeThickness.map { .real($0) } ?? .null
                case 4: return e.filletRadius.map { .real($0) } ?? .null
                case 5: return e.edgeRadius.map { .real($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcZShapeProfileDef else { return }
                switch index {
                case 0: e.depth = value.isNull ? nil : value.realValue
                case 1: e.flangeWidth = value.isNull ? nil : value.realValue
                case 2: e.webThickness = value.isNull ? nil : value.realValue
                case 3: e.flangeThickness = value.isNull ? nil : value.realValue
                case 4: e.filletRadius = value.isNull ? nil : value.realValue
                case 5: e.edgeRadius = value.isNull ? nil : value.realValue
                default: break
                }
            }
        )

        d[ObjectIdentifier(IfcZone.self)] = STEPEntityDescriptor(
            stepTypeName: "IFCZONE",
            ownAttributes: [STEPAttributeDescriptor(name: "longName", kind: .string, isOptional: true)],
            derivedOverrides: [],
            getter: { entity, index in
                guard let e = entity as? IfcZone else { return .null }
                switch index {
                case 0: return e.longName.map { .string($0) } ?? .null
                default: return .null
                }
            },
            setter: { entity, value, index in
                guard let e = entity as? IfcZone else { return }
                switch index {
                case 0: e.longName = value.isNull ? nil : value.stringValue
                default: break
                }
            }
        )

    }

}
