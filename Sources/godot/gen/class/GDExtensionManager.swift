import godot_native

fileprivate var __godot_name_GDExtensionManager: StringName! = nil

/// 
/// 
/// 
public class GDExtensionManager : Object {

    public enum LoadStatus : Int32 {
        case LOAD_STATUS_OK = 0
        case LOAD_STATUS_FAILED = 1
        case LOAD_STATUS_ALREADY_LOADED = 2
        case LOAD_STATUS_NOT_LOADED = 3
        case LOAD_STATUS_NEEDS_RESTART = 4
    }

    public override class var __godot_name: StringName { __godot_name_GDExtensionManager }

    static var _method_load_extension_4024158731: GDExtensionMethodBindPtr! = nil
    static var _method_reload_extension_4024158731: GDExtensionMethodBindPtr! = nil
    static var _method_unload_extension_4024158731: GDExtensionMethodBindPtr! = nil
    static var _method_is_extension_loaded_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_get_loaded_extensions_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_get_extension_49743343: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GDExtensionManager = StringName(from: "GDExtensionManager")

        let _method_load_extension_4024158731_name = StringName(from: "load_extension")
        self._method_load_extension_4024158731 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_extension_4024158731_name._native_ptr(), 4024158731)
        assert(GDExtensionManager._method_load_extension_4024158731 != nil)
        let _method_reload_extension_4024158731_name = StringName(from: "reload_extension")
        self._method_reload_extension_4024158731 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reload_extension_4024158731_name._native_ptr(), 4024158731)
        assert(GDExtensionManager._method_reload_extension_4024158731 != nil)
        let _method_unload_extension_4024158731_name = StringName(from: "unload_extension")
        self._method_unload_extension_4024158731 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_unload_extension_4024158731_name._native_ptr(), 4024158731)
        assert(GDExtensionManager._method_unload_extension_4024158731 != nil)
        let _method_is_extension_loaded_3927539163_name = StringName(from: "is_extension_loaded")
        self._method_is_extension_loaded_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_extension_loaded_3927539163_name._native_ptr(), 3927539163)
        assert(GDExtensionManager._method_is_extension_loaded_3927539163 != nil)
        let _method_get_loaded_extensions_1139954409_name = StringName(from: "get_loaded_extensions")
        self._method_get_loaded_extensions_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_loaded_extensions_1139954409_name._native_ptr(), 1139954409)
        assert(GDExtensionManager._method_get_loaded_extensions_1139954409 != nil)
        let _method_get_extension_49743343_name = StringName(from: "get_extension")
        self._method_get_extension_49743343 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_extension_49743343_name._native_ptr(), 49743343)
        assert(GDExtensionManager._method_get_extension_49743343 != nil)
    }

    public func load_extension(path: String) -> GDExtensionManager.LoadStatus {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_extension_4024158731,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtensionManager.LoadStatus(from: __resPtr.pointee)
        }
    }
    public func reload_extension(path: String) -> GDExtensionManager.LoadStatus {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reload_extension_4024158731,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtensionManager.LoadStatus(from: __resPtr.pointee)
        }
    }
    public func unload_extension(path: String) -> GDExtensionManager.LoadStatus {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unload_extension_4024158731,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtensionManager.LoadStatus(from: __resPtr.pointee)
        }
    }
    public func is_extension_loaded(path: String) -> UInt8 {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_extension_loaded_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func get_loaded_extensions() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_loaded_extensions_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func get_extension(path: String) -> GDExtension {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_extension_49743343,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtension(from: __resPtr.pointee)
        }
    }
}