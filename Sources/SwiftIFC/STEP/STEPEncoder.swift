// STEPEncoder.swift
// SwiftIFC
//
// STEP Physical File (ISO 10303-21) encoder that converts IFC4X3 entity
// objects into a STEP format string.

import Foundation
import SwiftIFCModel

// MARK: - STEPEncoder

/// Encodes IFC4X3 entity graphs into STEP Physical File Format (ISO 10303-21)
/// strings suitable for writing to `.ifc` files.
public struct STEPEncoder {

    public init() {}

    // MARK: - Public API

    /// Encode a list of root entities into a complete STEP file string.
    ///
    /// The encoder walks the entire object graph reachable from the provided
    /// entities, assigns sequential STEP IDs, and produces a conformant
    /// ISO 10303-21 output.
    ///
    /// - Parameters:
    ///   - entities: The root entities to encode. All transitively referenced
    ///     entities will be discovered automatically.
    ///   - header: The STEP file header to use. Defaults to `.default`.
    /// - Returns: A complete STEP Physical File string.
    public func encode(entities: [IFC4X3.Entity], header: STEPHeader = .default) throws -> String {
        // 1. Walk the entity graph to discover all reachable entities.
        var visited = Set<ObjectIdentifier>()
        var allEntities: [IFC4X3.Entity] = []
        for entity in entities {
            collectEntities(entity, visited: &visited, result: &allEntities)
        }

        // 2. Assign sequential STEP IDs (#1, #2, ...).
        var idMap: [ObjectIdentifier: Int] = [:]
        for (index, entity) in allEntities.enumerated() {
            idMap[ObjectIdentifier(entity)] = index + 1
        }

        // 3. Build output.
        var output = ""
        output.reserveCapacity(allEntities.count * 120)

        // Header
        encodeHeader(header, into: &output)

        // DATA section
        output += "DATA;\n"
        for entity in allEntities {
            guard let entityID = idMap[ObjectIdentifier(entity)] else { continue }
            let line = encodeEntity(entity, id: entityID, idMap: idMap)
            output += line
            output += "\n"
        }
        output += "ENDSEC;\n"
        output += "END-ISO-10303-21;\n"

        return output
    }

    /// Encode a `STEPFile` into a STEP file string.
    ///
    /// Uses the header and entity dictionary from the provided `STEPFile`.
    /// Entities are sorted by their existing STEP IDs to preserve ordering.
    ///
    /// - Parameter file: The STEP file model to encode.
    /// - Returns: A complete STEP Physical File string.
    public func encode(file: STEPFile) throws -> String {
        // Sort entities by their existing STEP IDs.
        let sortedEntries = file.entities.sorted { $0.key < $1.key }

        // Build the ID map from the existing keys.
        var idMap: [ObjectIdentifier: Int] = [:]
        for (stepID, entity) in sortedEntries {
            idMap[ObjectIdentifier(entity)] = stepID
        }

        // Walk all entities to discover any that are referenced but not in the
        // top-level dictionary. Assign new IDs beyond the existing maximum.
        var visited = Set<ObjectIdentifier>()
        var additionalEntities: [IFC4X3.Entity] = []
        for (_, entity) in sortedEntries {
            collectEntities(entity, visited: &visited, result: &additionalEntities)
        }

        var nextID = (sortedEntries.last?.key ?? 0) + 1
        for entity in additionalEntities {
            let oid = ObjectIdentifier(entity)
            if idMap[oid] == nil {
                idMap[oid] = nextID
                nextID += 1
            }
        }

        // Rebuild the ordered list of all entities by ID.
        let allByID = idMap.sorted { $0.value < $1.value }
        let allEntities: [(Int, IFC4X3.Entity)] = allByID.compactMap { oid, stepID in
            if let entity = additionalEntities.first(where: { ObjectIdentifier($0) == oid }) {
                return (stepID, entity)
            }
            return nil
        }

        // Build output.
        var output = ""
        output.reserveCapacity(allEntities.count * 120)

        encodeHeader(file.header, into: &output)

        output += "DATA;\n"
        for (stepID, entity) in allEntities {
            let line = encodeEntity(entity, id: stepID, idMap: idMap)
            output += line
            output += "\n"
        }
        output += "ENDSEC;\n"
        output += "END-ISO-10303-21;\n"

        return output
    }

    // MARK: - Entity Graph Walking

    /// Recursively walks the entity graph starting from the given entity,
    /// collecting all unique entities reachable through attribute references
    /// and inverse attributes (relationship entities).
    private func collectEntities(
        _ entity: IFC4X3.Entity,
        visited: inout Set<ObjectIdentifier>,
        result: inout [IFC4X3.Entity]
    ) {
        let oid = ObjectIdentifier(entity)
        guard !visited.contains(oid) else { return }
        visited.insert(oid)
        result.append(entity)

        // Walk all forward STEP attributes to find referenced entities.
        let chain = descriptorChain(for: entity)

        for (descriptor, _) in chain {
            for localIndex in 0..<descriptor.ownAttributes.count {
                let value = descriptor.getter(entity, localIndex)
                collectEntitiesFromValue(value, visited: &visited, result: &result)
            }
        }

        // Walk inverse attributes to collect relationship entities that
        // are not part of the STEP descriptor chain but are reachable
        // through the decoded object graph.
        collectInverseEntities(entity, visited: &visited, result: &result)
    }

    /// Recursively inspects a `STEPValue` for entity references and collects them.
    private func collectEntitiesFromValue(
        _ value: STEPValue,
        visited: inout Set<ObjectIdentifier>,
        result: inout [IFC4X3.Entity]
    ) {
        switch value {
        case .entityRef(let entity):
            collectEntities(entity, visited: &visited, result: &result)
        case .list(let items):
            for item in items {
                collectEntitiesFromValue(item, visited: &visited, result: &result)
            }
        case .select(_, let innerValue):
            collectEntitiesFromValue(innerValue, visited: &visited, result: &result)
        default:
            break
        }
    }

    /// Walks inverse attribute properties on the entity to discover
    /// relationship entities that wouldn't be found through forward
    /// STEP attributes alone.
    private func collectInverseEntities(
        _ entity: IFC4X3.Entity,
        visited: inout Set<ObjectIdentifier>,
        result: inout [IFC4X3.Entity]
    ) {
        // IfcObjectDefinition inverse attributes
        if let objDef = entity as? IFC4X3.IfcObjectDefinition {
            for rel in objDef.isDecomposedBy {
                collectEntities(rel, visited: &visited, result: &result)
            }
            for rel in objDef.isNestedBy {
                collectEntities(rel, visited: &visited, result: &result)
            }
        }

        // IfcObject inverse attributes
        if let obj = entity as? IFC4X3.IfcObject {
            if let rel = obj.isDeclaredBy {
                collectEntities(rel, visited: &visited, result: &result)
            }
            if let rel = obj.isTypedBy {
                collectEntities(rel, visited: &visited, result: &result)
            }
            for rel in obj.isDefinedBy {
                collectEntities(rel, visited: &visited, result: &result)
            }
        }

        // IfcContext inverse attributes
        if let ctx = entity as? IFC4X3.IfcContext {
            for rel in ctx.declares {
                collectEntities(rel, visited: &visited, result: &result)
            }
            for rel in ctx.isDefinedBy {
                collectEntities(rel, visited: &visited, result: &result)
            }
        }

        // IfcSpatialElement inverse attributes
        if let spatial = entity as? IFC4X3.IfcSpatialElement {
            for rel in spatial.containsElements {
                collectEntities(rel, visited: &visited, result: &result)
            }
            for rel in spatial.referencesElements {
                collectEntities(rel, visited: &visited, result: &result)
            }
        }

        // IfcElement inverse attributes
        if let element = entity as? IFC4X3.IfcElement {
            if let rel = element.hasProjections {
                collectEntities(rel, visited: &visited, result: &result)
            }
            if let rel = element.hasOpenings {
                collectEntities(rel, visited: &visited, result: &result)
            }
        }
    }

    // MARK: - Descriptor Chain

    /// Builds the chain of `STEPEntityDescriptor`s from root class to leaf class
    /// for the given entity by walking up the class hierarchy.
    ///
    /// - Parameter entity: The entity instance to inspect.
    /// - Returns: An array of (descriptor, entity) tuples ordered from root to leaf.
    private func descriptorChain(for entity: IFC4X3.Entity) -> [(STEPEntityDescriptor, IFC4X3.Entity)] {
        var chain: [(STEPEntityDescriptor, IFC4X3.Entity)] = []
        var currentClass: AnyClass? = type(of: entity)
        while let cls = currentClass {
            let oid = ObjectIdentifier(cls)
            if let desc = IFC4X3.stepDescriptors[oid] {
                chain.append((desc, entity))
            }
            if cls == IFC4X3.Entity.self { break }
            currentClass = cls.superclass()
        }
        return chain.reversed() // Root first
    }

    /// Collects all derived override attribute names from the entire descriptor
    /// chain (all levels, leaf to root).
    private func collectDerivedOverrides(
        chain: [(STEPEntityDescriptor, IFC4X3.Entity)]
    ) -> Set<String> {
        var overrides = Set<String>()
        for (descriptor, _) in chain {
            overrides.formUnion(descriptor.derivedOverrides)
        }
        return overrides
    }

    // MARK: - Header Encoding

    /// Writes the STEP file header section into the output string.
    private func encodeHeader(_ header: STEPHeader, into output: inout String) {
        output += "ISO-10303-21;\n"
        output += "HEADER;\n"

        // FILE_DESCRIPTION
        let descriptions = header.description.descriptions.map { stepEncodeString($0) }.joined(separator: ",")
        output += "FILE_DESCRIPTION((\(descriptions)),'\(header.description.implementationLevel)');\n"

        // FILE_NAME
        let authors = header.name.author.map { stepEncodeString($0) }.joined(separator: ",")
        let organizations = header.name.organization.map { stepEncodeString($0) }.joined(separator: ",")
        output += "FILE_NAME("
        output += stepEncodeString(header.name.name) + ","
        output += stepEncodeString(header.name.timeStamp) + ","
        output += "(\(authors)),"
        output += "(\(organizations)),"
        output += stepEncodeString(header.name.preprocessorVersion) + ","
        output += stepEncodeString(header.name.originatingSystem) + ","
        output += stepEncodeString(header.name.authorization)
        output += ");\n"

        // FILE_SCHEMA
        let schemas = header.schema.map { "'\($0)'" }.joined(separator: ",")
        output += "FILE_SCHEMA((\(schemas)));\n"

        output += "ENDSEC;\n"
    }

    // MARK: - Entity Encoding

    /// Encodes a single entity instance as a STEP entity line (e.g. `#1=IFCWALL(...);`).
    ///
    /// Collects all attributes from root class to leaf class. If a parent
    /// attribute's name appears in any child's `derivedOverrides`, the attribute
    /// is emitted as `*` instead of its actual value.
    private func encodeEntity(
        _ entity: IFC4X3.Entity,
        id: Int,
        idMap: [ObjectIdentifier: Int]
    ) -> String {
        let chain = descriptorChain(for: entity)
        let derivedNames = collectDerivedOverrides(chain: chain)

        // The leaf-level descriptor provides the STEP type name.
        guard let leafDescriptor = chain.last?.0 else {
            return "#\(id)=UNKNOWN();"
        }

        var attributes: [String] = []

        for (descriptor, _) in chain {
            for localIndex in 0..<descriptor.ownAttributes.count {
                let attr = descriptor.ownAttributes[localIndex]

                // Check if this attribute is overridden as DERIVE in a subclass.
                // A parent attribute is overridden if its name appears in the
                // derivedOverrides of any *other* level in the chain (i.e. a
                // child class declares it as derived).
                if isDerivedOverride(attributeName: attr.name, in: chain, excluding: descriptor) {
                    attributes.append("*")
                    continue
                }

                let value = descriptor.getter(entity, localIndex)
                attributes.append(encodeValue(value, idMap: idMap))
            }
        }

        let attrString = attributes.joined(separator: ",")
        return "#\(id)=\(leafDescriptor.stepTypeName)(\(attrString));"
    }

    /// Checks whether the given attribute name is declared as a derived override
    /// in any descriptor level other than the one that owns it.
    private func isDerivedOverride(
        attributeName: String,
        in chain: [(STEPEntityDescriptor, IFC4X3.Entity)],
        excluding ownerDescriptor: STEPEntityDescriptor
    ) -> Bool {
        for (descriptor, _) in chain {
            // Skip the descriptor that owns this attribute.
            if descriptor.stepTypeName == ownerDescriptor.stepTypeName { continue }
            if descriptor.derivedOverrides.contains(attributeName) {
                return true
            }
        }
        return false
    }

    // MARK: - Value Encoding

    /// Encodes a `STEPValue` into its STEP Physical File string representation.
    private func encodeValue(_ value: STEPValue, idMap: [ObjectIdentifier: Int]) -> String {
        switch value {
        case .null:
            return "$"

        case .derived:
            return "*"

        case .string(let s):
            return stepEncodeString(s)

        case .integer(let n):
            return "\(n)"

        case .real(let d):
            return formatReal(d)

        case .boolean(let b):
            return b ? ".T." : ".F."

        case .logical(let v):
            switch v {
            case .true:
                return ".T."
            case .false:
                return ".F."
            case .unknown:
                return ".U."
            }

        case .enumeration(let s):
            return ".\(s.uppercased())."

        case .entityRef(let entity):
            let oid = ObjectIdentifier(entity)
            if let refID = idMap[oid] {
                return "#\(refID)"
            }
            // Fallback: entity not found in map (should not happen in normal usage).
            return "$"

        case .list(let items):
            let encoded = items.map { encodeValue($0, idMap: idMap) }
            return "(\(encoded.joined(separator: ",")))"

        case .select(let typeName, let innerValue):
            // For entity references inside selects, just emit the entity ref directly.
            if case .entityRef = innerValue {
                return encodeValue(innerValue, idMap: idMap)
            }
            // For simple/value types, wrap with the type name.
            let encodedInner = encodeValue(innerValue, idMap: idMap)
            return "\(typeName.uppercased())(\(encodedInner))"

        case .binary(let data):
            // Simplified hex encoding with leading digit indicating padding.
            return "\"0\(data.map { String(format: "%02X", $0) }.joined())\""
        }
    }

    // MARK: - Real Number Formatting

    /// Formats a `Double` for STEP output, ensuring a decimal point is always
    /// present (e.g. `1.` instead of `1`, `3.14` not `3.14000...`).
    private func formatReal(_ value: Double) -> String {
        if value.isNaN { return ".NaN." }
        if value.isInfinite { return value > 0 ? ".Inf." : "-.Inf." }

        if value == value.rounded(.towardZero) && abs(value) < 1e15 {
            // Integer-valued double: ensure trailing decimal point.
            let s = String(format: "%.1f", value)
            if s.hasSuffix(".0") {
                return String(s.dropLast()) // e.g. "1.0" -> "1."
            }
            return s
        }

        // General case: use Swift's default representation, ensure decimal point.
        let s = String(value).uppercased()
        if !s.contains(".") && !s.contains("e") && !s.contains("E") {
            return s + "."
        }
        return s
    }
}
