import godot_native

fileprivate var __godot_name_EngineDebugger: StringName! = nil

/// Exposes the internal debugger.
/// 
/// [EngineDebugger] handles the communication between the editor and the running game. It is active in the running game. Messages can be sent/received through it. It also manages the profilers.
open class EngineDebugger : Object {

    

    public override class var __godot_name: StringName { __godot_name_EngineDebugger }

    static var _method_is_active_2240911060: StringName! = nil
    static var _method_register_profiler_3651669560: StringName! = nil
    static var _method_unregister_profiler_3304788590: StringName! = nil
    static var _method_is_profiling_2041966384: StringName! = nil
    static var _method_has_profiler_2041966384: StringName! = nil
    static var _method_profiler_add_frame_data_1895267858: StringName! = nil
    static var _method_profiler_enable_438160728: StringName! = nil
    static var _method_register_message_capture_1874754934: StringName! = nil
    static var _method_unregister_message_capture_3304788590: StringName! = nil
    static var _method_has_capture_2041966384: StringName! = nil
    static var _method_send_message_1209351045: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_EngineDebugger == nil)
        __godot_name_EngineDebugger = StringName(from: "EngineDebugger")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_is_active_2240911060 = StringName(from: "is_active")
        assert(self._method_is_active_2240911060 != nil)
        self._method_register_profiler_3651669560 = StringName(from: "register_profiler")
        assert(self._method_register_profiler_3651669560 != nil)
        self._method_unregister_profiler_3304788590 = StringName(from: "unregister_profiler")
        assert(self._method_unregister_profiler_3304788590 != nil)
        self._method_is_profiling_2041966384 = StringName(from: "is_profiling")
        assert(self._method_is_profiling_2041966384 != nil)
        self._method_has_profiler_2041966384 = StringName(from: "has_profiler")
        assert(self._method_has_profiler_2041966384 != nil)
        self._method_profiler_add_frame_data_1895267858 = StringName(from: "profiler_add_frame_data")
        assert(self._method_profiler_add_frame_data_1895267858 != nil)
        self._method_profiler_enable_438160728 = StringName(from: "profiler_enable")
        assert(self._method_profiler_enable_438160728 != nil)
        self._method_register_message_capture_1874754934 = StringName(from: "register_message_capture")
        assert(self._method_register_message_capture_1874754934 != nil)
        self._method_unregister_message_capture_3304788590 = StringName(from: "unregister_message_capture")
        assert(self._method_unregister_message_capture_3304788590 != nil)
        self._method_has_capture_2041966384 = StringName(from: "has_capture")
        assert(self._method_has_capture_2041966384 != nil)
        self._method_send_message_1209351045 = StringName(from: "send_message")
        assert(self._method_send_message_1209351045 != nil)
    }

    public func is_active() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_active_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_register_profiler_3651669560._native_ptr(),
                    3651669560)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unregister_profiler_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_profiling_2041966384._native_ptr(),
                    2041966384)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_profiler_2041966384._native_ptr(),
                    2041966384)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_profiler_add_frame_data_1895267858._native_ptr(),
                    1895267858)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_profiler_enable_438160728._native_ptr(),
                    438160728)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_register_message_capture_1874754934._native_ptr(),
                    1874754934)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_unregister_message_capture_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_capture_2041966384._native_ptr(),
                    2041966384)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func send_message(message: godot.String, data: Array)  {
        let data_native = data._native_ptr()
        let message_native = message._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(message_native), .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_send_message_1209351045._native_ptr(),
                    1209351045)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}