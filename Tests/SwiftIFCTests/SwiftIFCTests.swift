import Foundation
import Testing
@testable import SwiftIFCModel
@testable import SwiftIFC

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

// MARK: - STEP String Escaping Tests

@Test func stepStringEscapingRoundTrip() {
    let testStrings = [
        "Hello World",
        "It's a test",
        "Backslash \\ here",
        "Unicode: äöü",
        "Mixed: hello 'world' \\end",
        "",
        "Simple ASCII",
    ]
    for original in testStrings {
        let encoded = stepEncodeString(original)
        let decoded = stepDecodeString(encoded)
        #expect(decoded == original, "Round-trip failed for: \(original)")
    }
}

// MARK: - STEP Lexer Tests

@Test func stepLexerBasicTokens() {
    var lexer = STEPLexer("#1=IFCWALL('name',$,.STEEL.,42,3.14);")
    var tokens: [STEPToken] = []
    while true {
        let t = lexer.nextToken()
        tokens.append(t)
        if t == .eof { break }
    }
    // #1 = IFCWALL ( 'name' , $ , .STEEL. , 42 , 3.14 ) ; eof
    // But note: the lexer needs DATA context to emit .typeName for IFCWALL
    // Without DATA context, IFCWALL appears as .keyword
    #expect(tokens[0] == .entityRef(1))
    #expect(tokens[1] == .equals)
    // After =, the lexer expects a type name but needs DATA section context
}

@Test func stepLexerDataSection() {
    let input = "DATA;\n#1=IFCWALL('test',$,.SOLIDWALL.);\nENDSEC;"
    var lexer = STEPLexer(input)
    var tokens: [STEPToken] = []
    while true {
        let t = lexer.nextToken()
        tokens.append(t)
        if t == .eof { break }
    }
    // DATA ; #1 = IFCWALL ( 'test' , $ , .SOLIDWALL. ) ; ENDSEC ; eof
    #expect(tokens[0] == .keyword("DATA"))
    #expect(tokens[1] == .semicolon)
    #expect(tokens[2] == .entityRef(1))
    #expect(tokens[3] == .equals)
    #expect(tokens[4] == .typeName("IFCWALL"))
    #expect(tokens[5] == .leftParen)
    #expect(tokens[6] == .string("test"))
    #expect(tokens[7] == .comma)
    #expect(tokens[8] == .dollar)
    #expect(tokens[9] == .comma)
    #expect(tokens[10] == .enumeration("SOLIDWALL"))
    #expect(tokens[11] == .rightParen)
    #expect(tokens[12] == .semicolon)
    #expect(tokens[13] == .keyword("ENDSEC"))
}

// MARK: - STEP Parser Tests

@Test func stepParserMinimalFile() throws {
    let input = """
    ISO-10303-21;
    HEADER;
    FILE_DESCRIPTION(('ViewDefinition [CoordinationView]'),'2;1');
    FILE_NAME('test.ifc','2024-01-01T00:00:00Z',('Author'),('Org'),'SwiftIFC','SwiftIFC','none');
    FILE_SCHEMA(('IFC4X3_ADD2'));
    ENDSEC;
    DATA;
    ENDSEC;
    END-ISO-10303-21;
    """
    let result = try STEPParser.parse(input)

    #expect(result.header.description.descriptions == ["ViewDefinition [CoordinationView]"])
    #expect(result.header.description.implementationLevel == "2;1")
    #expect(result.header.name.name == "test.ifc")
    #expect(result.header.name.author == ["Author"])
    #expect(result.header.schema == ["IFC4X3_ADD2"])
    #expect(result.entities.isEmpty)
}

@Test func stepParserWithEntities() throws {
    let input = """
    ISO-10303-21;
    HEADER;
    FILE_DESCRIPTION((''),'2;1');
    FILE_NAME('','',(''),(''),'','','');
    FILE_SCHEMA(('IFC4X3_ADD2'));
    ENDSEC;
    DATA;
    #1=IFCPERSON($,$,'John Doe',$,$,$,$,$);
    #2=IFCORGANIZATION($,'ACME Corp',$,$,$);
    #3=IFCPERSONANDORGANIZATION(#1,#2,$);
    ENDSEC;
    END-ISO-10303-21;
    """
    let result = try STEPParser.parse(input)

    #expect(result.entities.count == 3)
    #expect(result.entities[1]?.typeName == "IFCPERSON")
    #expect(result.entities[2]?.typeName == "IFCORGANIZATION")
    #expect(result.entities[3]?.typeName == "IFCPERSONANDORGANIZATION")

    // Check that #3 has entity refs to #1 and #2
    let attrs3 = result.entities[3]!.attributes
    if case .entityRef(1) = attrs3[0] {} else {
        Issue.record("Expected entityRef(1) at position 0, got \(attrs3[0])")
    }
    if case .entityRef(2) = attrs3[1] {} else {
        Issue.record("Expected entityRef(2) at position 1, got \(attrs3[1])")
    }
}

// MARK: - STEP Encoder Tests

@Test func stepEncoderBasicEntity() throws {
    let person = IFC4X3.IfcPerson()
    person.familyName = "Doe"
    person.givenName = "John"

    let encoder = STEPEncoder()
    let output = try encoder.encode(entities: [person])

    #expect(output.contains("IFCPERSON"))
    #expect(output.contains("'Doe'"))
    #expect(output.contains("'John'"))
    #expect(output.contains("ISO-10303-21;"))
    #expect(output.contains("END-ISO-10303-21;"))
}

@Test func stepEncoderEntityReferences() throws {
    let person = IFC4X3.IfcPerson()
    person.familyName = "Doe"

    let org = IFC4X3.IfcOrganization()
    org.name = "ACME"

    let personAndOrg = IFC4X3.IfcPersonAndOrganization()
    personAndOrg.thePerson = person
    personAndOrg.theOrganization = org

    let encoder = STEPEncoder()
    let output = try encoder.encode(entities: [personAndOrg])

    // Should contain all three entities since they're reachable
    #expect(output.contains("IFCPERSON"))
    #expect(output.contains("IFCORGANIZATION"))
    #expect(output.contains("IFCPERSONANDORGANIZATION"))
    // Entity references should appear as #N
    #expect(output.contains("#"))
}

@Test func stepEncoderDerivedOverride() throws {
    // IfcSIUnit has derivedOverrides for "dimensions" (parent IfcNamedUnit attribute)
    let unit = IFC4X3.IfcSIUnit()
    unit.unitType = .lengthunit
    unit.name = .metre

    let encoder = STEPEncoder()
    let output = try encoder.encode(entities: [unit])

    // The output should contain * for the derived dimensions attribute
    #expect(output.contains("IFCSIUNIT(*"))
}

@Test func stepEncoderEnumValues() throws {
    let wall = IFC4X3.IfcWall()
    wall.globalId = "0YvctVUKr0kugbFTf53O9L"
    wall.predefinedType = .solidwall

    let encoder = STEPEncoder()
    let output = try encoder.encode(entities: [wall])

    #expect(output.contains(".SOLIDWALL."))
    #expect(output.contains("'0YvctVUKr0kugbFTf53O9L'"))
}

// MARK: - STEP Decoder Tests

@Test func stepDecoderBasicFile() throws {
    let input = """
    ISO-10303-21;
    HEADER;
    FILE_DESCRIPTION(('ViewDefinition [CoordinationView]'),'2;1');
    FILE_NAME('test.ifc','2024-01-01T00:00:00Z',('Author'),('Org'),'SwiftIFC','SwiftIFC','none');
    FILE_SCHEMA(('IFC4X3_ADD2'));
    ENDSEC;
    DATA;
    #1=IFCPERSON($,'Doe','John',$,$,$,(),());
    ENDSEC;
    END-ISO-10303-21;
    """

    let decoder = STEPDecoder()
    let file = try decoder.decode(input)

    #expect(file.entities.count == 1)
    let person = try #require(file.entities[1] as? IFC4X3.IfcPerson)
    #expect(person.familyName == "Doe")
    #expect(person.givenName == "John")
}

@Test func stepDecoderEntityReferences() throws {
    let input = """
    ISO-10303-21;
    HEADER;
    FILE_DESCRIPTION((''),'2;1');
    FILE_NAME('','',(''),(''),'','','');
    FILE_SCHEMA(('IFC4X3_ADD2'));
    ENDSEC;
    DATA;
    #1=IFCPERSON($,'Doe','John',$,$,$,(),());
    #2=IFCORGANIZATION($,'ACME Corp',$,$,$);
    #3=IFCPERSONANDORGANIZATION(#1,#2,$);
    ENDSEC;
    END-ISO-10303-21;
    """

    let decoder = STEPDecoder()
    let file = try decoder.decode(input)

    #expect(file.entities.count == 3)

    let personAndOrg = try #require(file.entities[3] as? IFC4X3.IfcPersonAndOrganization)
    let person = try #require(personAndOrg.thePerson)
    let org = try #require(personAndOrg.theOrganization)

    #expect(person.familyName == "Doe")
    #expect(org.name == "ACME Corp")

    // Verify these are the same instances as in the entity map
    #expect(person === file.entities[1])
    #expect(org === file.entities[2])
}

@Test func stepDecoderDerivedOverride() throws {
    let input = """
    ISO-10303-21;
    HEADER;
    FILE_DESCRIPTION((''),'2;1');
    FILE_NAME('','',(''),(''),'','','');
    FILE_SCHEMA(('IFC4X3_ADD2'));
    ENDSEC;
    DATA;
    #1=IFCSIUNIT(*,.LENGTHUNIT.,$,.METRE.);
    ENDSEC;
    END-ISO-10303-21;
    """

    let decoder = STEPDecoder()
    let file = try decoder.decode(input)

    let unit = try #require(file.entities[1] as? IFC4X3.IfcSIUnit)
    #expect(unit.unitType == .lengthunit)
    #expect(unit.name == .metre)
    // dimensions should be nil since it's derived
    #expect(unit.dimensions == nil)
}

// MARK: - Round-Trip Tests

@Test func stepRoundTripSimpleEntity() throws {
    // Create entities
    let person = IFC4X3.IfcPerson()
    person.familyName = "Doe"
    person.givenName = "John"

    // Encode
    let encoder = STEPEncoder()
    let stepString = try encoder.encode(entities: [person])

    // Decode
    let decoder = STEPDecoder()
    let file = try decoder.decode(stepString)

    // Verify
    #expect(file.entities.count == 1)
    let decoded = file.entities.values.first as? IFC4X3.IfcPerson
    #expect(decoded?.familyName == "Doe")
    #expect(decoded?.givenName == "John")
}

@Test func stepRoundTripWithReferences() throws {
    let person = IFC4X3.IfcPerson()
    person.familyName = "Smith"

    let org = IFC4X3.IfcOrganization()
    org.name = "BuildCo"

    let personAndOrg = IFC4X3.IfcPersonAndOrganization()
    personAndOrg.thePerson = person
    personAndOrg.theOrganization = org

    // Encode
    let encoder = STEPEncoder()
    let stepString = try encoder.encode(entities: [personAndOrg])

    // Decode
    let decoder = STEPDecoder()
    let file = try decoder.decode(stepString)

    // Verify
    #expect(file.entities.count == 3)

    let decodedPAO = file.entities.values
        .compactMap { $0 as? IFC4X3.IfcPersonAndOrganization }
        .first
    #expect(decodedPAO?.thePerson?.familyName == "Smith")
    #expect(decodedPAO?.theOrganization?.name == "BuildCo")
}

@Test func stepRoundTripEnumAndDerived() throws {
    let unit = IFC4X3.IfcSIUnit()
    unit.unitType = .lengthunit
    unit.name = .metre
    unit.prefix = .milli

    // Encode
    let encoder = STEPEncoder()
    let stepString = try encoder.encode(entities: [unit])

    // Verify * is present for derived attribute
    #expect(stepString.contains("*"))
    #expect(stepString.contains(".LENGTHUNIT."))
    #expect(stepString.contains(".MILLI."))
    #expect(stepString.contains(".METRE."))

    // Decode
    let decoder = STEPDecoder()
    let file = try decoder.decode(stepString)

    let decoded = file.entities.values
        .compactMap { $0 as? IFC4X3.IfcSIUnit }
        .first
    #expect(decoded?.unitType == .lengthunit)
    #expect(decoded?.name == .metre)
    #expect(decoded?.prefix == .milli)
}

@Test func sampleFileDecodeEncode() throws {
    let url = try #require(Bundle.module.url(forResource: "KIT-Simple-Road-Test-Web-IFC4x3_RC2", withExtension: "ifc"))
    let file1 = try STEPDecoder().decode(contentsOf: url)
    for (key, entity) in file1.entities.enumerated() {
        print("\(key): \(entity)")
    }
}
