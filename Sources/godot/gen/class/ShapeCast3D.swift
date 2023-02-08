import godot_native

fileprivate var __godot_name_ShapeCast3D: StringName! = nil

/// Node for physics collision sweep and immediate overlap queries. Similar to the [RayCast3D] node.
/// 
/// Shape casting allows to detect collision objects by sweeping the [member shape] along the cast direction determined by [member target_position] (useful for things like beam weapons).
///  
/// Immediate collision overlaps can be done with the [member target_position] set to [code]Vector3(0, 0, 0)[/code] and by calling [method force_shapecast_update] within the same [b]physics_frame[/b]. This also helps to overcome some limitations of [Area3D] when used as a continuous detection area, often requiring waiting a couple of frames before collision information is available to [Area3D] nodes, and when using the signals creates unnecessary complexity.
///  
/// The node can detect multiple collision objects, but it's usually used to detect the first collision.
///  
/// [b]Note:[/b] Shape casting is more computationally expensive compared to ray casting.
open class ShapeCast3D : Node3D {

    

    public override class var __godot_name: StringName { __godot_name_ShapeCast3D }

    static var _method_resource_changed_968641751: GDExtensionMethodBindPtr! = nil
    static var _method_set_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_shape_1549710052: GDExtensionMethodBindPtr! = nil
    static var _method_get_shape_3214262478: GDExtensionMethodBindPtr! = nil
    static var _method_set_target_position_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_target_position_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_margin_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_margin_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_results_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_results_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_is_colliding_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_force_shapecast_update_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_3332903315: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_rid_495598643: GDExtensionMethodBindPtr! = nil
    static var _method_get_collider_shape_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_point_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_normal_711720468: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_collision_safe_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_closest_collision_unsafe_fraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_add_exception_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_add_exception_3975164845: GDExtensionMethodBindPtr! = nil
    static var _method_remove_exception_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_remove_exception_3975164845: GDExtensionMethodBindPtr! = nil
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
    static var _method_set_debug_shape_custom_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_debug_shape_custom_color_3444240500: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_ShapeCast3D = StringName(from: "ShapeCast3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_resource_changed_968641751_name = StringName(from: "resource_changed")
        self._method_resource_changed_968641751 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_resource_changed_968641751_name._native_ptr(), 968641751)
        assert(ShapeCast3D._method_resource_changed_968641751 != nil)
        let _method_set_enabled_2586408642_name = StringName(from: "set_enabled")
        self._method_set_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(ShapeCast3D._method_set_enabled_2586408642 != nil)
        let _method_is_enabled_36873697_name = StringName(from: "is_enabled")
        self._method_is_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_is_enabled_36873697_name._native_ptr(), 36873697)
        assert(ShapeCast3D._method_is_enabled_36873697 != nil)
        let _method_set_shape_1549710052_name = StringName(from: "set_shape")
        self._method_set_shape_1549710052 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_shape_1549710052_name._native_ptr(), 1549710052)
        assert(ShapeCast3D._method_set_shape_1549710052 != nil)
        let _method_get_shape_3214262478_name = StringName(from: "get_shape")
        self._method_get_shape_3214262478 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_shape_3214262478_name._native_ptr(), 3214262478)
        assert(ShapeCast3D._method_get_shape_3214262478 != nil)
        let _method_set_target_position_3460891852_name = StringName(from: "set_target_position")
        self._method_set_target_position_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_target_position_3460891852_name._native_ptr(), 3460891852)
        assert(ShapeCast3D._method_set_target_position_3460891852 != nil)
        let _method_get_target_position_3360562783_name = StringName(from: "get_target_position")
        self._method_get_target_position_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_target_position_3360562783_name._native_ptr(), 3360562783)
        assert(ShapeCast3D._method_get_target_position_3360562783 != nil)
        let _method_set_margin_373806689_name = StringName(from: "set_margin")
        self._method_set_margin_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_margin_373806689_name._native_ptr(), 373806689)
        assert(ShapeCast3D._method_set_margin_373806689 != nil)
        let _method_get_margin_1740695150_name = StringName(from: "get_margin")
        self._method_get_margin_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_margin_1740695150_name._native_ptr(), 1740695150)
        assert(ShapeCast3D._method_get_margin_1740695150 != nil)
        let _method_set_max_results_1286410249_name = StringName(from: "set_max_results")
        self._method_set_max_results_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_max_results_1286410249_name._native_ptr(), 1286410249)
        assert(ShapeCast3D._method_set_max_results_1286410249 != nil)
        let _method_get_max_results_3905245786_name = StringName(from: "get_max_results")
        self._method_get_max_results_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_max_results_3905245786_name._native_ptr(), 3905245786)
        assert(ShapeCast3D._method_get_max_results_3905245786 != nil)
        let _method_is_colliding_36873697_name = StringName(from: "is_colliding")
        self._method_is_colliding_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_is_colliding_36873697_name._native_ptr(), 36873697)
        assert(ShapeCast3D._method_is_colliding_36873697 != nil)
        let _method_get_collision_count_3905245786_name = StringName(from: "get_collision_count")
        self._method_get_collision_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collision_count_3905245786_name._native_ptr(), 3905245786)
        assert(ShapeCast3D._method_get_collision_count_3905245786 != nil)
        let _method_force_shapecast_update_3218959716_name = StringName(from: "force_shapecast_update")
        self._method_force_shapecast_update_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_force_shapecast_update_3218959716_name._native_ptr(), 3218959716)
        assert(ShapeCast3D._method_force_shapecast_update_3218959716 != nil)
        let _method_get_collider_3332903315_name = StringName(from: "get_collider")
        self._method_get_collider_3332903315 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collider_3332903315_name._native_ptr(), 3332903315)
        assert(ShapeCast3D._method_get_collider_3332903315 != nil)
        let _method_get_collider_rid_495598643_name = StringName(from: "get_collider_rid")
        self._method_get_collider_rid_495598643 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collider_rid_495598643_name._native_ptr(), 495598643)
        assert(ShapeCast3D._method_get_collider_rid_495598643 != nil)
        let _method_get_collider_shape_923996154_name = StringName(from: "get_collider_shape")
        self._method_get_collider_shape_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collider_shape_923996154_name._native_ptr(), 923996154)
        assert(ShapeCast3D._method_get_collider_shape_923996154 != nil)
        let _method_get_collision_point_711720468_name = StringName(from: "get_collision_point")
        self._method_get_collision_point_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collision_point_711720468_name._native_ptr(), 711720468)
        assert(ShapeCast3D._method_get_collision_point_711720468 != nil)
        let _method_get_collision_normal_711720468_name = StringName(from: "get_collision_normal")
        self._method_get_collision_normal_711720468 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collision_normal_711720468_name._native_ptr(), 711720468)
        assert(ShapeCast3D._method_get_collision_normal_711720468 != nil)
        let _method_get_closest_collision_safe_fraction_1740695150_name = StringName(from: "get_closest_collision_safe_fraction")
        self._method_get_closest_collision_safe_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_closest_collision_safe_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(ShapeCast3D._method_get_closest_collision_safe_fraction_1740695150 != nil)
        let _method_get_closest_collision_unsafe_fraction_1740695150_name = StringName(from: "get_closest_collision_unsafe_fraction")
        self._method_get_closest_collision_unsafe_fraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_closest_collision_unsafe_fraction_1740695150_name._native_ptr(), 1740695150)
        assert(ShapeCast3D._method_get_closest_collision_unsafe_fraction_1740695150 != nil)
        let _method_add_exception_rid_2722037293_name = StringName(from: "add_exception_rid")
        self._method_add_exception_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_add_exception_rid_2722037293_name._native_ptr(), 2722037293)
        assert(ShapeCast3D._method_add_exception_rid_2722037293 != nil)
        let _method_add_exception_3975164845_name = StringName(from: "add_exception")
        self._method_add_exception_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_add_exception_3975164845_name._native_ptr(), 3975164845)
        assert(ShapeCast3D._method_add_exception_3975164845 != nil)
        let _method_remove_exception_rid_2722037293_name = StringName(from: "remove_exception_rid")
        self._method_remove_exception_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_remove_exception_rid_2722037293_name._native_ptr(), 2722037293)
        assert(ShapeCast3D._method_remove_exception_rid_2722037293 != nil)
        let _method_remove_exception_3975164845_name = StringName(from: "remove_exception")
        self._method_remove_exception_3975164845 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_remove_exception_3975164845_name._native_ptr(), 3975164845)
        assert(ShapeCast3D._method_remove_exception_3975164845 != nil)
        let _method_clear_exceptions_3218959716_name = StringName(from: "clear_exceptions")
        self._method_clear_exceptions_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_clear_exceptions_3218959716_name._native_ptr(), 3218959716)
        assert(ShapeCast3D._method_clear_exceptions_3218959716 != nil)
        let _method_set_collision_mask_1286410249_name = StringName(from: "set_collision_mask")
        self._method_set_collision_mask_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_collision_mask_1286410249_name._native_ptr(), 1286410249)
        assert(ShapeCast3D._method_set_collision_mask_1286410249 != nil)
        let _method_get_collision_mask_3905245786_name = StringName(from: "get_collision_mask")
        self._method_get_collision_mask_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collision_mask_3905245786_name._native_ptr(), 3905245786)
        assert(ShapeCast3D._method_get_collision_mask_3905245786 != nil)
        let _method_set_collision_mask_value_300928843_name = StringName(from: "set_collision_mask_value")
        self._method_set_collision_mask_value_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_collision_mask_value_300928843_name._native_ptr(), 300928843)
        assert(ShapeCast3D._method_set_collision_mask_value_300928843 != nil)
        let _method_get_collision_mask_value_1116898809_name = StringName(from: "get_collision_mask_value")
        self._method_get_collision_mask_value_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_collision_mask_value_1116898809_name._native_ptr(), 1116898809)
        assert(ShapeCast3D._method_get_collision_mask_value_1116898809 != nil)
        let _method_set_exclude_parent_body_2586408642_name = StringName(from: "set_exclude_parent_body")
        self._method_set_exclude_parent_body_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_exclude_parent_body_2586408642_name._native_ptr(), 2586408642)
        assert(ShapeCast3D._method_set_exclude_parent_body_2586408642 != nil)
        let _method_get_exclude_parent_body_36873697_name = StringName(from: "get_exclude_parent_body")
        self._method_get_exclude_parent_body_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_exclude_parent_body_36873697_name._native_ptr(), 36873697)
        assert(ShapeCast3D._method_get_exclude_parent_body_36873697 != nil)
        let _method_set_collide_with_areas_2586408642_name = StringName(from: "set_collide_with_areas")
        self._method_set_collide_with_areas_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_collide_with_areas_2586408642_name._native_ptr(), 2586408642)
        assert(ShapeCast3D._method_set_collide_with_areas_2586408642 != nil)
        let _method_is_collide_with_areas_enabled_36873697_name = StringName(from: "is_collide_with_areas_enabled")
        self._method_is_collide_with_areas_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_is_collide_with_areas_enabled_36873697_name._native_ptr(), 36873697)
        assert(ShapeCast3D._method_is_collide_with_areas_enabled_36873697 != nil)
        let _method_set_collide_with_bodies_2586408642_name = StringName(from: "set_collide_with_bodies")
        self._method_set_collide_with_bodies_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_collide_with_bodies_2586408642_name._native_ptr(), 2586408642)
        assert(ShapeCast3D._method_set_collide_with_bodies_2586408642 != nil)
        let _method_is_collide_with_bodies_enabled_36873697_name = StringName(from: "is_collide_with_bodies_enabled")
        self._method_is_collide_with_bodies_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_is_collide_with_bodies_enabled_36873697_name._native_ptr(), 36873697)
        assert(ShapeCast3D._method_is_collide_with_bodies_enabled_36873697 != nil)
        let _method_set_debug_shape_custom_color_2920490490_name = StringName(from: "set_debug_shape_custom_color")
        self._method_set_debug_shape_custom_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_set_debug_shape_custom_color_2920490490_name._native_ptr(), 2920490490)
        assert(ShapeCast3D._method_set_debug_shape_custom_color_2920490490 != nil)
        let _method_get_debug_shape_custom_color_3444240500_name = StringName(from: "get_debug_shape_custom_color")
        self._method_get_debug_shape_custom_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_ShapeCast3D._native_ptr(), _method_get_debug_shape_custom_color_3444240500_name._native_ptr(), 3444240500)
        assert(ShapeCast3D._method_get_debug_shape_custom_color_3444240500 != nil)
    }

    public func resource_changed(resource: Resource)  {
        let resource_native = resource._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_resource_changed_968641751,
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_shape(shape: Shape3D)  {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shape_1549710052,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_shape() -> Shape3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shape_3214262478,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Shape3D(godot: __resPtr.pointee)
    }
    public func set_target_position(local_point: Vector3)  {
        let local_point_native = local_point._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_point_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_target_position_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_target_position() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_target_position_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
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
    public func set_max_results(max_results: Int64)  {
        withUnsafePointer(to: max_results) { max_results_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_results_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_results_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_results() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_results_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
    public func force_shapecast_update()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_shapecast_update_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_collider(index: Int64) -> Object {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_3332903315,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
        }
    }
    public func get_collider_rid(index: Int64) -> RID {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_rid_495598643,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func get_collider_shape(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collider_shape_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_collision_point(index: Int64) -> Vector3 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_point_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func get_collision_normal(index: Int64) -> Vector3 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_normal_711720468,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
        }
    }
    public func get_closest_collision_safe_fraction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_collision_safe_fraction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_closest_collision_unsafe_fraction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_closest_collision_unsafe_fraction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
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
    public func add_exception(node: Object)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_exception_3975164845,
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
    public func remove_exception(node: Object)  {
        let node_native = node._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(node_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_remove_exception_3975164845,
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
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_debug_shape_custom_color(debug_shape_custom_color: Color)  {
        let debug_shape_custom_color_native = debug_shape_custom_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(debug_shape_custom_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_shape_custom_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_debug_shape_custom_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_debug_shape_custom_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
}