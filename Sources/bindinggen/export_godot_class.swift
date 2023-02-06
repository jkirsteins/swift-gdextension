import Foundation
import XMLCoder

func export_godot_class(
    _ sut: ExtensionApi_Class,
    _ full: ExtensionApi
) {
    guard let doc = get_docs(sut.name) else {
        fatalError("Missing docs for \(sut.name)")
    }
    let output = ClassTemplate(sut: sut, full: full, doc: doc).render()
    
    let dirurl = URL(filePath: "gen/class")
    let fileurl = dirurl.appending(component: "\(sut.name).swift")
    
    try! FileManager.default.createDirectory(at: dirurl, withIntermediateDirectories: true)
    
    try! output.write(to: fileurl, atomically: true, encoding: String.Encoding.utf8)
    
    print("    generated \(fileurl.path)")
}
