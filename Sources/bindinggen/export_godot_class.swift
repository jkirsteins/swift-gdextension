import Foundation
import XMLCoder

func export_godot_class(
    _ sut: ExtensionApi_Class,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ full: ExtensionApi
) {
    let doc = get_docs(sut.name) ?? Doc(brief_description: "MISSING", description: "MISSING", constructors: nil, methods: nil, operators: nil)
    let output = ClassTemplate(sut: sut, full: full, sizes: sizes, doc: doc).render()
    
    print("    generated \(_store(output, "class", sut.name).path)")
}
