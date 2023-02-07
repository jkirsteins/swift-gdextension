import godot_native

fileprivate var __godot_name_AnimationNodeTransition: StringName! = nil

/// A generic animation transition node for [AnimationTree].
/// 
/// Simple state machine for cases which don't require a more advanced [AnimationNodeStateMachine]. Animations can be connected to the inputs and transition times can be specified.
public class AnimationNodeTransition : AnimationNodeSync {

    

    public override class var __godot_name: StringName { __godot_name_AnimationNodeTransition }

    static var _method_set_input_count_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_as_auto_advance_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_input_set_as_auto_advance_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_input_reset_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_is_input_reset_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_xfade_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_xfade_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_xfade_curve_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_xfade_curve_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_allow_transition_to_self_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_allow_transition_to_self_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_AnimationNodeTransition = StringName(from: "AnimationNodeTransition")

        let _method_set_input_count_1286410249_name = StringName(from: "set_input_count")
        self._method_set_input_count_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_count_1286410249_name._native_ptr(), 1286410249)
        assert(AnimationNodeTransition._method_set_input_count_1286410249 != nil)
        let _method_set_input_as_auto_advance_300928843_name = StringName(from: "set_input_as_auto_advance")
        self._method_set_input_as_auto_advance_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_as_auto_advance_300928843_name._native_ptr(), 300928843)
        assert(AnimationNodeTransition._method_set_input_as_auto_advance_300928843 != nil)
        let _method_is_input_set_as_auto_advance_1116898809_name = StringName(from: "is_input_set_as_auto_advance")
        self._method_is_input_set_as_auto_advance_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_input_set_as_auto_advance_1116898809_name._native_ptr(), 1116898809)
        assert(AnimationNodeTransition._method_is_input_set_as_auto_advance_1116898809 != nil)
        let _method_set_input_reset_300928843_name = StringName(from: "set_input_reset")
        self._method_set_input_reset_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_input_reset_300928843_name._native_ptr(), 300928843)
        assert(AnimationNodeTransition._method_set_input_reset_300928843 != nil)
        let _method_is_input_reset_1116898809_name = StringName(from: "is_input_reset")
        self._method_is_input_reset_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_input_reset_1116898809_name._native_ptr(), 1116898809)
        assert(AnimationNodeTransition._method_is_input_reset_1116898809 != nil)
        let _method_set_xfade_time_373806689_name = StringName(from: "set_xfade_time")
        self._method_set_xfade_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_xfade_time_373806689_name._native_ptr(), 373806689)
        assert(AnimationNodeTransition._method_set_xfade_time_373806689 != nil)
        let _method_get_xfade_time_1740695150_name = StringName(from: "get_xfade_time")
        self._method_get_xfade_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_xfade_time_1740695150_name._native_ptr(), 1740695150)
        assert(AnimationNodeTransition._method_get_xfade_time_1740695150 != nil)
        let _method_set_xfade_curve_270443179_name = StringName(from: "set_xfade_curve")
        self._method_set_xfade_curve_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_xfade_curve_270443179_name._native_ptr(), 270443179)
        assert(AnimationNodeTransition._method_set_xfade_curve_270443179 != nil)
        let _method_get_xfade_curve_2460114913_name = StringName(from: "get_xfade_curve")
        self._method_get_xfade_curve_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_xfade_curve_2460114913_name._native_ptr(), 2460114913)
        assert(AnimationNodeTransition._method_get_xfade_curve_2460114913 != nil)
        let _method_set_allow_transition_to_self_2586408642_name = StringName(from: "set_allow_transition_to_self")
        self._method_set_allow_transition_to_self_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_allow_transition_to_self_2586408642_name._native_ptr(), 2586408642)
        assert(AnimationNodeTransition._method_set_allow_transition_to_self_2586408642 != nil)
        let _method_is_allow_transition_to_self_36873697_name = StringName(from: "is_allow_transition_to_self")
        self._method_is_allow_transition_to_self_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_allow_transition_to_self_36873697_name._native_ptr(), 36873697)
        assert(AnimationNodeTransition._method_is_allow_transition_to_self_36873697 != nil)
    }

    public func set_input_count(input_count: Int64)  {
        withUnsafePointer(to: input_count) { input_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_count_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_input_as_auto_advance(input: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: input) { input_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_as_auto_advance_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_input_set_as_auto_advance(input: Int64) -> UInt8 {
        withUnsafePointer(to: input) { input_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_input_set_as_auto_advance_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_input_reset(input: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: input) { input_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_input_reset_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func is_input_reset(input: Int64) -> UInt8 {
        withUnsafePointer(to: input) { input_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(input_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_input_reset_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_xfade_time(time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(time_native)
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
            return Float64(from: __resPtr.pointee)
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
            return Curve(from: __resPtr.pointee)
    }
    public func set_allow_transition_to_self(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_allow_transition_to_self_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_allow_transition_to_self() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_allow_transition_to_self_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}