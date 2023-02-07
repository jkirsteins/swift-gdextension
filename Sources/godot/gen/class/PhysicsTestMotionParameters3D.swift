import godot_native

fileprivate var __godot_name_PhysicsTestMotionParameters3D: StringName! = nil

/// Parameters to be sent to a 3D body motion test.
/// 
/// This class contains parameters used in [method PhysicsServer3D.body_test_motion].
public class PhysicsTestMotionParameters3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsTestMotionParameters3D }

    static var _method_get_from_3229777777: GDExtensionMethodBindPtr! = nil
    static var _method_set_from_2952846383: GDExtensionMethodBindPtr! = nil
    static var _method_get_motion_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_motion_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_collisions_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_collisions_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_separation_ray_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_separation_ray_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_bodies_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_bodies_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_objects_3995934104: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_objects_381264803: GDExtensionMethodBindPtr! = nil
    static var _method_is_recovery_as_collision_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_recovery_as_collision_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsTestMotionParameters3D = StringName(from: "PhysicsTestMotionParameters3D")

        let _method_get_from_3229777777_name = StringName(from: "get_from")
        self._method_get_from_3229777777 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_from_3229777777_name._native_ptr(), 3229777777)
        assert(PhysicsTestMotionParameters3D._method_get_from_3229777777 != nil)
        let _method_set_from_2952846383_name = StringName(from: "set_from")
        self._method_set_from_2952846383 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_from_2952846383_name._native_ptr(), 2952846383)
        assert(PhysicsTestMotionParameters3D._method_set_from_2952846383 != nil)
        let _method_get_motion_3360562783_name = StringName(from: "get_motion")
        self._method_get_motion_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_motion_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicsTestMotionParameters3D._method_get_motion_3360562783 != nil)
        let _method_set_motion_3460891852_name = StringName(from: "set_motion")
        self._method_set_motion_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_motion_3460891852_name._native_ptr(), 3460891852)
        assert(PhysicsTestMotionParameters3D._method_set_motion_3460891852 != nil)
        let _method_get_margin_1740695150_name = StringName(from: "get_margin")
        self._method_get_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_margin_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionParameters3D._method_get_margin_1740695150 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(PhysicsTestMotionParameters3D._method_set_margin_373806689 != nil)
        let _method_get_max_collisions_3905245786_name = StringName(from: "get_max_collisions")
        self._method_get_max_collisions_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_max_collisions_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsTestMotionParameters3D._method_get_max_collisions_3905245786 != nil)
        let _method_set_max_collisions_1286410249_name = StringName(from: "set_max_collisions")
        self._method_set_max_collisions_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_max_collisions_1286410249_name._native_ptr(), 1286410249)
        assert(PhysicsTestMotionParameters3D._method_set_max_collisions_1286410249 != nil)
        let _method_is_collide_separation_ray_enabled_36873697_name = StringName(from: "is_collide_separation_ray_enabled")
        self._method_is_collide_separation_ray_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_separation_ray_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsTestMotionParameters3D._method_is_collide_separation_ray_enabled_36873697 != nil)
        let _method_set_collide_separation_ray_enabled_2586408642_name = StringName(from: "set_collide_separation_ray_enabled")
        self._method_set_collide_separation_ray_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_separation_ray_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsTestMotionParameters3D._method_set_collide_separation_ray_enabled_2586408642 != nil)
        let _method_get_exclude_bodies_3995934104_name = StringName(from: "get_exclude_bodies")
        self._method_get_exclude_bodies_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_bodies_3995934104_name._native_ptr(), 3995934104)
        assert(PhysicsTestMotionParameters3D._method_get_exclude_bodies_3995934104 != nil)
        let _method_set_exclude_bodies_381264803_name = StringName(from: "set_exclude_bodies")
        self._method_set_exclude_bodies_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_bodies_381264803_name._native_ptr(), 381264803)
        assert(PhysicsTestMotionParameters3D._method_set_exclude_bodies_381264803 != nil)
        let _method_get_exclude_objects_3995934104_name = StringName(from: "get_exclude_objects")
        self._method_get_exclude_objects_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_objects_3995934104_name._native_ptr(), 3995934104)
        assert(PhysicsTestMotionParameters3D._method_get_exclude_objects_3995934104 != nil)
        let _method_set_exclude_objects_381264803_name = StringName(from: "set_exclude_objects")
        self._method_set_exclude_objects_381264803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_objects_381264803_name._native_ptr(), 381264803)
        assert(PhysicsTestMotionParameters3D._method_set_exclude_objects_381264803 != nil)
        let _method_is_recovery_as_collision_enabled_36873697_name = StringName(from: "is_recovery_as_collision_enabled")
        self._method_is_recovery_as_collision_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_recovery_as_collision_enabled_36873697_name._native_ptr(), 36873697)
        assert(PhysicsTestMotionParameters3D._method_is_recovery_as_collision_enabled_36873697 != nil)
        let _method_set_recovery_as_collision_enabled_2586408642_name = StringName(from: "set_recovery_as_collision_enabled")
        self._method_set_recovery_as_collision_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_recovery_as_collision_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsTestMotionParameters3D._method_set_recovery_as_collision_enabled_2586408642 != nil)
    }

    public func get_from() -> Transform3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_from_3229777777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func set_from(from: Transform3D)  {
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_from_2952846383,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_motion() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_motion_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_motion(motion: Vector3)  {
        let motion_native = motion._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(motion_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_motion_3460891852,
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
            return Float64(from: __resPtr.pointee)
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
    public func get_max_collisions() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_collisions_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_max_collisions(max_collisions: Int64)  {
        withUnsafePointer(to: max_collisions) { max_collisions_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_collisions_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_collisions_1286410249,
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
            return UInt8(from: __resPtr.pointee)
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
            return [RID](from: __resPtr.pointee)
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
            return [Int64](from: __resPtr.pointee)
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
            return UInt8(from: __resPtr.pointee)
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