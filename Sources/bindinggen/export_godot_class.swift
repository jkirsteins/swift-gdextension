import Foundation
import XMLCoder

func export_godot_class(
    _ sut: ExtensionApi_Class,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ full: ExtensionApi
) {
    let doc = get_docs(sut.name) ?? Doc(brief_description: "MISSING", description: "MISSING", constructors: nil, methods: nil, operators: nil)
    let output = ClassTemplate(sut: sut, full: full, sizes: sizes, doc: doc).render()
    
    let dirurl = URL(filePath: "gen/class")
    let fileurl = dirurl.appending(component: "\(sut.name).swift")
    
    try! FileManager.default.createDirectory(at: dirurl, withIntermediateDirectories: true)
    
    try! output.write(to: fileurl, atomically: true, encoding: String.Encoding.utf8)
    
    print("    generated \(fileurl.path)")
}
