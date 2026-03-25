//
//  SIMD+IFC.swift
//  SwiftIFC
//
//  Created by George Brown on 13.03.2026.
//
import Foundation
import simd
import SwiftIFCModel

public extension vector_double2 {
    var ifcCartesianPoint: IFC4X3.IfcCartesianPoint {
        IFC4X3.IfcCartesianPoint(coordinates: [x, y])
    }
}

public extension vector_double3 {
    var ifcCartesianPoint: IFC4X3.IfcCartesianPoint {
        IFC4X3.IfcCartesianPoint(coordinates: [x, y, z])
    }
}

public extension vector_float2 {
    var ifcCartesianPoint: IFC4X3.IfcCartesianPoint {
        IFC4X3.IfcCartesianPoint(coordinates: [Double(x), Double(y)])
    }
}

public extension vector_float3 {
    var ifcCartesianPoint: IFC4X3.IfcCartesianPoint {
        IFC4X3.IfcCartesianPoint(coordinates: [Double(x), Double(y), Double(z)])
    }
    
    var ifcDirection: IFC4X3.IfcDirection {
        IFC4X3.IfcDirection(directionRatios: [Double(x), Double(y), Double(z)])
    }
}

public extension matrix_float4x4 {
    var position: vector_float3 {
        vector_float3(columns.3.x, columns.3.y, columns.3.z)
    }
    
    var zDirection: vector_float3 {
        normalize(vector_float3(columns.2.x, columns.2.y, columns.2.z))
    }
    
    var xDirection: vector_float3 {
        normalize(vector_float3(columns.0.x, columns.0.y, columns.0.z))
    }
    
    var ifcAxis2Placement3D: IFC4X3.IfcAxis2Placement3D {
        IFC4X3.IfcAxis2Placement3D(location: position.ifcCartesianPoint,
                                   axis: zDirection.ifcDirection,
                                   refDirection: xDirection.ifcDirection)
    }
}

public extension Array where Element == vector_double2 {
    var ifcCartesianPoints: [IFC4X3.IfcCartesianPoint] {
        self.map { $0.ifcCartesianPoint }
    }
    
    var ifcPolyline: IFC4X3.IfcPolyline {
        IFC4X3.IfcPolyline(points: ifcCartesianPoints)
    }
    
    var ifcPolyLoop: IFC4X3.IfcPolyLoop {
        IFC4X3.IfcPolyLoop(polygon: ifcCartesianPoints)
    }
}

public extension Array where Element == vector_double3 {
    var ifcCartesianPoints: [IFC4X3.IfcCartesianPoint] {
        self.map { $0.ifcCartesianPoint }
    }
    
    var ifcPolyline: IFC4X3.IfcPolyline {
        IFC4X3.IfcPolyline(points: ifcCartesianPoints)
    }
    
    var ifcPolyLoop: IFC4X3.IfcPolyLoop {
        IFC4X3.IfcPolyLoop(polygon: ifcCartesianPoints)
    }
}
