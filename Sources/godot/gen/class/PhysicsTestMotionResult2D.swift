import godot_native

fileprivate var __godot_name_PhysicsTestMotionResult2D: StringName! = nil

/// Result from a 2D body motion test.
/// 
/// This class contains the motion and collision result from [method PhysicsServer2D.body_test_motion].
open class PhysicsTestMotionResult2D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsTestMotionResult2D }

    static var _method_get_travel_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_remainder_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_point_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_normal_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_1981248198: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_local_shape_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_depth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_safe_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_unsafe_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsTestMotionResult2D = StringName(from: "PhysicsTestMotionResult2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_travel_3341600327_name = StringName(from: "get_travel")
        self._method_get_travel_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_travel_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsTestMotionResult2D._method_get_travel_3341600327 != nil)
        let _method_get_remainder_3341600327_name = StringName(from: "get_remainder")
        self._method_get_remainder_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_remainder_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsTestMotionResult2D._method_get_remainder_3341600327 != nil)
        let _method_get_collision_point_3341600327_name = StringName(from: "get_collision_point")
        self._method_get_collision_point_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collision_point_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsTestMotionResult2D._method_get_collision_point_3341600327 != nil)
        let _method_get_collision_normal_3341600327_name = StringName(from: "get_collision_normal")
        self._method_get_collision_normal_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collision_normal_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsTestMotionResult2D._method_get_collision_normal_3341600327 != nil)
        let _method_get_collider_velocity_3341600327_name = StringName(from: "get_collider_velocity")
        self._method_get_collider_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collider_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsTestMotionResult2D._method_get_collider_velocity_3341600327 != nil)
        let _method_get_collider_id_3905245786_name = StringName(from: "get_collider_id")
        self._method_get_collider_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collider_id_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsTestMotionResult2D._method_get_collider_id_3905245786 != nil)
        let _method_get_collider_rid_2944877500_name = StringName(from: "get_collider_rid")
        self._method_get_collider_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collider_rid_2944877500_name._native_ptr(), 2944877500)
        assert(PhysicsTestMotionResult2D._method_get_collider_rid_2944877500 != nil)
        let _method_get_collider_1981248198_name = StringName(from: "get_collider")
        self._method_get_collider_1981248198 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collider_1981248198_name._native_ptr(), 1981248198)
        assert(PhysicsTestMotionResult2D._method_get_collider_1981248198 != nil)
        let _method_get_collider_shape_3905245786_name = StringName(from: "get_collider_shape")
        self._method_get_collider_shape_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collider_shape_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsTestMotionResult2D._method_get_collider_shape_3905245786 != nil)
        let _method_get_collision_local_shape_3905245786_name = StringName(from: "get_collision_local_shape")
        self._method_get_collision_local_shape_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collision_local_shape_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsTestMotionResult2D._method_get_collision_local_shape_3905245786 != nil)
        let _method_get_collision_depth_1740695150_name = StringName(from: "get_collision_depth")
        self._method_get_collision_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collision_depth_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionResult2D._method_get_collision_depth_1740695150 != nil)
        let _method_get_collision_safe_fraction_1740695150_name = StringName(from: "get_collision_safe_fraction")
        self._method_get_collision_safe_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collision_safe_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionResult2D._method_get_collision_safe_fraction_1740695150 != nil)
        let _method_get_collision_unsafe_fraction_1740695150_name = StringName(from: "get_collision_unsafe_fraction")
        self._method_get_collision_unsafe_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsTestMotionResult2D._native_ptr(), _method_get_collision_unsafe_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsTestMotionResult2D._method_get_collision_unsafe_fraction_1740695150 != nil)
    }

    public func get_travel() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_travel_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_remainder() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_remainder_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_collision_point() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_point_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_collision_normal() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_normal_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_collider_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_collider_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_collider_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_rid_2944877500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func get_collider() -> Object {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_1981248198,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
    }
    public func get_collider_shape() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_shape_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_collision_local_shape() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_local_shape_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_collision_depth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_depth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
}