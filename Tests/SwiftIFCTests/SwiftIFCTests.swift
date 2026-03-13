import Foundation
import Testing
@testable import SwiftIFCModel

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
}

@Test func ifcUUID() async throws {
        let uuid = UUID()
        let compressed = IFC4X3.compressUUID(uuid)
        let decompressed = try #require(IFC4X3.decompressUUID(compressed))
        #expect(compressed.count == 22)
        #expect(uuid == decompressed)
}
