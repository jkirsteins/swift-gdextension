import godot_native

fileprivate var __godot_name_KinematicCollision3D: StringName! = nil

/// Collision data for [method PhysicsBody3D.move_and_collide] collisions.
/// 
/// Contains collision data for [method PhysicsBody3D.move_and_collide] collisions. When a [PhysicsBody3D] is moved using [method PhysicsBody3D.move_and_collide], it stops if it detects a collision with another body. If a collision is detected, a [KinematicCollision3D] object is returned.
///  
/// This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
open class KinematicCollision3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_KinematicCollision3D }

    static var _method_get_travel_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_remainder_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_position_1914908202: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_1914908202: GDExtensionMethodBindPtr! = nil
    static var _method_get_angle_1242741860: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_shape_2639523548: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_2639523548: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_id_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_rid_1231817359: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_2639523548: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_index_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_velocity_1914908202: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_KinematicCollision3D = StringName(from: "KinematicCollision3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_travel_3360562783_name = StringName(from: "get_travel")
        self._method_get_travel_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_travel_3360562783_name._native_ptr(), 3360562783)
        assert(KinematicCollision3D._method_get_travel_3360562783 != nil)
        let _method_get_remainder_3360562783_name = StringName(from: "get_remainder")
        self._method_get_remainder_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_remainder_3360562783_name._native_ptr(), 3360562783)
        assert(KinematicCollision3D._method_get_remainder_3360562783 != nil)
        let _method_get_depth_1740695150_name = StringName(from: "get_depth")
        self._method_get_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_depth_1740695150_name._native_ptr(), 1740695150)
        assert(KinematicCollision3D._method_get_depth_1740695150 != nil)
        let _method_get_collision_count_3905245786_name = StringName(from: "get_collision_count")
        self._method_get_collision_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collision_count_3905245786_name._native_ptr(), 3905245786)
        assert(KinematicCollision3D._method_get_collision_count_3905245786 != nil)
        let _method_get_position_1914908202_name = StringName(from: "get_position")
        self._method_get_position_1914908202 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_position_1914908202_name._native_ptr(), 1914908202)
        assert(KinematicCollision3D._method_get_position_1914908202 != nil)
        let _method_get_normal_1914908202_name = StringName(from: "get_normal")
        self._method_get_normal_1914908202 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_normal_1914908202_name._native_ptr(), 1914908202)
        assert(KinematicCollision3D._method_get_normal_1914908202 != nil)
        let _method_get_angle_1242741860_name = StringName(from: "get_angle")
        self._method_get_angle_1242741860 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_angle_1242741860_name._native_ptr(), 1242741860)
        assert(KinematicCollision3D._method_get_angle_1242741860 != nil)
        let _method_get_local_shape_2639523548_name = StringName(from: "get_local_shape")
        self._method_get_local_shape_2639523548 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_local_shape_2639523548_name._native_ptr(), 2639523548)
        assert(KinematicCollision3D._method_get_local_shape_2639523548 != nil)
        let _method_get_collider_2639523548_name = StringName(from: "get_collider")
        self._method_get_collider_2639523548 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collider_2639523548_name._native_ptr(), 2639523548)
        assert(KinematicCollision3D._method_get_collider_2639523548 != nil)
        let _method_get_collider_id_1591665591_name = StringName(from: "get_collider_id")
        self._method_get_collider_id_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collider_id_1591665591_name._native_ptr(), 1591665591)
        assert(KinematicCollision3D._method_get_collider_id_1591665591 != nil)
        let _method_get_collider_rid_1231817359_name = StringName(from: "get_collider_rid")
        self._method_get_collider_rid_1231817359 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collider_rid_1231817359_name._native_ptr(), 1231817359)
        assert(KinematicCollision3D._method_get_collider_rid_1231817359 != nil)
        let _method_get_collider_shape_2639523548_name = StringName(from: "get_collider_shape")
        self._method_get_collider_shape_2639523548 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collider_shape_2639523548_name._native_ptr(), 2639523548)
        assert(KinematicCollision3D._method_get_collider_shape_2639523548 != nil)
        let _method_get_collider_shape_index_1591665591_name = StringName(from: "get_collider_shape_index")
        self._method_get_collider_shape_index_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collider_shape_index_1591665591_name._native_ptr(), 1591665591)
        assert(KinematicCollision3D._method_get_collider_shape_index_1591665591 != nil)
        let _method_get_collider_velocity_1914908202_name = StringName(from: "get_collider_velocity")
        self._method_get_collider_velocity_1914908202 = self.interface.pointee.classdb_get_method_bind(__godot_name_KinematicCollision3D._native_ptr(), _method_get_collider_velocity_1914908202_name._native_ptr(), 1914908202)
        assert(KinematicCollision3D._method_get_collider_velocity_1914908202 != nil)
    }

    public func get_travel() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_travel_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_remainder() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_remainder_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_depth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_collision_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_position(collision_index: Int64) -> Vector3 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_1914908202,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func get_normal(collision_index: Int64) -> Vector3 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_1914908202,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func get_angle(collision_index: Int64, up_direction: Vector3) -> Float64 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let up_direction_native = up_direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native), .init(up_direction_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angle_1242741860,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func get_local_shape(collision_index: Int64) -> Object {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_shape_2639523548,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
        }
    }
    public func get_collider(collision_index: Int64) -> Object {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_2639523548,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
        }
    }
    public func get_collider_id(collision_index: Int64) -> Int64 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_id_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_collider_rid(collision_index: Int64) -> RID {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_rid_1231817359,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func get_collider_shape(collision_index: Int64) -> Object {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_shape_2639523548,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
        }
    }
    public func get_collider_shape_index(collision_index: Int64) -> Int64 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_shape_index_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_collider_velocity(collision_index: Int64) -> Vector3 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_velocity_1914908202,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
}