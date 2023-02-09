import godot_native

fileprivate var __godot_name_EditorDebuggerSession: StringName! = nil

/// A class to interact with the editor debugger.
/// 
/// This class cannot be directly instantiated and must be retrieved via a [EditorDebuggerPlugin].
///  
/// You can add tabs to the session UI via [method add_session_tab], send messages via [method send_message], and toggle [EngineProfiler]s via [method toggle_profiler].
open class EditorDebuggerSession : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_EditorDebuggerSession }

    static var _method_send_message_3780025912: StringName! = nil
    static var _method_toggle_profiler_35674246: StringName! = nil
    static var _method_is_breaked_2240911060: StringName! = nil
    static var _method_is_debuggable_2240911060: StringName! = nil
    static var _method_is_active_2240911060: StringName! = nil
    static var _method_add_session_tab_1496901182: StringName! = nil
    static var _method_remove_session_tab_1496901182: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_EDITOR else { return }

        assert(__godot_name_EditorDebuggerSession == nil)
        __godot_name_EditorDebuggerSession = StringName(from: "EditorDebuggerSession")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_send_message_3780025912 = StringName(from: "send_message")
        assert(self._method_send_message_3780025912 != nil)
        self._method_toggle_profiler_35674246 = StringName(from: "toggle_profiler")
        assert(self._method_toggle_profiler_35674246 != nil)
        self._method_is_breaked_2240911060 = StringName(from: "is_breaked")
        assert(self._method_is_breaked_2240911060 != nil)
        self._method_is_debuggable_2240911060 = StringName(from: "is_debuggable")
        assert(self._method_is_debuggable_2240911060 != nil)
        self._method_is_active_2240911060 = StringName(from: "is_active")
        assert(self._method_is_active_2240911060 != nil)
        self._method_add_session_tab_1496901182 = StringName(from: "add_session_tab")
        assert(self._method_add_session_tab_1496901182 != nil)
        self._method_remove_session_tab_1496901182 = StringName(from: "remove_session_tab")
        assert(self._method_remove_session_tab_1496901182 != nil)
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
                    Self._method_send_message_3780025912._native_ptr(),
                    3780025912)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func toggle_profiler(profiler: godot.String, enable: UInt8, data: Array)  {
        withUnsafePointer(to: enable) { enable_native in
        let data_native = data._native_ptr()
        let profiler_native = profiler._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(profiler_native), .init(enable_native), .init(data_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_toggle_profiler_35674246._native_ptr(),
                    35674246)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_breaked() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_breaked_2240911060._native_ptr(),
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
    public func is_debuggable() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_debuggable_2240911060._native_ptr(),
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
    public func add_session_tab(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_session_tab_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_session_tab(control: Control)  {
        let control_native = control._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(control_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_remove_session_tab_1496901182._native_ptr(),
                    1496901182)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}