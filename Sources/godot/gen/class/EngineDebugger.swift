import godot_native

fileprivate var __godot_name_EngineDebugger: StringName! = nil

/// Exposes the internal debugger.
/// 
/// [EngineDebugger] handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.
public class EngineDebugger : Object {

    

    public override class var __godot_name: StringName { __godot_name_EngineDebugger }

    static var _method_is_active_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_register_profiler_3651669560: GDExtensionMethodBindPtr! = nil
    static var _method_unregister_profiler_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_is_profiling_2041966384: GDExtensionMethodBindPtr! = nil
    static var _method_has_profiler_2041966384: GDExtensionMethodBindPtr! = nil
    static var _method_profiler_add_frame_data_1895267858: GDExtensionMethodBindPtr! = nil
    static var _method_profiler_enable_438160728: GDExtensionMethodBindPtr! = nil
    static var _method_register_message_capture_1874754934: GDExtensionMethodBindPtr! = nil
    static var _method_unregister_message_capture_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_has_capture_2041966384: GDExtensionMethodBindPtr! = nil
    static var _method_send_message_1209351045: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_EngineDebugger = StringName(from: "EngineDebugger")

        let _method_is_active_2240911060_name = StringName(from: "is_active")
        self._method_is_active_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_active_2240911060_name._native_ptr(), 2240911060)
        assert(EngineDebugger._method_is_active_2240911060 != nil)
        let _method_register_profiler_3651669560_name = StringName(from: "register_profiler")
        self._method_register_profiler_3651669560 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_register_profiler_3651669560_name._native_ptr(), 3651669560)
        assert(EngineDebugger._method_register_profiler_3651669560 != nil)
        let _method_unregister_profiler_3304788590_name = StringName(from: "unregister_profiler")
        self._method_unregister_profiler_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_unregister_profiler_3304788590_name._native_ptr(), 3304788590)
        assert(EngineDebugger._method_unregister_profiler_3304788590 != nil)
        let _method_is_profiling_2041966384_name = StringName(from: "is_profiling")
        self._method_is_profiling_2041966384 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_profiling_2041966384_name._native_ptr(), 2041966384)
        assert(EngineDebugger._method_is_profiling_2041966384 != nil)
        let _method_has_profiler_2041966384_name = StringName(from: "has_profiler")
        self._method_has_profiler_2041966384 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_profiler_2041966384_name._native_ptr(), 2041966384)
        assert(EngineDebugger._method_has_profiler_2041966384 != nil)
        let _method_profiler_add_frame_data_1895267858_name = StringName(from: "profiler_add_frame_data")
        self._method_profiler_add_frame_data_1895267858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_profiler_add_frame_data_1895267858_name._native_ptr(), 1895267858)
        assert(EngineDebugger._method_profiler_add_frame_data_1895267858 != nil)
        let _method_profiler_enable_438160728_name = StringName(from: "profiler_enable")
        self._method_profiler_enable_438160728 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_profiler_enable_438160728_name._native_ptr(), 438160728)
        assert(EngineDebugger._method_profiler_enable_438160728 != nil)
        let _method_register_message_capture_1874754934_name = StringName(from: "register_message_capture")
        self._method_register_message_capture_1874754934 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_register_message_capture_1874754934_name._native_ptr(), 1874754934)
        assert(EngineDebugger._method_register_message_capture_1874754934 != nil)
        let _method_unregister_message_capture_3304788590_name = StringName(from: "unregister_message_capture")
        self._method_unregister_message_capture_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_unregister_message_capture_3304788590_name._native_ptr(), 3304788590)
        assert(EngineDebugger._method_unregister_message_capture_3304788590 != nil)
        let _method_has_capture_2041966384_name = StringName(from: "has_capture")
        self._method_has_capture_2041966384 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_capture_2041966384_name._native_ptr(), 2041966384)
        assert(EngineDebugger._method_has_capture_2041966384 != nil)
        let _method_send_message_1209351045_name = StringName(from: "send_message")
        self._method_send_message_1209351045 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_send_message_1209351045_name._native_ptr(), 1209351045)
        assert(EngineDebugger._method_send_message_1209351045 != nil)
    }

    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_active_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func register_profiler(name: StringName, profiler: EngineProfiler)  {
        let profiler_native = profiler._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(profiler_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_profiler_3651669560,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unregister_profiler(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unregister_profiler_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_profiling(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_profiling_2041966384,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func has_profiler(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_profiler_2041966384,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func profiler_add_frame_data(name: StringName, data: Array)  {
        let data_native = data._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_profiler_add_frame_data_1895267858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func profiler_enable(name: StringName, enable: UInt8, arguments: Array)  {
        withUnsafePointer(to: enable) { enable_native in
        let arguments_native = arguments._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(enable_native), .init(arguments_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_profiler_enable_438160728,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func register_message_capture(name: StringName, callable: Callable)  {
        let callable_native = callable._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_register_message_capture_1874754934,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func unregister_message_capture(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_unregister_message_capture_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_capture(name: StringName) -> UInt8 {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_capture_2041966384,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func send_message(message: String, data: Array)  {
        withUnsafePointer(to: message) { message_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_send_message_1209351045,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}