import godot_native

fileprivate var __godot_name_PhysicsDirectBodyState2D: StringName! = nil

/// Direct access object to a physics body in the [PhysicsServer2D].
/// 
/// Provides direct access to a physics body in the [PhysicsServer2D], allowing safe changes to physics properties. This object is passed via the direct state callback of rigid bodies, and is intended for changing the direct state of that body. See [method RigidBody2D._integrate_forces].
open class PhysicsDirectBodyState2D : Object {

    

    public override class var __godot_name: StringName { __godot_name_PhysicsDirectBodyState2D }

    static var _method_get_total_gravity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_linear_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_total_angular_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_of_mass_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_of_mass_local_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_get_inverse_mass_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_inverse_inertia_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_velocity_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_velocity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_velocity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_velocity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_2761652528: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_3814499831: GDExtensionMethodBindPtr! = nil
    static var _method_get_velocity_at_local_position_2656412154: GDExtensionMethodBindPtr! = nil
    static var _method_apply_central_impulse_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_apply_torque_impulse_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_apply_impulse_496058220: GDExtensionMethodBindPtr! = nil
    static var _method_apply_central_force_3862383994: GDExtensionMethodBindPtr! = nil
    static var _method_apply_force_496058220: GDExtensionMethodBindPtr! = nil
    static var _method_apply_torque_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_add_constant_central_force_3862383994: GDExtensionMethodBindPtr! = nil
    static var _method_add_constant_force_496058220: GDExtensionMethodBindPtr! = nil
    static var _method_add_constant_torque_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_force_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_force_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_torque_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_torque_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sleep_state_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sleeping_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_local_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_local_normal_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_local_shape_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_collider_495598643: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_collider_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_collider_id_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_collider_object_3332903315: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_collider_shape_923996154: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_collider_velocity_at_position_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_impulse_2299179447: GDExtensionMethodBindPtr! = nil
    static var _method_get_step_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_integrate_forces_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_get_space_state_2506717822: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsDirectBodyState2D = StringName(from: "PhysicsDirectBodyState2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_get_total_gravity_3341600327_name = StringName(from: "get_total_gravity")
        self._method_get_total_gravity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_total_gravity_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsDirectBodyState2D._method_get_total_gravity_3341600327 != nil)
        let _method_get_total_linear_damp_1740695150_name = StringName(from: "get_total_linear_damp")
        self._method_get_total_linear_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_total_linear_damp_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_total_linear_damp_1740695150 != nil)
        let _method_get_total_angular_damp_1740695150_name = StringName(from: "get_total_angular_damp")
        self._method_get_total_angular_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_total_angular_damp_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_total_angular_damp_1740695150 != nil)
        let _method_get_center_of_mass_3341600327_name = StringName(from: "get_center_of_mass")
        self._method_get_center_of_mass_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_center_of_mass_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsDirectBodyState2D._method_get_center_of_mass_3341600327 != nil)
        let _method_get_center_of_mass_local_3341600327_name = StringName(from: "get_center_of_mass_local")
        self._method_get_center_of_mass_local_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_center_of_mass_local_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsDirectBodyState2D._method_get_center_of_mass_local_3341600327 != nil)
        let _method_get_inverse_mass_1740695150_name = StringName(from: "get_inverse_mass")
        self._method_get_inverse_mass_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_inverse_mass_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_inverse_mass_1740695150 != nil)
        let _method_get_inverse_inertia_1740695150_name = StringName(from: "get_inverse_inertia")
        self._method_get_inverse_inertia_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_inverse_inertia_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_inverse_inertia_1740695150 != nil)
        let _method_set_linear_velocity_743155724_name = StringName(from: "set_linear_velocity")
        self._method_set_linear_velocity_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_set_linear_velocity_743155724_name._native_ptr(), 743155724)
        assert(PhysicsDirectBodyState2D._method_set_linear_velocity_743155724 != nil)
        let _method_get_linear_velocity_3341600327_name = StringName(from: "get_linear_velocity")
        self._method_get_linear_velocity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_linear_velocity_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsDirectBodyState2D._method_get_linear_velocity_3341600327 != nil)
        let _method_set_angular_velocity_373806689_name = StringName(from: "set_angular_velocity")
        self._method_set_angular_velocity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_set_angular_velocity_373806689_name._native_ptr(), 373806689)
        assert(PhysicsDirectBodyState2D._method_set_angular_velocity_373806689 != nil)
        let _method_get_angular_velocity_1740695150_name = StringName(from: "get_angular_velocity")
        self._method_get_angular_velocity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_angular_velocity_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_angular_velocity_1740695150 != nil)
        let _method_set_transform_2761652528_name = StringName(from: "set_transform")
        self._method_set_transform_2761652528 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_set_transform_2761652528_name._native_ptr(), 2761652528)
        assert(PhysicsDirectBodyState2D._method_set_transform_2761652528 != nil)
        let _method_get_transform_3814499831_name = StringName(from: "get_transform")
        self._method_get_transform_3814499831 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_transform_3814499831_name._native_ptr(), 3814499831)
        assert(PhysicsDirectBodyState2D._method_get_transform_3814499831 != nil)
        let _method_get_velocity_at_local_position_2656412154_name = StringName(from: "get_velocity_at_local_position")
        self._method_get_velocity_at_local_position_2656412154 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_velocity_at_local_position_2656412154_name._native_ptr(), 2656412154)
        assert(PhysicsDirectBodyState2D._method_get_velocity_at_local_position_2656412154 != nil)
        let _method_apply_central_impulse_743155724_name = StringName(from: "apply_central_impulse")
        self._method_apply_central_impulse_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_apply_central_impulse_743155724_name._native_ptr(), 743155724)
        assert(PhysicsDirectBodyState2D._method_apply_central_impulse_743155724 != nil)
        let _method_apply_torque_impulse_373806689_name = StringName(from: "apply_torque_impulse")
        self._method_apply_torque_impulse_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_apply_torque_impulse_373806689_name._native_ptr(), 373806689)
        assert(PhysicsDirectBodyState2D._method_apply_torque_impulse_373806689 != nil)
        let _method_apply_impulse_496058220_name = StringName(from: "apply_impulse")
        self._method_apply_impulse_496058220 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_apply_impulse_496058220_name._native_ptr(), 496058220)
        assert(PhysicsDirectBodyState2D._method_apply_impulse_496058220 != nil)
        let _method_apply_central_force_3862383994_name = StringName(from: "apply_central_force")
        self._method_apply_central_force_3862383994 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_apply_central_force_3862383994_name._native_ptr(), 3862383994)
        assert(PhysicsDirectBodyState2D._method_apply_central_force_3862383994 != nil)
        let _method_apply_force_496058220_name = StringName(from: "apply_force")
        self._method_apply_force_496058220 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_apply_force_496058220_name._native_ptr(), 496058220)
        assert(PhysicsDirectBodyState2D._method_apply_force_496058220 != nil)
        let _method_apply_torque_373806689_name = StringName(from: "apply_torque")
        self._method_apply_torque_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_apply_torque_373806689_name._native_ptr(), 373806689)
        assert(PhysicsDirectBodyState2D._method_apply_torque_373806689 != nil)
        let _method_add_constant_central_force_3862383994_name = StringName(from: "add_constant_central_force")
        self._method_add_constant_central_force_3862383994 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_add_constant_central_force_3862383994_name._native_ptr(), 3862383994)
        assert(PhysicsDirectBodyState2D._method_add_constant_central_force_3862383994 != nil)
        let _method_add_constant_force_496058220_name = StringName(from: "add_constant_force")
        self._method_add_constant_force_496058220 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_add_constant_force_496058220_name._native_ptr(), 496058220)
        assert(PhysicsDirectBodyState2D._method_add_constant_force_496058220 != nil)
        let _method_add_constant_torque_373806689_name = StringName(from: "add_constant_torque")
        self._method_add_constant_torque_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_add_constant_torque_373806689_name._native_ptr(), 373806689)
        assert(PhysicsDirectBodyState2D._method_add_constant_torque_373806689 != nil)
        let _method_set_constant_force_743155724_name = StringName(from: "set_constant_force")
        self._method_set_constant_force_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_set_constant_force_743155724_name._native_ptr(), 743155724)
        assert(PhysicsDirectBodyState2D._method_set_constant_force_743155724 != nil)
        let _method_get_constant_force_3341600327_name = StringName(from: "get_constant_force")
        self._method_get_constant_force_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_constant_force_3341600327_name._native_ptr(), 3341600327)
        assert(PhysicsDirectBodyState2D._method_get_constant_force_3341600327 != nil)
        let _method_set_constant_torque_373806689_name = StringName(from: "set_constant_torque")
        self._method_set_constant_torque_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_set_constant_torque_373806689_name._native_ptr(), 373806689)
        assert(PhysicsDirectBodyState2D._method_set_constant_torque_373806689 != nil)
        let _method_get_constant_torque_1740695150_name = StringName(from: "get_constant_torque")
        self._method_get_constant_torque_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_constant_torque_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_constant_torque_1740695150 != nil)
        let _method_set_sleep_state_2586408642_name = StringName(from: "set_sleep_state")
        self._method_set_sleep_state_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_set_sleep_state_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsDirectBodyState2D._method_set_sleep_state_2586408642 != nil)
        let _method_is_sleeping_36873697_name = StringName(from: "is_sleeping")
        self._method_is_sleeping_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_is_sleeping_36873697_name._native_ptr(), 36873697)
        assert(PhysicsDirectBodyState2D._method_is_sleeping_36873697 != nil)
        let _method_get_contact_count_3905245786_name = StringName(from: "get_contact_count")
        self._method_get_contact_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_count_3905245786_name._native_ptr(), 3905245786)
        assert(PhysicsDirectBodyState2D._method_get_contact_count_3905245786 != nil)
        let _method_get_contact_local_position_2299179447_name = StringName(from: "get_contact_local_position")
        self._method_get_contact_local_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_local_position_2299179447_name._native_ptr(), 2299179447)
        assert(PhysicsDirectBodyState2D._method_get_contact_local_position_2299179447 != nil)
        let _method_get_contact_local_normal_2299179447_name = StringName(from: "get_contact_local_normal")
        self._method_get_contact_local_normal_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_local_normal_2299179447_name._native_ptr(), 2299179447)
        assert(PhysicsDirectBodyState2D._method_get_contact_local_normal_2299179447 != nil)
        let _method_get_contact_local_shape_923996154_name = StringName(from: "get_contact_local_shape")
        self._method_get_contact_local_shape_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_local_shape_923996154_name._native_ptr(), 923996154)
        assert(PhysicsDirectBodyState2D._method_get_contact_local_shape_923996154 != nil)
        let _method_get_contact_collider_495598643_name = StringName(from: "get_contact_collider")
        self._method_get_contact_collider_495598643 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_collider_495598643_name._native_ptr(), 495598643)
        assert(PhysicsDirectBodyState2D._method_get_contact_collider_495598643 != nil)
        let _method_get_contact_collider_position_2299179447_name = StringName(from: "get_contact_collider_position")
        self._method_get_contact_collider_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_collider_position_2299179447_name._native_ptr(), 2299179447)
        assert(PhysicsDirectBodyState2D._method_get_contact_collider_position_2299179447 != nil)
        let _method_get_contact_collider_id_923996154_name = StringName(from: "get_contact_collider_id")
        self._method_get_contact_collider_id_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_collider_id_923996154_name._native_ptr(), 923996154)
        assert(PhysicsDirectBodyState2D._method_get_contact_collider_id_923996154 != nil)
        let _method_get_contact_collider_object_3332903315_name = StringName(from: "get_contact_collider_object")
        self._method_get_contact_collider_object_3332903315 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_collider_object_3332903315_name._native_ptr(), 3332903315)
        assert(PhysicsDirectBodyState2D._method_get_contact_collider_object_3332903315 != nil)
        let _method_get_contact_collider_shape_923996154_name = StringName(from: "get_contact_collider_shape")
        self._method_get_contact_collider_shape_923996154 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_collider_shape_923996154_name._native_ptr(), 923996154)
        assert(PhysicsDirectBodyState2D._method_get_contact_collider_shape_923996154 != nil)
        let _method_get_contact_collider_velocity_at_position_2299179447_name = StringName(from: "get_contact_collider_velocity_at_position")
        self._method_get_contact_collider_velocity_at_position_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_collider_velocity_at_position_2299179447_name._native_ptr(), 2299179447)
        assert(PhysicsDirectBodyState2D._method_get_contact_collider_velocity_at_position_2299179447 != nil)
        let _method_get_contact_impulse_2299179447_name = StringName(from: "get_contact_impulse")
        self._method_get_contact_impulse_2299179447 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_contact_impulse_2299179447_name._native_ptr(), 2299179447)
        assert(PhysicsDirectBodyState2D._method_get_contact_impulse_2299179447 != nil)
        let _method_get_step_1740695150_name = StringName(from: "get_step")
        self._method_get_step_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_step_1740695150_name._native_ptr(), 1740695150)
        assert(PhysicsDirectBodyState2D._method_get_step_1740695150 != nil)
        let _method_integrate_forces_3218959716_name = StringName(from: "integrate_forces")
        self._method_integrate_forces_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_integrate_forces_3218959716_name._native_ptr(), 3218959716)
        assert(PhysicsDirectBodyState2D._method_integrate_forces_3218959716 != nil)
        let _method_get_space_state_2506717822_name = StringName(from: "get_space_state")
        self._method_get_space_state_2506717822 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsDirectBodyState2D._native_ptr(), _method_get_space_state_2506717822_name._native_ptr(), 2506717822)
        assert(PhysicsDirectBodyState2D._method_get_space_state_2506717822 != nil)
    }

    public func get_total_gravity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_gravity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_total_linear_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_linear_damp_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_total_angular_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_total_angular_damp_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_center_of_mass() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_of_mass_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_center_of_mass_local() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_of_mass_local_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func get_inverse_mass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inverse_mass_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_inverse_inertia() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inverse_inertia_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_linear_velocity(velocity: Vector2)  {
        let velocity_native = velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_velocity_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_linear_velocity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_velocity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_angular_velocity(velocity: Float64)  {
        withUnsafePointer(to: velocity) { velocity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_velocity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_velocity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_velocity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_transform(transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_2761652528,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_3814499831,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_velocity_at_local_position(local_position: Vector2) -> Vector2 {
        let local_position_native = local_position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(local_position_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_velocity_at_local_position_2656412154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func apply_central_impulse(impulse: Vector2)  {
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_central_impulse_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_torque_impulse(impulse: Float64)  {
        withUnsafePointer(to: impulse) { impulse_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_torque_impulse_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func apply_impulse(impulse: Vector2, position: Vector2)  {
        let position_native = position._native_ptr()
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_impulse_496058220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_central_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_central_force_3862383994,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_force(force: Vector2, position: Vector2)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_force_496058220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_torque(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_torque_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func add_constant_central_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_constant_central_force_3862383994,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_constant_force(force: Vector2, position: Vector2)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_constant_force_496058220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_constant_torque(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_constant_torque_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_constant_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_force_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant_force() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_force_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_constant_torque(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_torque_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_constant_torque() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_torque_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_sleep_state(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sleep_state_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sleeping() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sleeping_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_contact_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_count_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_contact_local_position(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_local_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func get_contact_local_normal(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_local_normal_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func get_contact_local_shape(contact_idx: Int64) -> Int64 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_local_shape_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_contact_collider(contact_idx: Int64) -> RID {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_collider_495598643,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func get_contact_collider_position(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_collider_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func get_contact_collider_id(contact_idx: Int64) -> Int64 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_collider_id_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_contact_collider_object(contact_idx: Int64) -> Object {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_collider_object_3332903315,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Object(godot: __resPtr.pointee)
        }
    }
    public func get_contact_collider_shape(contact_idx: Int64) -> Int64 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_collider_shape_923996154,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
    public func get_contact_collider_velocity_at_position(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_collider_velocity_at_position_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func get_contact_impulse(contact_idx: Int64) -> Vector2 {
        withUnsafePointer(to: contact_idx) { contact_idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contact_idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_impulse_2299179447,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
        }
    }
    public func get_step() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_step_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func integrate_forces()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_integrate_forces_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_space_state() -> PhysicsDirectSpaceState2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_space_state_2506717822,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState2D(godot: __resPtr.pointee)
    }
}