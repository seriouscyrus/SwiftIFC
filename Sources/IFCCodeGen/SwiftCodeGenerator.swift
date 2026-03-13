import Foundation

struct SwiftCodeGenerator {
    let schema: IFCSchema
    let outputDir: String

    func generate() throws {
        let fm = FileManager.default

        // Create output directories
        let entitiesDir = (outputDir as NSString).appendingPathComponent("Entities")
        try fm.createDirectory(atPath: outputDir, withIntermediateDirectories: true)
        try fm.createDirectory(atPath: entitiesDir, withIntermediateDirectories: true)

        // 1. Entity base
        let entityGen = EntityGenerator(schema: schema)
        let entityBase = entityGen.generateEntityBase()
        try write(entityBase, to: "IFCEntityBase.swift")
        print("  Generated IFCEntityBase.swift")

        // 2. Type aliases
        let typeAliasGen = TypeAliasGenerator(schema: schema)
        let typeAliases = typeAliasGen.generate()
        try write(typeAliases, to: "IFCTypeAliases.swift")
        let aliasCount = schema.simpleTypes.values.filter {
            if case .enumeration = $0.kind { return false }
            return true
        }.count
        print("  Generated IFCTypeAliases.swift (\(aliasCount) type aliases)")

        // 3. Enumerations
        let enumGen = EnumGenerator(schema: schema)
        let enums = enumGen.generate()
        try write(enums, to: "IFCEnumerations.swift")
        let enumCount = schema.simpleTypes.values.filter {
            if case .enumeration = $0.kind { return true }
            return false
        }.count
        print("  Generated IFCEnumerations.swift (\(enumCount) enums)")

        // 4. SELECT types
        let selectGen = SelectTypeGenerator(schema: schema)
        let selects = selectGen.generate()
        try write(selects, to: "IFCSelectTypes.swift")
        print("  Generated IFCSelectTypes.swift (\(schema.groups.count) SELECT types)")

        // 5. Entity classes
        var entityCount = 0
        let sortedTypes = schema.complexTypes.keys.sorted()
        for typeName in sortedTypes {
            guard let content = entityGen.generate(for: typeName) else { continue }
            let filePath = (entitiesDir as NSString).appendingPathComponent("\(typeName).swift")
            try content.write(toFile: filePath, atomically: true, encoding: .utf8)
            entityCount += 1
        }
        print("  Generated \(entityCount) entity class files in Entities/")

        print("\nCode generation complete!")
        print("  Output directory: \(outputDir)")
    }

    private func write(_ content: String, to fileName: String) throws {
        let filePath = (outputDir as NSString).appendingPathComponent(fileName)
        try content.write(toFile: filePath, atomically: true, encoding: .utf8)
    }
}
