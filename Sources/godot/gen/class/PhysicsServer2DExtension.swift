import godot_native

fileprivate var __godot_name_PhysicsServer2DExtension: StringName! = nil

/// 
/// 
/// 
public class PhysicsServer2DExtension : PhysicsServer2D {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsServer2DExtension }

    static var _method__world_boundary_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__separation_ray_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__segment_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__circle_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__rectangle_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__capsule_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__convex_polygon_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__concave_polygon_shape_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_set_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_set_custom_solver_bias_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_type_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_data_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_get_custom_solver_bias_0: GDExtensionMethodBindPtr! = nil
    static var _method__shape_collide_0: GDExtensionMethodBindPtr! = nil
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
    static var _method__area_attach_canvas_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_canvas_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_get_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_monitorable_0: GDExtensionMethodBindPtr! = nil
    static var _method__area_set_pickable_0: GDExtensionMethodBindPtr! = nil
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
    static var _method__body_get_shape_count_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_shape_transform_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_shape_disabled_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_shape_as_one_way_collision_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_remove_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_clear_shapes_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_attach_object_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_object_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_attach_canvas_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_canvas_instance_id_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_continuous_collision_detection_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_continuous_collision_detection_mode_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_layer_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_mask_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_collision_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_collision_priority_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_reset_mass_properties_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_central_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_torque_impulse_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_apply_impulse_0: GDExtensionMethodBindPtr! = nil
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
    static var _method__body_collide_shape_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_set_pickable_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_get_direct_state_0: GDExtensionMethodBindPtr! = nil
    static var _method__body_test_motion_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_create_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_clear_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_disable_collisions_between_bodies_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_is_disabled_collisions_between_bodies_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_pin_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_groove_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_make_damped_spring_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__pin_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__damped_spring_joint_set_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__damped_spring_joint_get_param_0: GDExtensionMethodBindPtr! = nil
    static var _method__joint_get_type_0: GDExtensionMethodBindPtr! = nil
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
        __godot_name_PhysicsServer2DExtension = StringName(from: "PhysicsServer2DExtension")

        let _method_body_test_motion_is_excluding_body_4155700596_name = StringName(from: "body_test_motion_is_excluding_body")
        self._method_body_test_motion_is_excluding_body_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_test_motion_is_excluding_body_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer2DExtension._method_body_test_motion_is_excluding_body_4155700596 != nil)
        let _method_body_test_motion_is_excluding_object_1116898809_name = StringName(from: "body_test_motion_is_excluding_object")
        self._method_body_test_motion_is_excluding_object_1116898809 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_test_motion_is_excluding_object_1116898809_name._native_ptr(), 1116898809)
        assert(PhysicsServer2DExtension._method_body_test_motion_is_excluding_object_1116898809 != nil)
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
    public func _segment_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__segment_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _circle_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__circle_shape_create_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func _rectangle_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__rectangle_shape_create_0,
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
    public func _shape_get_type(shape: RID) -> PhysicsServer2D.ShapeType {
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
            return PhysicsServer2D.ShapeType(from: __resPtr.pointee)
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
    public func _shape_collide(shape_A: RID, xform_A: Transform2D, motion_A: Vector2, shape_B: RID, xform_B: Transform2D, motion_B: Vector2, results: UnsafeMutableRawPointer, result_max: Int64, result_count: UnsafeMutablePointer<Int32>) -> UInt8 {
        withUnsafePointer(to: result_count) { result_count_native in
        withUnsafePointer(to: result_max) { result_max_native in
        withUnsafePointer(to: results) { results_native in
        let motion_B_native = motion_B._native_ptr()
        let xform_B_native = xform_B._native_ptr()
        let shape_B_native = shape_B._native_ptr()
        let motion_A_native = motion_A._native_ptr()
        let xform_A_native = xform_A._native_ptr()
        let shape_A_native = shape_A._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 9)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_A_native), .init(xform_A_native), .init(motion_A_native), .init(shape_B_native), .init(xform_B_native), .init(motion_B_native), .init(results_native), .init(result_max_native), .init(result_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__shape_collide_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
        }
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
    public func _space_set_param(space: RID, param: PhysicsServer2D.SpaceParameter, value: Float64)  {
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
    public func _space_get_param(space: RID, param: PhysicsServer2D.SpaceParameter) -> Float64 {
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
    public func _space_get_direct_state(space: RID) -> PhysicsDirectSpaceState2D {
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
            return PhysicsDirectSpaceState2D(from: __resPtr.pointee)
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
    public func _space_get_contacts(space: RID) -> PackedVector2Array {
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
            return PackedVector2Array(from: __resPtr.pointee)
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
    public func _area_add_shape(area: RID, shape: RID, transform: Transform2D, disabled: UInt8)  {
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
    public func _area_set_shape_transform(area: RID, shape_idx: Int64, transform: Transform2D)  {
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
    public func _area_get_shape_transform(area: RID, shape_idx: Int64) -> Transform2D {
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
            return Transform2D(from: __resPtr.pointee)
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
    public func _area_attach_canvas_instance_id(area: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_attach_canvas_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _area_get_canvas_instance_id(area: RID) -> Int64 {
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
                    Self._method__area_get_canvas_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _area_set_param(area: RID, param: PhysicsServer2D.AreaParameter, value: Variant)  {
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
    public func _area_set_transform(area: RID, transform: Transform2D)  {
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
    public func _area_get_param(area: RID, param: PhysicsServer2D.AreaParameter) -> Variant {
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
    public func _area_get_transform(area: RID) -> Transform2D {
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
            return Transform2D(from: __resPtr.pointee)
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
    public func _area_set_pickable(area: RID, pickable: UInt8)  {
        withUnsafePointer(to: pickable) { pickable_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(pickable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__area_set_pickable_0,
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
    public func _body_set_mode(body: RID, mode: PhysicsServer2D.BodyMode)  {
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
    public func _body_get_mode(body: RID) -> PhysicsServer2D.BodyMode {
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
            return PhysicsServer2D.BodyMode(from: __resPtr.pointee)
    }
    public func _body_add_shape(body: RID, shape: RID, transform: Transform2D, disabled: UInt8)  {
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
    public func _body_set_shape_transform(body: RID, shape_idx: Int64, transform: Transform2D)  {
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
    public func _body_get_shape_transform(body: RID, shape_idx: Int64) -> Transform2D {
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
            return Transform2D(from: __resPtr.pointee)
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
    public func _body_set_shape_as_one_way_collision(body: RID, shape_idx: Int64, enable: UInt8, margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native), .init(enable_native), .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_shape_as_one_way_collision_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
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
    public func _body_attach_canvas_instance_id(body: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_attach_canvas_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_canvas_instance_id(body: RID) -> Int64 {
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
                    Self._method__body_get_canvas_instance_id_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func _body_set_continuous_collision_detection_mode(body: RID, mode: PhysicsServer2D.CCDMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_continuous_collision_detection_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_continuous_collision_detection_mode(body: RID) -> PhysicsServer2D.CCDMode {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_get_continuous_collision_detection_mode_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer2D.CCDMode(from: __resPtr.pointee)
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
    public func _body_set_param(body: RID, param: PhysicsServer2D.BodyParameter, value: Variant)  {
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
    public func _body_get_param(body: RID, param: PhysicsServer2D.BodyParameter) -> Variant {
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
    public func _body_set_state(body: RID, state: PhysicsServer2D.BodyState, value: Variant)  {
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
    public func _body_get_state(body: RID, state: PhysicsServer2D.BodyState) -> Variant {
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
    public func _body_apply_central_impulse(body: RID, impulse: Vector2)  {
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
    public func _body_apply_torque_impulse(body: RID, impulse: Float64)  {
        withUnsafePointer(to: impulse) { impulse_native in
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
    }
    public func _body_apply_impulse(body: RID, impulse: Vector2, position: Vector2)  {
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
    public func _body_apply_central_force(body: RID, force: Vector2)  {
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
    public func _body_apply_force(body: RID, force: Vector2, position: Vector2)  {
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
    public func _body_apply_torque(body: RID, torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
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
    }
    public func _body_add_constant_central_force(body: RID, force: Vector2)  {
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
    public func _body_add_constant_force(body: RID, force: Vector2, position: Vector2)  {
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
    public func _body_add_constant_torque(body: RID, torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
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
    }
    public func _body_set_constant_force(body: RID, force: Vector2)  {
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
    public func _body_get_constant_force(body: RID) -> Vector2 {
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
            return Vector2(from: __resPtr.pointee)
    }
    public func _body_set_constant_torque(body: RID, torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
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
    }
    public func _body_get_constant_torque(body: RID) -> Float64 {
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
                    Self._method__body_get_constant_torque_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func _body_set_axis_velocity(body: RID, axis_velocity: Vector2)  {
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
    public func _body_collide_shape(body: RID, body_shape: Int64, shape: RID, shape_xform: Transform2D, motion: Vector2, results: UnsafeMutableRawPointer, result_max: Int64, result_count: UnsafeMutablePointer<Int32>) -> UInt8 {
        withUnsafePointer(to: result_count) { result_count_native in
        withUnsafePointer(to: result_max) { result_max_native in
        withUnsafePointer(to: results) { results_native in
        withUnsafePointer(to: body_shape) { body_shape_native in
        let motion_native = motion._native_ptr()
        let shape_xform_native = shape_xform._native_ptr()
        let shape_native = shape._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(body_shape_native), .init(shape_native), .init(shape_xform_native), .init(motion_native), .init(results_native), .init(result_max_native), .init(result_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_collide_shape_0,
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
    public func _body_set_pickable(body: RID, pickable: UInt8)  {
        withUnsafePointer(to: pickable) { pickable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(pickable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__body_set_pickable_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func _body_get_direct_state(body: RID) -> PhysicsDirectBodyState2D {
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
            return PhysicsDirectBodyState2D(from: __resPtr.pointee)
    }
    public func _body_test_motion(body: RID, from: Transform2D, motion: Vector2, margin: Float64, collide_separation_ray: UInt8, recovery_as_collision: UInt8, result: UnsafePointer<PhysicsServer2DExtensionMotionResult>) -> UInt8 {
        withUnsafePointer(to: result) { result_native in
        withUnsafePointer(to: recovery_as_collision) { recovery_as_collision_native in
        withUnsafePointer(to: collide_separation_ray) { collide_separation_ray_native in
        withUnsafePointer(to: margin) { margin_native in
        let motion_native = motion._native_ptr()
        let from_native = from._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(from_native), .init(motion_native), .init(margin_native), .init(collide_separation_ray_native), .init(recovery_as_collision_native), .init(result_native)
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
    public func _joint_set_param(joint: RID, param: PhysicsServer2D.JointParam, value: Float64)  {
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
                    Self._method__joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _joint_get_param(joint: RID, param: PhysicsServer2D.JointParam) -> Float64 {
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
                    Self._method__joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
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
    public func _joint_make_pin(joint: RID, anchor: Vector2, body_a: RID, body_b: RID)  {
        let body_b_native = body_b._native_ptr()
        let body_a_native = body_a._native_ptr()
        let anchor_native = anchor._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(anchor_native), .init(body_a_native), .init(body_b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_pin_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _joint_make_groove(joint: RID, a_groove1: Vector2, a_groove2: Vector2, b_anchor: Vector2, body_a: RID, body_b: RID)  {
        let body_b_native = body_b._native_ptr()
        let body_a_native = body_a._native_ptr()
        let b_anchor_native = b_anchor._native_ptr()
        let a_groove2_native = a_groove2._native_ptr()
        let a_groove1_native = a_groove1._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(a_groove1_native), .init(a_groove2_native), .init(b_anchor_native), .init(body_a_native), .init(body_b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_groove_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _joint_make_damped_spring(joint: RID, anchor_a: Vector2, anchor_b: Vector2, body_a: RID, body_b: RID)  {
        let body_b_native = body_b._native_ptr()
        let body_a_native = body_a._native_ptr()
        let anchor_b_native = anchor_b._native_ptr()
        let anchor_a_native = anchor_a._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(anchor_a_native), .init(anchor_b_native), .init(body_a_native), .init(body_b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__joint_make_damped_spring_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func _pin_joint_set_param(joint: RID, param: PhysicsServer2D.PinJointParam, value: Float64)  {
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
    public func _pin_joint_get_param(joint: RID, param: PhysicsServer2D.PinJointParam) -> Float64 {
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
    public func _damped_spring_joint_set_param(joint: RID, param: PhysicsServer2D.DampedSpringParam, value: Float64)  {
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
                    Self._method__damped_spring_joint_set_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func _damped_spring_joint_get_param(joint: RID, param: PhysicsServer2D.DampedSpringParam) -> Float64 {
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
                    Self._method__damped_spring_joint_get_param_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func _joint_get_type(joint: RID) -> PhysicsServer2D.JointType {
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
            return PhysicsServer2D.JointType(from: __resPtr.pointee)
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
    public func _get_process_info(process_info: PhysicsServer2D.ProcessInfo) -> Int64 {
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