import godot_native

fileprivate var __godot_name_SkeletonModification2D: StringName! = nil

/// A resource that operates on [Bone2D] nodes in a [Skeleton2D].
/// 
/// This resource provides an interface that can be expanded so code that operates on [Bone2D] nodes in a [Skeleton2D] can be mixed and matched together to create complex interactions.
///  
/// This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.
public class SkeletonModification2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2D }

    static var _method__execute_0: GDExtensionMethodBindPtr! = nil
    static var _method__setup_modification_0: GDExtensionMethodBindPtr! = nil
    static var _method__draw_editor_gizmo_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_enabled_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_get_modification_stack_2137761694: GDExtensionMethodBindPtr! = nil
    static var _method_set_is_setup_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_is_setup_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_execution_mode_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_execution_mode_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_clamp_angle_1229502682: GDExtensionMethodBindPtr! = nil
    static var _method_set_editor_draw_gizmo_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_editor_draw_gizmo_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_SkeletonModification2D = StringName(from: "SkeletonModification2D")

        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2D._method_set_enabled_2586408642 != nil)
        let _method_get_enabled_2240911060_name = StringName(from: "get_enabled")
        self._method_get_enabled_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_enabled_2240911060_name._native_ptr(), 2240911060)
        assert(SkeletonModification2D._method_get_enabled_2240911060 != nil)
        let _method_get_modification_stack_2137761694_name = StringName(from: "get_modification_stack")
        self._method_get_modification_stack_2137761694 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_modification_stack_2137761694_name._native_ptr(), 2137761694)
        assert(SkeletonModification2D._method_get_modification_stack_2137761694 != nil)
        let _method_set_is_setup_2586408642_name = StringName(from: "set_is_setup")
        self._method_set_is_setup_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_is_setup_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2D._method_set_is_setup_2586408642 != nil)
        let _method_get_is_setup_36873697_name = StringName(from: "get_is_setup")
        self._method_get_is_setup_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_is_setup_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2D._method_get_is_setup_36873697 != nil)
        let _method_set_execution_mode_1286410249_name = StringName(from: "set_execution_mode")
        self._method_set_execution_mode_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_execution_mode_1286410249_name._native_ptr(), 1286410249)
        assert(SkeletonModification2D._method_set_execution_mode_1286410249 != nil)
        let _method_get_execution_mode_3905245786_name = StringName(from: "get_execution_mode")
        self._method_get_execution_mode_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_execution_mode_3905245786_name._native_ptr(), 3905245786)
        assert(SkeletonModification2D._method_get_execution_mode_3905245786 != nil)
        let _method_clamp_angle_1229502682_name = StringName(from: "clamp_angle")
        self._method_clamp_angle_1229502682 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clamp_angle_1229502682_name._native_ptr(), 1229502682)
        assert(SkeletonModification2D._method_clamp_angle_1229502682 != nil)
        let _method_set_editor_draw_gizmo_2586408642_name = StringName(from: "set_editor_draw_gizmo")
        self._method_set_editor_draw_gizmo_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_editor_draw_gizmo_2586408642_name._native_ptr(), 2586408642)
        assert(SkeletonModification2D._method_set_editor_draw_gizmo_2586408642 != nil)
        let _method_get_editor_draw_gizmo_36873697_name = StringName(from: "get_editor_draw_gizmo")
        self._method_get_editor_draw_gizmo_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_editor_draw_gizmo_36873697_name._native_ptr(), 36873697)
        assert(SkeletonModification2D._method_get_editor_draw_gizmo_36873697 != nil)
    }

    public func _execute(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__execute_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _setup_modification(modification_stack: SkeletonModificationStack2D)  {
        let modification_stack_native = modification_stack._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(modification_stack_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__setup_modification_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _draw_editor_gizmo()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__draw_editor_gizmo_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_enabled_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_modification_stack() -> SkeletonModificationStack2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_modification_stack_2137761694,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonModificationStack2D(from: __resPtr.pointee)
    }
    public func set_is_setup(is_setup: UInt8)  {
        withUnsafePointer(to: is_setup) { is_setup_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(is_setup_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_is_setup_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_is_setup() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_is_setup_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_execution_mode(execution_mode: Int64)  {
        withUnsafePointer(to: execution_mode) { execution_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(execution_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_execution_mode_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_execution_mode() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_execution_mode_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func clamp_angle(angle: Float64, min: Float64, max: Float64, invert: UInt8) -> Float64 {
        withUnsafePointer(to: invert) { invert_native in
        withUnsafePointer(to: max) { max_native in
        withUnsafePointer(to: min) { min_native in
        withUnsafePointer(to: angle) { angle_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angle_native), .init(min_native), .init(max_native), .init(invert_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clamp_angle_1229502682,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func set_editor_draw_gizmo(draw_gizmo: UInt8)  {
        withUnsafePointer(to: draw_gizmo) { draw_gizmo_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_gizmo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_editor_draw_gizmo_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_editor_draw_gizmo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_editor_draw_gizmo_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}