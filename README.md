//
//  README.md
//  SwiftIFC
//
//  Created by George Brown on 17.03.2026.
//
# SwiftIFC

This swift package contains a code generation tool and output for the IFC standard IFC 4.2 generated from the XSD schema available [here](https://technical.buildingsmart.org/standards/ifc/ifc-schema-specifications/) .
                                                                    
The code generator produces both swift classes for the IFC Schema, and an encoder and decoder for the IFC STEP file format using the generated classes.
                                                                                                                                          
Everything was written by Claude using the XCode Agent, I provided prompts, analysed results and gave feedback.
                                                                                                                                          
## Claude describes the package in its own words
SwiftIFC is a pure Swift package for working with IFC (Industry Foundation Classes) building and infrastructure data. It has zero external dependencies — only Foundation — and can run on any platform Swift supports.

The package has three modules:

- **IFCCodeGen** — A code generation tool that reads the IFC4X3 ADD2 XSD and EXPRESS schemas and produces Swift source files. It generates ~880 entity classes, STEP attribute descriptors with getters/setters, and a factory registry for all concrete and abstract entity types.

- **SwiftIFCModel** — The generated output. Every IFC entity (from `IfcWall` to `IfcAlignment`) is a Swift class with typed properties, proper inheritance chains, and SELECT types modeled as enums. The module also contains the STEP serialization metadata that the encoder and decoder rely on.

- **SwiftIFC** — A STEP Physical File (ISO 10303-21) encoder and decoder. It reads `.ifc` files into a typed object graph and writes them back out. After decoding, inverse attributes are resolved automatically — so you can navigate from an `IfcProject` down through the spatial hierarchy without manually chasing relationship entities.

### Usage

```swift
import SwiftIFC
import SwiftIFCModel

// Decode an IFC file
let file = try STEPDecoder().decode(contentsOf: url)

// Access the project — the single root of every IFC file
if let project = file.project {
    print(project.name ?? "Unnamed project")

    // Walk the spatial hierarchy via inverse attributes
    for rel in project.isDecomposedBy {
        for site in rel.relatedObjects {
            print("Site: \(site.name ?? "")")

            for rel2 in site.isDecomposedBy {
                for building in rel2.relatedObjects {
                    print("  Building/Road: \(building.name ?? "")")
                }
            }
        }
    }
}

// Access any entity by its STEP ID (#N)
if let wall = file.entities[42] as? IFC4X3.IfcWall {
    print(wall.globalId ?? "")
}

// Encode entities back to a STEP file string
let output = try STEPEncoder().encode(entities: [project])

// Or encode the full STEPFile (preserving original IDs)
let output2 = try STEPEncoder().encode(file: file)
```

### What works

- Decoding real-world IFC4X3 files into typed Swift objects
- Forward attributes (geometry, placement, properties, etc.)
- Inverse attribute resolution (isDecomposedBy, containsElements, isDefinedBy, etc.)
- Encoding from a project root — relationship entities are collected automatically
- Idempotent round-trips: decode, encode, decode again produces the same result
- Deprecated/unknown entity types are skipped gracefully during decode

### Known limitations

- Some XSD-derived attributes have incorrect cardinality (single instead of array) where the EXPRESS schema defines a SET or LIST. This causes a small number of entities to be unreachable from the project graph after decode. The code generator needs to cross-reference EXPRESS collection types more thoroughly.
- Only IFC4X3 ADD2 is currently supported. The schema files and code generator could be adapted for IFC4, IFC4X2, etc.

