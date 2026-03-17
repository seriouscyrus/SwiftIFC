import Foundation

struct SwiftCodeGenerator {
    let schema: IFCSchema
    let expressSchema: EXPRESSSchema?
    let outputDir: String

    init(schema: IFCSchema, expressSchema: EXPRESSSchema? = nil, outputDir: String) {
        self.schema = schema
        self.expressSchema = expressSchema
        self.outputDir = outputDir
    }

    func generate() throws {
        let fm = FileManager.default

        // Create output directories
        let entitiesDir = (outputDir as NSString).appendingPathComponent("Entities")
        try fm.createDirectory(atPath: outputDir, withIntermediateDirectories: true)
        try fm.createDirectory(atPath: entitiesDir, withIntermediateDirectories: true)

        // 1. Entity base
        let entityGen = EntityGenerator(schema: schema, expressSchema: expressSchema)
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

        // 6. STEP support (requires EXPRESS schema)
        if let express = expressSchema {
            try generateSTEPFiles(expressSchema: express)
        }

        print("\nCode generation complete!")
        print("  Output directory: \(outputDir)")
    }

    // MARK: - STEP Code Generation

    private func generateSTEPFiles(expressSchema: EXPRESSSchema) throws {
        // 6a. STEP protocol definitions
        let protocolGen = STEPProtocolGenerator()
        let protocolContent = protocolGen.generate()
        try write(protocolContent, to: "STEPProtocol.swift")
        print("  Generated STEPProtocol.swift")

        // 6b. STEP entity conformances
        let metadataGen = STEPMetadataGenerator(xsdSchema: schema, expressSchema: expressSchema)
        let conformances = metadataGen.generate()
        try write(conformances, to: "STEPEntityConformances.swift")
        print("  Generated STEPEntityConformances.swift")

        // 6c. STEP entity registry
        let registryGen = STEPRegistryGenerator(schema: schema)
        let registry = registryGen.generate()
        try write(registry, to: "STEPEntityRegistry.swift")
        print("  Generated STEPEntityRegistry.swift")

        // 6d. STEP SELECT encoding
        let selectEncGen = STEPSelectEncodingGenerator(schema: schema)
        let selectEnc = selectEncGen.generate()
        try write(selectEnc, to: "STEPSelectEncoding.swift")
        print("  Generated STEPSelectEncoding.swift")

        // 6e. STEP enum encoding
        let enumEncGen = STEPEnumEncodingGenerator(schema: schema)
        let enumEnc = enumEncGen.generate()
        try write(enumEnc, to: "STEPEnumEncoding.swift")
        print("  Generated STEPEnumEncoding.swift")
    }

    private func write(_ content: String, to fileName: String) throws {
        let filePath = (outputDir as NSString).appendingPathComponent(fileName)
        try content.write(toFile: filePath, atomically: true, encoding: .utf8)
    }
}
