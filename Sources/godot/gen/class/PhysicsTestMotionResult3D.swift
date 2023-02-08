import godot_native

fileprivate var __godot_name_PhysicsTestMotionResult3D: StringName! = nil

/// Result from a 3D body motion test.
/// 
/// This class contains the motion and collision result from [method PhysicsServer3D.body_test_motion].
open class PhysicsTestMotionResult3D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsTestMotionResult3D }

    static var _method_get_travel_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_remainder_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_safe_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_unsafe_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_point_1914908202: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_normal_1914908202: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_velocity_1914908202: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_id_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_rid_1231817359: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_2639523548: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_local_shape_1591665591: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_depth_218038398: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsTestMotionResult3D = StringName(from: "PhysicsTestMotionResult3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_travel_3360562783_name = StringName(from: "get_travel")
        self._method_get_travel_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_travel_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicsTestMotionResult3D._method_get_travel_3360562783 != nil)
        let _method_get_remainder_3360562783_name = StringName(from: "get_remainder")
        self._method_get_remainder_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_remainder_3360562783_name._native_ptr(), 3360562783)
        assert(PhysicsTestMotionResult3D._method_get_remainder_3360562783 != nil)
        let _method_get_collision_safe_fraction_1740695150_name = StringName(from: "get_collision_safe_fraction")
        self._method_get_collision_safe_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_safe_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionResult3D._method_get_collision_safe_fraction_1740695150 != nil)
        let _method_get_collision_unsafe_fraction_1740695150_name = StringName(from: "get_collision_unsafe_fraction")
        self._method_get_collision_unsafe_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_unsafe_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionResult3D._method_get_collision_unsafe_fraction_1740695150 != nil)
        let _method_get_collision_count_3905245786_name = StringName(from: "get_collision_count")
        self._method_get_collision_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_count_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsTestMotionResult3D._method_get_collision_count_3905245786 != nil)
        let _method_get_collision_point_1914908202_name = StringName(from: "get_collision_point")
        self._method_get_collision_point_1914908202 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_point_1914908202_name._native_ptr(), 1914908202)
        assert(PhysicsTestMotionResult3D._method_get_collision_point_1914908202 != nil)
        let _method_get_collision_normal_1914908202_name = StringName(from: "get_collision_normal")
        self._method_get_collision_normal_1914908202 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_normal_1914908202_name._native_ptr(), 1914908202)
        assert(PhysicsTestMotionResult3D._method_get_collision_normal_1914908202 != nil)
        let _method_get_collider_velocity_1914908202_name = StringName(from: "get_collider_velocity")
        self._method_get_collider_velocity_1914908202 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collider_velocity_1914908202_name._native_ptr(), 1914908202)
        assert(PhysicsTestMotionResult3D._method_get_collider_velocity_1914908202 != nil)
        let _method_get_collider_id_1591665591_name = StringName(from: "get_collider_id")
        self._method_get_collider_id_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collider_id_1591665591_name._native_ptr(), 1591665591)
        assert(PhysicsTestMotionResult3D._method_get_collider_id_1591665591 != nil)
        let _method_get_collider_rid_1231817359_name = StringName(from: "get_collider_rid")
        self._method_get_collider_rid_1231817359 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collider_rid_1231817359_name._native_ptr(), 1231817359)
        assert(PhysicsTestMotionResult3D._method_get_collider_rid_1231817359 != nil)
        let _method_get_collider_2639523548_name = StringName(from: "get_collider")
        self._method_get_collider_2639523548 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collider_2639523548_name._native_ptr(), 2639523548)
        assert(PhysicsTestMotionResult3D._method_get_collider_2639523548 != nil)
        let _method_get_collider_shape_1591665591_name = StringName(from: "get_collider_shape")
        self._method_get_collider_shape_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collider_shape_1591665591_name._native_ptr(), 1591665591)
        assert(PhysicsTestMotionResult3D._method_get_collider_shape_1591665591 != nil)
        let _method_get_collision_local_shape_1591665591_name = StringName(from: "get_collision_local_shape")
        self._method_get_collision_local_shape_1591665591 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_local_shape_1591665591_name._native_ptr(), 1591665591)
        assert(PhysicsTestMotionResult3D._method_get_collision_local_shape_1591665591 != nil)
        let _method_get_collision_depth_218038398_name = StringName(from: "get_collision_depth")
        self._method_get_collision_depth_218038398 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult3D._native_ptr(), _method_get_collision_depth_218038398_name._native_ptr(), 218038398)
        assert(PhysicsTestMotionResult3D._method_get_collision_depth_218038398 != nil)
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
    public func get_collision_safe_fraction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_safe_fraction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_collision_unsafe_fraction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_unsafe_fraction_1740695150,
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
    public func get_collision_point(collision_index: Int64) -> Vector3 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_point_1914908202,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func get_collision_normal(collision_index: Int64) -> Vector3 {
        withUnsafePointer(to: collision_index) { collision_index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(collision_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_normal_1914908202,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
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
    public func get_collider_shape(collision_index: Int64) -> Int64 {
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
                    Self._method_get_collider_shape_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_collision_local_shape(collision_index: Int64) -> Int64 {
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
                    Self._method_get_collision_local_shape_1591665591,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_collision_depth(collision_index: Int64) -> Float64 {
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
                    Self._method_get_collision_depth_218038398,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
}