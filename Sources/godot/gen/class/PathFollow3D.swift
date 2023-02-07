import godot_native

fileprivate var __godot_name_PathFollow3D: StringName! = nil

/// Point sampler for a [Path3D].
/// 
/// This node takes its parent [Path3D], and returns the coordinates of a point within it, given a distance from the first vertex.
///  
/// It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the [member progress] in this node.
public class PathFollow3D : Node3D {

    public enum RotationMode : Int32 {
        case ROTATION_NONE = 0
        case ROTATION_Y = 1
        case ROTATION_XY = 2
        case ROTATION_XYZ = 3
        case ROTATION_ORIENTED = 4
    }

    public override class var __godot_name: StringName { __godot_name_PathFollow3D }

    static var _method_set_progress_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_progress_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_h_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_h_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_v_offset_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_v_offset_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_progress_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_progress_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rotation_mode_1640311967: GDExtensionMethodBindPtr! = nil
    static var _method_get_rotation_mode_3814010545: GDExtensionMethodBindPtr! = nil
    static var _method_set_cubic_interpolation_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_cubic_interpolation_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_loop_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_has_loop_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_tilt_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_tilt_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_correct_posture_2686588690: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PathFollow3D = StringName(from: "PathFollow3D")

        let _method_set_progress_373806689_name = StringName(from: "set_progress")
        self._method_set_progress_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_progress_373806689_name._native_ptr(), 373806689)
        assert(PathFollow3D._method_set_progress_373806689 != nil)
        let _method_get_progress_1740695150_name = StringName(from: "get_progress")
        self._method_get_progress_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_progress_1740695150_name._native_ptr(), 1740695150)
        assert(PathFollow3D._method_get_progress_1740695150 != nil)
        let _method_set_h_offset_373806689_name = StringName(from: "set_h_offset")
        self._method_set_h_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_h_offset_373806689_name._native_ptr(), 373806689)
        assert(PathFollow3D._method_set_h_offset_373806689 != nil)
        let _method_get_h_offset_1740695150_name = StringName(from: "get_h_offset")
        self._method_get_h_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_h_offset_1740695150_name._native_ptr(), 1740695150)
        assert(PathFollow3D._method_get_h_offset_1740695150 != nil)
        let _method_set_v_offset_373806689_name = StringName(from: "set_v_offset")
        self._method_set_v_offset_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_v_offset_373806689_name._native_ptr(), 373806689)
        assert(PathFollow3D._method_set_v_offset_373806689 != nil)
        let _method_get_v_offset_1740695150_name = StringName(from: "get_v_offset")
        self._method_get_v_offset_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_v_offset_1740695150_name._native_ptr(), 1740695150)
        assert(PathFollow3D._method_get_v_offset_1740695150 != nil)
        let _method_set_progress_ratio_373806689_name = StringName(from: "set_progress_ratio")
        self._method_set_progress_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_progress_ratio_373806689_name._native_ptr(), 373806689)
        assert(PathFollow3D._method_set_progress_ratio_373806689 != nil)
        let _method_get_progress_ratio_1740695150_name = StringName(from: "get_progress_ratio")
        self._method_get_progress_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_progress_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(PathFollow3D._method_get_progress_ratio_1740695150 != nil)
        let _method_set_rotation_mode_1640311967_name = StringName(from: "set_rotation_mode")
        self._method_set_rotation_mode_1640311967 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rotation_mode_1640311967_name._native_ptr(), 1640311967)
        assert(PathFollow3D._method_set_rotation_mode_1640311967 != nil)
        let _method_get_rotation_mode_3814010545_name = StringName(from: "get_rotation_mode")
        self._method_get_rotation_mode_3814010545 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rotation_mode_3814010545_name._native_ptr(), 3814010545)
        assert(PathFollow3D._method_get_rotation_mode_3814010545 != nil)
        let _method_set_cubic_interpolation_2586408642_name = StringName(from: "set_cubic_interpolation")
        self._method_set_cubic_interpolation_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cubic_interpolation_2586408642_name._native_ptr(), 2586408642)
        assert(PathFollow3D._method_set_cubic_interpolation_2586408642 != nil)
        let _method_get_cubic_interpolation_36873697_name = StringName(from: "get_cubic_interpolation")
        self._method_get_cubic_interpolation_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cubic_interpolation_36873697_name._native_ptr(), 36873697)
        assert(PathFollow3D._method_get_cubic_interpolation_36873697 != nil)
        let _method_set_loop_2586408642_name = StringName(from: "set_loop")
        self._method_set_loop_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_loop_2586408642_name._native_ptr(), 2586408642)
        assert(PathFollow3D._method_set_loop_2586408642 != nil)
        let _method_has_loop_36873697_name = StringName(from: "has_loop")
        self._method_has_loop_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_loop_36873697_name._native_ptr(), 36873697)
        assert(PathFollow3D._method_has_loop_36873697 != nil)
        let _method_set_tilt_enabled_2586408642_name = StringName(from: "set_tilt_enabled")
        self._method_set_tilt_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tilt_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PathFollow3D._method_set_tilt_enabled_2586408642 != nil)
        let _method_is_tilt_enabled_36873697_name = StringName(from: "is_tilt_enabled")
        self._method_is_tilt_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_tilt_enabled_36873697_name._native_ptr(), 36873697)
        assert(PathFollow3D._method_is_tilt_enabled_36873697 != nil)
        let _method_correct_posture_2686588690_name = StringName(from: "correct_posture")
        self._method_correct_posture_2686588690 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_correct_posture_2686588690_name._native_ptr(), 2686588690)
        assert(PathFollow3D._method_correct_posture_2686588690 != nil)
    }

    public func set_progress(progress: Float64)  {
        withUnsafePointer(to: progress) { progress_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(progress_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_progress_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_progress() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_progress_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_h_offset(h_offset: Float64)  {
        withUnsafePointer(to: h_offset) { h_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(h_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_h_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_h_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_h_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_v_offset(v_offset: Float64)  {
        withUnsafePointer(to: v_offset) { v_offset_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(v_offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_v_offset_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_v_offset() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_v_offset_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_progress_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_progress_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_progress_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_progress_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_rotation_mode(rotation_mode: PathFollow3D.RotationMode)  {
        withUnsafePointer(to: rotation_mode.rawValue) { rotation_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rotation_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rotation_mode_1640311967,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_rotation_mode() -> PathFollow3D.RotationMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rotation_mode_3814010545,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PathFollow3D.RotationMode(from: __resPtr.pointee)
    }
    public func set_cubic_interpolation(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cubic_interpolation_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cubic_interpolation() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cubic_interpolation_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_loop(loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_loop_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func has_loop() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_loop_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_tilt_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tilt_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_tilt_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_tilt_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func correct_posture(transform: Transform3D, rotation_mode: PathFollow3D.RotationMode) -> Transform3D {
        withUnsafePointer(to: rotation_mode.rawValue) { rotation_mode_native in
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native), .init(rotation_mode_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_correct_posture_2686588690,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
}