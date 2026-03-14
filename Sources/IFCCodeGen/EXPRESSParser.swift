import Foundation

// MARK: - EXPRESS Parser

/// Parses an IFC EXPRESS (.exp) schema file to extract entity definitions
/// with canonical attribute ordering, INVERSE classification, and DERIVE overrides.
struct EXPRESSParser {

    func parse(contentsOf url: URL) throws -> EXPRESSSchema {
        let content = try String(contentsOf: url, encoding: .utf8)
        return parse(content)
    }

    func parse(_ content: String) -> EXPRESSSchema {
        var schema = EXPRESSSchema()
        let lines = content.components(separatedBy: .newlines)

        var currentEntity: EXPRESSEntity?
        var section: EntitySection = .header
        // Accumulator for multi-line attribute declarations
        var pendingLine = ""

        for rawLine in lines {
            let line = rawLine.trimmingCharacters(in: .whitespaces)

            // Skip empty lines and comments
            if line.isEmpty { continue }
            if line.hasPrefix("--") { continue }

            // ENTITY start
            if line.hasPrefix("ENTITY ") {
                // Save any previous entity
                if let entity = currentEntity {
                    schema.entities[entity.name] = entity
                }
                let name = extractEntityName(line)
                currentEntity = EXPRESSEntity(name: name)
                section = .header
                pendingLine = ""

                // Check for abstract
                if line.contains("ABSTRACT") {
                    currentEntity?.isAbstract = true
                }
                continue
            }

            // END_ENTITY
            if line.hasPrefix("END_ENTITY") {
                // Flush any pending attribute
                if !pendingLine.isEmpty, let attr = parseAttribute(pendingLine) {
                    if section == .direct {
                        currentEntity?.directAttributes.append(attr)
                    }
                }
                pendingLine = ""
                if let entity = currentEntity {
                    schema.entities[entity.name] = entity
                }
                currentEntity = nil
                section = .header
                continue
            }

            guard currentEntity != nil else { continue }

            // Section keywords
            if line.hasPrefix("ABSTRACT") || line.hasPrefix("SUPERTYPE") || line.hasPrefix("SUBTYPE") {
                // Could be on header lines (same line as ENTITY or continuation)
                if section == .header {
                    if line.contains("ABSTRACT") {
                        currentEntity?.isAbstract = true
                    }
                    if let superName = extractSubtypeOf(line) {
                        currentEntity?.supertypeName = superName
                    }
                }
                continue
            }

            if line == "INVERSE" || line.hasPrefix("INVERSE") {
                // Flush pending direct attribute
                if !pendingLine.isEmpty, let attr = parseAttribute(pendingLine) {
                    if section == .direct {
                        currentEntity?.directAttributes.append(attr)
                    }
                }
                pendingLine = ""
                section = .inverse
                continue
            }

            if line == "DERIVE" || line.hasPrefix("DERIVE") {
                // Flush pending direct attribute
                if !pendingLine.isEmpty, let attr = parseAttribute(pendingLine) {
                    if section == .direct {
                        currentEntity?.directAttributes.append(attr)
                    }
                }
                pendingLine = ""
                section = .derive
                continue
            }

            if line == "WHERE" || line.hasPrefix("WHERE") {
                // Flush pending
                if !pendingLine.isEmpty, let attr = parseAttribute(pendingLine) {
                    if section == .direct {
                        currentEntity?.directAttributes.append(attr)
                    }
                }
                pendingLine = ""
                section = .where_
                continue
            }

            if line == "UNIQUE" || line.hasPrefix("UNIQUE") {
                if !pendingLine.isEmpty, let attr = parseAttribute(pendingLine) {
                    if section == .direct {
                        currentEntity?.directAttributes.append(attr)
                    }
                }
                pendingLine = ""
                section = .unique
                continue
            }

            // Process content based on section
            switch section {
            case .header:
                // Look for SUBTYPE OF on continuation lines
                if let superName = extractSubtypeOf(line) {
                    currentEntity?.supertypeName = superName
                }
                // After closing paren of SUPERTYPE/SUBTYPE, if we see an attribute, switch to direct
                if looksLikeAttribute(line) {
                    section = .direct
                    pendingLine = line
                }

            case .direct:
                // Attribute lines start with a tab in EXPRESS, contain ":"
                // Multi-line declarations need accumulation
                if looksLikeAttribute(line) {
                    // Flush previous
                    if !pendingLine.isEmpty, let attr = parseAttribute(pendingLine) {
                        currentEntity?.directAttributes.append(attr)
                    }
                    pendingLine = line
                } else {
                    // Continuation of previous attribute
                    pendingLine += " " + line
                }

            case .inverse:
                if looksLikeAttribute(line) {
                    if let name = extractInverseAttributeName(line) {
                        currentEntity?.inverseAttributeNames.insert(name)
                    }
                }

            case .derive:
                parseDeriveAttribute(line, entity: &currentEntity!)

            case .where_, .unique:
                // Skip constraint and uniqueness content
                break
            }
        }

        // Save last entity if file doesn't end with END_ENTITY
        if let entity = currentEntity {
            schema.entities[entity.name] = entity
        }

        return schema
    }

    // MARK: - Entity Section Tracking

    private enum EntitySection {
        case header     // Before first attribute (ENTITY, SUPERTYPE, SUBTYPE lines)
        case direct     // Direct attributes
        case inverse    // INVERSE section
        case derive     // DERIVE section
        case where_     // WHERE section
        case unique     // UNIQUE section
    }

    // MARK: - Line Parsing Helpers

    private func extractEntityName(_ line: String) -> String {
        // "ENTITY IfcWall" or "ENTITY IfcWall;" or "ENTITY IfcRoot"
        let parts = line.components(separatedBy: .whitespaces)
        guard parts.count >= 2 else { return "" }
        var name = parts[1]
        // Remove trailing semicolon or other punctuation
        while name.hasSuffix(";") || name.hasSuffix(",") {
            name = String(name.dropLast())
        }
        return name
    }

    private func extractSubtypeOf(_ line: String) -> String? {
        // Match "SUBTYPE OF (IfcBar)" — can be on same line or continuation
        guard let range = line.range(of: "SUBTYPE OF", options: .caseInsensitive) else {
            return nil
        }
        let after = String(line[range.upperBound...])
        // Find content within parens
        guard let openParen = after.firstIndex(of: "(") else { return nil }
        let afterParen = String(after[after.index(after: openParen)...])
        // Extract first type name (before comma, paren, or whitespace)
        let name = afterParen
            .trimmingCharacters(in: .whitespaces)
            .components(separatedBy: CharacterSet(charactersIn: ",);"))
            .first?
            .trimmingCharacters(in: .whitespaces) ?? ""
        return name.isEmpty ? nil : name
    }

    private func looksLikeAttribute(_ line: String) -> Bool {
        // An attribute line contains ":" and has an identifier before it
        // e.g. "GlobalId : IfcGloballyUniqueId;" or "TheActor : IfcActorSelect;"
        // But not "WR1 : ..." (WHERE constraint) — those are in different sections
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        guard trimmed.contains(" : ") || trimmed.contains("\t: ") else { return false }
        // Must start with an identifier character
        guard let first = trimmed.first, first.isLetter || first == "_" else { return false }
        return true
    }

    private func parseAttribute(_ line: String) -> EXPRESSAttribute? {
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        // Split on " : " to get name and type
        guard let colonRange = trimmed.range(of: " : ") else { return nil }
        let name = String(trimmed[trimmed.startIndex..<colonRange.lowerBound])
            .trimmingCharacters(in: .whitespaces)
        var typeStr = String(trimmed[colonRange.upperBound...])
            .trimmingCharacters(in: .whitespaces)
        // Remove trailing semicolon
        if typeStr.hasSuffix(";") {
            typeStr = String(typeStr.dropLast())
                .trimmingCharacters(in: .whitespaces)
        }

        let isOptional = typeStr.hasPrefix("OPTIONAL ")
        if isOptional {
            typeStr = String(typeStr.dropFirst("OPTIONAL ".count))
                .trimmingCharacters(in: .whitespaces)
        }

        // Check for collection types: LIST, SET, ARRAY, BAG
        let isCollection = typeStr.hasPrefix("LIST") || typeStr.hasPrefix("SET") ||
                           typeStr.hasPrefix("ARRAY") || typeStr.hasPrefix("BAG")

        // Extract the base type name
        let typeName: String
        if isCollection {
            typeName = extractCollectionItemType(typeStr)
        } else {
            // Simple type reference — take just the first word/identifier
            typeName = typeStr.components(separatedBy: CharacterSet.whitespaces).first ?? typeStr
        }

        return EXPRESSAttribute(
            name: name,
            typeName: typeName,
            isOptional: isOptional,
            isCollection: isCollection
        )
    }

    private func extractCollectionItemType(_ typeStr: String) -> String {
        // "LIST [1:?] OF IfcProperty" -> "IfcProperty"
        // "SET [0:?] OF IfcRelAssigns FOR ..." -> "IfcRelAssigns"
        // "ARRAY [0:UUpper] OF ARRAY [0:VUpper] OF IfcCartesianPoint" -> "IfcCartesianPoint"
        guard let ofRange = typeStr.range(of: " OF ", options: .backwards) else {
            return typeStr
        }
        var after = String(typeStr[ofRange.upperBound...])
            .trimmingCharacters(in: .whitespaces)
        // Remove any trailing FOR clause
        if let forRange = after.range(of: " FOR ") {
            after = String(after[after.startIndex..<forRange.lowerBound])
        }
        // Take just the type name
        let result = after.components(separatedBy: CharacterSet.whitespaces).first ?? after
        return result.trimmingCharacters(in: CharacterSet(charactersIn: ";"))
    }

    private func extractInverseAttributeName(_ line: String) -> String? {
        let trimmed = line.trimmingCharacters(in: .whitespaces)
        guard let colonRange = trimmed.range(of: " : ") else { return nil }
        let name = String(trimmed[trimmed.startIndex..<colonRange.lowerBound])
            .trimmingCharacters(in: .whitespaces)
        return name.isEmpty ? nil : name
    }

    private func parseDeriveAttribute(_ line: String, entity: inout EXPRESSEntity) {
        let trimmed = line.trimmingCharacters(in: .whitespaces)

        // Pattern A: "SELF\IfcNamedUnit.Dimensions : ..."
        // This overrides a parent's attribute
        if trimmed.hasPrefix("SELF\\") {
            let afterSelf = String(trimmed.dropFirst(5)) // drop "SELF\"
            // Extract "ParentType.AttributeName"
            let parts = afterSelf.components(separatedBy: ".")
            if parts.count >= 2 {
                let parentName = parts[0]
                let attrNameRaw = parts[1].components(separatedBy: " ").first ?? parts[1]
                let attrName = attrNameRaw.trimmingCharacters(in: CharacterSet(charactersIn: " :"))
                entity.deriveOverrides.append(EXPRESSDeriveOverride(
                    attributeName: attrName,
                    parentEntityName: parentName
                ))
            }
            return
        }

        // Pattern B: Own derived attribute — "AttrName : Type := expression"
        // e.g. "UpperIndexOnControlPoints : IfcInteger := ..."
        if trimmed.contains(" : ") && trimmed.contains(":=") {
            let name = trimmed.components(separatedBy: " ").first ?? ""
            if !name.isEmpty {
                entity.ownDerivedAttributeNames.insert(name)
            }
        }
    }
}
