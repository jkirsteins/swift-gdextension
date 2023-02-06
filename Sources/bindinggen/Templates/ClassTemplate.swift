//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 06/02/2023.
//

import Foundation

fileprivate let template = """
import godot_native

fileprivate var __godot_name_${className}: StringName! = nil

${classDoc}
public class ${classNameWithParents} {

    ${nestedEnums}

    public override class var __godot_name: StringName { __godot_name_${className} }

    ${staticMethodBindingDecl}
    
    public override class func initialize_class() {
        __godot_name_${className} = StringName(from: "${className}")

        ${staticMethodBindingAssign_nonVirtual}
    }

    ${instanceMethods}
}
"""

fileprivate let class_name_with_parents: RenderFunc = {
    sut, sizes, api, doc in
    
    let parentName = sut.inherits ?? "Wrapped"
    return "\(sut.name) : \(parentName)"
}

fileprivate let class_doc: RenderFunc = {
    sut, sizes, api, doc in
    return DocMultiLineRenderable(lines: [
        doc.brief_description,
        SKIP_LINE,
        doc.description
    ], indent: 0, prefix: "/// ")
}

fileprivate let class_static_init: RenderFunc = {
    sut, sizes, api, doc in
    return MultiLineRenderable(lines: """
public override class func create(from ptr: UnsafeRawPointer) -> \(sut.name) {
    return \(sut.name)(from: ptr)
}
""".split(separator: "\n").map { String($0) },
                               indent: 0,
                               prefix: nil)
}

fileprivate let class_init_deinit_decl: RenderFunc = {
    sut, sizes, api, doc in
    
//    public Node() : base(__godot_name) { }
//        protected Node(StringName type) : base(type) { }
//        protected Node(void* ptr) : base(ptr) { }
//        private static Node Construct(void* ptr) => new Node(ptr);
//
    return MultiLineRenderable(lines: [
        class_static_init(sut, sizes, api, doc)
    ],
                               indent: 4,
                               prefix: nil)
}

fileprivate typealias RenderFunc = (ExtensionApi_Class, ExtensionApi_BuiltinClassSizeConfiguration, ExtensionApi, Doc)->Renderable

fileprivate let staticMethodBindingDecl: RenderFunc = {
    sut, sizes, api, doc in
    
    let methods = sut.methods ?? []
    let renderables = methods.map { m in
        "static var _method_\(m.name)_\(m.hash ?? 0): GDExtensionMethodBindPtr! = nil"
    }
    
    return MultiLineRenderable(lines: renderables, indent: 4, prefix: nil)
}

fileprivate let staticMethodBindingAssign_nonVirtual: RenderFunc = {
    sut, sizes, api, doc in
    let methods = sut.methods ?? []
    let renderables = methods.flatMap { m in
        let m_name = "_method_\(m.name)_\(m.hash ?? 0)"
        
        guard let hash = m.hash else {
            // virtuals?
            return [String]()
        }
        
        return [
//            var _name_0 = StringName(from: "method_name");
//            self.interface.pointee.classdb_get_method_bind(
//                __godot_name._native_ptr(),
//                _name_0._native_ptr(),
//                123
//            )
                
            "let \(m_name)_name = StringName(from: \"\(m.name)\")",
            "self.\(m_name) = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), \(m_name)_name._native_ptr(), \(hash))",
            "assert(\(sut.name).\(m_name) != nil)"
        ]
    }
    
    return MultiLineRenderable(lines: renderables, indent: 8, prefix: nil)
}

fileprivate func instanceMethod(_ method: ExtensionApi_Class_Method, _ sizes: ExtensionApi_BuiltinClassSizeConfiguration) -> any Renderable
{
    guard sizes.build_configuration == "double_64" else {
        fatalError("Proper native type sizing not implemented")
    }
    
    let remapType: [String:String] = [
        "bool": "Bool",
        "float": "Float64",
        "int": "Int64"
    ]
    
    let returnSig: String
    let argSig: [String]
    let argInit: [String]
    let argCount: Int
    let argMarshal: String
    
    func _sanitizeType(_ type: String) -> String {
        let clean = type.replacingOccurrences(of: "enum::", with: "")
        return remapType[clean] ?? clean
    }
    
    if let rv = method.return_value {
        returnSig = " -> \(_sanitizeType(rv.type))"
    } else {
        returnSig = ""
    }
    
    if let rawArgs = method.arguments {
        let args = rawArgs.map { kvp in
            ExtensionApi_Class_Method_Arg(
                    name: kvp.name,
                    type: _sanitizeType(kvp.type))
        }
        let marshalled = args.filter({ $0.type == "String" }).map { $0.name }
        
        func _prepMarshalledStrings() -> String {
            var res = [String]()
            let indent = "    "
            for marsh in marshalled {
                res.append("\(indent)let \(marsh)_nativeStr = \(marsh)._create_native__kept()")
                res.append("\(indent)defer { \(marsh)_nativeStr.deallocate() }")
            }
            guard res.count > 0 else { return "" }
            let result = res.joined(separator: "\n")
            return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
        }
        
        argCount = args.count
        argMarshal = _prepMarshalledStrings()
        argSig = args.map { "\($0.name): \($0.type)" }
        argInit = args.map { arg in
            if marshalled.contains(arg.name) {
                return "\(arg.name)_nativeStr"
            } else {
                return ".init(\(arg.name)._native_ptr())"
            }
        }
    } else {
        argCount = 0
        argSig = []
        argInit = []
        argMarshal = ""
    }
    
    let lines = """
public func \(method.name)(\(argSig.joined(separator: ", "))) \(returnSig) {
    \(argMarshal)
    let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: \(argCount))
    defer { args.deallocate() }
    _ = args.initialize(from: [
        \(argInit.joined(separator: ", "))
    ])
}
""".split(separator: "\n").map { String($0) }
    
    return MultiLineRenderable(lines: lines, indent: 0, prefix: nil)
}

fileprivate let instanceMethods: RenderFunc = {
    sut, sizes, api, doc in
    
    let methods = sut.methods ?? []
    
    let lines = methods.map { instanceMethod($0, sizes) }
    
    return MultiLineRenderable(lines: lines, indent: 4, prefix: nil)
}

fileprivate func renderEnum(_ en: ExtensionApi_Class_Enum) -> any Renderable
{
    guard !en.is_bitfield else {
        fatalError("bitfield enums not implemented")
    }
    
    let enumCases = en.values.map {
        "case \($0.name) = \($0.value)"
    }
    
    return """
public enum \(en.name) : Int32 {
    \(MultiLineRenderable(lines: enumCases, indent: 4, prefix: nil).render())
}
"""
}

fileprivate let nestedEnums: RenderFunc = {
    sut, sizes, api, doc in
    
    let enums = sut.enums ?? []
    
    let lines = enums.map { renderEnum($0) }
    return MultiLineRenderable(lines: lines, indent: 4, prefix: nil)
}

struct ClassTemplate {
    let sut: ExtensionApi_Class
    let full: ExtensionApi
    let sizes: ExtensionApi_BuiltinClassSizeConfiguration
    let doc: Doc
    
    fileprivate let transforms: [String: RenderFunc] = [
        "classNameWithParents": class_name_with_parents,
        "classDoc": class_doc,
        "staticMethodBindingDecl": staticMethodBindingDecl,
        "staticMethodBindingAssign_nonVirtual": staticMethodBindingAssign_nonVirtual,
        "className": { s, _, _, _ in s.name },
        "staticConstructorDestructorDecl": class_init_deinit_decl,
        "instanceMethods": instanceMethods,
        "nestedEnums": nestedEnums
    ]
    
    func render() -> String {
        transforms.reduce(template) {
            res, renderFunc in
            try! res.replacing("${\(renderFunc.key)}", with: renderFunc.value(sut, sizes, full, doc).render())
        }
    }
    
    
}
