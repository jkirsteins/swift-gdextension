import godot_native

fileprivate var __godot_name_KinematicCollision2D: StringName! = nil

/// Collision data for [method PhysicsBody2D.move_and_collide] collisions.
/// 
/// Contains collision data for [method PhysicsBody2D.move_and_collide] collisions. When a [PhysicsBody2D] is moved using [method PhysicsBody2D.move_and_collide], it stops if it detects a collision with another body. If a collision is detected, a [KinematicCollision2D] object is returned.
///  
/// This object contains information about the collision, including the colliding object, the remaining motion, and the collision position. This information can be used to calculate a collision response.
public class KinematicCollision2D : RefCounted {

    

    public override class var __godot_name: StringName { __godot_name_KinematicCollision2D }

    static var _method_get_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_travel_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_remainder_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_angle_2841063350: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_local_shape_1981248198: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_1981248198: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_1981248198: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_index_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_KinematicCollision2D = StringName(from: "KinematicCollision2D")

        let _method_get_position_3341600327_name = StringName(from: "get_position")
        self._method_get_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_position_3341600327_name._native_ptr(), 3341600327)
        assert(KinematicCollision2D._method_get_position_3341600327 != nil)
        let _method_get_normal_3341600327_name = StringName(from: "get_normal")
        self._method_get_normal_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_normal_3341600327_name._native_ptr(), 3341600327)
        assert(KinematicCollision2D._method_get_normal_3341600327 != nil)
        let _method_get_travel_3341600327_name = StringName(from: "get_travel")
        self._method_get_travel_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_travel_3341600327_name._native_ptr(), 3341600327)
        assert(KinematicCollision2D._method_get_travel_3341600327 != nil)
        let _method_get_remainder_3341600327_name = StringName(from: "get_remainder")
        self._method_get_remainder_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_remainder_3341600327_name._native_ptr(), 3341600327)
        assert(KinematicCollision2D._method_get_remainder_3341600327 != nil)
        let _method_get_angle_2841063350_name = StringName(from: "get_angle")
        self._method_get_angle_2841063350 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_angle_2841063350_name._native_ptr(), 2841063350)
        assert(KinematicCollision2D._method_get_angle_2841063350 != nil)
        let _method_get_depth_1740695150_name = StringName(from: "get_depth")
        self._method_get_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_1740695150_name._native_ptr(), 1740695150)
        assert(KinematicCollision2D._method_get_depth_1740695150 != nil)
        let _method_get_local_shape_1981248198_name = StringName(from: "get_local_shape")
        self._method_get_local_shape_1981248198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_local_shape_1981248198_name._native_ptr(), 1981248198)
        assert(KinematicCollision2D._method_get_local_shape_1981248198 != nil)
        let _method_get_collider_1981248198_name = StringName(from: "get_collider")
        self._method_get_collider_1981248198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_1981248198_name._native_ptr(), 1981248198)
        assert(KinematicCollision2D._method_get_collider_1981248198 != nil)
        let _method_get_collider_id_3905245786_name = StringName(from: "get_collider_id")
        self._method_get_collider_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_id_3905245786_name._native_ptr(), 3905245786)
        assert(KinematicCollision2D._method_get_collider_id_3905245786 != nil)
        let _method_get_collider_rid_2944877500_name = StringName(from: "get_collider_rid")
        self._method_get_collider_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_rid_2944877500_name._native_ptr(), 2944877500)
        assert(KinematicCollision2D._method_get_collider_rid_2944877500 != nil)
        let _method_get_collider_shape_1981248198_name = StringName(from: "get_collider_shape")
        self._method_get_collider_shape_1981248198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_shape_1981248198_name._native_ptr(), 1981248198)
        assert(KinematicCollision2D._method_get_collider_shape_1981248198 != nil)
        let _method_get_collider_shape_index_3905245786_name = StringName(from: "get_collider_shape_index")
        self._method_get_collider_shape_index_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_shape_index_3905245786_name._native_ptr(), 3905245786)
        assert(KinematicCollision2D._method_get_collider_shape_index_3905245786 != nil)
        let _method_get_collider_velocity_3341600327_name = StringName(from: "get_collider_velocity")
        self._method_get_collider_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(KinematicCollision2D._method_get_collider_velocity_3341600327 != nil)
    }

    public func get_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func get_normal() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
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
            return Vector2(from: __resPtr.pointee)
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
            return Vector2(from: __resPtr.pointee)
    }
    public func get_angle(up_direction: Vector2) -> Float64 {
        let up_direction_native = up_direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(up_direction_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angle_2841063350,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
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
            return Float64(from: __resPtr.pointee)
    }
    public func get_local_shape() -> Object {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_local_shape_1981248198,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
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
            return Object(from: __resPtr.pointee)
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
            return Int64(from: __resPtr.pointee)
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
            return RID(from: __resPtr.pointee)
    }
    public func get_collider_shape() -> Object {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_shape_1981248198,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(from: __resPtr.pointee)
    }
    public func get_collider_shape_index() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_shape_index_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
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
            return Vector2(from: __resPtr.pointee)
    }
}