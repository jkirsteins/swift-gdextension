import godot_native

fileprivate var __godot_name_ResourceLoader: StringName! = nil

/// Singleton used to load resource files.
/// 
/// Singleton used to load resource files from the filesystem.
///  
/// It uses the many [ResourceFormatLoader] classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.
///  
/// [b]Note:[/b] You have to import the files into the engine first to load them using [method load]. If you want to load [Image]s at run-time, you may use [method Image.load]. If you want to import audio files, you can use the snippet described in [member AudioStreamMP3.data].
open class ResourceLoader : Object {

    public enum ThreadLoadStatus : Int32 {
        case THREAD_LOAD_INVALID_RESOURCE = 0
        case THREAD_LOAD_IN_PROGRESS = 1
        case THREAD_LOAD_FAILED = 2
        case THREAD_LOAD_LOADED = 3
    }
    public enum CacheMode : Int32 {
        case CACHE_MODE_IGNORE = 0
        case CACHE_MODE_REUSE = 1
        case CACHE_MODE_REPLACE = 2
    }

    public override class var __godot_name: StringName { __godot_name_ResourceLoader }

    static var _method_load_threaded_request_1939848623: StringName! = nil
    static var _method_load_threaded_get_status_3931021148: StringName! = nil
    static var _method_load_threaded_get_1748875256: StringName! = nil
    static var _method_load_2622212233: StringName! = nil
    static var _method_get_recognized_extensions_for_type_3538744774: StringName! = nil
    static var _method_add_resource_format_loader_2896595483: StringName! = nil
    static var _method_remove_resource_format_loader_405397102: StringName! = nil
    static var _method_set_abort_on_missing_resources_2586408642: StringName! = nil
    static var _method_get_dependencies_3538744774: StringName! = nil
    static var _method_has_cached_2323990056: StringName! = nil
    static var _method_exists_2220807150: StringName! = nil
    static var _method_get_resource_uid_1597066294: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ResourceLoader == nil)
        __godot_name_ResourceLoader = StringName(from: "ResourceLoader")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_load_threaded_request_1939848623 = StringName(from: "load_threaded_request")
        assert(self._method_load_threaded_request_1939848623 != nil)
        self._method_load_threaded_get_status_3931021148 = StringName(from: "load_threaded_get_status")
        assert(self._method_load_threaded_get_status_3931021148 != nil)
        self._method_load_threaded_get_1748875256 = StringName(from: "load_threaded_get")
        assert(self._method_load_threaded_get_1748875256 != nil)
        self._method_load_2622212233 = StringName(from: "load")
        assert(self._method_load_2622212233 != nil)
        self._method_get_recognized_extensions_for_type_3538744774 = StringName(from: "get_recognized_extensions_for_type")
        assert(self._method_get_recognized_extensions_for_type_3538744774 != nil)
        self._method_add_resource_format_loader_2896595483 = StringName(from: "add_resource_format_loader")
        assert(self._method_add_resource_format_loader_2896595483 != nil)
        self._method_remove_resource_format_loader_405397102 = StringName(from: "remove_resource_format_loader")
        assert(self._method_remove_resource_format_loader_405397102 != nil)
        self._method_set_abort_on_missing_resources_2586408642 = StringName(from: "set_abort_on_missing_resources")
        assert(self._method_set_abort_on_missing_resources_2586408642 != nil)
        self._method_get_dependencies_3538744774 = StringName(from: "get_dependencies")
        assert(self._method_get_dependencies_3538744774 != nil)
        self._method_has_cached_2323990056 = StringName(from: "has_cached")
        assert(self._method_has_cached_2323990056 != nil)
        self._method_exists_2220807150 = StringName(from: "exists")
        assert(self._method_exists_2220807150 != nil)
        self._method_get_resource_uid_1597066294 = StringName(from: "get_resource_uid")
        assert(self._method_get_resource_uid_1597066294 != nil)
    }

    public func load_threaded_request(path: godot.String, type_hint: godot.String, use_sub_threads: UInt8, cache_mode: ResourceLoader.CacheMode) -> Error {
        withUnsafePointer(to: use_sub_threads) { use_sub_threads_native in
        withUnsafePointer(to: cache_mode.rawValue) { cache_mode_native in
        let type_hint_native = type_hint._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_hint_native), .init(use_sub_threads_native), .init(cache_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_threaded_request_1939848623._native_ptr(),
                    1939848623)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func load_threaded_get_status(path: godot.String, progress: Array) -> ResourceLoader.ThreadLoadStatus {
        let progress_native = progress._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(progress_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_threaded_get_status_3931021148._native_ptr(),
                    3931021148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ResourceLoader.ThreadLoadStatus(godot: __resPtr.pointee)
    }
    public func load_threaded_get(path: godot.String) -> Resource {
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
                    Self._method_load_threaded_get_1748875256._native_ptr(),
                    1748875256)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
    }
    public func load(path: godot.String, type_hint: godot.String, cache_mode: ResourceLoader.CacheMode) -> Resource {
        withUnsafePointer(to: cache_mode.rawValue) { cache_mode_native in
        let type_hint_native = type_hint._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_hint_native), .init(cache_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_load_2622212233._native_ptr(),
                    2622212233)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(godot: __resPtr.pointee)
        }
    }
    public func get_recognized_extensions_for_type(`type`: godot.String) -> PackedStringArray {
        let type_native = `type`._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_recognized_extensions_for_type_3538744774._native_ptr(),
                    3538744774)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func add_resource_format_loader(format_loader: ResourceFormatLoader, at_front: UInt8)  {
        withUnsafePointer(to: at_front) { at_front_native in
        let format_loader_native = format_loader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_loader_native), .init(at_front_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_resource_format_loader_2896595483._native_ptr(),
                    2896595483)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func remove_resource_format_loader(format_loader: ResourceFormatLoader)  {
        let format_loader_native = format_loader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_loader_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_resource_format_loader_405397102._native_ptr(),
                    405397102)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_abort_on_missing_resources(abort: UInt8)  {
        withUnsafePointer(to: abort) { abort_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(abort_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_abort_on_missing_resources_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dependencies(path: godot.String) -> PackedStringArray {
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
                    Self._method_get_dependencies_3538744774._native_ptr(),
                    3538744774)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(godot: __resPtr.pointee)
    }
    public func has_cached(path: godot.String) -> UInt8 {
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
                    Self._method_has_cached_2323990056._native_ptr(),
                    2323990056)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func exists(path: godot.String, type_hint: godot.String) -> UInt8 {
        let type_hint_native = type_hint._native_ptr()
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_hint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_exists_2220807150._native_ptr(),
                    2220807150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_resource_uid(path: godot.String) -> Int64 {
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
                    Self._method_get_resource_uid_1597066294._native_ptr(),
                    1597066294)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}