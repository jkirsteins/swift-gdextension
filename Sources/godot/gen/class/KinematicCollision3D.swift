import godot_native

fileprivate var __godot_name_KinematicCollision3D: StringName! = nil

/// Collision data for [method PhysicsBody3D.move_and_collide] collisions.
/// 
/// Contains collision data for [method PhysicsBody3D.move_and_collide] collisions. When a [PhysicsBody3D] is moved using [method PhysicsBody3D.move_and_collide], it stops if it detects a collision with another body. If a collision is detected, a [KinematicCollision3D] object is returned.
///  
/// This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
open class KinematicCollision3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_KinematicCollision3D }

    static var _method_get_travel_3360562783: StringName! = nil
    static var _method_get_remainder_3360562783: StringName! = nil
    static var _method_get_depth_1740695150: StringName! = nil
    static var _method_get_collision_count_3905245786: StringName! = nil
    static var _method_get_position_1914908202: StringName! = nil
    static var _method_get_normal_1914908202: StringName! = nil
    static var _method_get_angle_1242741860: StringName! = nil
    static var _method_get_local_shape_2639523548: StringName! = nil
    static var _method_get_collider_2639523548: StringName! = nil
    static var _method_get_collider_id_1591665591: StringName! = nil
    static var _method_get_collider_rid_1231817359: StringName! = nil
    static var _method_get_collider_shape_2639523548: StringName! = nil
    static var _method_get_collider_shape_index_1591665591: StringName! = nil
    static var _method_get_collider_velocity_1914908202: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_KinematicCollision3D == nil)
        __godot_name_KinematicCollision3D = StringName(from: "KinematicCollision3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_get_travel_3360562783 = StringName(from: "get_travel")
        assert(self._method_get_travel_3360562783 != nil)
        self._method_get_remainder_3360562783 = StringName(from: "get_remainder")
        assert(self._method_get_remainder_3360562783 != nil)
        self._method_get_depth_1740695150 = StringName(from: "get_depth")
        assert(self._method_get_depth_1740695150 != nil)
        self._method_get_collision_count_3905245786 = StringName(from: "get_collision_count")
        assert(self._method_get_collision_count_3905245786 != nil)
        self._method_get_position_1914908202 = StringName(from: "get_position")
        assert(self._method_get_position_1914908202 != nil)
        self._method_get_normal_1914908202 = StringName(from: "get_normal")
        assert(self._method_get_normal_1914908202 != nil)
        self._method_get_angle_1242741860 = StringName(from: "get_angle")
        assert(self._method_get_angle_1242741860 != nil)
        self._method_get_local_shape_2639523548 = StringName(from: "get_local_shape")
        assert(self._method_get_local_shape_2639523548 != nil)
        self._method_get_collider_2639523548 = StringName(from: "get_collider")
        assert(self._method_get_collider_2639523548 != nil)
        self._method_get_collider_id_1591665591 = StringName(from: "get_collider_id")
        assert(self._method_get_collider_id_1591665591 != nil)
        self._method_get_collider_rid_1231817359 = StringName(from: "get_collider_rid")
        assert(self._method_get_collider_rid_1231817359 != nil)
        self._method_get_collider_shape_2639523548 = StringName(from: "get_collider_shape")
        assert(self._method_get_collider_shape_2639523548 != nil)
        self._method_get_collider_shape_index_1591665591 = StringName(from: "get_collider_shape_index")
        assert(self._method_get_collider_shape_index_1591665591 != nil)
        self._method_get_collider_velocity_1914908202 = StringName(from: "get_collider_velocity")
        assert(self._method_get_collider_velocity_1914908202 != nil)
    }

    public func get_travel() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_travel_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_remainder_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_1740695150._native_ptr(),
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
    public func get_collision_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_count_3905245786._native_ptr(),
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
    public func get_position(collision_index: Int64) -> Vector3 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_position_1914908202._native_ptr(),
                    1914908202)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_normal_1914908202._native_ptr(),
                    1914908202)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angle_1242741860._native_ptr(),
                    1242741860)
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
    public func get_local_shape(collision_index: Int64) -> Object {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_local_shape_2639523548._native_ptr(),
                    2639523548)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collider_2639523548._native_ptr(),
                    2639523548)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collider_id_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collider_rid_1231817359._native_ptr(),
                    1231817359)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collider_shape_2639523548._native_ptr(),
                    2639523548)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collider_shape_index_1591665591._native_ptr(),
                    1591665591)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collider_velocity_1914908202._native_ptr(),
                    1914908202)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
}