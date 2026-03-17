// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftIFC",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftIFC",
            targets: [
                "SwiftIFC",
                "SwiftIFCModel"
            ]
        ),
    ],
    targets: [
        .executableTarget(
            name: "IFCCodeGen"
        ),
        .target(
            name: "SwiftIFCModel"
        ),
        .target(
            name: "SwiftIFC",
            dependencies: [
                "SwiftIFCModel"
            ]
        ),
        .testTarget(
            name: "SwiftIFCTests",
            dependencies: ["SwiftIFC"],
            resources: [
                .copy("Resources/IFC4/Ifc4_SampleHouse.ifc"),
                .copy("Resources/IFC4X2/ifcbridge-model01.ifc"),
                .copy("Resources/IFC4X3/KIT-Simple-Road-Test-Web-IFC4x3_RC2.ifc")
            ]
        ),
    ]
)
