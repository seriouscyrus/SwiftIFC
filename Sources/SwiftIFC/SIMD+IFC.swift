//
//  SIMD+IFC.swift
//  SwiftIFC
//
//  Created by George Brown on 13.03.2026.
//
import Foundation
import simd
import SwiftIFCModel

extension vector_double2 {
    var ifcCartesianPoint: IFC4X3.IfcCartesianPoint {
        return IFC4X3.IfcCartesianPoint(coordinates: [x, y])
    }
}

extension vector_double3 {
    var ifcCartesianPoint: IFC4X3.IfcCartesianPoint {
        return IFC4X3.IfcCartesianPoint(coordinates: [x, y, z])
    }
}
