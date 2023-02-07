import godot_native

fileprivate var __godot_name_RayCast2D: StringName! = nil

/// Query the closest object intersecting a ray.
/// 
/// A RayCast represents a line from its origin to its destination position, [member target_position]. It is used to query the 2D space in order to find the closest object along the path of the ray.
///  
/// RayCast2D can ignore some objects by adding them to the exception list via [method add_exception], by setting proper filtering with collision layers, or by filtering object types with type masks.
///  
/// RayCast2D can be configured to report collisions with [Area2D]s ([member collide_with_areas]) and/or [PhysicsBody2D]s ([member collide_with_bodies]).
///  
/// Only enabled raycasts will be able to query the space and report collisions.
///  
/// RayCast2D calculates intersection every physics frame (see [Node]), and the result is cached so it can be used later until the next frame. If multiple queries are required between physics frames (or during the same frame) use [method force_raycast_update] after adjusting the raycast.
public class RayCast2D : Node2D {

    

    public override class var __godot_name: StringName { __godot_name_RayCast2D }

    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_position_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_position_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_is_colliding_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_force_raycast_update_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_1981248198: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_rid_2944877500: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_point_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_normal_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_add_exception_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_add_exception_3090941106: GDExtensionMethodBindPtr! = nil
    static var _method_remove_exception_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_remove_exception_3090941106: GDExtensionMethodBindPtr! = nil
    static var _method_clear_exceptions_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_mask_value_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_mask_value_1116898809: GDExtensionMethodBindPtr! = nil
    static var _method_set_exclude_parent_body_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_exclude_parent_body_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_with_areas_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_with_areas_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_collide_with_bodies_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_collide_with_bodies_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_hit_from_inside_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_hit_from_inside_enabled_36873697: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RayCast2D = StringName(from: "RayCast2D")

        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RayCast2D._method_set_enabled_2586408642 != nil)
        let _method_is_enabled_36873697_name = StringName(from: "is_enabled")
        self._method_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(RayCast2D._method_is_enabled_36873697 != nil)
        let _method_set_target_position_743155724_name = StringName(from: "set_target_position")
        self._method_set_target_position_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_target_position_743155724_name._native_ptr(), 743155724)
        assert(RayCast2D._method_set_target_position_743155724 != nil)
        let _method_get_target_position_3341600327_name = StringName(from: "get_target_position")
        self._method_get_target_position_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_target_position_3341600327_name._native_ptr(), 3341600327)
        assert(RayCast2D._method_get_target_position_3341600327 != nil)
        let _method_is_colliding_36873697_name = StringName(from: "is_colliding")
        self._method_is_colliding_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_colliding_36873697_name._native_ptr(), 36873697)
        assert(RayCast2D._method_is_colliding_36873697 != nil)
        let _method_force_raycast_update_3218959716_name = StringName(from: "force_raycast_update")
        self._method_force_raycast_update_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_raycast_update_3218959716_name._native_ptr(), 3218959716)
        assert(RayCast2D._method_force_raycast_update_3218959716 != nil)
        let _method_get_collider_1981248198_name = StringName(from: "get_collider")
        self._method_get_collider_1981248198 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_1981248198_name._native_ptr(), 1981248198)
        assert(RayCast2D._method_get_collider_1981248198 != nil)
        let _method_get_collider_rid_2944877500_name = StringName(from: "get_collider_rid")
        self._method_get_collider_rid_2944877500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_rid_2944877500_name._native_ptr(), 2944877500)
        assert(RayCast2D._method_get_collider_rid_2944877500 != nil)
        let _method_get_collider_shape_3905245786_name = StringName(from: "get_collider_shape")
        self._method_get_collider_shape_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collider_shape_3905245786_name._native_ptr(), 3905245786)
        assert(RayCast2D._method_get_collider_shape_3905245786 != nil)
        let _method_get_collision_point_3341600327_name = StringName(from: "get_collision_point")
        self._method_get_collision_point_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_point_3341600327_name._native_ptr(), 3341600327)
        assert(RayCast2D._method_get_collision_point_3341600327 != nil)
        let _method_get_collision_normal_3341600327_name = StringName(from: "get_collision_normal")
        self._method_get_collision_normal_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_normal_3341600327_name._native_ptr(), 3341600327)
        assert(RayCast2D._method_get_collision_normal_3341600327 != nil)
        let _method_add_exception_rid_2722037293_name = StringName(from: "add_exception_rid")
        self._method_add_exception_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_exception_rid_2722037293_name._native_ptr(), 2722037293)
        assert(RayCast2D._method_add_exception_rid_2722037293 != nil)
        let _method_add_exception_3090941106_name = StringName(from: "add_exception")
        self._method_add_exception_3090941106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_add_exception_3090941106_name._native_ptr(), 3090941106)
        assert(RayCast2D._method_add_exception_3090941106 != nil)
        let _method_remove_exception_rid_2722037293_name = StringName(from: "remove_exception_rid")
        self._method_remove_exception_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_exception_rid_2722037293_name._native_ptr(), 2722037293)
        assert(RayCast2D._method_remove_exception_rid_2722037293 != nil)
        let _method_remove_exception_3090941106_name = StringName(from: "remove_exception")
        self._method_remove_exception_3090941106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_remove_exception_3090941106_name._native_ptr(), 3090941106)
        assert(RayCast2D._method_remove_exception_3090941106 != nil)
        let _method_clear_exceptions_3218959716_name = StringName(from: "clear_exceptions")
        self._method_clear_exceptions_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_clear_exceptions_3218959716_name._native_ptr(), 3218959716)
        assert(RayCast2D._method_clear_exceptions_3218959716 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(RayCast2D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(RayCast2D._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(RayCast2D._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(RayCast2D._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_exclude_parent_body_2586408642_name = StringName(from: "set_exclude_parent_body")
        self._method_set_exclude_parent_body_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_exclude_parent_body_2586408642_name._native_ptr(), 2586408642)
        assert(RayCast2D._method_set_exclude_parent_body_2586408642 != nil)
        let _method_get_exclude_parent_body_36873697_name = StringName(from: "get_exclude_parent_body")
        self._method_get_exclude_parent_body_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_exclude_parent_body_36873697_name._native_ptr(), 36873697)
        assert(RayCast2D._method_get_exclude_parent_body_36873697 != nil)
        let _method_set_collide_with_areas_2586408642_name = StringName(from: "set_collide_with_areas")
        self._method_set_collide_with_areas_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_with_areas_2586408642_name._native_ptr(), 2586408642)
        assert(RayCast2D._method_set_collide_with_areas_2586408642 != nil)
        let _method_is_collide_with_areas_enabled_36873697_name = StringName(from: "is_collide_with_areas_enabled")
        self._method_is_collide_with_areas_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_with_areas_enabled_36873697_name._native_ptr(), 36873697)
        assert(RayCast2D._method_is_collide_with_areas_enabled_36873697 != nil)
        let _method_set_collide_with_bodies_2586408642_name = StringName(from: "set_collide_with_bodies")
        self._method_set_collide_with_bodies_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_collide_with_bodies_2586408642_name._native_ptr(), 2586408642)
        assert(RayCast2D._method_set_collide_with_bodies_2586408642 != nil)
        let _method_is_collide_with_bodies_enabled_36873697_name = StringName(from: "is_collide_with_bodies_enabled")
        self._method_is_collide_with_bodies_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_collide_with_bodies_enabled_36873697_name._native_ptr(), 36873697)
        assert(RayCast2D._method_is_collide_with_bodies_enabled_36873697 != nil)
        let _method_set_hit_from_inside_2586408642_name = StringName(from: "set_hit_from_inside")
        self._method_set_hit_from_inside_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_hit_from_inside_2586408642_name._native_ptr(), 2586408642)
        assert(RayCast2D._method_set_hit_from_inside_2586408642 != nil)
        let _method_is_hit_from_inside_enabled_36873697_name = StringName(from: "is_hit_from_inside_enabled")
        self._method_is_hit_from_inside_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_hit_from_inside_enabled_36873697_name._native_ptr(), 36873697)
        assert(RayCast2D._method_is_hit_from_inside_enabled_36873697 != nil)
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
    public func is_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_target_position(local_point: Vector2)  {
        let local_point_native = local_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_point_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_position_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_position_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(from: __resPtr.pointee)
    }
    public func is_colliding() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_colliding_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func force_raycast_update()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_raycast_update_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            return Int64(from: __resPtr.pointee)
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
            return Vector2(from: __resPtr.pointee)
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
            return Vector2(from: __resPtr.pointee)
    }
    public func add_exception_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_exception_rid_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_exception(node: CollisionObject2D)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_exception_3090941106,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_exception_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_exception_rid_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func remove_exception(node: CollisionObject2D)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_exception_3090941106,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func clear_exceptions()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_clear_exceptions_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_collision_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_collision_mask_value(layer_number: Int64, value: UInt8)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_mask_value_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_collision_mask_value(layer_number: Int64) -> UInt8 {
        withUnsafePointer(to: layer_number) { layer_number_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_number_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_mask_value_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_exclude_parent_body(mask: UInt8)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_exclude_parent_body_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_exclude_parent_body() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_exclude_parent_body_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_collide_with_areas(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collide_with_areas_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_collide_with_areas_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collide_with_areas_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_collide_with_bodies(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collide_with_bodies_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_collide_with_bodies_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_collide_with_bodies_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_hit_from_inside(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_hit_from_inside_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_hit_from_inside_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_hit_from_inside_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
}