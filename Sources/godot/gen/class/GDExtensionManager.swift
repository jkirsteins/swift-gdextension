import godot_native

fileprivate var __godot_name_GDExtensionManager: StringName! = nil

/// 
/// 
/// 
open class GDExtensionManager : Object {

    public enum LoadStatus : Int32 {
        case LOAD_STATUS_OK = 0
        case LOAD_STATUS_FAILED = 1
        case LOAD_STATUS_ALREADY_LOADED = 2
        case LOAD_STATUS_NOT_LOADED = 3
        case LOAD_STATUS_NEEDS_RESTART = 4
    }

    public override class var __godot_name: StringName { __godot_name_GDExtensionManager }

    static var _method_load_extension_4024158731: StringName! = nil
    static var _method_reload_extension_4024158731: StringName! = nil
    static var _method_unload_extension_4024158731: StringName! = nil
    static var _method_is_extension_loaded_3927539163: StringName! = nil
    static var _method_get_loaded_extensions_1139954409: StringName! = nil
    static var _method_get_extension_49743343: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GDExtensionManager == nil)
        __godot_name_GDExtensionManager = StringName(from: "GDExtensionManager")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_load_extension_4024158731 = StringName(from: "load_extension")
        assert(self._method_load_extension_4024158731 != nil)
        self._method_reload_extension_4024158731 = StringName(from: "reload_extension")
        assert(self._method_reload_extension_4024158731 != nil)
        self._method_unload_extension_4024158731 = StringName(from: "unload_extension")
        assert(self._method_unload_extension_4024158731 != nil)
        self._method_is_extension_loaded_3927539163 = StringName(from: "is_extension_loaded")
        assert(self._method_is_extension_loaded_3927539163 != nil)
        self._method_get_loaded_extensions_1139954409 = StringName(from: "get_loaded_extensions")
        assert(self._method_get_loaded_extensions_1139954409 != nil)
        self._method_get_extension_49743343 = StringName(from: "get_extension")
        assert(self._method_get_extension_49743343 != nil)
    }

    public func load_extension(path: godot.String) -> GDExtensionManager.LoadStatus {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_extension_4024158731._native_ptr(),
                    4024158731)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtensionManager.LoadStatus(godot: __resPtr.pointee)
    }
    public func reload_extension(path: godot.String) -> GDExtensionManager.LoadStatus {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_reload_extension_4024158731._native_ptr(),
                    4024158731)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtensionManager.LoadStatus(godot: __resPtr.pointee)
    }
    public func unload_extension(path: godot.String) -> GDExtensionManager.LoadStatus {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unload_extension_4024158731._native_ptr(),
                    4024158731)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtensionManager.LoadStatus(godot: __resPtr.pointee)
    }
    public func is_extension_loaded(path: godot.String) -> UInt8 {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_extension_loaded_3927539163._native_ptr(),
                    3927539163)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_loaded_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_loaded_extensions_1139954409._native_ptr(),
                    1139954409)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func get_extension(path: godot.String) -> GDExtension {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_extension_49743343._native_ptr(),
                    49743343)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtension(godot: __resPtr.pointee)
    }
}