// STEPDecoder.swift
// SwiftIFC
//
// STEP Physical File (ISO 10303-21) decoder that converts a STEP format
// string into IFC4X3 entity objects.

import Foundation
import SwiftIFCModel

// MARK: - Decode Errors

public enum STEPDecodeError: Error, LocalizedError {
    case unknownEntityType(String)
    case attributeCountMismatch(entityType: String, expected: Int, got: Int)
    case parseError(Error)

    public var errorDescription: String? {
        switch self {
        case .unknownEntityType(let type):
            return "STEP decode error: unknown entity type '\(type)'"
        case .attributeCountMismatch(let type, let expected, let got):
            return "STEP decode error: entity '\(type)' expected \(expected) attributes, got \(got)"
        case .parseError(let error):
            return "STEP decode error: \(error.localizedDescription)"
        }
    }
}

// MARK: - STEPDecoder

/// Decodes a STEP Physical File (ISO 10303-21) string into a ``STEPFile``
/// containing fully resolved IFC4X3 entity instances.
///
/// The decoder uses a two-pass approach:
///
/// 1. **Parse** – the raw STEP text is tokenized and parsed into
///    ``RawSTEPEntity`` values by ``STEPParser``.
/// 2. **Instantiate & resolve** – entity objects are created via the
///    ``IFC4X3/stepEntityRegistry`` factory map, and cross-references
///    (`#N`) are resolved to live object pointers.
public struct STEPDecoder {

    public init() {}

    // MARK: Public API

    /// Decode a STEP file string into a ``STEPFile`` containing IFC entities.
    public func decode(_ input: String) throws -> STEPFile {
        // Pass 1: Parse raw STEP text.
        let parsed: ParsedSTEPFile
        do {
            parsed = try STEPParser.parse(input)
        } catch {
            throw STEPDecodeError.parseError(error)
        }

        // Pass 2: Instantiate entities and resolve references.
        return try resolve(parsed)
    }

    /// Decode a STEP file at the given URL.
    public func decode(contentsOf url: URL) throws -> STEPFile {
        let data = try Data(contentsOf: url)
        guard let string = String(data: data, encoding: .utf8)
                ?? String(data: data, encoding: .isoLatin1) else {
            throw STEPDecodeError.parseError(
                NSError(domain: "STEPDecoder", code: 1,
                        userInfo: [NSLocalizedDescriptionKey: "Unable to read file as text"])
            )
        }
        return try decode(string)
    }

    // MARK: - Pass 2: Instantiation & Resolution

    /// Creates entity instances for every raw entity in the parsed file, then
    /// walks the class hierarchy of each entity to set attribute values with
    /// all cross-references resolved.
    private func resolve(_ parsed: ParsedSTEPFile) throws -> STEPFile {
        // 2a. Create blank entity instances keyed by STEP ID.
        var entities: [Int: IFC4X3.Entity] = [:]
        entities.reserveCapacity(parsed.entities.count)

        var skippedTypes = Set<String>()
        for (id, raw) in parsed.entities {
            let upperName = raw.typeName.uppercased()
            guard let factory = IFC4X3.stepEntityRegistry[upperName] else {
                // Skip entities from deprecated/older schema versions that
                // aren't in the current IFC4X3 ADD2 schema.
                skippedTypes.insert(raw.typeName)
                continue
            }
            entities[id] = factory()
        }

        // 2b. Resolve attributes on every entity.
        for (id, raw) in parsed.entities {
            guard let entity = entities[id] else { continue }

            let chain = descriptorChain(for: entity)

            // Collect the full set of derived attribute names from child
            // classes so we can mark them as `*` when they appear at a
            // parent level.
            var allDerivedNames = Set<String>()
            for desc in chain {
                allDerivedNames.formUnion(desc.derivedOverrides)
            }

            // Walk the chain root-to-leaf and set each non-derived attribute.
            var flatIndex = 0
            for desc in chain {
                for (localIndex, attr) in desc.ownAttributes.enumerated() {
                    guard flatIndex < raw.attributes.count else {
                        flatIndex += 1
                        continue
                    }

                    let rawValue = raw.attributes[flatIndex]

                    if allDerivedNames.contains(attr.name) {
                        // This attribute is overridden as derived in a
                        // subclass – the STEP file should contain `*`.
                        flatIndex += 1
                        continue
                    }

                    let resolved = resolveValue(rawValue, kind: attr.kind,
                                                 entities: entities)
                    desc.setter(entity, resolved, localIndex)

                    flatIndex += 1
                }
            }
        }

        // 2c. Resolve inverse attributes on target entities.
        //     Walk all relationship entities and populate the inverse
        //     collection / optional properties on the entities they reference.
        resolveInverseAttributes(entities)

        return STEPFile(header: parsed.header, entities: entities,
                        skippedEntityTypes: skippedTypes)
    }

    // MARK: - Descriptor Chain

    /// Walks the class hierarchy from the concrete entity type up to
    /// ``IFC4X3/Entity`` and returns the chain of ``STEPEntityDescriptor``
    /// values ordered root-first (i.e. reversed from the bottom-up walk).
    private func descriptorChain(for entity: IFC4X3.Entity) -> [STEPEntityDescriptor] {
        var chain: [STEPEntityDescriptor] = []
        var currentClass: AnyClass? = type(of: entity)
        while let cls = currentClass {
            let oid = ObjectIdentifier(cls)
            if let desc = IFC4X3.stepDescriptors[oid] {
                chain.append(desc)
            }
            if cls == IFC4X3.Entity.self { break }
            currentClass = cls.superclass()
        }
        return chain.reversed() // Root first
    }

    // MARK: - Value Resolution

    /// Converts a ``RawSTEPValue`` (produced by the parser) into a
    /// ``STEPValue`` that the generated setter closures understand.
    ///
    /// Entity references (`#N`) are resolved using the `entities` map;
    /// strings are decoded from STEP escaping; enumerations are lowercased
    /// to match Swift `rawValue` conventions.
    private func resolveValue(
        _ raw: RawSTEPValue,
        kind: STEPAttributeKind,
        entities: [Int: IFC4X3.Entity]
    ) -> STEPValue {
        switch raw {
        case .null:
            return .null

        case .derived:
            return .derived

        case .string(let s):
            return .string(stepDecodeString(s))

        case .integer(let n):
            // Some attributes declared as .real may receive integer tokens
            // in the STEP file (e.g. `0` instead of `0.`). Promote to real
            // when the descriptor says so.
            if kind == .real {
                return .real(Double(n))
            }
            return .integer(n)

        case .real(let d):
            return .real(d)

        case .enumeration(let s):
            // Handle boolean attributes: .T. / .F.
            if kind == .boolean {
                return .boolean(s == "T")
            }
            // Handle logical attributes: .T. / .F. / .U.
            if kind == .logical {
                switch s {
                case "T": return .logical(.true)
                case "F": return .logical(.false)
                default:  return .logical(.unknown)
                }
            }
            // Regular enumeration – lowercase to match Swift rawValue.
            return .enumeration(s.lowercased())

        case .entityRef(let id):
            if let entity = entities[id] {
                return .entityRef(entity)
            }
            return .null

        case .list(let items):
            let resolved = items.map { resolveListItem($0, entities: entities) }
            return .list(resolved)

        case .typedValue(let typeName, let innerValue):
            // SELECT type wrapper, e.g. IFCLABEL('text')
            let inner = resolveSimpleValue(innerValue, entities: entities)
            return .select(typeName: typeName.uppercased(), value: inner)
        }
    }

    /// Resolves an item that appears inside a STEP list.
    ///
    /// List items lack the attribute-kind context that top-level values have,
    /// so we resolve them generically.
    private func resolveListItem(
        _ raw: RawSTEPValue,
        entities: [Int: IFC4X3.Entity]
    ) -> STEPValue {
        switch raw {
        case .null:
            return .null
        case .derived:
            return .derived
        case .string(let s):
            return .string(stepDecodeString(s))
        case .integer(let n):
            return .integer(n)
        case .real(let d):
            return .real(d)
        case .enumeration(let s):
            return .enumeration(s.lowercased())
        case .entityRef(let id):
            if let entity = entities[id] {
                return .entityRef(entity)
            }
            return .null
        case .list(let items):
            let resolved = items.map { resolveListItem($0, entities: entities) }
            return .list(resolved)
        case .typedValue(let typeName, let innerValue):
            let inner = resolveSimpleValue(innerValue, entities: entities)
            return .select(typeName: typeName.uppercased(), value: inner)
        }
    }

    /// Resolves a value that appears inside a typed wrapper (SELECT).
    ///
    /// The inner value of a SELECT is typically a simple literal, but may
    /// also be an entity reference.
    private func resolveSimpleValue(
        _ raw: RawSTEPValue,
        entities: [Int: IFC4X3.Entity]
    ) -> STEPValue {
        switch raw {
        case .null:
            return .null
        case .derived:
            return .derived
        case .string(let s):
            return .string(stepDecodeString(s))
        case .integer(let n):
            return .integer(n)
        case .real(let d):
            return .real(d)
        case .enumeration(let s):
            return .enumeration(s.lowercased())
        case .entityRef(let id):
            if let entity = entities[id] {
                return .entityRef(entity)
            }
            return .null
        case .list(let items):
            let resolved = items.map { resolveListItem($0, entities: entities) }
            return .list(resolved)
        case .typedValue(let typeName, let innerValue):
            let inner = resolveSimpleValue(innerValue, entities: entities)
            return .select(typeName: typeName.uppercased(), value: inner)
        }
    }

    // MARK: - Inverse Attribute Resolution

    /// Iterates through all relationship entities and populates inverse
    /// properties on the entities they reference.
    ///
    /// For example, an `IfcRelAggregates` whose `relatingObject` points to an
    /// `IfcRoad` will cause that road's `isDecomposedBy` array to include the
    /// `IfcRelAggregates` instance.
    private func resolveInverseAttributes(_ entities: [Int: IFC4X3.Entity]) {
        for (_, entity) in entities {
            // IfcRelAggregates.relatingObject → target.isDecomposedBy
            if let rel = entity as? IFC4X3.IfcRelAggregates,
               let target = rel.relatingObject {
                target.isDecomposedBy.append(rel)
            }

            // IfcRelNests.relatingObject → target.isNestedBy
            if let rel = entity as? IFC4X3.IfcRelNests,
               let target = rel.relatingObject {
                target.isNestedBy.append(rel)
            }

            // IfcRelContainedInSpatialStructure.relatingStructure → target.containsElements
            if let rel = entity as? IFC4X3.IfcRelContainedInSpatialStructure,
               let target = rel.relatingStructure {
                target.containsElements.append(rel)
            }

            // IfcRelReferencedInSpatialStructure.relatingStructure → target.referencesElements
            if let rel = entity as? IFC4X3.IfcRelReferencedInSpatialStructure,
               let target = rel.relatingStructure {
                target.referencesElements.append(rel)
            }

            // IfcRelDeclares.relatingContext → target.declares
            if let rel = entity as? IFC4X3.IfcRelDeclares,
               let target = rel.relatingContext {
                target.declares.append(rel)
            }

            // IfcRelDefinesByObject.relatingObject → target.isDeclaredBy (SET [0:1])
            if let rel = entity as? IFC4X3.IfcRelDefinesByObject,
               let target = rel.relatingObject {
                target.isDeclaredBy = rel
            }

            // IfcRelDefinesByType.relatedObjects → each target.isTypedBy (SET [0:1])
            if let rel = entity as? IFC4X3.IfcRelDefinesByType {
                for target in rel.relatedObjects {
                    target.isTypedBy = rel
                }
            }

            // IfcRelDefinesByProperties.relatedObjects → each target.isDefinedBy
            if let rel = entity as? IFC4X3.IfcRelDefinesByProperties {
                for obj in rel.relatedObjects {
                    if let target = obj as? IFC4X3.IfcObject {
                        target.isDefinedBy.append(rel)
                    } else if let target = obj as? IFC4X3.IfcContext {
                        // IfcContext also has isDefinedBy
                        target.isDefinedBy.append(rel)
                    }
                }
            }

            // IfcRelProjectsElement.relatingElement → target.hasProjections
            if let rel = entity as? IFC4X3.IfcRelProjectsElement,
               let target = rel.relatingElement {
                target.hasProjections.append(rel)
            }

            // IfcRelVoidsElement.relatingBuildingElement → target.hasOpenings
            if let rel = entity as? IFC4X3.IfcRelVoidsElement,
               let target = rel.relatingBuildingElement {
                target.hasOpenings.append(rel)
            }
        }
    }


}
