// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import SwiftIFCModel

enum Experiments {
    func buildRoom() {
        let project = IFC4X3.IfcProject(globalId: IFC4X3.compressUUID(UUID()))
        let site = IFC4X3.IfcSite(globalId: IFC4X3.compressUUID(UUID()))
        let building = IFC4X3.IfcBuilding(globalId: IFC4X3.compressUUID(UUID()))
        
    }
}
