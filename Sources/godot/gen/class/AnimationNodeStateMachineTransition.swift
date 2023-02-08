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

    static var _method_set_switch_mode_2074906633: GDExtensionMethodBindPtr! = nil
    static var _method_get_switch_mode_2138562085: GDExtensionMethodBindPtr! = nil
    static var _method_set_advance_mode_1210869868: GDExtensionMethodBindPtr! = nil
    static var _method_get_advance_mode_61101689: GDExtensionMethodBindPtr! = nil
    static var _method_set_advance_condition_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_get_advance_condition_2002593661: GDExtensionMethodBindPtr! = nil
    static var _method_set_xfade_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_xfade_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_xfade_curve_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_xfade_curve_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_reset_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_reset_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_priority_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_priority_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_advance_expression_83702148: GDExtensionMethodBindPtr! = nil
    static var _method_get_advance_expression_201670096: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_AnimationNodeStateMachineTransition = StringName(from: "AnimationNodeStateMachineTransition")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_switch_mode_2074906633_name = StringName(from: "set_switch_mode")
        self._method_set_switch_mode_2074906633 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_switch_mode_2074906633_name._native_ptr(), 2074906633)
        assert(AnimationNodeStateMachineTransition._method_set_switch_mode_2074906633 != nil)
        let _method_get_switch_mode_2138562085_name = StringName(from: "get_switch_mode")
        self._method_get_switch_mode_2138562085 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_switch_mode_2138562085_name._native_ptr(), 2138562085)
        assert(AnimationNodeStateMachineTransition._method_get_switch_mode_2138562085 != nil)
        let _method_set_advance_mode_1210869868_name = StringName(from: "set_advance_mode")
        self._method_set_advance_mode_1210869868 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_advance_mode_1210869868_name._native_ptr(), 1210869868)
        assert(AnimationNodeStateMachineTransition._method_set_advance_mode_1210869868 != nil)
        let _method_get_advance_mode_61101689_name = StringName(from: "get_advance_mode")
        self._method_get_advance_mode_61101689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_advance_mode_61101689_name._native_ptr(), 61101689)
        assert(AnimationNodeStateMachineTransition._method_get_advance_mode_61101689 != nil)
        let _method_set_advance_condition_3304788590_name = StringName(from: "set_advance_condition")
        self._method_set_advance_condition_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_advance_condition_3304788590_name._native_ptr(), 3304788590)
        assert(AnimationNodeStateMachineTransition._method_set_advance_condition_3304788590 != nil)
        let _method_get_advance_condition_2002593661_name = StringName(from: "get_advance_condition")
        self._method_get_advance_condition_2002593661 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_advance_condition_2002593661_name._native_ptr(), 2002593661)
        assert(AnimationNodeStateMachineTransition._method_get_advance_condition_2002593661 != nil)
        let _method_set_xfade_time_373806689_name = StringName(from: "set_xfade_time")
        self._method_set_xfade_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_xfade_time_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeStateMachineTransition._method_set_xfade_time_373806689 != nil)
        let _method_get_xfade_time_1740695150_name = StringName(from: "get_xfade_time")
        self._method_get_xfade_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_xfade_time_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeStateMachineTransition._method_get_xfade_time_1740695150 != nil)
        let _method_set_xfade_curve_270443179_name = StringName(from: "set_xfade_curve")
        self._method_set_xfade_curve_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_xfade_curve_270443179_name._native_ptr(), 270443179)
        assert(AnimationNodeStateMachineTransition._method_set_xfade_curve_270443179 != nil)
        let _method_get_xfade_curve_2460114913_name = StringName(from: "get_xfade_curve")
        self._method_get_xfade_curve_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_xfade_curve_2460114913_name._native_ptr(), 2460114913)
        assert(AnimationNodeStateMachineTransition._method_get_xfade_curve_2460114913 != nil)
        let _method_set_reset_2586408642_name = StringName(from: "set_reset")
        self._method_set_reset_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_reset_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeStateMachineTransition._method_set_reset_2586408642 != nil)
        let _method_is_reset_36873697_name = StringName(from: "is_reset")
        self._method_is_reset_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_is_reset_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeStateMachineTransition._method_is_reset_36873697 != nil)
        let _method_set_priority_1286410249_name = StringName(from: "set_priority")
        self._method_set_priority_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_priority_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNodeStateMachineTransition._method_set_priority_1286410249 != nil)
        let _method_get_priority_3905245786_name = StringName(from: "get_priority")
        self._method_get_priority_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_priority_3905245786_name._native_ptr(), 3905245786)
        assert(AnimationNodeStateMachineTransition._method_get_priority_3905245786 != nil)
        let _method_set_advance_expression_83702148_name = StringName(from: "set_advance_expression")
        self._method_set_advance_expression_83702148 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_set_advance_expression_83702148_name._native_ptr(), 83702148)
        assert(AnimationNodeStateMachineTransition._method_set_advance_expression_83702148 != nil)
        let _method_get_advance_expression_201670096_name = StringName(from: "get_advance_expression")
        self._method_get_advance_expression_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name_AnimationNodeStateMachineTransition._native_ptr(), _method_get_advance_expression_201670096_name._native_ptr(), 201670096)
        assert(AnimationNodeStateMachineTransition._method_get_advance_expression_201670096 != nil)
    }

    public func set_switch_mode(mode: AnimationNodeStateMachineTransition.SwitchMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_switch_mode_2074906633,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_switch_mode_2138562085,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_advance_mode_1210869868,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_advance_mode_61101689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_advance_condition_3304788590,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_advance_condition_2002593661,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_xfade_time_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_xfade_time_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_xfade_curve_270443179,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_xfade_curve_2460114913,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reset_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_reset_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_priority_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_priority_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_advance_expression_83702148,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_advance_expression_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
}