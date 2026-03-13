// IfcConnectedFaceSet.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcConnectedFaceSet: IfcTopologicalRepresentationItem, @unchecked Sendable {
        public var cfsFaces: [IfcFace] = []

        public init(
            styledByItem: IfcStyledItem? = nil,
            cfsFaces: [IfcFace] = []
        ) {
            self.cfsFaces = cfsFaces
            super.init(
                styledByItem: styledByItem
            )
        }
    }
}
