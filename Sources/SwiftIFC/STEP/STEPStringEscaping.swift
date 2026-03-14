//
//  STEPStringEscaping.swift
//  SwiftIFC
//
//  Created by George Brown on 14.03.2026.
//

import Foundation

// MARK: - STEP Physical File Format String Encoding (ISO 10303-21)

/// Encodes a Swift `String` into the STEP Physical File Format (ISO 10303-21)
/// string representation, wrapping it in single quotes and escaping
/// non-ASCII characters using `\X2\...\X0\` (UTF-16 hex) sequences.
///
/// - Backslashes are doubled: `\` becomes `\\`
/// - Apostrophes are doubled: `'` becomes `''`
/// - Characters outside the ASCII printable range (0x20...0x7E) are encoded
///   as `\X2\XXXX\X0\` using their UTF-16 code unit representation.
///
/// - Parameter string: The Swift string to encode.
/// - Returns: A STEP-encoded string enclosed in single quotes.
public func stepEncodeString(_ string: String) -> String {
    var result = "'"

    for scalar in string.unicodeScalars {
        switch scalar {
        case "\\":
            result += "\\\\"
        case "'":
            result += "''"
        case "\u{20}"..."\u{7E}":
            result.unicodeScalars.append(scalar)
        default:
            // Encode using \X2\ UTF-16 hex encoding \X0\
            let encoded = String(scalar)
            let utf16Units = Array(encoded.utf16)
            result += "\\X2\\"
            for unit in utf16Units {
                result += String(format: "%04X", unit)
            }
            result += "\\X0\\"
        }
    }

    result += "'"
    return result
}

/// Decodes a STEP Physical File Format (ISO 10303-21) encoded string back
/// into a Swift `String`.
///
/// Handles the following escape sequences:
/// - `''` (doubled apostrophe) becomes `'`
/// - `\\` (doubled backslash) becomes `\`
/// - `\X2\XXXX\X0\` (UTF-16 hex encoding) becomes the corresponding Unicode character(s)
/// - `\X\XX` (single-byte hex encoding) becomes the corresponding character
/// - `\S\c` (ISO 8859-1 high-bit set) becomes the character at code point `c + 128`
///
/// - Parameter stepString: A STEP-encoded string, optionally enclosed in single quotes.
/// - Returns: The decoded Swift string.
public func stepDecodeString(_ stepString: String) -> String {
    var input = stepString

    // Strip enclosing single quotes if present.
    if input.hasPrefix("'"), input.hasSuffix("'"), input.count >= 2 {
        input = String(input.dropFirst().dropLast())
    }

    var result = ""
    var index = input.startIndex

    while index < input.endIndex {
        let ch = input[index]

        if ch == "'" {
            // Doubled apostrophe
            let next = input.index(after: index)
            if next < input.endIndex, input[next] == "'" {
                result.append("'")
                index = input.index(after: next)
            } else {
                result.append(ch)
                index = input.index(after: index)
            }
        } else if ch == "\\" {
            let afterBackslash = input.index(after: index)
            guard afterBackslash < input.endIndex else {
                result.append(ch)
                index = input.index(after: index)
                continue
            }

            let nextCh = input[afterBackslash]

            if nextCh == "\\" {
                // Doubled backslash
                result.append("\\")
                index = input.index(after: afterBackslash)

            } else if nextCh == "X" {
                let afterX = input.index(after: afterBackslash)
                guard afterX < input.endIndex else {
                    result.append(ch)
                    index = input.index(after: index)
                    continue
                }

                if input[afterX] == "2", safeIndex(afterX, offsetBy: 1, in: input).map({ input[$0] == "\\" }) == true {
                    // \X2\....\X0\ — UTF-16 hex encoding
                    if let decoded = decodeX2Sequence(input: input, from: index) {
                        result += decoded.string
                        index = decoded.endIndex
                    } else {
                        result.append(ch)
                        index = input.index(after: index)
                    }

                } else if input[afterX] == "\\" {
                    // \X\XX — single-byte hex encoding
                    let hexStart = input.index(after: afterX)
                    if let hexEnd = safeIndex(hexStart, offsetBy: 2, in: input) {
                        let hexStr = String(input[hexStart..<hexEnd])
                        if let byte = UInt8(hexStr, radix: 16) {
                            result.unicodeScalars.append(Unicode.Scalar(byte))
                            index = hexEnd
                        } else {
                            result.append(ch)
                            index = input.index(after: index)
                        }
                    } else {
                        result.append(ch)
                        index = input.index(after: index)
                    }
                } else {
                    result.append(ch)
                    index = input.index(after: index)
                }

            } else if nextCh == "S" {
                // \S\c — ISO 8859-1 high-bit encoding
                let afterS = input.index(after: afterBackslash)
                if afterS < input.endIndex,
                   input[afterS] == "\\",
                   let charIndex = safeIndex(afterS, offsetBy: 1, in: input)
                {
                    let c = input[charIndex]
                    let codePoint = UInt32(c.asciiValue ?? 0) + 128
                    if let scalar = Unicode.Scalar(codePoint) {
                        result.unicodeScalars.append(scalar)
                    }
                    index = input.index(after: charIndex)
                } else {
                    result.append(ch)
                    index = input.index(after: index)
                }

            } else {
                result.append(ch)
                index = input.index(after: index)
            }
        } else {
            result.append(ch)
            index = input.index(after: index)
        }
    }

    return result
}

// MARK: - Private Helpers

/// Safely advances the given index by the specified offset, returning `nil`
/// if the result would be beyond the string's `endIndex`.
private func safeIndex(
    _ index: String.Index,
    offsetBy offset: Int,
    in string: String
) -> String.Index? {
    guard let result = string.index(index, offsetBy: offset, limitedBy: string.endIndex) else {
        return nil
    }
    return result
}

/// Attempts to decode a `\X2\....\X0\` UTF-16 hex sequence starting at `from`.
///
/// - Parameters:
///   - input: The full input string.
///   - from: The index of the leading backslash of `\X2\`.
/// - Returns: A tuple of the decoded string and the index immediately following
///   the closing `\X0\`, or `nil` if parsing fails.
private func decodeX2Sequence(
    input: String,
    from start: String.Index
) -> (string: String, endIndex: String.Index)? {
    // Expect: \X2\ at start
    guard let prefixEnd = safeIndex(start, offsetBy: 4, in: input),
          String(input[start..<prefixEnd]) == "\\X2\\"
    else {
        return nil
    }

    // Scan hex digits in groups of 4 until we hit \X0\
    var hexCodes: [UInt16] = []
    var cursor = prefixEnd

    while cursor < input.endIndex {
        // Check for terminator \X0\
        if let terminatorEnd = safeIndex(cursor, offsetBy: 4, in: input),
           String(input[cursor..<terminatorEnd]) == "\\X0\\"
        {
            let decoded = String(decoding: hexCodes, as: UTF16.self)
            return (decoded, terminatorEnd)
        }

        // Read 4 hex digits
        guard let hexEnd = safeIndex(cursor, offsetBy: 4, in: input) else {
            return nil
        }

        let hexStr = String(input[cursor..<hexEnd])
        guard let value = UInt16(hexStr, radix: 16) else {
            return nil
        }

        hexCodes.append(value)
        cursor = hexEnd
    }

    return nil
}
