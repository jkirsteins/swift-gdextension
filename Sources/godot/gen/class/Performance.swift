import godot_native

fileprivate var __godot_name_Performance: StringName! = nil

/// Exposes performance-related data.
/// 
/// This class provides access to a number of different monitors related to performance, such as memory usage, draw calls, and FPS. These are the same as the values displayed in the [b]Monitor[/b] tab in the editor's [b]Debugger[/b] panel. By using the [method get_monitor] method of this class, you can access this data from your code.
///  
/// You can add custom monitors using the [method add_custom_monitor] method. Custom monitors are available in [b]Monitor[/b] tab in the editor's [b]Debugger[/b] panel together with built-in monitors.
///  
/// [b]Note:[/b] Some of the built-in monitors are only available in debug mode and will always return [code]0[/code] when used in a project exported in release mode.
///  
/// [b]Note:[/b] Some of the built-in monitors are not updated in real-time for performance reasons, so there may be a delay of up to 1 second between changes.
///  
/// [b]Note:[/b] Custom monitors do not support negative values. Negative values are clamped to 0.
open class Performance : Object {

    public enum Monitor : Int32 {
        case TIME_FPS = 0
        case TIME_PROCESS = 1
        case TIME_PHYSICS_PROCESS = 2
        case TIME_NAVIGATION_PROCESS = 3
        case MEMORY_STATIC = 4
        case MEMORY_STATIC_MAX = 5
        case MEMORY_MESSAGE_BUFFER_MAX = 6
        case OBJECT_COUNT = 7
        case OBJECT_RESOURCE_COUNT = 8
        case OBJECT_NODE_COUNT = 9
        case OBJECT_ORPHAN_NODE_COUNT = 10
        case RENDER_TOTAL_OBJECTS_IN_FRAME = 11
        case RENDER_TOTAL_PRIMITIVES_IN_FRAME = 12
        case RENDER_TOTAL_DRAW_CALLS_IN_FRAME = 13
        case RENDER_VIDEO_MEM_USED = 14
        case RENDER_TEXTURE_MEM_USED = 15
        case RENDER_BUFFER_MEM_USED = 16
        case PHYSICS_2D_ACTIVE_OBJECTS = 17
        case PHYSICS_2D_COLLISION_PAIRS = 18
        case PHYSICS_2D_ISLAND_COUNT = 19
        case PHYSICS_3D_ACTIVE_OBJECTS = 20
        case PHYSICS_3D_COLLISION_PAIRS = 21
        case PHYSICS_3D_ISLAND_COUNT = 22
        case AUDIO_OUTPUT_LATENCY = 23
        case NAVIGATION_ACTIVE_MAPS = 24
        case NAVIGATION_REGION_COUNT = 25
        case NAVIGATION_AGENT_COUNT = 26
        case NAVIGATION_LINK_COUNT = 27
        case NAVIGATION_POLYGON_COUNT = 28
        case NAVIGATION_EDGE_COUNT = 29
        case NAVIGATION_EDGE_MERGE_COUNT = 30
        case NAVIGATION_EDGE_CONNECTION_COUNT = 31
        case NAVIGATION_EDGE_FREE_COUNT = 32
        case MONITOR_MAX = 33
    }

    public override class var __godot_name: StringName { __godot_name_Performance }

    static var _method_get_monitor_1943275655: GDExtensionMethodBindPtr! = nil
    static var _method_add_custom_monitor_2865980031: GDExtensionMethodBindPtr! = nil
    static var _method_remove_custom_monitor_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_has_custom_monitor_2041966384: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_monitor_2138907829: GDExtensionMethodBindPtr! = nil
    static var _method_get_monitor_modification_time_2455072627: GDExtensionMethodBindPtr! = nil
    static var _method_get_custom_monitor_names_2915620761: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_Performance = StringName(from: "Performance")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_monitor_1943275655_name = StringName(from: "get_monitor")
        self._method_get_monitor_1943275655 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_get_monitor_1943275655_name._native_ptr(), 1943275655)
        assert(Performance._method_get_monitor_1943275655 != nil)
        let _method_add_custom_monitor_2865980031_name = StringName(from: "add_custom_monitor")
        self._method_add_custom_monitor_2865980031 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_add_custom_monitor_2865980031_name._native_ptr(), 2865980031)
        assert(Performance._method_add_custom_monitor_2865980031 != nil)
        let _method_remove_custom_monitor_3304788590_name = StringName(from: "remove_custom_monitor")
        self._method_remove_custom_monitor_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_remove_custom_monitor_3304788590_name._native_ptr(), 3304788590)
        assert(Performance._method_remove_custom_monitor_3304788590 != nil)
        let _method_has_custom_monitor_2041966384_name = StringName(from: "has_custom_monitor")
        self._method_has_custom_monitor_2041966384 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_has_custom_monitor_2041966384_name._native_ptr(), 2041966384)
        assert(Performance._method_has_custom_monitor_2041966384 != nil)
        let _method_get_custom_monitor_2138907829_name = StringName(from: "get_custom_monitor")
        self._method_get_custom_monitor_2138907829 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_get_custom_monitor_2138907829_name._native_ptr(), 2138907829)
        assert(Performance._method_get_custom_monitor_2138907829 != nil)
        let _method_get_monitor_modification_time_2455072627_name = StringName(from: "get_monitor_modification_time")
        self._method_get_monitor_modification_time_2455072627 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_get_monitor_modification_time_2455072627_name._native_ptr(), 2455072627)
        assert(Performance._method_get_monitor_modification_time_2455072627 != nil)
        let _method_get_custom_monitor_names_2915620761_name = StringName(from: "get_custom_monitor_names")
        self._method_get_custom_monitor_names_2915620761 = self.interface.pointee.classdb_get_method_bind(__godot_name_Performance._native_ptr(), _method_get_custom_monitor_names_2915620761_name._native_ptr(), 2915620761)
        assert(Performance._method_get_custom_monitor_names_2915620761 != nil)
    }

    public func get_monitor(monitor: Performance.Monitor) -> Float64 {
        withUnsafePointer(to: monitor.rawValue) { monitor_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(monitor_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_monitor_1943275655,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func add_custom_monitor(id: StringName, callable: Callable, arguments: Array)  {
        let arguments_native = arguments._native_ptr()
        let callable_native = callable._native_ptr()
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(callable_native), .init(arguments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_custom_monitor_2865980031,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_custom_monitor(id: StringName)  {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_custom_monitor_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_custom_monitor(id: StringName) -> UInt8 {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_custom_monitor_2041966384,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_custom_monitor(id: StringName) -> Variant {
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_monitor_2138907829,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func get_monitor_modification_time() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_monitor_modification_time_2455072627,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_custom_monitor_names() -> [StringName] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_custom_monitor_names_2915620761,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [StringName](godot: __resPtr.pointee)
    }
}