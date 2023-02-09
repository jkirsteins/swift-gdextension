import godot_native

fileprivate var __godot_name_SkeletonModification2D: StringName! = nil

/// A resource that operates on [Bone2D] nodes in a [Skeleton2D].
/// 
/// This resource provides an interface that can be expanded so code that operates on [Bone2D] nodes in a [Skeleton2D] can be mixed and matched together to create complex interactions.
///  
/// This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.
open class SkeletonModification2D : Resource {

    

    public override class var __godot_name: StringName { __godot_name_SkeletonModification2D }

    static var _method__execute_0: StringName! = nil
    static var _method__setup_modification_0: StringName! = nil
    static var _method__draw_editor_gizmo_0: StringName! = nil
    static var _method_set_enabled_2586408642: StringName! = nil
    static var _method_get_enabled_2240911060: StringName! = nil
    static var _method_get_modification_stack_2137761694: StringName! = nil
    static var _method_set_is_setup_2586408642: StringName! = nil
    static var _method_get_is_setup_36873697: StringName! = nil
    static var _method_set_execution_mode_1286410249: StringName! = nil
    static var _method_get_execution_mode_3905245786: StringName! = nil
    static var _method_clamp_angle_1229502682: StringName! = nil
    static var _method_set_editor_draw_gizmo_2586408642: StringName! = nil
    static var _method_get_editor_draw_gizmo_36873697: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_SkeletonModification2D == nil)
        __godot_name_SkeletonModification2D = StringName(from: "SkeletonModification2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_enabled_2586408642 = StringName(from: "set_enabled")
        assert(self._method_set_enabled_2586408642 != nil)
        self._method_get_enabled_2240911060 = StringName(from: "get_enabled")
        assert(self._method_get_enabled_2240911060 != nil)
        self._method_get_modification_stack_2137761694 = StringName(from: "get_modification_stack")
        assert(self._method_get_modification_stack_2137761694 != nil)
        self._method_set_is_setup_2586408642 = StringName(from: "set_is_setup")
        assert(self._method_set_is_setup_2586408642 != nil)
        self._method_get_is_setup_36873697 = StringName(from: "get_is_setup")
        assert(self._method_get_is_setup_36873697 != nil)
        self._method_set_execution_mode_1286410249 = StringName(from: "set_execution_mode")
        assert(self._method_set_execution_mode_1286410249 != nil)
        self._method_get_execution_mode_3905245786 = StringName(from: "get_execution_mode")
        assert(self._method_get_execution_mode_3905245786 != nil)
        self._method_clamp_angle_1229502682 = StringName(from: "clamp_angle")
        assert(self._method_clamp_angle_1229502682 != nil)
        self._method_set_editor_draw_gizmo_2586408642 = StringName(from: "set_editor_draw_gizmo")
        assert(self._method_set_editor_draw_gizmo_2586408642 != nil)
        self._method_get_editor_draw_gizmo_36873697 = StringName(from: "get_editor_draw_gizmo")
        assert(self._method_get_editor_draw_gizmo_36873697 != nil)
    }

    public func _execute(delta: Float64)  {
        withUnsafePointer(to: delta) { delta_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(delta_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
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
            fatalError("Not implemented: virtual default results")
    }
    public func _draw_editor_gizmo()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func set_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_enabled_2586408642._native_ptr(),
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
    public func get_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_enabled_2240911060._native_ptr(),
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
    public func get_modification_stack() -> SkeletonModificationStack2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_modification_stack_2137761694._native_ptr(),
                    2137761694)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return SkeletonModificationStack2D(godot: __resPtr.pointee)
    }
    public func set_is_setup(is_setup: UInt8)  {
        withUnsafePointer(to: is_setup) { is_setup_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(is_setup_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_is_setup_2586408642._native_ptr(),
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
    public func get_is_setup() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_is_setup_36873697._native_ptr(),
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
    public func set_execution_mode(execution_mode: Int64)  {
        withUnsafePointer(to: execution_mode) { execution_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(execution_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_execution_mode_1286410249._native_ptr(),
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
    public func get_execution_mode() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_execution_mode_3905245786._native_ptr(),
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_clamp_angle_1229502682._native_ptr(),
                    1229502682)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_editor_draw_gizmo_2586408642._native_ptr(),
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
    public func get_editor_draw_gizmo() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_editor_draw_gizmo_36873697._native_ptr(),
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
}