import Foundation

func main() throws {
    let args = CommandLine.arguments

    guard args.count >= 3 else {
        print("Usage: IFCCodeGen <xsd-path> <output-dir> [express-path]")
        print("  xsd-path:     Path to IFC4X3_ADD2.xsd")
        print("  output-dir:   Directory for generated Swift files")
        print("  express-path: (Optional) Path to IFC4X3_ADD2.exp for STEP encoding support")
        exit(1)
    }

    let xsdPath = args[1]
    let outputDir = args[2]
    let expressPath = args.count >= 4 ? args[3] : nil

    // Resolve paths relative to current working directory
    let fm = FileManager.default
    let cwd = fm.currentDirectoryPath

    func resolvePath(_ path: String) -> String {
        (path as NSString).standardizingPath.hasPrefix("/")
            ? path
            : (cwd as NSString).appendingPathComponent(path)
    }

    let resolvedXSD = resolvePath(xsdPath)
    let resolvedOutput = resolvePath(outputDir)
    let resolvedExpress = expressPath.map { resolvePath($0) }

    guard fm.fileExists(atPath: resolvedXSD) else {
        print("Error: XSD file not found at \(resolvedXSD)")
        exit(1)
    }

    if let exp = resolvedExpress, !fm.fileExists(atPath: exp) {
        print("Error: EXPRESS file not found at \(exp)")
        exit(1)
    }

    print("IFC Code Generator")
    print("  XSD: \(resolvedXSD)")
    print("  Output: \(resolvedOutput)")
    if let exp = resolvedExpress {
        print("  EXPRESS: \(exp)")
    }
    print("")

    // Parse XSD
    print("Parsing XSD schema...")
    let parser = XSDParser()
    let xsdURL = URL(fileURLWithPath: resolvedXSD)
    let schema = try parser.parse(contentsOf: xsdURL)

    print("  Found \(schema.complexTypes.count) entity types")
    print("  Found \(schema.simpleTypes.count) simple types")
    print("  Found \(schema.groups.count) SELECT types")

    // Parse EXPRESS (optional)
    var expressSchema: EXPRESSSchema?
    if let expPath = resolvedExpress {
        print("\nParsing EXPRESS schema...")
        let expParser = EXPRESSParser()
        let expURL = URL(fileURLWithPath: expPath)
        expressSchema = try expParser.parse(contentsOf: expURL)
        print("  Found \(expressSchema!.entities.count) EXPRESS entities")
    }

    print("")

    // Generate code
    print("Generating Swift code...")
    let generator = SwiftCodeGenerator(
        schema: schema,
        expressSchema: expressSchema,
        outputDir: resolvedOutput
    )
    try generator.generate()
}

try main()
