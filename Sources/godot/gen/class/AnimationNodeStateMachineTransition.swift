import godot_native

fileprivate var __godot_name_AnimationNodeStateMachineTransition: StringName! = nil

/// 
/// 
/// 
open class AnimationNodeStateMachineTransition : Resource {

    public enum SwitchMode : Int32 {
        case SWITCH_MODE_IMMEDIATE = 0
        case SWITCH_MODE_SYNC = 1
        case SWITCH_MODE_AT_END = 2
    }
    public enum AdvanceMode : Int32 {
        case ADVANCE_MODE_DISABLED = 0
        case ADVANCE_MODE_ENABLED = 1
        case ADVANCE_MODE_AUTO = 2
    }

    public override class var __godot_name: StringName { __godot_name_AnimationNodeStateMachineTransition }

    static var _method_set_switch_mode_2074906633: StringName! = nil
    static var _method_get_switch_mode_2138562085: StringName! = nil
    static var _method_set_advance_mode_1210869868: StringName! = nil
    static var _method_get_advance_mode_61101689: StringName! = nil
    static var _method_set_advance_condition_3304788590: StringName! = nil
    static var _method_get_advance_condition_2002593661: StringName! = nil
    static var _method_set_xfade_time_373806689: StringName! = nil
    static var _method_get_xfade_time_1740695150: StringName! = nil
    static var _method_set_xfade_curve_270443179: StringName! = nil
    static var _method_get_xfade_curve_2460114913: StringName! = nil
    static var _method_set_reset_2586408642: StringName! = nil
    static var _method_is_reset_36873697: StringName! = nil
    static var _method_set_priority_1286410249: StringName! = nil
    static var _method_get_priority_3905245786: StringName! = nil
    static var _method_set_advance_expression_83702148: StringName! = nil
    static var _method_get_advance_expression_201670096: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_AnimationNodeStateMachineTransition == nil)
        __godot_name_AnimationNodeStateMachineTransition = StringName(from: "AnimationNodeStateMachineTransition")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_switch_mode_2074906633 = StringName(from: "set_switch_mode")
        assert(self._method_set_switch_mode_2074906633 != nil)
        self._method_get_switch_mode_2138562085 = StringName(from: "get_switch_mode")
        assert(self._method_get_switch_mode_2138562085 != nil)
        self._method_set_advance_mode_1210869868 = StringName(from: "set_advance_mode")
        assert(self._method_set_advance_mode_1210869868 != nil)
        self._method_get_advance_mode_61101689 = StringName(from: "get_advance_mode")
        assert(self._method_get_advance_mode_61101689 != nil)
        self._method_set_advance_condition_3304788590 = StringName(from: "set_advance_condition")
        assert(self._method_set_advance_condition_3304788590 != nil)
        self._method_get_advance_condition_2002593661 = StringName(from: "get_advance_condition")
        assert(self._method_get_advance_condition_2002593661 != nil)
        self._method_set_xfade_time_373806689 = StringName(from: "set_xfade_time")
        assert(self._method_set_xfade_time_373806689 != nil)
        self._method_get_xfade_time_1740695150 = StringName(from: "get_xfade_time")
        assert(self._method_get_xfade_time_1740695150 != nil)
        self._method_set_xfade_curve_270443179 = StringName(from: "set_xfade_curve")
        assert(self._method_set_xfade_curve_270443179 != nil)
        self._method_get_xfade_curve_2460114913 = StringName(from: "get_xfade_curve")
        assert(self._method_get_xfade_curve_2460114913 != nil)
        self._method_set_reset_2586408642 = StringName(from: "set_reset")
        assert(self._method_set_reset_2586408642 != nil)
        self._method_is_reset_36873697 = StringName(from: "is_reset")
        assert(self._method_is_reset_36873697 != nil)
        self._method_set_priority_1286410249 = StringName(from: "set_priority")
        assert(self._method_set_priority_1286410249 != nil)
        self._method_get_priority_3905245786 = StringName(from: "get_priority")
        assert(self._method_get_priority_3905245786 != nil)
        self._method_set_advance_expression_83702148 = StringName(from: "set_advance_expression")
        assert(self._method_set_advance_expression_83702148 != nil)
        self._method_get_advance_expression_201670096 = StringName(from: "get_advance_expression")
        assert(self._method_get_advance_expression_201670096 != nil)
    }

    public func set_switch_mode(mode: AnimationNodeStateMachineTransition.SwitchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_switch_mode_2074906633._native_ptr(),
                    2074906633)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_switch_mode() -> AnimationNodeStateMachineTransition.SwitchMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_switch_mode_2138562085._native_ptr(),
                    2138562085)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeStateMachineTransition.SwitchMode(godot: __resPtr.pointee)
    }
    public func set_advance_mode(mode: AnimationNodeStateMachineTransition.AdvanceMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_advance_mode_1210869868._native_ptr(),
                    1210869868)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_advance_mode() -> AnimationNodeStateMachineTransition.AdvanceMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_advance_mode_61101689._native_ptr(),
                    61101689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AnimationNodeStateMachineTransition.AdvanceMode(godot: __resPtr.pointee)
    }
    public func set_advance_condition(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_advance_condition_3304788590._native_ptr(),
                    3304788590)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_advance_condition() -> StringName {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_advance_condition_2002593661._native_ptr(),
                    2002593661)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return StringName(godot: __resPtr.pointee)
    }
    public func set_xfade_time(secs: Float64)  {
        withUnsafePointer(to: secs) { secs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(secs_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_xfade_time_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_xfade_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_xfade_time_1740695150._native_ptr(),
                    1740695150)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_xfade_curve(curve: Curve)  {
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(curve_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_xfade_curve_270443179._native_ptr(),
                    270443179)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_xfade_curve() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_xfade_curve_2460114913._native_ptr(),
                    2460114913)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
    public func set_reset(reset: UInt8)  {
        withUnsafePointer(to: reset) { reset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(reset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_reset_2586408642._native_ptr(),
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
    public func is_reset() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_reset_36873697._native_ptr(),
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
    public func set_priority(priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(priority_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_priority_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_priority() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_priority_3905245786._native_ptr(),
                    3905245786)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_advance_expression(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_advance_expression_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_advance_expression() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_advance_expression_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}