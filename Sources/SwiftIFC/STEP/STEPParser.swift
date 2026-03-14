// STEPParser.swift
// SwiftIFC
//
// A parser for STEP Physical Files (ISO 10303-21).
// Takes a token stream from STEPLexer and produces structured data.

import Foundation
import SwiftIFCModel

// MARK: - Parse Error

/// Errors that can occur while parsing a STEP physical file.
public enum STEPParseError: Error, LocalizedError {
    case unexpectedToken(expected: String, got: STEPToken)
    case unexpectedEndOfInput
    case invalidHeaderEntry(String)

    public var errorDescription: String? {
        switch self {
        case .unexpectedToken(let expected, let got):
            return "STEP parse error: expected \(expected), got \(got)"
        case .unexpectedEndOfInput:
            return "STEP parse error: unexpected end of input"
        case .invalidHeaderEntry(let msg):
            return "STEP parse error: invalid header entry: \(msg)"
        }
    }
}

// MARK: - Raw Parsed Values

/// A raw parsed STEP value, before entity references are resolved.
public indirect enum RawSTEPValue: Sendable {
    case string(String)
    case integer(Int)
    case real(Double)
    case enumeration(String)
    case entityRef(Int)
    case list([RawSTEPValue])
    case typedValue(typeName: String, value: RawSTEPValue)
    case null
    case derived
}

/// A raw parsed entity instance from the DATA section.
public struct RawSTEPEntity: Sendable {
    public let id: Int
    public let typeName: String
    public let attributes: [RawSTEPValue]
}

/// The complete parsed result of a STEP physical file.
public struct ParsedSTEPFile: Sendable {
    public let header: STEPHeader
    public let entities: [Int: RawSTEPEntity]
}

// MARK: - STEPParser

/// A parser for STEP Physical Files (ISO 10303-21).
///
/// The parser consumes a token stream produced by ``STEPLexer`` and builds a
/// ``ParsedSTEPFile`` containing the header metadata and a dictionary of raw
/// entity instances keyed by their STEP identifiers.
///
/// Usage:
/// ```swift
/// let result = try STEPParser.parse(stepFileString)
/// ```
public struct STEPParser {

    // MARK: - Private State

    /// The lexer that supplies tokens.
    private var lexer: STEPLexer

    /// The current lookahead token.
    private var currentToken: STEPToken

    // MARK: - Public API

    /// Parses a STEP physical file string and returns the structured result.
    ///
    /// - Parameter input: The full text of a STEP physical file (ISO 10303-21).
    /// - Returns: A ``ParsedSTEPFile`` containing the parsed header and entities.
    /// - Throws: ``STEPParseError`` if the input is malformed.
    public static func parse(_ input: String) throws -> ParsedSTEPFile {
        var parser = STEPParser(input: input)
        return try parser.parseFile()
    }

    // MARK: - Initialisation

    /// Creates a parser from the given STEP file string.
    private init(input: String) {
        self.lexer = STEPLexer(input)
        self.currentToken = self.lexer.nextToken()
    }

    // MARK: - Token Consumption Helpers

    /// Advances to the next token and returns the previously current token.
    @discardableResult
    private mutating func advance() -> STEPToken {
        let previous = currentToken
        currentToken = lexer.nextToken()
        return previous
    }

    /// Consumes the current token if it matches `expected`, otherwise throws.
    private mutating func expect(_ expected: STEPToken) throws {
        guard currentToken == expected else {
            throw STEPParseError.unexpectedToken(
                expected: "\(expected)",
                got: currentToken
            )
        }
        advance()
    }

    /// Consumes a keyword token with the given name, otherwise throws.
    private mutating func expectKeyword(_ name: String) throws {
        guard case .keyword(let kw) = currentToken, kw == name else {
            throw STEPParseError.unexpectedToken(
                expected: "keyword '\(name)'",
                got: currentToken
            )
        }
        advance()
    }

    /// Returns `true` if the current token is a keyword with the given name.
    private func isKeyword(_ name: String) -> Bool {
        if case .keyword(let kw) = currentToken, kw == name {
            return true
        }
        return false
    }

    // MARK: - Top-Level File Structure

    /// Parses the entire STEP file:
    ///
    ///     ISO-10303-21;
    ///     HEADER; ... ENDSEC;
    ///     DATA; ... ENDSEC;
    ///     END-ISO-10303-21;
    private mutating func parseFile() throws -> ParsedSTEPFile {
        // ISO-10303-21;
        try expectKeyword("ISO-10303-21")
        try expect(.semicolon)

        // HEADER; ... ENDSEC;
        let header = try parseHeaderSection()

        // DATA; ... ENDSEC;
        let entities = try parseDataSection()

        // END-ISO-10303-21;
        try expectKeyword("END-ISO-10303-21")
        try expect(.semicolon)

        return ParsedSTEPFile(header: header, entities: entities)
    }

    // MARK: - HEADER Section

    /// Parses the HEADER section, expecting FILE_DESCRIPTION, FILE_NAME,
    /// and FILE_SCHEMA entries.
    private mutating func parseHeaderSection() throws -> STEPHeader {
        try expectKeyword("HEADER")
        try expect(.semicolon)

        var fileDescription: STEPFileDescription?
        var fileName: STEPFileName?
        var fileSchema: [String]?

        // Parse header entries until ENDSEC
        while !isKeyword("ENDSEC") {
            guard case .keyword(let entryName) = currentToken else {
                throw STEPParseError.unexpectedToken(
                    expected: "header entry keyword or 'ENDSEC'",
                    got: currentToken
                )
            }
            advance() // consume the keyword

            switch entryName {
            case "FILE_DESCRIPTION":
                fileDescription = try parseFileDescription()
            case "FILE_NAME":
                fileName = try parseFileName()
            case "FILE_SCHEMA":
                fileSchema = try parseFileSchema()
            default:
                // Skip unknown header entries: consume (args);
                try skipHeaderEntry()
            }
        }

        try expectKeyword("ENDSEC")
        try expect(.semicolon)

        return STEPHeader(
            description: fileDescription ?? STEPFileDescription(),
            name: fileName ?? STEPFileName(),
            schema: fileSchema ?? []
        )
    }

    /// Parses FILE_DESCRIPTION((...), 'impl_level');
    ///
    /// The keyword has already been consumed.
    private mutating func parseFileDescription() throws -> STEPFileDescription {
        try expect(.leftParen)

        // First argument: list of description strings
        let descriptions = try parseStringList()

        try expect(.comma)

        // Second argument: implementation level string
        guard case .string(let implLevel) = currentToken else {
            throw STEPParseError.invalidHeaderEntry(
                "FILE_DESCRIPTION: expected implementation level string"
            )
        }
        advance()

        try expect(.rightParen)
        try expect(.semicolon)

        return STEPFileDescription(
            descriptions: descriptions,
            implementationLevel: implLevel
        )
    }

    /// Parses FILE_NAME('name','timestamp',('author'),('org'),'preprocessor','system','auth');
    ///
    /// The keyword has already been consumed.
    private mutating func parseFileName() throws -> STEPFileName {
        try expect(.leftParen)

        // 1. name
        let name = try expectString("FILE_NAME: name")
        try expect(.comma)

        // 2. time_stamp
        let timeStamp = try expectString("FILE_NAME: time_stamp")
        try expect(.comma)

        // 3. author (list of strings)
        let author = try parseStringList()
        try expect(.comma)

        // 4. organization (list of strings)
        let organization = try parseStringList()
        try expect(.comma)

        // 5. preprocessor_version
        let preprocessorVersion = try expectString("FILE_NAME: preprocessor_version")
        try expect(.comma)

        // 6. originating_system
        let originatingSystem = try expectString("FILE_NAME: originating_system")
        try expect(.comma)

        // 7. authorization
        let authorization = try expectString("FILE_NAME: authorization")

        try expect(.rightParen)
        try expect(.semicolon)

        return STEPFileName(
            name: name,
            timeStamp: timeStamp,
            author: author,
            organization: organization,
            preprocessorVersion: preprocessorVersion,
            originatingSystem: originatingSystem,
            authorization: authorization
        )
    }

    /// Parses FILE_SCHEMA(('IFC4X3_ADD2'));
    ///
    /// The keyword has already been consumed.
    private mutating func parseFileSchema() throws -> [String] {
        try expect(.leftParen)
        let schemas = try parseStringList()
        try expect(.rightParen)
        try expect(.semicolon)
        return schemas
    }

    /// Skips an unknown header entry by consuming tokens through the next semicolon.
    ///
    /// The keyword has already been consumed.
    private mutating func skipHeaderEntry() throws {
        var depth = 0
        while true {
            switch currentToken {
            case .semicolon where depth == 0:
                advance()
                return
            case .leftParen:
                depth += 1
                advance()
            case .rightParen:
                depth -= 1
                advance()
            case .eof:
                throw STEPParseError.unexpectedEndOfInput
            default:
                advance()
            }
        }
    }

    // MARK: - Header Parsing Helpers

    /// Consumes a string token or throws an error with context.
    private mutating func expectString(_ context: String) throws -> String {
        guard case .string(let value) = currentToken else {
            throw STEPParseError.invalidHeaderEntry(
                "\(context): expected string"
            )
        }
        advance()
        return value
    }

    /// Parses a parenthesised list of strings: `('a', 'b', 'c')`
    ///
    /// An empty list `()` is permitted.
    private mutating func parseStringList() throws -> [String] {
        try expect(.leftParen)

        var strings: [String] = []

        if currentToken != .rightParen {
            guard case .string(let first) = currentToken else {
                throw STEPParseError.invalidHeaderEntry(
                    "expected string in list"
                )
            }
            advance()
            strings.append(first)

            while currentToken == .comma {
                advance() // consume comma
                guard case .string(let next) = currentToken else {
                    throw STEPParseError.invalidHeaderEntry(
                        "expected string in list after comma"
                    )
                }
                advance()
                strings.append(next)
            }
        }

        try expect(.rightParen)
        return strings
    }

    // MARK: - DATA Section

    /// Parses the DATA section, which contains entity instances.
    ///
    ///     DATA;
    ///     #1 = IFCPROJECT('guid', ...);
    ///     ...
    ///     ENDSEC;
    private mutating func parseDataSection() throws -> [Int: RawSTEPEntity] {
        try expectKeyword("DATA")
        try expect(.semicolon)

        var entities: [Int: RawSTEPEntity] = [:]

        while !isKeyword("ENDSEC") {
            if case .eof = currentToken {
                throw STEPParseError.unexpectedEndOfInput
            }
            let entity = try parseEntityInstance()
            entities[entity.id] = entity
        }

        try expectKeyword("ENDSEC")
        try expect(.semicolon)

        return entities
    }

    /// Parses a single entity instance: `#id = TYPE_NAME(arg1, arg2, ...);`
    private mutating func parseEntityInstance() throws -> RawSTEPEntity {
        // #id
        guard case .entityRef(let id) = currentToken else {
            throw STEPParseError.unexpectedToken(
                expected: "entity reference (#N)",
                got: currentToken
            )
        }
        advance()

        // =
        try expect(.equals)

        // TYPE_NAME
        guard case .typeName(let typeName) = currentToken else {
            throw STEPParseError.unexpectedToken(
                expected: "entity type name",
                got: currentToken
            )
        }
        advance()

        // (arg1, arg2, ...)
        let attributes = try parseArgumentList()

        // ;
        try expect(.semicolon)

        return RawSTEPEntity(id: id, typeName: typeName, attributes: attributes)
    }

    // MARK: - Argument Parsing

    /// Parses a parenthesised, comma-separated argument list: `(arg1, arg2, ...)`
    private mutating func parseArgumentList() throws -> [RawSTEPValue] {
        try expect(.leftParen)

        var args: [RawSTEPValue] = []

        if currentToken != .rightParen {
            args.append(try parseValue())

            while currentToken == .comma {
                advance() // consume comma
                args.append(try parseValue())
            }
        }

        try expect(.rightParen)
        return args
    }

    /// Parses a single STEP value from the token stream.
    ///
    /// Supported forms:
    /// - `'string'` -> `.string`
    /// - integer literal -> `.integer`
    /// - real literal -> `.real`
    /// - `.ENUM.` -> `.enumeration`
    /// - `#N` -> `.entityRef`
    /// - `(...)` -> `.list`
    /// - `TYPENAME(value)` -> `.typedValue`
    /// - `$` -> `.null`
    /// - `*` -> `.derived`
    private mutating func parseValue() throws -> RawSTEPValue {
        switch currentToken {
        case .string(let s):
            advance()
            return .string(s)

        case .integer(let i):
            advance()
            return .integer(i)

        case .real(let r):
            advance()
            return .real(r)

        case .enumeration(let e):
            advance()
            return .enumeration(e)

        case .entityRef(let ref):
            advance()
            return .entityRef(ref)

        case .dollar:
            advance()
            return .null

        case .star:
            advance()
            return .derived

        case .leftParen:
            // Nested list
            return try parseListValue()

        case .keyword(let name):
            // Inside the DATA section arguments, a keyword token represents a
            // typed value wrapper, e.g. IFCLABEL('some text'). The lexer emits
            // these as .keyword because they don't follow '='.
            advance() // consume the type name keyword
            try expect(.leftParen)
            let innerValue = try parseValue()
            try expect(.rightParen)
            return .typedValue(typeName: name, value: innerValue)

        case .typeName(let name):
            // This can occur if the lexer context produces a typeName token
            // inside an argument position (defensive handling).
            advance()
            try expect(.leftParen)
            let innerValue = try parseValue()
            try expect(.rightParen)
            return .typedValue(typeName: name, value: innerValue)

        case .eof:
            throw STEPParseError.unexpectedEndOfInput

        default:
            throw STEPParseError.unexpectedToken(
                expected: "STEP value",
                got: currentToken
            )
        }
    }

    /// Parses a parenthesised list value: `(val1, val2, ...)`
    ///
    /// An empty list `()` is permitted.
    private mutating func parseListValue() throws -> RawSTEPValue {
        try expect(.leftParen)

        var elements: [RawSTEPValue] = []

        if currentToken != .rightParen {
            elements.append(try parseValue())

            while currentToken == .comma {
                advance() // consume comma
                elements.append(try parseValue())
            }
        }

        try expect(.rightParen)
        return .list(elements)
    }
}
