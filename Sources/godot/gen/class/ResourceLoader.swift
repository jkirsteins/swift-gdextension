import godot_native

fileprivate var __godot_name_ResourceLoader: StringName! = nil

/// Singleton used to load resource files.
/// 
/// Singleton used to load resource files from the filesystem.
///  
/// It uses the many [ResourceFormatLoader] classes registered in the engine (either built-in or from a plugin) to load files into memory and convert them to a format that can be used by the engine.
///  
/// [b]Note:[/b] You have to import the files into the engine first to load them using [method load]. If you want to load [Image]s at run-time, you may use [method Image.load]. If you want to import audio files, you can use the snippet described in [member AudioStreamMP3.data].
public class ResourceLoader : Object {

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

    static var _method_load_threaded_request_1939848623: GDExtensionMethodBindPtr! = nil
    static var _method_load_threaded_get_status_3931021148: GDExtensionMethodBindPtr! = nil
    static var _method_load_threaded_get_1748875256: GDExtensionMethodBindPtr! = nil
    static var _method_load_2622212233: GDExtensionMethodBindPtr! = nil
    static var _method_get_recognized_extensions_for_type_3538744774: GDExtensionMethodBindPtr! = nil
    static var _method_add_resource_format_loader_2896595483: GDExtensionMethodBindPtr! = nil
    static var _method_remove_resource_format_loader_405397102: GDExtensionMethodBindPtr! = nil
    static var _method_set_abort_on_missing_resources_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_dependencies_3538744774: GDExtensionMethodBindPtr! = nil
    static var _method_has_cached_2323990056: GDExtensionMethodBindPtr! = nil
    static var _method_exists_2220807150: GDExtensionMethodBindPtr! = nil
    static var _method_get_resource_uid_1597066294: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_ResourceLoader = StringName(from: "ResourceLoader")

        let _method_load_threaded_request_1939848623_name = StringName(from: "load_threaded_request")
        self._method_load_threaded_request_1939848623 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_threaded_request_1939848623_name._native_ptr(), 1939848623)
        assert(ResourceLoader._method_load_threaded_request_1939848623 != nil)
        let _method_load_threaded_get_status_3931021148_name = StringName(from: "load_threaded_get_status")
        self._method_load_threaded_get_status_3931021148 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_threaded_get_status_3931021148_name._native_ptr(), 3931021148)
        assert(ResourceLoader._method_load_threaded_get_status_3931021148 != nil)
        let _method_load_threaded_get_1748875256_name = StringName(from: "load_threaded_get")
        self._method_load_threaded_get_1748875256 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_threaded_get_1748875256_name._native_ptr(), 1748875256)
        assert(ResourceLoader._method_load_threaded_get_1748875256 != nil)
        let _method_load_2622212233_name = StringName(from: "load")
        self._method_load_2622212233 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_load_2622212233_name._native_ptr(), 2622212233)
        assert(ResourceLoader._method_load_2622212233 != nil)
        let _method_get_recognized_extensions_for_type_3538744774_name = StringName(from: "get_recognized_extensions_for_type")
        self._method_get_recognized_extensions_for_type_3538744774 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_recognized_extensions_for_type_3538744774_name._native_ptr(), 3538744774)
        assert(ResourceLoader._method_get_recognized_extensions_for_type_3538744774 != nil)
        let _method_add_resource_format_loader_2896595483_name = StringName(from: "add_resource_format_loader")
        self._method_add_resource_format_loader_2896595483 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_resource_format_loader_2896595483_name._native_ptr(), 2896595483)
        assert(ResourceLoader._method_add_resource_format_loader_2896595483 != nil)
        let _method_remove_resource_format_loader_405397102_name = StringName(from: "remove_resource_format_loader")
        self._method_remove_resource_format_loader_405397102 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_resource_format_loader_405397102_name._native_ptr(), 405397102)
        assert(ResourceLoader._method_remove_resource_format_loader_405397102 != nil)
        let _method_set_abort_on_missing_resources_2586408642_name = StringName(from: "set_abort_on_missing_resources")
        self._method_set_abort_on_missing_resources_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_abort_on_missing_resources_2586408642_name._native_ptr(), 2586408642)
        assert(ResourceLoader._method_set_abort_on_missing_resources_2586408642 != nil)
        let _method_get_dependencies_3538744774_name = StringName(from: "get_dependencies")
        self._method_get_dependencies_3538744774 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_dependencies_3538744774_name._native_ptr(), 3538744774)
        assert(ResourceLoader._method_get_dependencies_3538744774 != nil)
        let _method_has_cached_2323990056_name = StringName(from: "has_cached")
        self._method_has_cached_2323990056 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_cached_2323990056_name._native_ptr(), 2323990056)
        assert(ResourceLoader._method_has_cached_2323990056 != nil)
        let _method_exists_2220807150_name = StringName(from: "exists")
        self._method_exists_2220807150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_exists_2220807150_name._native_ptr(), 2220807150)
        assert(ResourceLoader._method_exists_2220807150 != nil)
        let _method_get_resource_uid_1597066294_name = StringName(from: "get_resource_uid")
        self._method_get_resource_uid_1597066294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_resource_uid_1597066294_name._native_ptr(), 1597066294)
        assert(ResourceLoader._method_get_resource_uid_1597066294 != nil)
    }

    public func load_threaded_request(path: String, type_hint: String, use_sub_threads: UInt8, cache_mode: ResourceLoader.CacheMode) -> Error {
        withUnsafePointer(to: use_sub_threads) { use_sub_threads_native in
        withUnsafePointer(to: type_hint) { type_hint_native in
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: cache_mode.rawValue) { cache_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_hint_native), .init(use_sub_threads_native), .init(cache_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_threaded_request_1939848623,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func load_threaded_get_status(path: String, progress: Array) -> ResourceLoader.ThreadLoadStatus {
        withUnsafePointer(to: path) { path_native in
        let progress_native = progress._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(progress_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_threaded_get_status_3931021148,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ResourceLoader.ThreadLoadStatus(from: __resPtr.pointee)
        }
    }
    public func load_threaded_get(path: String) -> Resource {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_threaded_get_1748875256,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
        }
    }
    public func load(path: String, type_hint: String, cache_mode: ResourceLoader.CacheMode) -> Resource {
        withUnsafePointer(to: type_hint) { type_hint_native in
        withUnsafePointer(to: path) { path_native in
        withUnsafePointer(to: cache_mode.rawValue) { cache_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_hint_native), .init(cache_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_load_2622212233,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Resource(from: __resPtr.pointee)
        }
        }
        }
    }
    public func get_recognized_extensions_for_type(`type`: String) -> PackedStringArray {
        withUnsafePointer(to: `type`) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_recognized_extensions_for_type_3538744774,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_resource_format_loader_2896595483,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_resource_format_loader_405397102,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_abort_on_missing_resources_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_dependencies(path: String) -> PackedStringArray {
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_dependencies_3538744774,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
        }
    }
    public func has_cached(path: String) -> UInt8 {
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
                    Self._method_has_cached_2323990056,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func exists(path: String, type_hint: String) -> UInt8 {
        withUnsafePointer(to: type_hint) { type_hint_native in
        withUnsafePointer(to: path) { path_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native), .init(type_hint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_exists_2220807150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func get_resource_uid(path: String) -> Int64 {
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
                    Self._method_get_resource_uid_1597066294,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
}