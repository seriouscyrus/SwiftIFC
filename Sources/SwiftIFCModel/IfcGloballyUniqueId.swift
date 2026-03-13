//
//  IfcGloballyUniqueId.swift
//  SwiftIFC
//
//  Created by George Brown on 12.03.2026.
//
import Foundation

extension IFC4X3 {
    public static func compressUUID(_ uuid: UUID) -> String {
        var bytes: UInt8 = 0
        let nsuuid = NSUUID(uuidString: uuid.uuidString)!
        nsuuid.getBytes(&bytes)

        let data = Data(bytes: &bytes, count: 16)
        let base64 = data.base64EncodedString()
        return base64.replacingOccurrences(of: "=", with: "")
    }

    public static func decompressUUID(_ string: String) -> UUID? {
        let shortenedIdentifierWithDoubleEquals = string + "=="
        guard let data = Data(base64Encoded: shortenedIdentifierWithDoubleEquals) else {
            return nil
        }
        let uuidBytes = data.withUnsafeBytes { $0.baseAddress?.assumingMemoryBound(to: UInt8.self)
        }
        let tempUuid = NSUUID(uuidBytes: uuidBytes)
        return UUID(uuidString: tempUuid.uuidString)
    }
}
