import godot_native

fileprivate var __godot_name_PhysicsServer3DExtension: StringName! = nil

/// 
/// 
/// 
public class PhysicsServer3DExtension : PhysicsServer3D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsServer3DExtension }

    static var _method__world_boundary_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__separation_ray_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__sphere_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__box_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__capsule_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__cylinder_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__convex_polygon_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__concave_polygon_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__heightmap_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__custom_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_set_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_set_custom_solver_bias_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_set_margin_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_margin_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_custom_solver_bias_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_set_active_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_is_active_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_get_direct_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_set_debug_contacts_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_get_contacts_0: GDExtensionMethodBindPtr! = nil
    static var _method__space_get_contact_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_space_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_space_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_add_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_shape_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_shape_disabled_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_shape_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_shape_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_remove_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_clear_shapes_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_attach_object_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_object_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_monitorable_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_ray_pickable_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_monitor_callback_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_area_monitor_callback_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_space_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_space_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_add_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_shape_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_shape_disabled_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_shape_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_shape_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_remove_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_clear_shapes_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_attach_object_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_object_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_enable_continuous_collision_detection_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_is_continuous_collision_detection_enabled_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_collision_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_user_flags_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_user_flags_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_reset_mass_properties_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_central_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_torque_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_central_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_add_constant_central_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_add_constant_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_add_constant_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_constant_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_constant_force_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_constant_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_constant_torque_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_axis_velocity_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_axis_lock_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_is_axis_locked_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_add_collision_exception_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_remove_collision_exception_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_exceptions_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_max_contacts_reported_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_max_contacts_reported_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_contacts_reported_depth_threshold_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_contacts_reported_depth_threshold_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_omit_force_integration_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_is_omitting_force_integration_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_state_sync_callback_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_force_integration_callback_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_ray_pickable_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_test_motion_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_direct_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_update_rendering_server_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_space_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_space_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_ray_pickable_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_add_collision_exception_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_remove_collision_exception_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_collision_exceptions_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_simulation_precision_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_simulation_precision_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_total_mass_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_total_mass_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_linear_stiffness_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_linear_stiffness_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_pressure_coefficient_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_pressure_coefficient_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_damping_coefficient_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_damping_coefficient_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_drag_coefficient_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_drag_coefficient_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_set_mesh_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_bounds_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_move_point_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_get_point_global_position_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_remove_all_pinned_points_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_pin_point_0: GDExtensionMethodBindPtr! = nil
    static var _method__soft_body_is_point_pinned_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_clear_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_pin_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_set_local_a_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_get_local_a_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_set_local_b_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_get_local_b_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_hinge_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_hinge_simple_0: GDExtensionMethodBindPtr! = nil
    static var _method__hinge_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__hinge_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__hinge_joint_set_flag_0: GDExtensionMethodBindPtr! = nil
    static var _method__hinge_joint_get_flag_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_slider_0: GDExtensionMethodBindPtr! = nil
    static var _method__slider_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__slider_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_cone_twist_0: GDExtensionMethodBindPtr! = nil
    static var _method__cone_twist_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__cone_twist_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_generic_6dof_0: GDExtensionMethodBindPtr! = nil
    static var _method__generic_6dof_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__generic_6dof_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__generic_6dof_joint_set_flag_0: GDExtensionMethodBindPtr! = nil
    static var _method__generic_6dof_joint_get_flag_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_get_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_set_solver_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_get_solver_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_disable_collisions_between_bodies_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_is_disabled_collisions_between_bodies_0: GDExtensionMethodBindPtr! = nil
    static var _method__free_rid_0: GDExtensionMethodBindPtr! = nil
    static var _method__set_active_0: GDExtensionMethodBindPtr! = nil
    static var _method__init_0: GDExtensionMethodBindPtr! = nil
    static var _method__step_0: GDExtensionMethodBindPtr! = nil
    static var _method__sync_0: GDExtensionMethodBindPtr! = nil
    static var _method__flush_queries_0: GDExtensionMethodBindPtr! = nil
    static var _method__end_sync_0: GDExtensionMethodBindPtr! = nil
    static var _method__finish_0: GDExtensionMethodBindPtr! = nil
    static var _method__is_flushing_queries_0: GDExtensionMethodBindPtr! = nil
    static var _method__get_process_info_0: GDExtensionMethodBindPtr! = nil
    static var _method_body_test_motion_is_excluding_body_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_body_test_motion_is_excluding_object_1116898809: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsServer3DExtension = StringName(from: "PhysicsServer3DExtension")

        let _method_body_test_motion_is_excluding_body_4155700596_name = StringName(from: "body_test_motion_is_excluding_body")
        self._method_body_test_motion_is_excluding_body_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_test_motion_is_excluding_body_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer3DExtension._method_body_test_motion_is_excluding_body_4155700596 != nil)
        let _method_body_test_motion_is_excluding_object_1116898809_name = StringName(from: "body_test_motion_is_excluding_object")
        self._method_body_test_motion_is_excluding_object_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_test_motion_is_excluding_object_1116898809_name._native_ptr(), 1116898809)
        assert(PhysicsServer3DExtension._method_body_test_motion_is_excluding_object_1116898809 != nil)
    }

    public func _world_boundary_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__world_boundary_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _separation_ray_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__separation_ray_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _sphere_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__sphere_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _box_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__box_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _capsule_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__capsule_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _cylinder_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__cylinder_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _convex_polygon_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__convex_polygon_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _concave_polygon_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__concave_polygon_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _heightmap_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__heightmap_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _custom_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__custom_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _shape_set_data(shape: RID, data: Variant)  {
        let data_native = data._native_ptr()
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_set_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _shape_set_custom_solver_bias(shape: RID, bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native), .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_set_custom_solver_bias_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _shape_set_margin(shape: RID, margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native), .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_set_margin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _shape_get_margin(shape: RID) -> Float64 {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_get_margin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _shape_get_type(shape: RID) -> PhysicsServer3D.ShapeType {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_get_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer3D.ShapeType(from: __resPtr.pointee)
    }
    public func _shape_get_data(shape: RID) -> Variant {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_get_data_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func _shape_get_custom_solver_bias(shape: RID) -> Float64 {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_get_custom_solver_bias_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _space_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _space_set_active(space: RID, active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native), .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_set_active_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _space_is_active(space: RID) -> UInt8 {
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_is_active_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _space_set_param(space: RID, param: PhysicsServer3D.SpaceParameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _space_get_param(space: RID, param: PhysicsServer3D.SpaceParameter) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func _space_get_direct_state(space: RID) -> PhysicsDirectSpaceState3D {
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_get_direct_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState3D(from: __resPtr.pointee)
    }
    public func _space_set_debug_contacts(space: RID, max_contacts: Int64)  {
        withUnsafePointer(to: max_contacts) { max_contacts_native in
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native), .init(max_contacts_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_set_debug_contacts_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _space_get_contacts(space: RID) -> PackedVector3Array {
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_get_contacts_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func _space_get_contact_count(space: RID) -> Int64 {
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__space_get_contact_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _area_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _area_set_space(area: RID, space: RID)  {
        let space_native = space._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_space_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _area_get_space(area: RID) -> RID {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_space_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _area_add_shape(area: RID, shape: RID, transform: Transform3D, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        let transform_native = transform._native_ptr()
        let shape_native = shape._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_native), .init(transform_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_add_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_set_shape(area: RID, shape_idx: Int64, shape: RID)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let shape_native = shape._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native), .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_set_shape_transform(area: RID, shape_idx: Int64, transform: Transform3D)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let transform_native = transform._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_shape_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_set_shape_disabled(area: RID, shape_idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_shape_disabled_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _area_get_shape_count(area: RID) -> Int64 {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_shape_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _area_get_shape(area: RID, shape_idx: Int64) -> RID {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func _area_get_shape_transform(area: RID, shape_idx: Int64) -> Transform3D {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_shape_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func _area_remove_shape(area: RID, shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_remove_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_clear_shapes(area: RID)  {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_clear_shapes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _area_attach_object_instance_id(area: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_attach_object_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_get_object_instance_id(area: RID) -> Int64 {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_object_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _area_set_param(area: RID, param: PhysicsServer3D.AreaParameter, value: Variant)  {
        withUnsafePointer(to: param.rawValue) { param_native in
        let value_native = value._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_set_transform(area: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _area_get_param(area: RID, param: PhysicsServer3D.AreaParameter) -> Variant {
        withUnsafePointer(to: param.rawValue) { param_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func _area_get_transform(area: RID) -> Transform3D {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func _area_set_collision_layer(area: RID, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_collision_layer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_get_collision_layer(area: RID) -> Int64 {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_collision_layer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _area_set_collision_mask(area: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_collision_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_get_collision_mask(area: RID) -> Int64 {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_get_collision_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _area_set_monitorable(area: RID, monitorable: UInt8)  {
        withUnsafePointer(to: monitorable) { monitorable_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(monitorable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_monitorable_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_set_ray_pickable(area: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_ray_pickable_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_set_monitor_callback(area: RID, callback: Callable)  {
        let callback_native = callback._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_monitor_callback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _area_set_area_monitor_callback(area: RID, callback: Callable)  {
        let callback_native = callback._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_area_monitor_callback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _body_set_space(body: RID, space: RID)  {
        let space_native = space._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_space_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_get_space(body: RID) -> RID {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_space_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _body_set_mode(body: RID, mode: PhysicsServer3D.BodyMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_mode(body: RID) -> PhysicsServer3D.BodyMode {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer3D.BodyMode(from: __resPtr.pointee)
    }
    public func _body_add_shape(body: RID, shape: RID, transform: Transform3D, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        let transform_native = transform._native_ptr()
        let shape_native = shape._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_native), .init(transform_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_add_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_set_shape(body: RID, shape_idx: Int64, shape: RID)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let shape_native = shape._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native), .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_set_shape_transform(body: RID, shape_idx: Int64, transform: Transform3D)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let transform_native = transform._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_shape_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_set_shape_disabled(body: RID, shape_idx: Int64, disabled: UInt8)  {
        withUnsafePointer(to: disabled) { disabled_native in
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native), .init(disabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_shape_disabled_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _body_get_shape_count(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_shape_count_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_get_shape(body: RID, shape_idx: Int64) -> RID {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func _body_get_shape_transform(body: RID, shape_idx: Int64) -> Transform3D {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_shape_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func _body_remove_shape(body: RID, shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_remove_shape_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_clear_shapes(body: RID)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_clear_shapes_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_attach_object_instance_id(body: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_attach_object_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_object_instance_id(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_object_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_set_enable_continuous_collision_detection(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_enable_continuous_collision_detection_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_is_continuous_collision_detection_enabled(body: RID) -> UInt8 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_is_continuous_collision_detection_enabled_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _body_set_collision_layer(body: RID, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_collision_layer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_collision_layer(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_collision_layer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_set_collision_mask(body: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_collision_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_collision_mask(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_collision_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_set_collision_priority(body: RID, priority: Float64)  {
        withUnsafePointer(to: priority) { priority_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_collision_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_collision_priority(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_collision_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _body_set_user_flags(body: RID, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_user_flags_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_user_flags(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_user_flags_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_set_param(body: RID, param: PhysicsServer3D.BodyParameter, value: Variant)  {
        withUnsafePointer(to: param.rawValue) { param_native in
        let value_native = value._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_param(body: RID, param: PhysicsServer3D.BodyParameter) -> Variant {
        withUnsafePointer(to: param.rawValue) { param_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func _body_reset_mass_properties(body: RID)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_reset_mass_properties_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_set_state(body: RID, state: PhysicsServer3D.BodyState, value: Variant)  {
        withUnsafePointer(to: state.rawValue) { state_native in
        let value_native = value._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(state_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_state(body: RID, state: PhysicsServer3D.BodyState) -> Variant {
        withUnsafePointer(to: state.rawValue) { state_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func _body_apply_central_impulse(body: RID, impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_apply_central_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_apply_impulse(body: RID, impulse: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let impulse_native = impulse._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_apply_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_apply_torque_impulse(body: RID, impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_apply_torque_impulse_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_apply_central_force(body: RID, force: Vector3)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_apply_central_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_apply_force(body: RID, force: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_apply_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_apply_torque(body: RID, torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_apply_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_add_constant_central_force(body: RID, force: Vector3)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_add_constant_central_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_add_constant_force(body: RID, force: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_add_constant_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_add_constant_torque(body: RID, torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_add_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_set_constant_force(body: RID, force: Vector3)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_constant_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_get_constant_force(body: RID) -> Vector3 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_constant_force_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func _body_set_constant_torque(body: RID, torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_get_constant_torque(body: RID) -> Vector3 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func _body_set_axis_velocity(body: RID, axis_velocity: Vector3)  {
        let axis_velocity_native = axis_velocity._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(axis_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_axis_velocity_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_set_axis_lock(body: RID, axis: PhysicsServer3D.BodyAxis, lock: UInt8)  {
        withUnsafePointer(to: lock) { lock_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(axis_native), .init(lock_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_axis_lock_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _body_is_axis_locked(body: RID, axis: PhysicsServer3D.BodyAxis) -> UInt8 {
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(axis_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_is_axis_locked_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _body_add_collision_exception(body: RID, excepted_body: RID)  {
        let excepted_body_native = excepted_body._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(excepted_body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_add_collision_exception_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_remove_collision_exception(body: RID, excepted_body: RID)  {
        let excepted_body_native = excepted_body._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(excepted_body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_remove_collision_exception_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_get_collision_exceptions(body: RID) -> [RID] {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_collision_exceptions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func _body_set_max_contacts_reported(body: RID, amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_max_contacts_reported_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_max_contacts_reported(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_max_contacts_reported_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_set_contacts_reported_depth_threshold(body: RID, threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(threshold_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_contacts_reported_depth_threshold_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_contacts_reported_depth_threshold(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_contacts_reported_depth_threshold_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _body_set_omit_force_integration(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_omit_force_integration_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_is_omitting_force_integration(body: RID) -> UInt8 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_is_omitting_force_integration_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _body_set_state_sync_callback(body: RID, callable: Callable)  {
        let callable_native = callable._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_state_sync_callback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_set_force_integration_callback(body: RID, callable: Callable, userdata: Variant)  {
        let userdata_native = userdata._native_ptr()
        let callable_native = callable._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(callable_native), .init(userdata_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_force_integration_callback_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _body_set_ray_pickable(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_ray_pickable_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_test_motion(body: RID, from: Transform3D, motion: Vector3, margin: Float64, max_collisions: Int64, collide_separation_ray: UInt8, result: UnsafePointer<PhysicsServer3DExtensionMotionResult>) -> UInt8 {
        withUnsafePointer(to: result) { result_native in
        withUnsafePointer(to: collide_separation_ray) { collide_separation_ray_native in
        withUnsafePointer(to: max_collisions) { max_collisions_native in
        withUnsafePointer(to: margin) { margin_native in
        let motion_native = motion._native_ptr()
        let from_native = from._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(from_native), .init(motion_native), .init(margin_native), .init(max_collisions_native), .init(collide_separation_ray_native), .init(result_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_test_motion_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func _body_get_direct_state(body: RID) -> PhysicsDirectBodyState3D {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_direct_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectBodyState3D(from: __resPtr.pointee)
    }
    public func _soft_body_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _soft_body_update_rendering_server(body: RID, rendering_server_handler: PhysicsServer3DRenderingServerHandler)  {
        let rendering_server_handler_native = rendering_server_handler._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(rendering_server_handler_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_update_rendering_server_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_set_space(body: RID, space: RID)  {
        let space_native = space._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_space_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_get_space(body: RID) -> RID {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_space_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _soft_body_set_ray_pickable(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_ray_pickable_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_set_collision_layer(body: RID, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_collision_layer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_collision_layer(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_collision_layer_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _soft_body_set_collision_mask(body: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_collision_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_collision_mask(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_collision_mask_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _soft_body_add_collision_exception(body: RID, body_b: RID)  {
        let body_b_native = body_b._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(body_b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_add_collision_exception_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_remove_collision_exception(body: RID, body_b: RID)  {
        let body_b_native = body_b._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(body_b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_remove_collision_exception_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_get_collision_exceptions(body: RID) -> [RID] {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_collision_exceptions_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [RID](from: __resPtr.pointee)
    }
    public func _soft_body_set_state(body: RID, state: PhysicsServer3D.BodyState, variant: Variant)  {
        withUnsafePointer(to: state.rawValue) { state_native in
        let variant_native = variant._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(state_native), .init(variant_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_state(body: RID, state: PhysicsServer3D.BodyState) -> Variant {
        withUnsafePointer(to: state.rawValue) { state_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_state_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func _soft_body_set_transform(body: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_transform_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_set_simulation_precision(body: RID, simulation_precision: Int64)  {
        withUnsafePointer(to: simulation_precision) { simulation_precision_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(simulation_precision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_simulation_precision_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_simulation_precision(body: RID) -> Int64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_simulation_precision_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _soft_body_set_total_mass(body: RID, total_mass: Float64)  {
        withUnsafePointer(to: total_mass) { total_mass_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(total_mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_total_mass_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_total_mass(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_total_mass_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _soft_body_set_linear_stiffness(body: RID, linear_stiffness: Float64)  {
        withUnsafePointer(to: linear_stiffness) { linear_stiffness_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(linear_stiffness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_linear_stiffness_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_linear_stiffness(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_linear_stiffness_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _soft_body_set_pressure_coefficient(body: RID, pressure_coefficient: Float64)  {
        withUnsafePointer(to: pressure_coefficient) { pressure_coefficient_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(pressure_coefficient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_pressure_coefficient_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_pressure_coefficient(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_pressure_coefficient_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _soft_body_set_damping_coefficient(body: RID, damping_coefficient: Float64)  {
        withUnsafePointer(to: damping_coefficient) { damping_coefficient_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(damping_coefficient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_damping_coefficient_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_damping_coefficient(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_damping_coefficient_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _soft_body_set_drag_coefficient(body: RID, drag_coefficient: Float64)  {
        withUnsafePointer(to: drag_coefficient) { drag_coefficient_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(drag_coefficient_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_drag_coefficient_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_drag_coefficient(body: RID) -> Float64 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_drag_coefficient_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _soft_body_set_mesh(body: RID, mesh: RID)  {
        let mesh_native = mesh._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_set_mesh_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_get_bounds(body: RID) -> AABB {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_bounds_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func _soft_body_move_point(body: RID, point_index: Int64, global_position: Vector3)  {
        withUnsafePointer(to: point_index) { point_index_native in
        let global_position_native = global_position._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(point_index_native), .init(global_position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_move_point_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _soft_body_get_point_global_position(body: RID, point_index: Int64) -> Vector3 {
        withUnsafePointer(to: point_index) { point_index_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(point_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_get_point_global_position_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
        }
    }
    public func _soft_body_remove_all_pinned_points(body: RID)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_remove_all_pinned_points_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _soft_body_pin_point(body: RID, point_index: Int64, pin: UInt8)  {
        withUnsafePointer(to: pin) { pin_native in
        withUnsafePointer(to: point_index) { point_index_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(point_index_native), .init(pin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_pin_point_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _soft_body_is_point_pinned(body: RID, point_index: Int64) -> UInt8 {
        withUnsafePointer(to: point_index) { point_index_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(point_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__soft_body_is_point_pinned_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _joint_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _joint_clear(joint: RID)  {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_clear_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _joint_make_pin(joint: RID, body_A: RID, local_A: Vector3, body_B: RID, local_B: Vector3)  {
        let local_B_native = local_B._native_ptr()
        let body_B_native = body_B._native_ptr()
        let local_A_native = local_A._native_ptr()
        let body_A_native = body_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(body_A_native), .init(local_A_native), .init(body_B_native), .init(local_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_pin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _pin_joint_set_param(joint: RID, param: PhysicsServer3D.PinJointParam, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pin_joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _pin_joint_get_param(joint: RID, param: PhysicsServer3D.PinJointParam) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pin_joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func _pin_joint_set_local_a(joint: RID, local_A: Vector3)  {
        let local_A_native = local_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(local_A_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pin_joint_set_local_a_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _pin_joint_get_local_a(joint: RID) -> Vector3 {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pin_joint_get_local_a_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func _pin_joint_set_local_b(joint: RID, local_B: Vector3)  {
        let local_B_native = local_B._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(local_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pin_joint_set_local_b_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _pin_joint_get_local_b(joint: RID) -> Vector3 {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__pin_joint_get_local_b_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func _joint_make_hinge(joint: RID, body_A: RID, hinge_A: Transform3D, body_B: RID, hinge_B: Transform3D)  {
        let hinge_B_native = hinge_B._native_ptr()
        let body_B_native = body_B._native_ptr()
        let hinge_A_native = hinge_A._native_ptr()
        let body_A_native = body_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(body_A_native), .init(hinge_A_native), .init(body_B_native), .init(hinge_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_hinge_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _joint_make_hinge_simple(joint: RID, body_A: RID, pivot_A: Vector3, axis_A: Vector3, body_B: RID, pivot_B: Vector3, axis_B: Vector3)  {
        let axis_B_native = axis_B._native_ptr()
        let pivot_B_native = pivot_B._native_ptr()
        let body_B_native = body_B._native_ptr()
        let axis_A_native = axis_A._native_ptr()
        let pivot_A_native = pivot_A._native_ptr()
        let body_A_native = body_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(body_A_native), .init(pivot_A_native), .init(axis_A_native), .init(body_B_native), .init(pivot_B_native), .init(axis_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_hinge_simple_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _hinge_joint_set_param(joint: RID, param: PhysicsServer3D.HingeJointParam, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__hinge_joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _hinge_joint_get_param(joint: RID, param: PhysicsServer3D.HingeJointParam) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__hinge_joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func _hinge_joint_set_flag(joint: RID, flag: PhysicsServer3D.HingeJointFlag, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(flag_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__hinge_joint_set_flag_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _hinge_joint_get_flag(joint: RID, flag: PhysicsServer3D.HingeJointFlag) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__hinge_joint_get_flag_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func _joint_make_slider(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)  {
        let local_ref_B_native = local_ref_B._native_ptr()
        let body_B_native = body_B._native_ptr()
        let local_ref_A_native = local_ref_A._native_ptr()
        let body_A_native = body_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(body_A_native), .init(local_ref_A_native), .init(body_B_native), .init(local_ref_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_slider_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _slider_joint_set_param(joint: RID, param: PhysicsServer3D.SliderJointParam, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__slider_joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _slider_joint_get_param(joint: RID, param: PhysicsServer3D.SliderJointParam) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__slider_joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func _joint_make_cone_twist(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)  {
        let local_ref_B_native = local_ref_B._native_ptr()
        let body_B_native = body_B._native_ptr()
        let local_ref_A_native = local_ref_A._native_ptr()
        let body_A_native = body_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(body_A_native), .init(local_ref_A_native), .init(body_B_native), .init(local_ref_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_cone_twist_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _cone_twist_joint_set_param(joint: RID, param: PhysicsServer3D.ConeTwistJointParam, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__cone_twist_joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _cone_twist_joint_get_param(joint: RID, param: PhysicsServer3D.ConeTwistJointParam) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__cone_twist_joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func _joint_make_generic_6dof(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)  {
        let local_ref_B_native = local_ref_B._native_ptr()
        let body_B_native = body_B._native_ptr()
        let local_ref_A_native = local_ref_A._native_ptr()
        let body_A_native = body_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(body_A_native), .init(local_ref_A_native), .init(body_B_native), .init(local_ref_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_generic_6dof_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _generic_6dof_joint_set_param(joint: RID, axis: Vector3.Axis, param: PhysicsServer3D.G6DOFJointAxisParam, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(axis_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__generic_6dof_joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _generic_6dof_joint_get_param(joint: RID, axis: Vector3.Axis, param: PhysicsServer3D.G6DOFJointAxisParam) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(axis_native), .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__generic_6dof_joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func _generic_6dof_joint_set_flag(joint: RID, axis: Vector3.Axis, flag: PhysicsServer3D.G6DOFJointAxisFlag, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(axis_native), .init(flag_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__generic_6dof_joint_set_flag_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func _generic_6dof_joint_get_flag(joint: RID, axis: Vector3.Axis, flag: PhysicsServer3D.G6DOFJointAxisFlag) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        withUnsafePointer(to: axis.rawValue) { axis_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(axis_native), .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__generic_6dof_joint_get_flag_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func _joint_get_type(joint: RID) -> PhysicsServer3D.JointType {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_get_type_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer3D.JointType(from: __resPtr.pointee)
    }
    public func _joint_set_solver_priority(joint: RID, priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_set_solver_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _joint_get_solver_priority(joint: RID) -> Int64 {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_get_solver_priority_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _joint_disable_collisions_between_bodies(joint: RID, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_disable_collisions_between_bodies_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _joint_is_disabled_collisions_between_bodies(joint: RID) -> UInt8 {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_is_disabled_collisions_between_bodies_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__free_rid_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _set_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__set_active_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _init()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__init_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _step(step: Float64)  {
        withUnsafePointer(to: step) { step_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(step_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__step_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _sync()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__sync_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _flush_queries()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__flush_queries_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _end_sync()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__end_sync_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _finish()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__finish_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _is_flushing_queries() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__is_flushing_queries_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func _get_process_info(process_info: PhysicsServer3D.ProcessInfo) -> Int64 {
        withUnsafePointer(to: process_info.rawValue) { process_info_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(process_info_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__get_process_info_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func body_test_motion_is_excluding_body(body: RID) -> UInt8 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_test_motion_is_excluding_body_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func body_test_motion_is_excluding_object(object: Int64) -> UInt8 {
        withUnsafePointer(to: object) { object_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(object_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_test_motion_is_excluding_object_1116898809,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
}