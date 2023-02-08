//
//  File.swift
//  
//
//  Created by Janis Kirsteins on 06/02/2023.
//

import Foundation

struct ConfigurationSpecificType {
    let type: String
    let sanitizedType: String
    
    var isSwiftType: Bool {
        remaps.keys.contains(self.type) && self.type != "String"
//        ["int", "bool", "float", "String"].contains(self.type)
    }
    
    // TODO: hacky way to determine if a result should be deallocated
    var shouldDeallocateResult: Bool {
        return isSwiftType && !self.sanitizedType.contains("Pointer")
    }
    
    let typeRemaps: [String:[String:String]] = [
        "double_64": [
            "Nil": "nil",
            "bool": "UInt8",
            "float": "Float64",
            "real_t": "Float64",
            "int": "Int64",
            "uint": "UInt64",
            
            "String": "godot.String",
            
            "uint8_t": "UInt8",
            "uint16_t": "UInt16",
            "uint32_t": "UInt32",
            "uint64_t": "UInt64",
            
            "int8_t": "Int8",
            "int16_t": "Int16",
            "int32_t": "Int32",
            "int64_t": "Int64",
            
            // TODO: handle pointers gracefully
            // GodotPointer should be used only with glasses
            "const Glyph*": "UnsafePointer<Glyph>",
            "float*": "UnsafeMutablePointer<Float64>",
            "const uint8_t **": "UnsafePointer<UnsafePointer<UInt8>>",
            "uint8_t*": "UnsafeMutablePointer<UInt8>",
            "int8_t*": "UnsafeMutablePointer<Int8>",
            "int32_t*": "UnsafeMutablePointer<Int32>",
            "uint32_t*": "UnsafeMutablePointer<UInt32>",
            "void*": "UnsafeMutableRawPointer",
            "const void*": "UnsafeRawPointer",
            "const uint8_t*": "UnsafePointer<UInt8>",
            "AudioFrame*": "UnsafeMutablePointer<AudioFrame>",
            "CaretInfo*": "UnsafeMutablePointer<CaretInfo>",
            
            "PhysicsServer2DExtensionMotionResult*": "UnsafePointer<PhysicsServer2DExtensionMotionResult>",
            "PhysicsServer2DExtensionRayResult*": "UnsafePointer<PhysicsServer2DExtensionRayResult>",
            "PhysicsServer2DExtensionShapeRestInfo*": "UnsafePointer<PhysicsServer2DExtensionShapeRestInfo>",
            "PhysicsServer2DExtensionShapeResult*": "UnsafePointer<PhysicsServer2DExtensionShapeResult>",
            
            "PhysicsServer3DExtensionMotionResult*": "UnsafePointer<PhysicsServer3DExtensionMotionResult>",
            "PhysicsServer3DExtensionRayResult*": "UnsafePointer<PhysicsServer3DExtensionRayResult>",
            "PhysicsServer3DExtensionShapeRestInfo*": "UnsafePointer<PhysicsServer3DExtensionShapeRestInfo>",
            "PhysicsServer3DExtensionShapeResult*": "UnsafePointer<PhysicsServer3DExtensionShapeResult>",
            "ScriptLanguageExtensionProfilingInfo*": "UnsafePointer<ScriptLanguageExtensionProfilingInfo>"
        ]
    ]
    
    let remaps: [String: String]
    let hasRawValueInt32: Bool
    
    init(config: ExtensionApi_BuiltinClassSizeConfiguration, type: String) {
        self.type = type
        guard let remaps = self.typeRemaps[config.build_configuration] else {
            fatalError("Not implemented for \(config.build_configuration)")
        }
        self.remaps = remaps
        (self.sanitizedType, self.hasRawValueInt32) = Self.calcSanitizeType(type, remaps)
    }
    
    private static func calcSanitizeType(_ type: String, _ remaps: [String: String]) -> (String, Bool) {
        
        let typedArray = "typedarray::"
        let enumStr = "enum::"
        let bitField = "bitfield::"
        
        var isArray = false
        var hasRawValueInt32 = false
        
        var clean = type
        if clean.starts(with: typedArray) {
            isArray = true
            clean = String(clean[clean.index(clean.startIndex, offsetBy: typedArray.count)...])
        } else if clean.starts(with: enumStr) {
            hasRawValueInt32 = true
            clean = String(clean[clean.index(clean.startIndex, offsetBy: enumStr.count)...])
        } else if clean.starts(with: bitField) {
            hasRawValueInt32 = true
            clean = String(clean[clean.index(clean.startIndex, offsetBy: bitField.count)...])
        } else if clean.contains("::") {
            clean = String(clean.split(separator: "::").joined(separator: "."))
        }
        
        // sanitize both parts regardless of prefixes
        if clean.contains(".") {
            clean = String(clean.split(separator: ".").map {
                String($0).sanitizedName
            }.joined(separator: "."))
        }
        
        if clean.contains(":") {
            fatalError("Not sure how to sanitize type \(type)")
        }
        
        let result = remaps[clean] ?? clean
        return (isArray ? "[\(result)]" : result, hasRawValueInt32)
    }
}

let __String_nameTransforms = [
    "class": "`class`",
    "operator": "`operator`",
    "default": "`default`",
    "repeat": "`repeat`",
    "var": "`var`",
    "extension": "`extension`",
    "protocol": "`protocol`",
    "enum": "`enum`",
    "let": "`let`",
    "func": "`func`",
    "type": "`type`",
    "internal": "`internal`",
    "in": "`in`",
    "Type": "`Typ`"
]

extension String {
    var sanitizedArrayName: String {
        guard self.contains("[") else {
            fatalError("Can not sanitize name \(self) as array. Treat as regular name.")
        }
        let namePart = String(self.split(separator: "[").first!)
        return namePart.sanitizedName
    }
    
    var sanitizedPointerName: String {
        guard self.contains("*") else {
            fatalError("Can not sanitize name \(self) as pointer. Treat as regular name.")
        }
        let namePart = String(self.split(separator: "*").last!)
        return namePart.sanitizedName
    }
    
    var sanitizedName: String {
        guard !self.contains("[") else {
            fatalError("Can not sanitize name \(self). Treat as array.")
        }
        return __String_nameTransforms[self] ?? self
    }
    
    var sanitizedValue: String {
        self.replacingOccurrences(of: ".f", with: ".0")
    }
}

struct ConfigurationSpecificMethodArgument {
    let unsanitizedName: String
    let type: ConfigurationSpecificType
    
    
    var pointerName: String {
        "\(unsanitizedName)_native".sanitizedName
    }
}

struct ConfigurationSpecificMethod: ConfigurationSpecificCallable {
    let config: ExtensionApi_BuiltinClassSizeConfiguration
    let method: any Method
    
    var builtin_size: Int { 0 }
    
    var sanitized_return_type: ConfigurationSpecificType? {
        guard let t = method.return_value_type else { return nil }
        return ConfigurationSpecificType(config: self.config, type: t)
    }
    
    var is_constructor: Bool { false }
    
    var method_name: String? {
        method.name
    }
    
    var method_hash: Int? {
        method.hash
    }
    
    var binding_name: String {
        "_method_\(self.method.name)_\(self.method.hash ?? 0)"
    }
    
    var has_return: Bool { sanitized_return_type != nil }
    
    var args: [ConfigurationSpecificMethodArgument]? {
        method.arguments?.map {
            ConfigurationSpecificMethodArgument(
                unsanitizedName: $0.name,
                type: ConfigurationSpecificType(
                    config: self.config,
                    type: $0.type
                )
            )
        }
    }
}

protocol ConfigurationSpecificCallable {
    var config: ExtensionApi_BuiltinClassSizeConfiguration { get }
    var sanitized_return_type: ConfigurationSpecificType? { get }
    var has_return: Bool { get }
    var args: [ConfigurationSpecificMethodArgument]? { get }
    var binding_name: String { get }
    var method_name: String? { get }
    var method_hash: Int? { get }
    var is_constructor: Bool { get }
    var builtin_size: Int { get }
}

struct ConfigurationSpecificConstructor: ConfigurationSpecificCallable {
    let config: ExtensionApi_BuiltinClassSizeConfiguration
    let method: any Constructor
    let builtin_size: Int
    
    var is_constructor: Bool { true }
    
    var method_name: String? {
        nil
    }
    
    var method_hash: Int? {
        nil
    }
    
    var binding_name: String {
        "_constructor_\(method.index)"
    }
    
    var sanitized_return_type: ConfigurationSpecificType? {
        nil
    }
    
    var has_return: Bool { false }
    
    var args: [ConfigurationSpecificMethodArgument]? {
        method.arguments?.map {
            ConfigurationSpecificMethodArgument(
                unsanitizedName: $0.name,
                type: ConfigurationSpecificType(
                    config: self.config,
                    type: $0.type
                )
            )
        }
    }
}

fileprivate let template = """
import godot_native

fileprivate var __godot_name_${className}: StringName! = nil

${classDoc}
open class ${classNameWithParents} {

    ${nestedEnums}

    public override class var __godot_name: StringName { __godot_name_${className} }

    ${staticMethodBindingDecl}
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == ${expectedInitLevel} else { return }

        __godot_name_${className} = StringName(from: "${className}")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

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
public override class func create(godot ptr: UnsafeRawPointer) -> \(sut.name) {
    return \(sut.name)(godot: ptr)
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
    let renderables = methods.filter({ !$0.is_virtual }).flatMap { m in
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
            "self.\(m_name) = self.interface.pointee.classdb_get_method_bind(__godot_name_\(sut.name)._native_ptr(), \(m_name)_name._native_ptr(), \(hash))",
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
    
    return InstanceMethodRenderable(method: ConfigurationSpecificMethod(config:  sizes, method: method))

}

fileprivate let instanceMethods: RenderFunc = {
    sut, sizes, api, doc in
    
    let methods = sut.methods ?? []
    
    let lines = methods.map { instanceMethod($0, sizes) }
    
    return MultiLineRenderable(lines: lines, indent: 4, prefix: nil)
}

//fileprivate func renderBitfieldEnum(_ en: ExtensionApi_Class_Enum) -> any Renderable
//{
//    guard en.is_bitfield else {
//        return renderEnum(en)
//    }
//
//    let enumCases = en.values.map {
//        if $0.value == 0 {
//            return "static let \($0.name): \(en.name) = []"
//        } else {
//            return "static let \($0.name) = \(en.name)(rawValue: \($0.value))"
//        }
//    }
//
//    return """
//public struct \(en.name): OptionSet {
//    public let rawValue: Int32
//
//    public init(rawValue: Int32) {
//        self.rawValue = rawValue
//    }
//
//    \(MultiLineRenderable(lines: enumCases, indent: 4, prefix: nil).render())
//}
//"""
//}

//fileprivate func renderEnum(_ en: ExtensionApi_Class_Enum) -> any Renderable
//{
//    guard !en.is_bitfield else {
//        return renderBitfieldEnum(en)
//    }
//
//    let enumCases = en.values.map {
//        "case \($0.name) = \($0.value)"
//    }
//
//    return """
//public enum \(en.name) : Int32 {
//    \(MultiLineRenderable(lines: enumCases, indent: 4, prefix: nil).render())
//}
//"""
//}

fileprivate let nestedEnums: RenderFunc = {
    sut, sizes, api, doc in
    
    let enums = sut.enums ?? []
    
    let lines = enums.map {
        EnumRenderable(en: $0, isGlobal: false)
    }
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
        "expectedInitLevel": { s, _, _, _ in
            
            let typeToVarName: [String?:String] = [
                "editor": "GDEXTENSION_INITIALIZATION_EDITOR",
                "core": "GDEXTENSION_INITIALIZATION_CORE"
            ]
            
            let level = typeToVarName[s.api_type] ?? "GDEXTENSION_INITIALIZATION_SCENE"
            
            return level
        },
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
            res.replacing("${\(renderFunc.key)}", with: renderFunc.value(sut, sizes, full, doc).render())
        }
    }
    
    
}
