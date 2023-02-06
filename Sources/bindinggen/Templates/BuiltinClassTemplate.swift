import Foundation

fileprivate let template = """
/// autogenerated

import godot_native

fileprivate var __godot_name_${className}: StringName! = nil

${classDoc}
public class ${classNameWithParents} {
    public class var __godot_name: StringName { __godot_name_${className} }

    public static let SIZE = ${classSize};

    public let opaque: UnsafeMutableRawPointer = .allocate(byteCount: SIZE, alignment: 4)

    ${staticConstructorDestructorDecl}

    public class func initialize_class() {
        // Init constructors before assigning __godot_name
        ${staticConstructorDestructorAssign}

        // At this point constructors must be assigned
        __godot_name_${className} = StringName(from: "${className}")
    }

    ${initializers}

    deinit {
        Self._destructor?(self._native_ptr())
        opaque.deallocate()
    }
}
"""


fileprivate let class_doc: RenderFunc = {
        sut, sizeItem, api, doc in
    return DocMultiLineRenderable(lines: [
        doc.brief_description,
        SKIP_LINE,
        doc.description
    ], indent: 0, prefix: "/// ")
}

fileprivate let class_init_typename: RenderFunc = {
        sut, sizeItem, api, doc in
    return MultiLineRenderable(lines: """

""".split(separator: "\n").map { String($0) },
                               indent: 4,
                               prefix: nil)
}

fileprivate let _constructor_decl: (ExtensionApi_BuiltinClass_Constructor)->Renderable = {
    
    return MultiLineRenderable(lines: [
        "static var _constructor_\($0.index): GDExtensionPtrConstructor? = nil",
    ], indent: 4, prefix: nil)
}

fileprivate let class_init_deinit_decl: RenderFunc =
{
    sut, sizeItem, api, doc in
    
    let constructor_decl: [any Renderable] = sut.constructors.map {
        _constructor_decl($0)
    }
    
    let destructor_decl: [any Renderable] = [
        MultiLineRenderable(lines: [
            "static var _destructor: GDExtensionPtrDestructor? = nil",
        ], indent: 4, prefix: nil)
    ]
    
    return MultiLineRenderable(lines:
                                constructor_decl + destructor_decl,
                               indent: 4,
                               prefix: nil)
}

fileprivate let class_init_deinit_assign: RenderFunc =
{
    sut, sizeItem, api, doc in
    
    let variant = "GDEXTENSION_VARIANT_TYPE_\(sut.name.upperSnakeCased())"
    
    let constructor_decl: [any Renderable] = sut.constructors.map {
        MultiLineRenderable(lines: [
            "\(sut.name)._constructor_\($0.index) =  \(sut.name).interface.pointee.variant_get_ptr_constructor(\(variant), \($0.index))",
            "assert(\(sut.name)._constructor_\($0.index) != nil)"
        ], indent: 0, prefix: nil)
    }
    
    let destructor_decl: [any Renderable] = [
        MultiLineRenderable(lines: [
            "\(sut.name)._destructor =  \(sut.name).interface.pointee.variant_get_ptr_destructor(\(variant))",
            "assert(\(sut.name)._destructor != nil)"
        ], indent: 0, prefix: nil)
    ]
    
    return MultiLineRenderable(lines:
                                constructor_decl + destructor_decl,
                               indent: 8,
                               prefix: nil)
}

fileprivate var initializers: RenderFunc = {
    sut, sizeItem, api, doc in
    
    let constr_inits: [MultiLineRenderable] = sut.constructors.map { c in
        let args = (c.arguments ?? [])

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

        let argSig = args.map { "\($0.name): \($0.type)" }
        let argInit = args.map { arg in
            if marshalled.contains(arg.name) {
                return "\(arg.name)_nativeStr"
            } else {
                return ".init(\(arg.name)._native_ptr())"
            }
        }
        
        func _get_constructor_doc() -> String {
            let cdocs: [Doc_Constructor] = doc.constructors?.constructor ?? []
            let _empty = "/// Godot documentation missing"
            guard cdocs.count > c.index else {
                return _empty
            }

            let cd = cdocs[c.index]

            var res: [String] = []
            if cd.description.isEmpty {
                res.append(_empty)
            } else {
                res.append("\(cd.description)")
            }
            for cdarg in cd.`params` {
                res.append("- Parameter \(cdarg.name): \(cdarg.type)")
            }
            return res.joined(separator: ", ")
        }

        
        return MultiLineRenderable(lines:
        [
            DocMultiLineRenderable(lines: [
                _get_constructor_doc()
            ], indent: 0, prefix: "/// ")
        ] + """
public init(\(argSig.joined(separator: ", "))) {
    \(_prepMarshalledStrings())

    let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: \(args.count))
    defer { args.deallocate() }
    _ = args.initialize(from: [
        \(argInit.joined(separator: ", "))
    ])
    Self._constructor_\(c.index)!(self._native_ptr(), .init(args.baseAddress!))
}
""".split(separator: "\n").map { String($0) }, indent: 0, prefix: nil)
    }
    
    return MultiLineRenderable(lines: constr_inits,
                               indent: 4,
                               prefix: nil)
}

fileprivate var class_name_with_parents: RenderFunc = {
    sut, sizeItem, api, doc in
    
    return "\(sut.name) : BuiltinClass"
}

fileprivate typealias RenderFunc = (ExtensionApi_BuiltinClass, ExtensionApi_BuiltinClassSizeConfiguration_Item, ExtensionApi, Doc)->Renderable

struct BuiltinClassTemplate {
    let sut: ExtensionApi_BuiltinClass
    let sizes: ExtensionApi_BuiltinClassSizeConfiguration
    let memberOffsets: ExtensionApi_BuiltinClassMemberOffsetsConfiguration
    let full: ExtensionApi
    let doc: Doc
    
    fileprivate let transforms: [String: RenderFunc] = [
        "classNameWithParents": class_name_with_parents,
        "classDoc": class_doc,
        "className": { s, _, _, _ in s.name },
        "classSize": { _, s, _, _ in s.size },
        "staticConstructorDestructorDecl": class_init_deinit_decl,
        "staticConstructorDestructorAssign": class_init_deinit_assign,
        "initializers": initializers
    ]
    
    func render() -> String {
        guard let sizeItem = sizes.sizes.first(where: { $0.name == sut.name}) else {
            fatalError("Size information not found for builtin \(sut.name)")
        }
        
        return transforms.reduce(template) {
            res, renderFunc in
            try! res.replacing("${\(renderFunc.key)}", with: renderFunc.value(sut, sizeItem, full, doc).render())
        }
    }
    
    
}
