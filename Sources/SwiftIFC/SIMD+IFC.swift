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
        let vec4 = simd_mul(self, vector_float4(0.0, 0.0, 1.0, 1.0))
        return vector_float3(vec4.x, vec4.y, vec4.z)
    }
    
    var xDirection: vector_float3 {
        let vec4 = simd_mul(self, vector_float4(1.0, 0.0, 0.0, 1.0))
        return vector_float3(vec4.x, vec4.y, vec4.z)
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
}

public extension Array where Element == vector_double3 {
    var ifcCartesianPoints: [IFC4X3.IfcCartesianPoint] {
        self.map { $0.ifcCartesianPoint }
    }
    
    var ifcPolyline: IFC4X3.IfcPolyline {
        IFC4X3.IfcPolyline(points: ifcCartesianPoints)
    }
}
