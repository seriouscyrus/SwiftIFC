// STEPFile.swift
// SwiftIFC
//
// STEP Physical File (ISO 10303-21) data model for IFC files.

import Foundation
import SwiftIFCModel

// MARK: - File Description

/// Represents the FILE_DESCRIPTION section of a STEP physical file header.
public struct STEPFileDescription: Sendable {
    /// Description strings from the FILE_DESCRIPTION header entry.
    public var descriptions: [String]

    /// The implementation level of the STEP file, typically "2;1".
    public var implementationLevel: String

    public init(
        descriptions: [String] = [],
        implementationLevel: String = "2;1"
    ) {
        self.descriptions = descriptions
        self.implementationLevel = implementationLevel
    }
}

// MARK: - File Name

/// Represents the FILE_NAME section of a STEP physical file header.
public struct STEPFileName: Sendable {
    /// The name of the exchange file.
    public var name: String

    /// The date and time the file was created, in ISO 8601 format.
    public var timeStamp: String

    /// The names of the persons who authorized this file.
    public var author: [String]

    /// The organizations associated with the authors.
    public var organization: [String]

    /// The version of the preprocessor that created this file.
    public var preprocessorVersion: String

    /// The name of the originating system that produced this file.
    public var originatingSystem: String

    /// The name of the person who authorized the file's release.
    public var authorization: String

    public init(
        name: String = "",
        timeStamp: String = "",
        author: [String] = [],
        organization: [String] = [],
        preprocessorVersion: String = "",
        originatingSystem: String = "",
        authorization: String = ""
    ) {
        self.name = name
        self.timeStamp = timeStamp
        self.author = author
        self.organization = organization
        self.preprocessorVersion = preprocessorVersion
        self.originatingSystem = originatingSystem
        self.authorization = authorization
    }
}

// MARK: - Header

/// Represents the HEADER section of a STEP physical file.
public struct STEPHeader: Sendable {
    /// The FILE_DESCRIPTION header entry.
    public var description: STEPFileDescription

    /// The FILE_NAME header entry.
    public var name: STEPFileName

    /// The FILE_SCHEMA identifiers, e.g. ["IFC4X3_ADD2"].
    public var schema: [String]

    public init(
        description: STEPFileDescription = STEPFileDescription(),
        name: STEPFileName = STEPFileName(),
        schema: [String] = []
    ) {
        self.description = description
        self.name = name
        self.schema = schema
    }

    /// A default header suitable for creating new IFC4X3 files.
    public static var `default`: STEPHeader {
        let timestamp = ISO8601DateFormatter().string(from: Date())

        return STEPHeader(
            description: STEPFileDescription(
                descriptions: ["ViewDefinition [CoordinationView]"],
                implementationLevel: "2;1"
            ),
            name: STEPFileName(
                name: "",
                timeStamp: timestamp,
                author: [""],
                organization: [""],
                preprocessorVersion: "SwiftIFC",
                originatingSystem: "SwiftIFC",
                authorization: "none"
            ),
            schema: ["IFC4X3_ADD2"]
        )
    }
}

// MARK: - STEP File

/// An in-memory representation of a STEP Physical File (ISO 10303-21),
/// containing the header metadata and a dictionary of IFC entities
/// keyed by their STEP entity identifiers (#N).
public struct STEPFile: Sendable {
    /// The STEP file header containing file metadata.
    public var header: STEPHeader

    /// The entity instances in the DATA section, keyed by STEP entity ID.
    public var entities: [Int: IFC4X3.Entity]

    public init(
        header: STEPHeader = .default,
        entities: [Int: IFC4X3.Entity] = [:]
    ) {
        self.header = header
        self.entities = entities
    }
}
