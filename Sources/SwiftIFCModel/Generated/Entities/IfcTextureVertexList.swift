// IfcTextureVertexList.swift
// Auto-generated from IFC4X3_ADD2.xsd — DO NOT EDIT
import Foundation

extension IFC4X3 {
    public class IfcTextureVertexList: IfcPresentationItem, @unchecked Sendable {
        public var texCoordsList: [IfcParameterValue] = []

        public init(
            texCoordsList: [IfcParameterValue] = []
        ) {
            self.texCoordsList = texCoordsList
            super.init()
        }
    }
}
