import Foundation

// MARK: - STEPToken

/// Represents a single token from a STEP Physical File (ISO 10303-21).
public enum STEPToken: Equatable, Sendable {
    /// A keyword such as `HEADER`, `DATA`, `ENDSEC`, `END-ISO-10303-21`,
    /// `ISO-10303-21`, `FILE_DESCRIPTION`, `FILE_NAME`, `FILE_SCHEMA`, etc.
    case keyword(String)

    /// An entity instance reference, e.g. `#123`.
    case entityRef(Int)

    /// An integer literal, e.g. `42` or `-7`.
    case integer(Int)

    /// A real (floating-point) literal. In STEP a real always contains a decimal point
    /// and may include an exponent part, e.g. `1.5`, `-3.14E2`, `1.`.
    case real(Double)

    /// A string literal delimited by single quotes. Doubled apostrophes (`''`) have
    /// already been collapsed to a single apostrophe. Backslash escape sequences
    /// (`\X\`, `\X2\`, `\S\`, `\\`) are preserved verbatim for a downstream decoder.
    case string(String)

    /// An enumeration value, e.g. `.STEEL.` becomes `"STEEL"`, `.T.` becomes `"T"`.
    case enumeration(String)

    /// An uppercase identifier that names an IFC / STEP entity type,
    /// e.g. `IFCWALL`, `IFCREAL`.
    case typeName(String)

    /// `(`
    case leftParen

    /// `)`
    case rightParen

    /// `,`
    case comma

    /// `;`
    case semicolon

    /// `=`
    case equals

    /// `$` — represents an omitted (null) attribute value.
    case dollar

    /// `*` — represents a derived attribute value.
    case star

    /// Signals the end of input.
    case eof
}

// MARK: - STEPLexer

/// A pull-based lexer (tokenizer) for the STEP Physical File Format (ISO 10303-21).
///
/// Usage:
/// ```swift
/// var lexer = STEPLexer(inputString)
/// while true {
///     let token = lexer.nextToken()
///     if token == .eof { break }
///     // process token ...
/// }
/// ```
public struct STEPLexer: Sendable {

    // MARK: Private state

    /// The full source stored as a contiguous array of `UInt8` for fast scanning.
    private let bytes: [UInt8]

    /// Current read position (byte offset into `bytes`).
    private var pos: Int

    /// Whether the lexer has entered the `DATA` section. Inside the data section
    /// an uppercase identifier that follows `=` is emitted as `.typeName`;
    /// outside it is emitted as `.keyword`.
    private var inDataSection: Bool

    /// Set to `true` after we emit `.equals` so that the very next uppercase
    /// identifier is treated as a type name rather than a keyword.
    private var expectTypeName: Bool

    // MARK: Initialisation

    /// Creates a new lexer that will tokenize `input`.
    public init(_ input: String) {
        self.bytes = Array(input.utf8)
        self.pos = 0
        self.inDataSection = false
        self.expectTypeName = false
    }

    // MARK: Public API

    /// Returns the next token from the input. Repeated calls after the input is
    /// exhausted always return `.eof`.
    public mutating func nextToken() -> STEPToken {
        skipWhitespaceAndComments()

        guard pos < bytes.count else {
            return .eof
        }

        let ch = bytes[pos]

        switch ch {
        // Single-character tokens
        case UInt8(ascii: "("):
            pos += 1
            expectTypeName = false
            return .leftParen

        case UInt8(ascii: ")"):
            pos += 1
            expectTypeName = false
            return .rightParen

        case UInt8(ascii: ","):
            pos += 1
            expectTypeName = false
            return .comma

        case UInt8(ascii: ";"):
            pos += 1
            expectTypeName = false
            return .semicolon

        case UInt8(ascii: "="):
            pos += 1
            expectTypeName = true
            return .equals

        case UInt8(ascii: "$"):
            pos += 1
            expectTypeName = false
            return .dollar

        case UInt8(ascii: "*"):
            pos += 1
            expectTypeName = false
            return .star

        // Entity reference: #digits
        case UInt8(ascii: "#"):
            return lexEntityRef()

        // String literal: 'text'
        case UInt8(ascii: "'"):
            return lexString()

        // Enumeration: .IDENTIFIER.
        case UInt8(ascii: "."):
            return lexEnumerationOrReal()

        // Number (may start with digit or sign)
        case UInt8(ascii: "0")...UInt8(ascii: "9"):
            return lexNumber()

        case UInt8(ascii: "-"), UInt8(ascii: "+"):
            return lexNumber()

        default:
            // Uppercase letter -> keyword or type name
            if isUppercaseASCII(ch) || ch == UInt8(ascii: "_") {
                return lexIdentifier()
            }
            // Unknown character – skip and retry
            pos += 1
            return nextToken()
        }
    }

    /// Consumes all remaining tokens and returns them as an array.
    /// The final `.eof` token is included as the last element.
    public mutating func allTokens() -> [STEPToken] {
        var tokens: [STEPToken] = []
        while true {
            let token = nextToken()
            tokens.append(token)
            if token == .eof { break }
        }
        return tokens
    }

    // MARK: - Private helpers: character classification

    private func isDigit(_ c: UInt8) -> Bool {
        c >= UInt8(ascii: "0") && c <= UInt8(ascii: "9")
    }

    private func isUppercaseASCII(_ c: UInt8) -> Bool {
        c >= UInt8(ascii: "A") && c <= UInt8(ascii: "Z")
    }

    private func isIdentifierChar(_ c: UInt8) -> Bool {
        isUppercaseASCII(c)
            || (c >= UInt8(ascii: "a") && c <= UInt8(ascii: "z"))
            || isDigit(c)
            || c == UInt8(ascii: "_")
            || c == UInt8(ascii: "-")
    }

    // MARK: - Whitespace & comments

    /// Advances `pos` past any whitespace characters and `/* ... */` block
    /// comments (which are the only comment form defined by ISO 10303-21).
    private mutating func skipWhitespaceAndComments() {
        while pos < bytes.count {
            let ch = bytes[pos]

            // Whitespace
            if ch == UInt8(ascii: " ")
                || ch == UInt8(ascii: "\t")
                || ch == UInt8(ascii: "\r")
                || ch == UInt8(ascii: "\n")
            {
                pos += 1
                continue
            }

            // Block comment: /* ... */
            if ch == UInt8(ascii: "/"),
               pos + 1 < bytes.count,
               bytes[pos + 1] == UInt8(ascii: "*")
            {
                pos += 2 // skip "/*"
                while pos + 1 < bytes.count {
                    if bytes[pos] == UInt8(ascii: "*"),
                       bytes[pos + 1] == UInt8(ascii: "/")
                    {
                        pos += 2
                        break
                    }
                    pos += 1
                }
                continue
            }

            break
        }
    }

    // MARK: - Individual token lexers

    /// Lexes an entity reference starting with `#`.
    private mutating func lexEntityRef() -> STEPToken {
        pos += 1 // skip '#'
        let start = pos
        while pos < bytes.count, isDigit(bytes[pos]) {
            pos += 1
        }
        let value = Int(stringFromBytes(start, pos)) ?? 0
        expectTypeName = false
        return .entityRef(value)
    }

    /// Lexes a single-quoted string literal.
    ///
    /// Inside a STEP string, two consecutive apostrophes (`''`) encode a single
    /// apostrophe character. Backslash-based escape sequences (`\X\`, `\X2\`,
    /// `\S\`, `\\`) are kept as-is so that a higher-level decoder can interpret
    /// them.
    private mutating func lexString() -> STEPToken {
        pos += 1 // skip opening apostrophe
        var result: [UInt8] = []

        while pos < bytes.count {
            let ch = bytes[pos]

            if ch == UInt8(ascii: "'") {
                // Check for doubled apostrophe
                if pos + 1 < bytes.count, bytes[pos + 1] == UInt8(ascii: "'") {
                    result.append(UInt8(ascii: "'"))
                    pos += 2
                } else {
                    // End of string
                    pos += 1
                    break
                }
            } else {
                result.append(ch)
                pos += 1
            }
        }

        let str = String(bytes: result, encoding: .utf8)
            ?? String(result.map { Character(UnicodeScalar($0)) })
        expectTypeName = false
        return .string(str)
    }

    /// Lexes an enumeration value (`.IDENTIFIER.`) or, if the dot is followed
    /// by a digit, falls through to number parsing (for reals like `.5` — though
    /// STEP reals normally have a leading digit, we handle it defensively).
    private mutating func lexEnumerationOrReal() -> STEPToken {
        // Peek ahead: if the character after the dot is a letter or underscore,
        // this is an enumeration.
        if pos + 1 < bytes.count,
           (isUppercaseASCII(bytes[pos + 1])
            || bytes[pos + 1] == UInt8(ascii: "_")
            || (bytes[pos + 1] >= UInt8(ascii: "a") && bytes[pos + 1] <= UInt8(ascii: "z")))
        {
            return lexEnumeration()
        }

        // Otherwise treat as a number starting with '.'  (uncommon in STEP).
        return lexNumber()
    }

    /// Lexes `.IDENTIFIER.` and returns `.enumeration(...)`.
    private mutating func lexEnumeration() -> STEPToken {
        pos += 1 // skip leading dot
        let start = pos

        while pos < bytes.count, isIdentifierChar(bytes[pos]) {
            pos += 1
        }

        let name = stringFromBytes(start, pos)

        // Skip trailing dot if present
        if pos < bytes.count, bytes[pos] == UInt8(ascii: ".") {
            pos += 1
        }

        expectTypeName = false
        return .enumeration(name)
    }

    /// Lexes an integer or real number.
    ///
    /// STEP integers contain only digits (optionally preceded by a sign).
    /// STEP reals always contain a decimal point and may have an `E`/`e` exponent.
    private mutating func lexNumber() -> STEPToken {
        let start = pos

        // Optional leading sign
        if pos < bytes.count,
           (bytes[pos] == UInt8(ascii: "-") || bytes[pos] == UInt8(ascii: "+"))
        {
            pos += 1
        }

        // Integer part
        while pos < bytes.count, isDigit(bytes[pos]) {
            pos += 1
        }

        var isReal = false

        // Decimal point
        if pos < bytes.count, bytes[pos] == UInt8(ascii: ".") {
            // Make sure the dot is part of a number and not the start of an
            // enumeration like `.T.` that directly follows a number.  A decimal
            // point in a real is only valid when followed by a digit, the end of
            // the token, or an exponent indicator.
            let afterDot = pos + 1 < bytes.count ? bytes[pos + 1] : UInt8(0)
            if isDigit(afterDot)
                || afterDot == UInt8(ascii: "E")
                || afterDot == UInt8(ascii: "e")
                || afterDot == UInt8(ascii: ",")
                || afterDot == UInt8(ascii: ")")
                || afterDot == UInt8(ascii: ";")
                || afterDot == UInt8(ascii: " ")
                || afterDot == UInt8(ascii: "\r")
                || afterDot == UInt8(ascii: "\n")
                || afterDot == UInt8(ascii: "\t")
                || afterDot == 0
            {
                isReal = true
                pos += 1 // skip '.'

                // Fractional digits
                while pos < bytes.count, isDigit(bytes[pos]) {
                    pos += 1
                }
            }
        }

        // Exponent part
        if pos < bytes.count,
           (bytes[pos] == UInt8(ascii: "E") || bytes[pos] == UInt8(ascii: "e"))
        {
            isReal = true
            pos += 1

            // Optional exponent sign
            if pos < bytes.count,
               (bytes[pos] == UInt8(ascii: "-") || bytes[pos] == UInt8(ascii: "+"))
            {
                pos += 1
            }

            while pos < bytes.count, isDigit(bytes[pos]) {
                pos += 1
            }
        }

        let text = stringFromBytes(start, pos)
        expectTypeName = false

        if isReal {
            return .real(Double(text) ?? 0.0)
        } else {
            return .integer(Int(text) ?? 0)
        }
    }

    /// Lexes an uppercase identifier and decides whether it is a keyword or a
    /// type name.
    ///
    /// In the DATA section the identifier that immediately follows `=` (i.e.
    /// `expectTypeName` is `true`) is emitted as `.typeName`. Everything else
    /// in the header/data preamble is a `.keyword`.
    private mutating func lexIdentifier() -> STEPToken {
        let start = pos

        while pos < bytes.count, isIdentifierChar(bytes[pos]) {
            pos += 1
        }

        let name = stringFromBytes(start, pos)

        // Track section boundaries so we know when to emit type names.
        if name == "DATA" {
            inDataSection = true
            expectTypeName = false
            return .keyword(name)
        }
        if name == "ENDSEC" {
            inDataSection = false
            expectTypeName = false
            return .keyword(name)
        }

        // Inside the data section, an identifier right after `=` is a type name.
        if inDataSection, expectTypeName {
            expectTypeName = false
            return .typeName(name)
        }

        expectTypeName = false
        return .keyword(name)
    }

    // MARK: - Byte-range to String conversion

    /// Returns a `String` from the byte range `bytes[start ..< end]`.
    private func stringFromBytes(_ start: Int, _ end: Int) -> String {
        bytes[start..<end].withUnsafeBufferPointer { buf in
            String(bytes: buf, encoding: .utf8) ?? ""
        }
    }
}
