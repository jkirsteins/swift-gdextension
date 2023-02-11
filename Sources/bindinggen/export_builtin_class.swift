//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 05/02/2023.
//

import Foundation
import XMLCoder

func export_builtin_class(
    _ sut: ExtensionApi_BuiltinClass,
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ memberOffsets: ExtensionApi_BuiltinClassMemberOffsetsConfiguration,
    _ full: ExtensionApi
) {
//    let doc = get_docs(data.name)
//
//    guard let builtin_size = sizes.sizes.first(where: { $0.name == data.name }) else {
//        fatalError("Couldn't determine size for \(data.name)")
//    }
//
//    func _init_constructor_bindings() -> String {
//        var res: [String] = []
//        let indent = "        "
//        for c in data.constructors {
//            res.append("\(indent)\(data.name)._constructor_\(c.index) = \(data.name.capitalized).interface.pointee.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_\(data.name.upperSnakeCased()), \(c.index))")
//            res.append("\(indent)assert(\(data.name)._constructor_\(c.index) != nil)")
//        }
//        if data.has_destructor {
//            res.append("\(indent)\(data.name)._destructor = \(data.name.capitalized).interface.pointee.variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_\(data.name.upperSnakeCased()))")
//            res.append("\(indent)assert(\(data.name)._destructor != nil)")
//        }
//
//        let result = res.joined(separator: "\n")
//        return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
//    }
//
//    func _init_constructor_fields() -> String {
//        var res: [String] = []
//        let indent = "    "
//        for c in data.constructors {
//            res.append(
//"\(indent)static var _constructor_\(c.index): GDExtensionPtrConstructor? = nil")
//        }
//
//        let result = res.joined(separator: "\n")
//        return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
//    }
//
//    let _emptyDoc = "/// Godot documentation missing"
//
//    func _add_class_doc() -> String {
//        var res: [ [String] ] = []
//        if let bd = doc?.brief_description {
//            res.append(["\(bd)"])
//        }
//        if let desc = doc?.description {
//            res.append([""])
//            res.append(desc.split(separator: "\n").map { String($0) })
//        }
//
//        return res.flatMap({ $0 }).map { "/// \($0)" }.joined(separator: "\n")
//    }
//
//    func _init_constructors() -> String {
//        var res: [ [String] ] = []
//        let indent = "    "
//
//        let stringDepth = 0
//
//        // for marshalling string args
//        var marshalled: [String] = []
//
//        for c in data.constructors {
//            let args = (c.arguments ?? [])
//
//            marshalled = args.filter({ $0.type == "String" }).map { $0.name }
//
//            func _prepMarshalledStrings() -> String {
//                var res = [String]()
//                let indent = "        "
//                for marsh in marshalled {
//                    res.append("\(indent)let \(marsh)_nativeStr = \(marsh)._create_native__kept()")
//                    res.append("\(indent)defer { \(marsh)_nativeStr.deallocate() }")
//                }
//                guard res.count > 0 else { return "" }
//                let result = res.joined(separator: "\n")
//                return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
//            }
//
//            let argSig = args.map { "\($0.name): \($0.type)" }
//            let argInit = args.map { arg in
//                if marshalled.contains(arg.name) {
//                    return ".init(\(arg.name)_nativeStr.baseAddress!)"
//                } else {
//                    return ".init(\(arg.name)._native_ptr())"
//                }
//            }
//
//            func _add_constructor_doc() -> String {
//                let cdocs: [Doc_Constructor] = doc?.constructors?.constructor ?? []
//                let _empty = "/// Godot documentation missing"
//                guard cdocs.count > c.index else {
//                    return _empty
//                }
//
//                let cd = cdocs[c.index]
//
//                var res: [String] = []
//                if cd.description.isEmpty {
//                    res.append(_empty)
//                } else {
//                    res.append("/// \(cd.description)")
//                }
//                for cdarg in cd.`params` {
//                    res.append("/// - Parameter \(cdarg.name): \(cdarg.type)")
//                }
//                return res.joined(separator: ", ")
//            }
//
//            let constructorLines =
//"""
//
//\(_add_constructor_doc())
//public init(\(argSig.joined(separator: ", "))) {
//    \(_prepMarshalledStrings())
//    let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: \(args.count))
//    defer { args.deallocate() }
//    _ = args.initialize(from: [
//        \(argInit.joined(separator: ", "))
//    ])
//    Self._constructor_\(c.index)!(self._native_ptr(), .init(args.baseAddress!))
//}
//
//""".split(separator: "\n").map { "\(indent)\($0)" }
//            res.append(constructorLines)
//        }
//
//        let result = res.flatMap { $0 }.joined(separator: "\n")
//        return String(result[result.index(result.startIndex, offsetBy: indent.count)...])
//    }
//
//    let output =
//"""
//// autogenerated
//
//import godot_native
//
//extension ClassInitializer {
//    static func initializeMethodBindings_\(data.name)() {
//
//    }
//
//    static func initializeConstructorBindings_\(data.name)() {
//        \(_init_constructor_bindings())
//    }
//}
//
//\(_add_class_doc())
//public class \(data.name) : BuiltinClass {
//    public static let SIZE = \(builtin_size.size);
//
//    public let opaque: UnsafeMutableBufferPointer<UInt8> = .allocate(capacity: SIZE)
//
//    static var _destructor: GDExtensionPtrDestructor? = nil
//
//    \(_init_constructor_fields())
//
//    \(_init_constructors())
//
//    deinit {
//        Self._destructor?(self._native_ptr())
//        opaque.deallocate()
//    }
//}
//
//"""
    guard let doc = get_docs(sut.name) else {
        fatalError("Missing docs for \(sut.name)")
    }
    let output = BuiltinClassTemplate(
        sut: sut,
        sizes: sizes,
        memberOffsets: memberOffsets,
        full: full, doc: doc).render()
    
    print("    generated \(_store(output, "builtin", sut.name).path)")
}


func export_builtin_variant(
    _ sizes: ExtensionApi_BuiltinClassSizeConfiguration,
    _ memberOffsets: ExtensionApi_BuiltinClassMemberOffsetsConfiguration,
    _ full: ExtensionApi
) {
    let name = "Variant"

    guard let doc = get_docs(name) else {
        fatalError("Missing docs for \(name)")
    }
    guard let size = sizes.sizes.first(where: { $0.name == name }) else {
        fatalError("Missing size information for \(name)")
    }
    
    let classOutput = TemplatedRenderable(
        variables: [
            "variantSize" : size.size
        ],
        template: """
import godot_native

public class Variant : BuiltinClass {
    public class var __godot_name: StringName { __godot_name_Variant }

    public static var interface: UnsafePointer<GDExtensionInterface>! = nil
    public static var library: GDExtensionClassLibraryPtr! = nil
    
    var interface: UnsafePointer<GDExtensionInterface> { Self.interface }

    public static let SIZE = ${variantSize}

    public let opaque: UnsafeMutableRawPointer
    
    public class func initialize_class(_ p_interface: UnsafePointer<GDExtensionInterface>, _ p_library: GDExtensionClassLibraryPtr, _ p_level: GDExtensionInitializationLevel) {
        Self.interface = p_interface
        Self.library = p_library

        __godot_name_Variant = StringName(from: "Variant")
    }

    public init() {
        self.opaque = Self.interface.pointee.mem_alloc(Self.SIZE)!
    }

    public required init(godot unsafePtr: UnsafeRawPointer) {
        self.opaque = .init(mutating: unsafePtr)
    }

    deinit {
        self.interface.pointee.variant_destroy(opaque)
        self.interface.pointee.mem_free(opaque)
    }
}
""",
        indent: 0)
    let docOutput = DocMultiLineRenderable(lines: [
        doc.brief_description,
        SKIP_LINE,
        doc.description
    ], indent: 0, prefix: "/// ")
    
    let classAndDocOutput = MultiLineRenderable(lines: [
        docOutput,
        classOutput
    ], indent: 0, prefix: nil)
    
    let output = TemplatedRenderable(variables: [
        "body": classAndDocOutput
        ], template: """
import godot_native

fileprivate var __godot_name_Variant: StringName! = nil

${body}
""", indent: 0)
    
    print("    generated \(_store(output, "builtin", name).path)")
}

func _store(_ renderable: any Renderable, _ folder: String, _ name: String) -> URL {
    let dirurl = URL(filePath: "gen/\(folder)")
    let fileurl = dirurl.appending(component: "\(name).swift")
    
    try! FileManager.default.createDirectory(at: dirurl, withIntermediateDirectories: true)
    
    try! renderable.render().write(to: fileurl, atomically: true, encoding: String.Encoding.utf8)
    
    return fileurl
}
