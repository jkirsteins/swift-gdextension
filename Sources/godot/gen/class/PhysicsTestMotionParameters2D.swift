import godot_native

fileprivate var __godot_name_PhysicsTestMotionParameters2D: StringName! = nil

/// Parameters to be sent to a 2D body motion test.
/// 
/// This class contains parameters used in [method PhysicsServer2D.body_test_motion].
open class PhysicsTestMotionParameters2D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsTestMotionParameters2D }

    static var _method_get_from_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_set_from_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_motion_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_separation_ray_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_separation_ray_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_bodies_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_bodies_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_objects_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_objects_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_is_recovery_as_collision_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_recovery_as_collision_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsTestMotionParameters2D = StringName(from: "PhysicsTestMotionParameters2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_from_3814499831_name = StringName(from: "get_from")
        self._method_get_from_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_get_from_3814499831_name._native_ptr(), 3814499831)
        assert(PhysicsTestMotionParameters2D._method_get_from_3814499831 != nil)
        let _method_set_from_2761652528_name = StringName(from: "set_from")
        self._method_set_from_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_from_2761652528_name._native_ptr(), 2761652528)
        assert(PhysicsTestMotionParameters2D._method_set_from_2761652528 != nil)
        let _method_get_motion_3341600327_name = StringName(from: "get_motion")
        self._method_get_motion_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_get_motion_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsTestMotionParameters2D._method_get_motion_3341600327 != nil)
        let _method_set_motion_743155724_name = StringName(from: "set_motion")
        self._method_set_motion_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_motion_743155724_name._native_ptr(), 743155724)
        assert(PhysicsTestMotionParameters2D._method_set_motion_743155724 != nil)
        let _method_get_margin_1740695150_name = StringName(from: "get_margin")
        self._method_get_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_get_margin_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionParameters2D._method_get_margin_1740695150 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(PhysicsTestMotionParameters2D._method_set_margin_373806689 != nil)
        let _method_is_collide_separation_ray_enabled_36873697_name = StringName(from: "is_collide_separation_ray_enabled")
        self._method_is_collide_separation_ray_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_is_collide_separation_ray_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsTestMotionParameters2D._method_is_collide_separation_ray_enabled_36873697 != nil)
        let _method_set_collide_separation_ray_enabled_2586408642_name = StringName(from: "set_collide_separation_ray_enabled")
        self._method_set_collide_separation_ray_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_collide_separation_ray_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsTestMotionParameters2D._method_set_collide_separation_ray_enabled_2586408642 != nil)
        let _method_get_exclude_bodies_3995934104_name = StringName(from: "get_exclude_bodies")
        self._method_get_exclude_bodies_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_get_exclude_bodies_3995934104_name._native_ptr(), 3995934104)
        assert(PhysicsTestMotionParameters2D._method_get_exclude_bodies_3995934104 != nil)
        let _method_set_exclude_bodies_381264803_name = StringName(from: "set_exclude_bodies")
        self._method_set_exclude_bodies_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_exclude_bodies_381264803_name._native_ptr(), 381264803)
        assert(PhysicsTestMotionParameters2D._method_set_exclude_bodies_381264803 != nil)
        let _method_get_exclude_objects_3995934104_name = StringName(from: "get_exclude_objects")
        self._method_get_exclude_objects_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_get_exclude_objects_3995934104_name._native_ptr(), 3995934104)
        assert(PhysicsTestMotionParameters2D._method_get_exclude_objects_3995934104 != nil)
        let _method_set_exclude_objects_381264803_name = StringName(from: "set_exclude_objects")
        self._method_set_exclude_objects_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_exclude_objects_381264803_name._native_ptr(), 381264803)
        assert(PhysicsTestMotionParameters2D._method_set_exclude_objects_381264803 != nil)
        let _method_is_recovery_as_collision_enabled_36873697_name = StringName(from: "is_recovery_as_collision_enabled")
        self._method_is_recovery_as_collision_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_is_recovery_as_collision_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsTestMotionParameters2D._method_is_recovery_as_collision_enabled_36873697 != nil)
        let _method_set_recovery_as_collision_enabled_2586408642_name = StringName(from: "set_recovery_as_collision_enabled")
        self._method_set_recovery_as_collision_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionParameters2D._native_ptr(), _method_set_recovery_as_collision_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsTestMotionParameters2D._method_set_recovery_as_collision_enabled_2586408642 != nil)
    }

    public func get_from() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_from_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func set_from(from: Transform2D)  {
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_from_2761652528,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_motion() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_motion(motion: Vector2)  {
        let motion_native = motion._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(motion_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_margin() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_margin_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_margin(margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_margin_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_collide_separation_ray_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collide_separation_ray_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_collide_separation_ray_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collide_separation_ray_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_exclude_bodies() -> [RID] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exclude_bodies_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](godot: __resPtr.pointee)
    }
    public func set_exclude_bodies(exclude_list: [RID])  {
        let exclude_list_native = exclude_list._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exclude_list_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exclude_bodies_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_exclude_objects() -> [Int64] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exclude_objects_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Int64](godot: __resPtr.pointee)
    }
    public func set_exclude_objects(exclude_list: [Int64])  {
        let exclude_list_native = exclude_list._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exclude_list_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exclude_objects_381264803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_recovery_as_collision_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_recovery_as_collision_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_recovery_as_collision_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_recovery_as_collision_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
}