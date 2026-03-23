//
//  IfcGloballyUniqueId.swift
//  SwiftIFC
//
//  Created by George Brown on 12.03.2026.
//
import Foundation

extension IFC4X3 {

    // IFC base-64 character set (NOT standard base64).
    // "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_$"
    private static let base64Chars: [Character] = Array("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_$")

    /// Compress a UUID into a 22-character IFC GloballyUniqueId string.
    ///
    /// Encoding rules (per IFC4X3 spec):
    /// 1. The first byte is encoded into 2 characters.
    /// 2. The remaining 15 bytes are encoded in groups of 3, each producing 4 characters.
    /// Result: 2 + 5*4 = 22 characters. The first character is always 0, 1, 2, or 3.
    public static func compressUUID(_ uuid: UUID) -> String {
        let u = uuid.uuid  // (UInt8, UInt8, ..., UInt8) — 16 bytes
        let bytes: [UInt8] = [
            u.0, u.1, u.2, u.3, u.4, u.5, u.6, u.7,
            u.8, u.9, u.10, u.11, u.12, u.13, u.14, u.15
        ]

        var result = String()
        result.reserveCapacity(22)

        // First byte → 2 characters (8 bits, needs ceil(8/6) = 2 six-bit values)
        cvTo64(UInt32(bytes[0]), nDigits: 2, result: &result)

        // Remaining 15 bytes in groups of 3 → 4 characters each
        // (3 bytes = 24 bits, needs 4 six-bit values)
        var i = 1
        while i < 16 {
            let n = UInt32(bytes[i]) << 16 | UInt32(bytes[i + 1]) << 8 | UInt32(bytes[i + 2])
            cvTo64(n, nDigits: 4, result: &result)
            i += 3
        }

        return result
    }

    /// Decompress a 22-character IFC GloballyUniqueId string back into a UUID.
    public static func decompressUUID(_ string: String) -> UUID? {
        guard string.count == 22 else { return nil }
        let chars = Array(string)

        var bytes = [UInt8](repeating: 0, count: 16)

        // First 2 characters → first byte
        guard let v0 = cvFrom64(chars, start: 0, nDigits: 2) else { return nil }
        bytes[0] = UInt8(v0 & 0xFF)

        // Remaining 20 characters in groups of 4 → 3 bytes each
        var charIndex = 2
        var byteIndex = 1
        while charIndex < 22 {
            guard let v = cvFrom64(chars, start: charIndex, nDigits: 4) else { return nil }
            bytes[byteIndex]     = UInt8((v >> 16) & 0xFF)
            bytes[byteIndex + 1] = UInt8((v >> 8)  & 0xFF)
            bytes[byteIndex + 2] = UInt8( v        & 0xFF)
            charIndex += 4
            byteIndex += 3
        }

        return UUID(uuid: (
            bytes[0],  bytes[1],  bytes[2],  bytes[3],
            bytes[4],  bytes[5],  bytes[6],  bytes[7],
            bytes[8],  bytes[9],  bytes[10], bytes[11],
            bytes[12], bytes[13], bytes[14], bytes[15]
        ))
    }

    /// Generate a new compressed UUID.
    public static func compressedUUID() -> String {
        return compressUUID(UUID())
    }

    // MARK: - Base-64 conversion helpers

    /// Convert an unsigned integer to IFC base-64 characters, most significant first.
    private static func cvTo64(_ value: UInt32, nDigits: Int, result: inout String) {
        var v = value
        // Build digits least-significant first, then reverse.
        var buf = [Character]()
        buf.reserveCapacity(nDigits)
        for _ in 0..<nDigits {
            buf.append(base64Chars[Int(v % 64)])
            v /= 64
        }
        result.append(contentsOf: buf.reversed())
    }

    /// Convert IFC base-64 characters back to an unsigned integer.
    private static func cvFrom64(_ chars: [Character], start: Int, nDigits: Int) -> UInt32? {
        var result: UInt32 = 0
        for i in 0..<nDigits {
            guard let idx = base64Chars.firstIndex(of: chars[start + i]) else {
                return nil
            }
            result = result * 64 + UInt32(idx)
        }
        return result
    }
}
