fileprivate let template = """
import godot_native

public func initialize_classes(_ builtin: Bool, _ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
    if (builtin) {
        Wrapped.initialize_class(ginit, p_level)
        ${builtinInitCalls}
    } else {
        ${classInitCalls}
    }
}
"""

func export_module_initializers(
    _ full: ExtensionApi,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration
) {
    let builtinInits_withoutStrings = full.builtin_classes.filter {
        // Skip String and StringName, as these
        // need to be initialized first
        !["String", "StringName"].contains($0.name)
    }.map {
        ConfigurationSpecificType(config: sizes, type: $0.name)
    }.filter {
        !$0.isSwiftType
    }.map { TemplatedRenderable(
            variables: [
                "name": $0.sanitizedType
            ],
            template: """
${name}.initialize_class(ginit, p_level)
${name}.initialize_godot_name()
""",
            indent: 0
        )
    }
    
    let builtinInits: [any Renderable] = [
        "// String and StringName first ...",
        "godot.String.initialize_class(ginit, p_level)",
        "StringName.initialize_class(ginit, p_level)",
        "godot.String.initialize_godot_name()",
        "StringName.initialize_godot_name()",
        "// -- rest"
    ] + builtinInits_withoutStrings
    
    let classInits = full.classes.map { TemplatedRenderable(
            variables: [
                "name": ConfigurationSpecificType(config: sizes, type: $0.name).sanitizedType
            ],
            template: "${name}.initialize_class(ginit, p_level)",
            indent: 0
        )
    }
    
    let output = TemplatedRenderable(
        variables: [
            "builtinInitCalls": MultiLineRenderable(lines: builtinInits, indent: 8, prefix: nil),
            "classInitCalls": MultiLineRenderable(lines: classInits, indent: 8, prefix: nil)
        ],
        template: template,
        indent: 0).render()
    
//    let doc = get_docs(sut.name)
//
//    let enumOutput = StructRenderable(config: sizes, st: sut)
//    let docOutput = DocRenderable_Header(doc: doc, indent: 0)
//
//    let combined = MultiLineRenderable(lines: [
//        docOutput,
//        enumOutput
//    ], indent: 0, prefix: nil)
//
//    let output = combined.render()
//
    
    print("    generated \(_store(output, "module", "initializers").path)")
}
