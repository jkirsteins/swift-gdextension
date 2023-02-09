import godot_native

fileprivate var __godot_name_JavaScriptBridge: StringName! = nil

/// Singleton that connects the engine with the browser's JavaScript context in Web export.
/// 
/// The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.
///  
/// [b]Note:[/b] This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See [url=$DOCS_URL/contributing/development/compiling/compiling_for_web.html]Compiling for the Web[/url] in the documentation for more information.
open class JavaScriptBridge : Object {

    

    public override class var __godot_name: StringName { __godot_name_JavaScriptBridge }

    static var _method_eval_218087648: StringName! = nil
    static var _method_get_interface_1355533281: StringName! = nil
    static var _method_create_callback_422818440: StringName! = nil
    static var _method_create_object_3093893586: StringName! = nil
    static var _method_download_buffer_4123979296: StringName! = nil
    static var _method_pwa_needs_update_36873697: StringName! = nil
    static var _method_pwa_update_166280745: StringName! = nil
    static var _method_force_fs_sync_3218959716: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_JavaScriptBridge == nil)
        __godot_name_JavaScriptBridge = StringName(from: "JavaScriptBridge")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_eval_218087648 = StringName(from: "eval")
        assert(self._method_eval_218087648 != nil)
        self._method_get_interface_1355533281 = StringName(from: "get_interface")
        assert(self._method_get_interface_1355533281 != nil)
        self._method_create_callback_422818440 = StringName(from: "create_callback")
        assert(self._method_create_callback_422818440 != nil)
        self._method_create_object_3093893586 = StringName(from: "create_object")
        assert(self._method_create_object_3093893586 != nil)
        self._method_download_buffer_4123979296 = StringName(from: "download_buffer")
        assert(self._method_download_buffer_4123979296 != nil)
        self._method_pwa_needs_update_36873697 = StringName(from: "pwa_needs_update")
        assert(self._method_pwa_needs_update_36873697 != nil)
        self._method_pwa_update_166280745 = StringName(from: "pwa_update")
        assert(self._method_pwa_update_166280745 != nil)
        self._method_force_fs_sync_3218959716 = StringName(from: "force_fs_sync")
        assert(self._method_force_fs_sync_3218959716 != nil)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_eval_218087648._native_ptr(),
                    218087648)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_interface_1355533281._native_ptr(),
                    1355533281)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_callback_422818440._native_ptr(),
                    422818440)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_object_3093893586._native_ptr(),
                    3093893586)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_download_buffer_4123979296._native_ptr(),
                    4123979296)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_pwa_needs_update_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_pwa_update_166280745._native_ptr(),
                    166280745)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_force_fs_sync_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}