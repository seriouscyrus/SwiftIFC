import Foundation

func main() throws {
    let args = CommandLine.arguments

    guard args.count >= 3 else {
        print("Usage: IFCCodeGen <xsd-path> <output-dir>")
        print("  xsd-path:   Path to IFC4X3_ADD2.xsd")
        print("  output-dir: Directory for generated Swift files")
        exit(1)
    }

    let xsdPath = args[1]
    let outputDir = args[2]

    // Resolve paths relative to current working directory
    let fm = FileManager.default
    let cwd = fm.currentDirectoryPath
    let resolvedXSD = (xsdPath as NSString).standardizingPath.hasPrefix("/")
        ? xsdPath
        : (cwd as NSString).appendingPathComponent(xsdPath)
    let resolvedOutput = (outputDir as NSString).standardizingPath.hasPrefix("/")
        ? outputDir
        : (cwd as NSString).appendingPathComponent(outputDir)

    guard fm.fileExists(atPath: resolvedXSD) else {
        print("Error: XSD file not found at \(resolvedXSD)")
        exit(1)
    }

    print("IFC Code Generator")
    print("  XSD: \(resolvedXSD)")
    print("  Output: \(resolvedOutput)")
    print("")

    // Parse XSD
    print("Parsing XSD schema...")
    let parser = XSDParser()
    let xsdURL = URL(fileURLWithPath: resolvedXSD)
    let schema = try parser.parse(contentsOf: xsdURL)

    print("  Found \(schema.complexTypes.count) entity types")
    print("  Found \(schema.simpleTypes.count) simple types")
    print("  Found \(schema.groups.count) SELECT types")

    print("")

    // Generate code
    print("Generating Swift code...")
    let generator = SwiftCodeGenerator(schema: schema, outputDir: resolvedOutput)
    try generator.generate()
}

try main()
