//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 06/02/2023.
//

import Foundation

fileprivate let template = """
${classDoc}
public class ${classNameWithParents} {
    ${staticConstructorDestructorDecl}
}
"""

fileprivate func class_name_with_parents(_ sut: ExtensionApi_Class, _ api: ExtensionApi, _ doc: Doc)->Renderable {
    let parentName = sut.inherits ?? "Wrapped"
    return "\(sut.name) : \(parentName)"
}

fileprivate func class_doc(_ sut: ExtensionApi_Class, _ api: ExtensionApi, _ doc: Doc)->Renderable {
    return DocMultiLineRenderable(lines: [
        doc.brief_description,
        SKIP_LINE,
        doc.description
    ], indent: 0, prefix: "/// ")
}

fileprivate func class_init_typename(_ sut: ExtensionApi_Class, _ api: ExtensionApi, _ doc: Doc) -> Renderable {
    return MultiLineRenderable(lines: """

""".split(separator: "\n").map { String($0) },
                               indent: 4,
                               prefix: nil)
}

fileprivate func class_init_deinit_decl(_ sut: ExtensionApi_Class, _ api: ExtensionApi, _ doc: Doc) -> Renderable
{
    
//    public Node() : base(__godot_name) { }
//        protected Node(StringName type) : base(type) { }
//        protected Node(void* ptr) : base(ptr) { }
//        private static Node Construct(void* ptr) => new Node(ptr);
//
    return MultiLineRenderable(lines: [
        class_init_typename(sut, api, doc)
    ],
                               indent: 4,
                               prefix: nil)
}

fileprivate typealias RenderFunc = (ExtensionApi_Class, ExtensionApi, Doc)->Renderable

struct ClassTemplate {
    let sut: ExtensionApi_Class
    let full: ExtensionApi
    let doc: Doc
    
    fileprivate let transforms: [String: RenderFunc] = [
        "classNameWithParents": class_name_with_parents,
        "classDoc": class_doc,
        "staticConstructorDestructorDecl": class_init_deinit_decl
    ]
    
    func render() -> String {
        transforms.reduce(template) {
            res, renderFunc in
            try! res.replacing("${\(renderFunc.key)}", with: renderFunc.value(sut, full, doc).render())
        }
    }
    
    
}
