
protocol Renderable {
    func render() -> String
}

extension String: Renderable {
    public func render() -> String { self }
}

extension Int: Renderable {
    public func render() -> String { "\(self)" }
}

func _applyIndentToMultiline(_ str: String, indent: Int, prefix: String? = nil) -> String {
    let strLines = str.split(separator: "\n").map { String($0) }
    return _applyIndentToMultiline(strLines, indent: indent, prefix: prefix)
}

func _applyIndentToMultiline(_ strLines: [String], indent: Int, prefix: String? = nil) -> String {
    
    let preResult = strLines.map { "\(String(repeating: " ", count: indent))\(prefix ?? "")\($0)" }.joined(separator: "\n")
    guard !preResult.isEmpty else { return preResult }
    
    // trim the first indent
    return String(preResult[preResult.index(preResult.startIndex, offsetBy: indent)...])
}

struct NestedRenderable: Renderable {
    let body: any Renderable
    let template: any Renderable
    let indent: Int
    
    public func render() -> String {
        let rendered = template.render().replacingOccurrences(of: "${body}", with: body.render())
        
        return _applyIndentToMultiline(rendered, indent: self.indent)
    }
}

struct TemplatedRenderable: Renderable {
    let variables: [String: any Renderable]
    let template: String
    let indent: Int
    
    func render() -> String {
        let res = variables.reduce(template) {
            res, kvp in
            
            res.replacingOccurrences(of: "${\(kvp.key)}", with: kvp.value.render())
        }
        return _applyIndentToMultiline(res, indent: indent)
    }
}

struct InstanceMethodRenderable : Renderable {
    let method: ConfigurationSpecificCallable
    
    let outer_template: String
    
    init(method: ConfigurationSpecificMethod) {
        self.method = method
        
        if method.is_utility {
            self.outer_template = """
   public static func ${methodName}(${argSignature}) ${returnSignature} {
       ${body}
   }
   """
        } else {
            self.outer_template = """
   public func ${methodName}(${argSignature}) ${returnSignature} {
       ${body}
   }
   """
        }
    }
    
    init(method: ConfigurationSpecificConstructor) {
        self.method = method
        
        // THIS ONLY WORKS FOR BUILTIN CLASSES DUE TO `opaque` INIT
        // assumption is that non-builtins don't need generated constructors
        
        self.outer_template = """
   ${initAccessModifier} init(${argSignature}) {
       self.opaque = .allocate(byteCount: ${builtinSize}, alignment: 4)
   
       ${body}
   }
   """
    }
    
    let call_template = """
let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: ${arg_count})
defer { args.deallocate() }
_ = args.initialize(from: [
    ${args_init_value_list}
])

// call here

${body}
"""
    
    let with_result_wrapper = """
let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
${deallocateResultIfMarshalling}

${body}

return ${resultType}(godot: __resPtr.pointee)
"""
    
    let without_result_wrapper = """
${body}
"""
    
    let invoke_binding_template__method = """
let _mbinding = self.interface.pointee.classdb_get_method_bind(
    Self.__godot_name._native_ptr(),
    Self.${methodBindingName}._native_ptr(),
    ${hash})
assert(_mbinding != nil)
self.interface.pointee.object_method_bind_ptrcall(
    _mbinding,
    self._native_ptr(),
    args.baseAddress!,
    ${resultOut}
)
"""
    
    let invoke_binding_template__utility__no_ret = """
let __function_name: StringName = .init(from: "${name}")
let __function = Wrapped.interface.pointee.variant_get_ptr_utility_function(
        __function_name._native_ptr(),
        ${hash})
assert(__function != nil)

var ret = Variant()
withUnsafeMutablePointer(to: &ret) { retPtr in
    __function!(retPtr, args.baseAddress!, ${argCount})
}
"""
    
    let invoke_binding_template__utility__ret = """
let __function_name: StringName = .init(from: "${name}")
let __function = Wrapped.interface.pointee.variant_get_ptr_utility_function(
        __function_name._native_ptr(),
        ${hash})
assert(__function != nil)

__function!(__resPtr, args.baseAddress!, ${argCount})
"""
    
    let invoke_binding_template__method__virtual = """

"""
    
    let invoke_binding_template__init = """
Self.${methodBindingName}!(self._native_ptr(), .init(args.baseAddress!))
"""
    
    func render() -> String {
        
        let rawArgs = (self.method.args ?? [])
        let argNames = rawArgs.map {
            ".init(\($0.pointerName))"
        }.joined(separator: ", ")
        
        let argSignature: String
        
        // utility methods without arg names
        if method.is_utility {
            argSignature = rawArgs.map { "_ \($0.unsanitizedName.sanitizedName): \($0.type.sanitizedType)" }.joined(separator: ", ")
        } else {
            argSignature = rawArgs.map { "\($0.unsanitizedName.sanitizedName): \($0.type.sanitizedType)" }.joined(separator: ", ")
        }
        
        let returnSignature = self.method.has_return ? "-> \(self.method.sanitized_return_type!.sanitizedType)" : ""
        
        // early ret for virtual
        guard !method.is_virtual else {
            
            let virtualRet: String
            var allowOptional = false
            if let ret = method.sanitized_return_type?.sanitizedType {
                // TODO: less hacky virtual results
                if ret == "UnsafeMutableRawPointer" || ret.contains("Pointer<") {
                    virtualRet = "\(ret)(bitPattern: 0) // hardcoded in InstanceMethodRenderable"
                    allowOptional = true
                } else {
                    virtualRet = "\(ret)()"
                }
            } else {
                virtualRet = ""
            }
            
            let outerRenderer = TemplatedRenderable(
                variables: [
                    "body": virtualRet,
                    "methodName": self.method.method_name ?? "<unused for constructors>",
                    "argSignature": argSignature,
                    "returnSignature": "\(returnSignature)\(allowOptional ? "!" : "")",
                    "builtinSize": self.method.builtin_size
                ],
                template: outer_template,
                indent: 0)
            
            return outerRenderer.render()
        }
        //
        
        let bindingCall: any Renderable
        if self.method.is_utility {
            guard let hash = self.method.method_hash else {
                fatalError("No hash for utility \(self.method.method_name ?? "<unknown>")")
            }
            guard let name = self.method.method_name else {
                fatalError("No name for utility")
            }
            
            if self.method.has_return {
                bindingCall = TemplatedRenderable(
                    variables: [
                        "name": name,
                        "hash": hash,
                        "argCount": self.method.args?.count ?? 0
                    ],
                    template: invoke_binding_template__utility__ret,
                    indent: 0)
            } else {
                bindingCall = TemplatedRenderable(
                    variables: [
                        "name": name,
                        "hash": hash,
                        "argCount": self.method.args?.count ?? 0
                    ],
                    template: invoke_binding_template__utility__no_ret,
                    indent: 0)
            }
        } else if self.method.is_virtual {
            guard !self.method.is_constructor else { fatalError() }
            
            bindingCall = TemplatedRenderable(
            variables: [
                "methodBindingName": self.method.binding_name,
                "resultOut": self.method.has_return ? "__resPtr" : "nil"],
            template: self.invoke_binding_template__method__virtual,
            indent: 4)
        } else {
            guard !self.method.is_virtual else { fatalError() }
            
            if self.method.is_constructor {
                guard self.method.method_hash == nil else {
                    fatalError("No hash expected for constructor")
                }
                
                bindingCall = TemplatedRenderable(
                    variables: [
                        "methodBindingName": self.method.binding_name,
                        "resultOut": self.method.has_return ? "__resPtr" : "nil"],
                    template: invoke_binding_template__init,
                    indent: 4)
            } else {
                guard let hash = self.method.method_hash else {
                    fatalError("No hash for \(self.method.method_name ?? "<unknown>")")
                }
                
                bindingCall = TemplatedRenderable(
                    variables: [
                        "methodBindingName": self.method.binding_name,
                        "hash": hash,
                        "resultOut": self.method.has_return ? "__resPtr" : "nil"],
                    template: invoke_binding_template__method,
                    indent: 4)
            }
        }
        
        let resultWrapper = TemplatedRenderable(
            variables: [
                "body": bindingCall,
                
                // Strings duplicate the data, so deallocate the underlying storage
                // TODO: verify if this is legit. Do we need to invoke the Godot destructor for String? etc.
                "deallocateResultIfMarshalling": self.method.sanitized_return_type?.shouldDeallocateResult == true ? "defer { __resPtr.deallocate() }" : "",
                
                "resultType": self.method.sanitized_return_type?.sanitizedType ?? "<none>"
            ],
            template: (self.method.has_return ? with_result_wrapper : without_result_wrapper),
            indent: 0)
        
        let callRenderer: any Renderable = TemplatedRenderable(
            variables: [
                "arg_count": rawArgs.count,
                "args_init_value_list": argNames,
                "optional_result": (method.has_return ? "return __result" : ""),
                "body": resultWrapper
            ],
            template: call_template,
            indent: 4)
        
//        let argsSurroundingCall = rawArgs.reduce(callRenderer) { renderable, arg in
//            WithNativeArgumentRenderable(
//                arg: arg, indent: 4, body: renderable)
//        }
        let argsSurroundingCall = NativeArgumentPreparingRenderable(
            args: rawArgs,
            body: callRenderer,
            indent: 4)
        
        let outerRenderer = TemplatedRenderable(
            variables: [
                "body": argsSurroundingCall,
                "methodName": self.method.method_name ?? "<unused for constructors>",
                "argSignature": argSignature,
                
                // builtin constructors with no params need to satisfy a protocol constraint, so we add "required"
                "initAccessModifier": (method.args?.count ?? 0) > 0 && method.is_constructor ? "public" : "required public",
                
                "returnSignature": returnSignature,
                "builtinSize": self.method.builtin_size
            ],
            template: outer_template,
            indent: 0)
        
        return outerRenderer.render()
    }
}

struct NativeArgumentPreparingRenderable: Renderable {
    let args: [ConfigurationSpecificMethodArgument]
    let body: any Renderable
    let indent: Int
    
    let template_swift = """
withUnsafePointer(to: ${arg_name}) { ${arg_pointer_name} in
${body}
}
"""
    
    let template_raw32 = """
withUnsafePointer(to: ${arg_name}.rawValue) { ${arg_pointer_name} in
${body}
}
"""
    
    let template_bridgable = """
let ${arg_pointer_name} = ${arg_name}._native_ptr()

${body}

"""
    
    func render() -> String {
        let native = args.filter({ $0.type.isSwiftType })
        let raw32 = args.filter({ $0.type.hasRawValueInt32 })
        let bridgable = args.filter({ !$0.type.hasRawValueInt32 && !$0.type.isSwiftType })
        
        let finalRenderable = (bridgable + raw32 + native).reduce(body) {
            wrappedRenderable, arg in
            
            let template: String
            if arg.type.isSwiftType {
                template = self.template_swift
            } else if arg.type.hasRawValueInt32 {
                template = self.template_raw32
            } else {
                template = self.template_bridgable
            }
            
            return TemplatedRenderable(
                variables: [
                    "body": wrappedRenderable,
                    "arg_name": arg.unsanitizedName.sanitizedName,
                    "arg_pointer_name": arg.pointerName,
                ],
                template: template,
                indent: 0)
        }
        
        return MultiLineRenderable(lines: [finalRenderable], indent: indent, prefix: nil).render()
    }
}

struct _WithNativeArgumentRenderable: Renderable {
    let internalRenderable: any Renderable
    let arg: ConfigurationSpecificMethodArgument
    
    init(arg: ConfigurationSpecificMethodArgument, indent: Int, body: any Renderable) {
        self.arg = arg
        
        if arg.type.isSwiftType {
            self.internalRenderable = TemplatedRenderable(variables: [
                "arg_name": self.arg.unsanitizedName.sanitizedName,
                "arg_pointer_name": self.arg.pointerName,
                "body": body
            ], template: """
withUnsafePointer(to: ${arg_name}) { ${arg_pointer_name} in
    ${body}
}
""",
                indent: indent)
        } else if arg.type.hasRawValueInt32 {
            self.internalRenderable = TemplatedRenderable(variables: [
                "arg_name": self.arg.unsanitizedName.sanitizedName,
                "arg_pointer_name": self.arg.pointerName,
                "body": body
            ], template: """
withUnsafePointer(to: ${arg_name}.rawValue) { ${arg_pointer_name} in
    ${body}
}
""",
                indent: indent)
        } else {
            self.internalRenderable = MultiLineRenderable(
                template: """
let \(arg.pointerName) = \(arg.unsanitizedName.sanitizedName)._native_ptr()

\(body.render())
""",
                indent: indent,
                prefix: nil)
        }
    }
    
    func render() -> String {
        self.internalRenderable.render()
    }
}

struct MultiLineRenderable: Renderable {
    let lines: [any Renderable]
    
    /// Indent that will be applied to every line except the first
    let indent: Int
    
    let prefix: String?
    let trim: Bool
    
    init(lines: [any Renderable], indent: Int, prefix: String?, trim: Bool = true) {
        self.lines = lines
        self.indent = indent
        self.prefix = prefix
        self.trim = trim
    }
    
    init(template: String, indent: Int, prefix: String?, trim: Bool = true) {
        self.init(
            lines: template.split(separator: "\n").map { String($0) },
            indent: indent,
            prefix: prefix,
            trim: trim
        )
    }
    
    public func render() -> String {
        let explodeInternal = self.lines.flatMap({
            let rendered = $0.render()
            
            guard !rendered.isEmpty else { return [rendered] }
            
            let int = rendered.split(separator: "\n").map {
                if (trim) {
                    return String($0.replacingOccurrences(of: "\t", with: ""))
                } else {
                    return String($0)
                }
            }
            return int
        })
        
        return _applyIndentToMultiline(explodeInternal, indent: self.indent, prefix: prefix)
    }
}

// TODO: less hacky doc processing
struct DocMultiLineRenderable: Renderable {
    let lines: [any Renderable]
    
    /// Indent that will be applied to every line except the first
    let indent: Int
    
    let prefix: String?
    let trim: Bool = true
    
    public func render() -> String {
        let explodeInternal = self.lines.flatMap({
            // TODO: less hacky way to insert newlines for docs
            let rendered = String($0.render().replacingOccurrences(of: "\n", with: "\n \n"))
            
            guard !rendered.isEmpty else { return [rendered] }
            
            let int = rendered.split(separator: "\n").map {
                if (trim) {
                    return String($0.replacingOccurrences(of: "\t", with: ""))
                } else {
                    return String($0)
                }
            }
            return int
        })
        
        let preResult = explodeInternal.map { "\(String(repeating: " ", count: indent))\(prefix ?? "")\($0)" }.joined(separator: "\n")
        guard !preResult.isEmpty else { return preResult }
        
        // trim the first indent
        return String(preResult[preResult.index(preResult.startIndex, offsetBy: indent)...])
    }
}

let SKIP_LINE = ""
