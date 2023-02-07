import godot_native

fileprivate var __godot_name_GDExtension: StringName! = nil

/// 
/// 
/// 
public class GDExtension : Resource {

    public enum InitializationLevel : Int32 {
        case INITIALIZATION_LEVEL_CORE = 0
        case INITIALIZATION_LEVEL_SERVERS = 1
        case INITIALIZATION_LEVEL_SCENE = 2
        case INITIALIZATION_LEVEL_EDITOR = 3
    }

    public override class var __godot_name: StringName { __godot_name_GDExtension }

    static var _method_open_library_852856452: GDExtensionMethodBindPtr! = nil
    static var _method_close_library_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_is_library_open_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_minimum_library_initialization_level_964858755: GDExtensionMethodBindPtr! = nil
    static var _method_initialize_library_3409922941: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_GDExtension = StringName(from: "GDExtension")

        let _method_open_library_852856452_name = StringName(from: "open_library")
        self._method_open_library_852856452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_open_library_852856452_name._native_ptr(), 852856452)
        assert(GDExtension._method_open_library_852856452 != nil)
        let _method_close_library_3218959716_name = StringName(from: "close_library")
        self._method_close_library_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_close_library_3218959716_name._native_ptr(), 3218959716)
        assert(GDExtension._method_close_library_3218959716 != nil)
        let _method_is_library_open_36873697_name = StringName(from: "is_library_open")
        self._method_is_library_open_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_library_open_36873697_name._native_ptr(), 36873697)
        assert(GDExtension._method_is_library_open_36873697 != nil)
        let _method_get_minimum_library_initialization_level_964858755_name = StringName(from: "get_minimum_library_initialization_level")
        self._method_get_minimum_library_initialization_level_964858755 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_minimum_library_initialization_level_964858755_name._native_ptr(), 964858755)
        assert(GDExtension._method_get_minimum_library_initialization_level_964858755 != nil)
        let _method_initialize_library_3409922941_name = StringName(from: "initialize_library")
        self._method_initialize_library_3409922941 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_initialize_library_3409922941_name._native_ptr(), 3409922941)
        assert(GDExtension._method_initialize_library_3409922941 != nil)
    }

    public func open_library(path: String, entry_symbol: String) -> Error {
        withUnsafePointer(to: entry_symbol) { entry_symbol_native in
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(entry_symbol_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_open_library_852856452,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
    }
    public func close_library()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_close_library_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_library_open() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_library_open_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_minimum_library_initialization_level() -> GDExtension.InitializationLevel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_minimum_library_initialization_level_964858755,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtension.InitializationLevel(from: __resPtr.pointee)
    }
    public func initialize_library(level: GDExtension.InitializationLevel)  {
        withUnsafePointer(to: level.rawValue) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_initialize_library_3409922941,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}