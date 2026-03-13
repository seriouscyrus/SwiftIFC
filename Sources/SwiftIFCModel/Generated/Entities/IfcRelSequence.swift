// IfcRelSequence.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcRelSequence: IfcRelConnects, @unchecked Sendable {
        public var sequenceType: IfcSequenceEnum? = nil
        public var userDefinedSequenceType: IfcLabel? = nil
        public var relatingProcess: IfcProcess? = nil
        public var relatedProcess: IfcProcess? = nil
        public var timeLag: IfcLagTime? = nil

        public init(
            globalId: IfcGloballyUniqueId? = nil,
            name: IfcLabel? = nil,
            description: IfcText? = nil,
            ownerHistory: IfcOwnerHistory? = nil,
            sequenceType: IfcSequenceEnum? = nil,
            userDefinedSequenceType: IfcLabel? = nil,
            relatingProcess: IfcProcess? = nil,
            relatedProcess: IfcProcess? = nil,
            timeLag: IfcLagTime? = nil
        ) {
            self.sequenceType = sequenceType
            self.userDefinedSequenceType = userDefinedSequenceType
            self.relatingProcess = relatingProcess
            self.relatedProcess = relatedProcess
            self.timeLag = timeLag
            super.init(
                globalId: globalId,
                name: name,
                description: description,
                ownerHistory: ownerHistory
            )
        }
    }
}
