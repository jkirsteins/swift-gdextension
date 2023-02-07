import godot_native

fileprivate var __godot_name_Timer: StringName! = nil

/// A countdown timer.
/// 
/// Counts down a specified interval and emits a signal on reaching 0. Can be set to repeat or "one-shot" mode.
///  
/// [b]Note:[/b] To create a one-shot timer without instantiating a node, use [method SceneTree.create_timer].
public class Timer : Node {

    public enum TimerProcessCallback : Int32 {
        case TIMER_PROCESS_PHYSICS = 0
        case TIMER_PROCESS_IDLE = 1
    }

    public override class var __godot_name: StringName { __godot_name_Timer }

    static var _method_set_wait_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_wait_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_shot_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_one_shot_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_autostart_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_autostart_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_start_1392008558: GDExtensionMethodBindPtr! = nil
    static var _method_stop_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_paused_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_paused_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_is_stopped_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_time_left_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_timer_process_callback_3469495063: GDExtensionMethodBindPtr! = nil
    static var _method_get_timer_process_callback_2672570227: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Timer = StringName(from: "Timer")

        let _method_set_wait_time_373806689_name = StringName(from: "set_wait_time")
        self._method_set_wait_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_wait_time_373806689_name._native_ptr(), 373806689)
        assert(Timer._method_set_wait_time_373806689 != nil)
        let _method_get_wait_time_1740695150_name = StringName(from: "get_wait_time")
        self._method_get_wait_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_wait_time_1740695150_name._native_ptr(), 1740695150)
        assert(Timer._method_get_wait_time_1740695150 != nil)
        let _method_set_one_shot_2586408642_name = StringName(from: "set_one_shot")
        self._method_set_one_shot_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_one_shot_2586408642_name._native_ptr(), 2586408642)
        assert(Timer._method_set_one_shot_2586408642 != nil)
        let _method_is_one_shot_36873697_name = StringName(from: "is_one_shot")
        self._method_is_one_shot_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_one_shot_36873697_name._native_ptr(), 36873697)
        assert(Timer._method_is_one_shot_36873697 != nil)
        let _method_set_autostart_2586408642_name = StringName(from: "set_autostart")
        self._method_set_autostart_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_autostart_2586408642_name._native_ptr(), 2586408642)
        assert(Timer._method_set_autostart_2586408642 != nil)
        let _method_has_autostart_36873697_name = StringName(from: "has_autostart")
        self._method_has_autostart_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_autostart_36873697_name._native_ptr(), 36873697)
        assert(Timer._method_has_autostart_36873697 != nil)
        let _method_start_1392008558_name = StringName(from: "start")
        self._method_start_1392008558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_start_1392008558_name._native_ptr(), 1392008558)
        assert(Timer._method_start_1392008558 != nil)
        let _method_stop_3218959716_name = StringName(from: "stop")
        self._method_stop_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_stop_3218959716_name._native_ptr(), 3218959716)
        assert(Timer._method_stop_3218959716 != nil)
        let _method_set_paused_2586408642_name = StringName(from: "set_paused")
        self._method_set_paused_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_paused_2586408642_name._native_ptr(), 2586408642)
        assert(Timer._method_set_paused_2586408642 != nil)
        let _method_is_paused_36873697_name = StringName(from: "is_paused")
        self._method_is_paused_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_paused_36873697_name._native_ptr(), 36873697)
        assert(Timer._method_is_paused_36873697 != nil)
        let _method_is_stopped_36873697_name = StringName(from: "is_stopped")
        self._method_is_stopped_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_stopped_36873697_name._native_ptr(), 36873697)
        assert(Timer._method_is_stopped_36873697 != nil)
        let _method_get_time_left_1740695150_name = StringName(from: "get_time_left")
        self._method_get_time_left_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_time_left_1740695150_name._native_ptr(), 1740695150)
        assert(Timer._method_get_time_left_1740695150 != nil)
        let _method_set_timer_process_callback_3469495063_name = StringName(from: "set_timer_process_callback")
        self._method_set_timer_process_callback_3469495063 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_timer_process_callback_3469495063_name._native_ptr(), 3469495063)
        assert(Timer._method_set_timer_process_callback_3469495063 != nil)
        let _method_get_timer_process_callback_2672570227_name = StringName(from: "get_timer_process_callback")
        self._method_get_timer_process_callback_2672570227 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_timer_process_callback_2672570227_name._native_ptr(), 2672570227)
        assert(Timer._method_get_timer_process_callback_2672570227 != nil)
    }

    public func set_wait_time(time_sec: Float64)  {
        withUnsafePointer(to: time_sec) { time_sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_wait_time_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_wait_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_wait_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_one_shot(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_one_shot_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_one_shot() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_one_shot_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_autostart(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_autostart_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_autostart() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_autostart_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func start(time_sec: Float64)  {
        withUnsafePointer(to: time_sec) { time_sec_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_start_1392008558,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func stop()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_stop_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_paused(paused: UInt8)  {
        withUnsafePointer(to: paused) { paused_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(paused_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_paused_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_paused() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_paused_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func is_stopped() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_stopped_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_time_left() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_time_left_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_timer_process_callback(callback: Timer.TimerProcessCallback)  {
        withUnsafePointer(to: callback.rawValue) { callback_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_timer_process_callback_3469495063,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_timer_process_callback() -> Timer.TimerProcessCallback {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_timer_process_callback_2672570227,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Timer.TimerProcessCallback(from: __resPtr.pointee)
    }
}