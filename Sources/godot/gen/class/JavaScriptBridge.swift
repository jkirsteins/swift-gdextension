import godot_native

fileprivate var __godot_name_JavaScriptBridge: StringName! = nil

/// Singleton that connects the engine with the browser's JavaScript context in Web export.
/// 
/// The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.
///  
/// [b]Note:[/b] This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See [url=$DOCS_URL/contributing/development/compiling/compiling_for_web.html]Compiling for the Web[/url] in the documentation for more information.
open class JavaScriptBridge : Object {

    

    public override class var __godot_name: StringName { __godot_name_JavaScriptBridge }

    static var _method_eval_218087648: GDExtensionMethodBindPtr! = nil
    static var _method_get_interface_1355533281: GDExtensionMethodBindPtr! = nil
    static var _method_create_callback_422818440: GDExtensionMethodBindPtr! = nil
    static var _method_create_object_3093893586: GDExtensionMethodBindPtr! = nil
    static var _method_download_buffer_4123979296: GDExtensionMethodBindPtr! = nil
    static var _method_pwa_needs_update_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_pwa_update_166280745: GDExtensionMethodBindPtr! = nil
    static var _method_force_fs_sync_3218959716: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_JavaScriptBridge = StringName(from: "JavaScriptBridge")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_eval_218087648_name = StringName(from: "eval")
        self._method_eval_218087648 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_eval_218087648_name._native_ptr(), 218087648)
        assert(JavaScriptBridge._method_eval_218087648 != nil)
        let _method_get_interface_1355533281_name = StringName(from: "get_interface")
        self._method_get_interface_1355533281 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_get_interface_1355533281_name._native_ptr(), 1355533281)
        assert(JavaScriptBridge._method_get_interface_1355533281 != nil)
        let _method_create_callback_422818440_name = StringName(from: "create_callback")
        self._method_create_callback_422818440 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_create_callback_422818440_name._native_ptr(), 422818440)
        assert(JavaScriptBridge._method_create_callback_422818440 != nil)
        let _method_create_object_3093893586_name = StringName(from: "create_object")
        self._method_create_object_3093893586 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_create_object_3093893586_name._native_ptr(), 3093893586)
        assert(JavaScriptBridge._method_create_object_3093893586 != nil)
        let _method_download_buffer_4123979296_name = StringName(from: "download_buffer")
        self._method_download_buffer_4123979296 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_download_buffer_4123979296_name._native_ptr(), 4123979296)
        assert(JavaScriptBridge._method_download_buffer_4123979296 != nil)
        let _method_pwa_needs_update_36873697_name = StringName(from: "pwa_needs_update")
        self._method_pwa_needs_update_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_pwa_needs_update_36873697_name._native_ptr(), 36873697)
        assert(JavaScriptBridge._method_pwa_needs_update_36873697 != nil)
        let _method_pwa_update_166280745_name = StringName(from: "pwa_update")
        self._method_pwa_update_166280745 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_pwa_update_166280745_name._native_ptr(), 166280745)
        assert(JavaScriptBridge._method_pwa_update_166280745 != nil)
        let _method_force_fs_sync_3218959716_name = StringName(from: "force_fs_sync")
        self._method_force_fs_sync_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_JavaScriptBridge._native_ptr(), _method_force_fs_sync_3218959716_name._native_ptr(), 3218959716)
        assert(JavaScriptBridge._method_force_fs_sync_3218959716 != nil)
    }

    public func eval(code: godot.String, use_global_execution_context: UInt8) -> Variant {
        withUnsafePointer(to: use_global_execution_context) { use_global_execution_context_native in
        let code_native = code._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(code_native), .init(use_global_execution_context_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_eval_218087648,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func get_interface(interface: godot.String) -> JavaScriptObject {
        let interface_native = interface._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(interface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interface_1355533281,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JavaScriptObject(godot: __resPtr.pointee)
    }
    public func create_callback(callable: Callable) -> JavaScriptObject {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_callback_422818440,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return JavaScriptObject(godot: __resPtr.pointee)
    }
    public func create_object(object: godot.String) -> Variant {
        let object_native = object._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_object_3093893586,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func download_buffer(buffer: PackedByteArray, name: godot.String, mime: godot.String)  {
        let mime_native = mime._native_ptr()
        let name_native = name._native_ptr()
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native), .init(name_native), .init(mime_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_download_buffer_4123979296,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pwa_needs_update() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pwa_needs_update_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func pwa_update() -> Error {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pwa_update_166280745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func force_fs_sync()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_fs_sync_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}