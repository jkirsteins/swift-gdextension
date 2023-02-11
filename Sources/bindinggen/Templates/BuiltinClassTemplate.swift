import Foundation

fileprivate let template = """
/// autogenerated

import godot_native

fileprivate var __godot_name_${className}: StringName! = nil

${classDoc}
public class ${classNameWithParents} {

    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }

    ${nestedEnums}

    public class var __godot_name: StringName { __godot_name_${className} }

    public static let SIZE = ${classSize};

    public let opaque: UnsafeMutableRawPointer
    
    ${staticConstructorDestructorDecl}

    public class func initialize_class(_ p_interface: UnsafePointer<GDExtensionInterface>, _ p_library: GDExtensionClassLibraryPtr, _ p_level: GDExtensionInitializationLevel) {
        Self.interface = p_interface
        Self.library = p_library

        // Init constructors before assigning __godot_name
        ${staticConstructorDestructorAssign}
    }

    public class func initialize_godot_name() {
        // At this point constructors for String and StringName
        // must be assigned
        __godot_name_${className} = StringName(from: "${className}")
    }

    ${initializers}

    deinit {
        defer { opaque.deallocate() }
        guard let destructor = Self._destructor else {
            Self.interface.pointee.print_error("Class \("\\")(Swift.String(describing: self)) does not have the expected destructor")
            return
        }

        Self.interface.pointee.print_warning("TEST: called String destructor")

        destructor(self._native_ptr())
    }
}
"""


fileprivate let class_doc: RenderFunc = {
        sut, sizes, sizeItem, api, doc in
    return DocMultiLineRenderable(lines: [
        doc.brief_description,
        SKIP_LINE,
        doc.description
    ], indent: 0, prefix: "/// ")
}

fileprivate let class_init_typename: RenderFunc = {
        sut, sizes, sizeItem, api, doc in
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
    sut, sizes, sizeItem, api, doc in
    
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
    sut, sizes, sizeItem, api, doc in
    
    let variant = "GDEXTENSION_VARIANT_TYPE_\(sut.name.upperSnakeCased())"
    
    let constructor_decl: [any Renderable] = sut.constructors.map {
        MultiLineRenderable(lines: [
            "\(sut.name)._constructor_\($0.index) =  \(sut.name).interface.pointee.variant_get_ptr_constructor(\(variant), \($0.index))",
            "assert(\(sut.name)._constructor_\($0.index) != nil)"
        ], indent: 0, prefix: nil)
    }
    
    let destructor_decl: [any Renderable] = sut.has_destructor ? [
        MultiLineRenderable(lines: [
            "\(sut.name)._destructor =  \(sut.name).interface.pointee.variant_get_ptr_destructor(\(variant))",
            "assert(\(sut.name)._destructor != nil)"
        ], indent: 0, prefix: nil)
    ] : []
    
    return MultiLineRenderable(lines:
                                constructor_decl + destructor_decl,
                               indent: 8,
                               prefix: nil)
}

fileprivate var initializers: RenderFunc = {
    sut, sizes, sizeItem, api, doc in
    
    var constr_inits: [MultiLineRenderable] = sut.constructors.map { c in
        
        let args = (c.arguments ?? [])

        // TODO: unify type marshalling w class/builtinclass
        
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
            ], indent: 0, prefix: "/// "),
            
            InstanceMethodRenderable(method: ConfigurationSpecificConstructor(config: sizes, method: c, builtin_size: sizeItem.size))
            
        ], indent: 0, prefix: nil)
                                   
    }
    
    let fromPtr = MultiLineRenderable(lines: """
public required init(godot unsafe: UnsafeRawPointer) {
    self.opaque = .init(mutating: unsafe)
}

public required init(godot unsafe: UnsafeMutableRawPointer) {
    self.opaque = unsafe
}
""".split(separator: "\n").map { String($0) }, indent: 0, prefix: nil)
    
    constr_inits.append(fromPtr)
    
    return MultiLineRenderable(lines: constr_inits,
                               indent: 4,
                               prefix: nil)
}

fileprivate var class_name_with_parents: RenderFunc = {
    sut, sizes, sizeItem, api, doc in
    
    return "\(sut.name) : BuiltinClass"
}

fileprivate typealias RenderFunc = (ExtensionApi_BuiltinClass,
                                    ExtensionApi_BuiltinClassSizeConfiguration,
                                    ExtensionApi_BuiltinClassSizeConfiguration_Item,
                                    ExtensionApi,
                                    Doc)->Renderable

fileprivate let nestedEnums: RenderFunc = {
    sut, sizes, sizeItem, api, doc in
    
    let enums = sut.enums ?? []
    
    let lines = enums.map {
        EnumRenderable(en: $0, isGlobal: false)
    }
    return MultiLineRenderable(lines: lines, indent: 4, prefix: nil)
}

struct BuiltinClassTemplate {
    let sut: ExtensionApi_BuiltinClass
    let sizes: ExtensionApi_BuiltinClassSizeConfiguration
    let memberOffsets: ExtensionApi_BuiltinClassMemberOffsetsConfiguration
    let full: ExtensionApi
    let doc: Doc
    
    fileprivate let transforms: [String: RenderFunc] = [
        "classNameWithParents": class_name_with_parents,
        "classDoc": class_doc,
        "nestedEnums": nestedEnums,
        "className": { s, _, _, _, _ in s.name },
        "classSize": { _, _, s, _, _ in s.size },
        "staticConstructorDestructorDecl": class_init_deinit_decl,
        "staticConstructorDestructorAssign": class_init_deinit_assign,
        "initializers": initializers
    ]
    
    func render() -> String {
        guard let sizeItem = sizes.sizes.first(where: { $0.name == sut.name}) else {
            fatalError("Size information not found for builtin \(sut.name)")
        }
        
        print("    rendering \(sut.name)")
        return transforms.reduce(template) {
            res, renderFunc in
            res.replacing("${\(renderFunc.key)}", with: renderFunc.value(sut, sizes, sizeItem, full, doc).render())
        }
    }
    
    
}
