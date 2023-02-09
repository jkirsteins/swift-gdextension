import godot_native

fileprivate var __godot_name_GDExtension: StringName! = nil

/// 
/// 
/// 
open class GDExtension : Resource {

    public enum InitializationLevel : Int32 {
        case INITIALIZATION_LEVEL_CORE = 0
        case INITIALIZATION_LEVEL_SERVERS = 1
        case INITIALIZATION_LEVEL_SCENE = 2
        case INITIALIZATION_LEVEL_EDITOR = 3
    }

    public override class var __godot_name: StringName { __godot_name_GDExtension }

    static var _method_open_library_852856452: StringName! = nil
    static var _method_close_library_3218959716: StringName! = nil
    static var _method_is_library_open_36873697: StringName! = nil
    static var _method_get_minimum_library_initialization_level_964858755: StringName! = nil
    static var _method_initialize_library_3409922941: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_GDExtension == nil)
        __godot_name_GDExtension = StringName(from: "GDExtension")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_open_library_852856452 = StringName(from: "open_library")
        assert(self._method_open_library_852856452 != nil)
        self._method_close_library_3218959716 = StringName(from: "close_library")
        assert(self._method_close_library_3218959716 != nil)
        self._method_is_library_open_36873697 = StringName(from: "is_library_open")
        assert(self._method_is_library_open_36873697 != nil)
        self._method_get_minimum_library_initialization_level_964858755 = StringName(from: "get_minimum_library_initialization_level")
        assert(self._method_get_minimum_library_initialization_level_964858755 != nil)
        self._method_initialize_library_3409922941 = StringName(from: "initialize_library")
        assert(self._method_initialize_library_3409922941 != nil)
    }

    public func open_library(path: godot.String, entry_symbol: godot.String) -> Error {
        let entry_symbol_native = entry_symbol._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(entry_symbol_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_open_library_852856452._native_ptr(),
                    852856452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
    }
    public func close_library()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_close_library_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_library_open_36873697._native_ptr(),
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
    public func get_minimum_library_initialization_level() -> GDExtension.InitializationLevel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_minimum_library_initialization_level_964858755._native_ptr(),
                    964858755)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GDExtension.InitializationLevel(godot: __resPtr.pointee)
    }
    public func initialize_library(level: GDExtension.InitializationLevel)  {
        withUnsafePointer(to: level.rawValue) { level_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(level_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_initialize_library_3409922941._native_ptr(),
                    3409922941)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}