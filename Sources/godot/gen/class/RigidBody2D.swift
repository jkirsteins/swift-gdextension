import godot_native

fileprivate var __godot_name_RigidBody2D: StringName! = nil

/// Physics Body which is moved by 2D physics simulation. Useful for objects that have gravity and can be pushed by other objects.
/// 
/// This node implements simulated 2D physics. You do not control a RigidBody2D directly. Instead, you apply forces to it (gravity, impulses, etc.) and the physics simulation calculates the resulting movement based on its mass, friction, and other physical properties.
///  
/// You can switch the body's behavior using [member lock_rotation], [member freeze], and [member freeze_mode].
///  
/// [b]Note:[/b] You should not change a RigidBody2D's [code]position[/code] or [code]linear_velocity[/code] every frame or even very often. If you need to directly affect the body's state, use [method _integrate_forces], which allows you to directly access the physics state.
///  
/// Please also keep in mind that physics bodies manage their own transform which overwrites the ones you set. So any direct or indirect transformation (including scaling of the node or its parent) will be visible in the editor only, and immediately reset at runtime.
///  
/// If you need to override the default physics behavior or add a transformation at runtime, you can write a custom force integration. See [member custom_integrator].
open class RigidBody2D : PhysicsBody2D {

    public enum FreezeMode : Int32 {
        case FREEZE_MODE_STATIC = 0
        case FREEZE_MODE_KINEMATIC = 1
    }
    public enum CenterOfMassMode : Int32 {
        case CENTER_OF_MASS_MODE_AUTO = 0
        case CENTER_OF_MASS_MODE_CUSTOM = 1
    }
    public enum DampMode : Int32 {
        case DAMP_MODE_COMBINE = 0
        case DAMP_MODE_REPLACE = 1
    }
    public enum CCDMode : Int32 {
        case CCD_MODE_DISABLED = 0
        case CCD_MODE_CAST_RAY = 1
        case CCD_MODE_CAST_SHAPE = 2
    }

    public override class var __godot_name: StringName { __godot_name_RigidBody2D }

    static var _method__integrate_forces_0: StringName! = nil
    static var _method_set_mass_373806689: StringName! = nil
    static var _method_get_mass_1740695150: StringName! = nil
    static var _method_get_inertia_1740695150: StringName! = nil
    static var _method_set_inertia_373806689: StringName! = nil
    static var _method_set_center_of_mass_mode_1757235706: StringName! = nil
    static var _method_get_center_of_mass_mode_3277132817: StringName! = nil
    static var _method_set_center_of_mass_743155724: StringName! = nil
    static var _method_get_center_of_mass_3341600327: StringName! = nil
    static var _method_set_physics_material_override_1784508650: StringName! = nil
    static var _method_get_physics_material_override_2521850424: StringName! = nil
    static var _method_set_gravity_scale_373806689: StringName! = nil
    static var _method_get_gravity_scale_1740695150: StringName! = nil
    static var _method_set_linear_damp_mode_3406533708: StringName! = nil
    static var _method_get_linear_damp_mode_2970511462: StringName! = nil
    static var _method_set_angular_damp_mode_3406533708: StringName! = nil
    static var _method_get_angular_damp_mode_2970511462: StringName! = nil
    static var _method_set_linear_damp_373806689: StringName! = nil
    static var _method_get_linear_damp_1740695150: StringName! = nil
    static var _method_set_angular_damp_373806689: StringName! = nil
    static var _method_get_angular_damp_1740695150: StringName! = nil
    static var _method_set_linear_velocity_743155724: StringName! = nil
    static var _method_get_linear_velocity_3341600327: StringName! = nil
    static var _method_set_angular_velocity_373806689: StringName! = nil
    static var _method_get_angular_velocity_1740695150: StringName! = nil
    static var _method_set_max_contacts_reported_1286410249: StringName! = nil
    static var _method_get_max_contacts_reported_3905245786: StringName! = nil
    static var _method_get_contact_count_3905245786: StringName! = nil
    static var _method_set_use_custom_integrator_2586408642: StringName! = nil
    static var _method_is_using_custom_integrator_2240911060: StringName! = nil
    static var _method_set_contact_monitor_2586408642: StringName! = nil
    static var _method_is_contact_monitor_enabled_36873697: StringName! = nil
    static var _method_set_continuous_collision_detection_mode_1000241384: StringName! = nil
    static var _method_get_continuous_collision_detection_mode_815214376: StringName! = nil
    static var _method_set_axis_velocity_743155724: StringName! = nil
    static var _method_apply_central_impulse_3862383994: StringName! = nil
    static var _method_apply_impulse_496058220: StringName! = nil
    static var _method_apply_torque_impulse_373806689: StringName! = nil
    static var _method_apply_central_force_743155724: StringName! = nil
    static var _method_apply_force_496058220: StringName! = nil
    static var _method_apply_torque_373806689: StringName! = nil
    static var _method_add_constant_central_force_743155724: StringName! = nil
    static var _method_add_constant_force_496058220: StringName! = nil
    static var _method_add_constant_torque_373806689: StringName! = nil
    static var _method_set_constant_force_743155724: StringName! = nil
    static var _method_get_constant_force_3341600327: StringName! = nil
    static var _method_set_constant_torque_373806689: StringName! = nil
    static var _method_get_constant_torque_1740695150: StringName! = nil
    static var _method_set_sleeping_2586408642: StringName! = nil
    static var _method_is_sleeping_36873697: StringName! = nil
    static var _method_set_can_sleep_2586408642: StringName! = nil
    static var _method_is_able_to_sleep_36873697: StringName! = nil
    static var _method_set_lock_rotation_enabled_2586408642: StringName! = nil
    static var _method_is_lock_rotation_enabled_36873697: StringName! = nil
    static var _method_set_freeze_enabled_2586408642: StringName! = nil
    static var _method_is_freeze_enabled_36873697: StringName! = nil
    static var _method_set_freeze_mode_1705112154: StringName! = nil
    static var _method_get_freeze_mode_2016872314: StringName! = nil
    static var _method_get_colliding_bodies_3995934104: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RigidBody2D == nil)
        __godot_name_RigidBody2D = StringName(from: "RigidBody2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_mass_373806689 = StringName(from: "set_mass")
        assert(self._method_set_mass_373806689 != nil)
        self._method_get_mass_1740695150 = StringName(from: "get_mass")
        assert(self._method_get_mass_1740695150 != nil)
        self._method_get_inertia_1740695150 = StringName(from: "get_inertia")
        assert(self._method_get_inertia_1740695150 != nil)
        self._method_set_inertia_373806689 = StringName(from: "set_inertia")
        assert(self._method_set_inertia_373806689 != nil)
        self._method_set_center_of_mass_mode_1757235706 = StringName(from: "set_center_of_mass_mode")
        assert(self._method_set_center_of_mass_mode_1757235706 != nil)
        self._method_get_center_of_mass_mode_3277132817 = StringName(from: "get_center_of_mass_mode")
        assert(self._method_get_center_of_mass_mode_3277132817 != nil)
        self._method_set_center_of_mass_743155724 = StringName(from: "set_center_of_mass")
        assert(self._method_set_center_of_mass_743155724 != nil)
        self._method_get_center_of_mass_3341600327 = StringName(from: "get_center_of_mass")
        assert(self._method_get_center_of_mass_3341600327 != nil)
        self._method_set_physics_material_override_1784508650 = StringName(from: "set_physics_material_override")
        assert(self._method_set_physics_material_override_1784508650 != nil)
        self._method_get_physics_material_override_2521850424 = StringName(from: "get_physics_material_override")
        assert(self._method_get_physics_material_override_2521850424 != nil)
        self._method_set_gravity_scale_373806689 = StringName(from: "set_gravity_scale")
        assert(self._method_set_gravity_scale_373806689 != nil)
        self._method_get_gravity_scale_1740695150 = StringName(from: "get_gravity_scale")
        assert(self._method_get_gravity_scale_1740695150 != nil)
        self._method_set_linear_damp_mode_3406533708 = StringName(from: "set_linear_damp_mode")
        assert(self._method_set_linear_damp_mode_3406533708 != nil)
        self._method_get_linear_damp_mode_2970511462 = StringName(from: "get_linear_damp_mode")
        assert(self._method_get_linear_damp_mode_2970511462 != nil)
        self._method_set_angular_damp_mode_3406533708 = StringName(from: "set_angular_damp_mode")
        assert(self._method_set_angular_damp_mode_3406533708 != nil)
        self._method_get_angular_damp_mode_2970511462 = StringName(from: "get_angular_damp_mode")
        assert(self._method_get_angular_damp_mode_2970511462 != nil)
        self._method_set_linear_damp_373806689 = StringName(from: "set_linear_damp")
        assert(self._method_set_linear_damp_373806689 != nil)
        self._method_get_linear_damp_1740695150 = StringName(from: "get_linear_damp")
        assert(self._method_get_linear_damp_1740695150 != nil)
        self._method_set_angular_damp_373806689 = StringName(from: "set_angular_damp")
        assert(self._method_set_angular_damp_373806689 != nil)
        self._method_get_angular_damp_1740695150 = StringName(from: "get_angular_damp")
        assert(self._method_get_angular_damp_1740695150 != nil)
        self._method_set_linear_velocity_743155724 = StringName(from: "set_linear_velocity")
        assert(self._method_set_linear_velocity_743155724 != nil)
        self._method_get_linear_velocity_3341600327 = StringName(from: "get_linear_velocity")
        assert(self._method_get_linear_velocity_3341600327 != nil)
        self._method_set_angular_velocity_373806689 = StringName(from: "set_angular_velocity")
        assert(self._method_set_angular_velocity_373806689 != nil)
        self._method_get_angular_velocity_1740695150 = StringName(from: "get_angular_velocity")
        assert(self._method_get_angular_velocity_1740695150 != nil)
        self._method_set_max_contacts_reported_1286410249 = StringName(from: "set_max_contacts_reported")
        assert(self._method_set_max_contacts_reported_1286410249 != nil)
        self._method_get_max_contacts_reported_3905245786 = StringName(from: "get_max_contacts_reported")
        assert(self._method_get_max_contacts_reported_3905245786 != nil)
        self._method_get_contact_count_3905245786 = StringName(from: "get_contact_count")
        assert(self._method_get_contact_count_3905245786 != nil)
        self._method_set_use_custom_integrator_2586408642 = StringName(from: "set_use_custom_integrator")
        assert(self._method_set_use_custom_integrator_2586408642 != nil)
        self._method_is_using_custom_integrator_2240911060 = StringName(from: "is_using_custom_integrator")
        assert(self._method_is_using_custom_integrator_2240911060 != nil)
        self._method_set_contact_monitor_2586408642 = StringName(from: "set_contact_monitor")
        assert(self._method_set_contact_monitor_2586408642 != nil)
        self._method_is_contact_monitor_enabled_36873697 = StringName(from: "is_contact_monitor_enabled")
        assert(self._method_is_contact_monitor_enabled_36873697 != nil)
        self._method_set_continuous_collision_detection_mode_1000241384 = StringName(from: "set_continuous_collision_detection_mode")
        assert(self._method_set_continuous_collision_detection_mode_1000241384 != nil)
        self._method_get_continuous_collision_detection_mode_815214376 = StringName(from: "get_continuous_collision_detection_mode")
        assert(self._method_get_continuous_collision_detection_mode_815214376 != nil)
        self._method_set_axis_velocity_743155724 = StringName(from: "set_axis_velocity")
        assert(self._method_set_axis_velocity_743155724 != nil)
        self._method_apply_central_impulse_3862383994 = StringName(from: "apply_central_impulse")
        assert(self._method_apply_central_impulse_3862383994 != nil)
        self._method_apply_impulse_496058220 = StringName(from: "apply_impulse")
        assert(self._method_apply_impulse_496058220 != nil)
        self._method_apply_torque_impulse_373806689 = StringName(from: "apply_torque_impulse")
        assert(self._method_apply_torque_impulse_373806689 != nil)
        self._method_apply_central_force_743155724 = StringName(from: "apply_central_force")
        assert(self._method_apply_central_force_743155724 != nil)
        self._method_apply_force_496058220 = StringName(from: "apply_force")
        assert(self._method_apply_force_496058220 != nil)
        self._method_apply_torque_373806689 = StringName(from: "apply_torque")
        assert(self._method_apply_torque_373806689 != nil)
        self._method_add_constant_central_force_743155724 = StringName(from: "add_constant_central_force")
        assert(self._method_add_constant_central_force_743155724 != nil)
        self._method_add_constant_force_496058220 = StringName(from: "add_constant_force")
        assert(self._method_add_constant_force_496058220 != nil)
        self._method_add_constant_torque_373806689 = StringName(from: "add_constant_torque")
        assert(self._method_add_constant_torque_373806689 != nil)
        self._method_set_constant_force_743155724 = StringName(from: "set_constant_force")
        assert(self._method_set_constant_force_743155724 != nil)
        self._method_get_constant_force_3341600327 = StringName(from: "get_constant_force")
        assert(self._method_get_constant_force_3341600327 != nil)
        self._method_set_constant_torque_373806689 = StringName(from: "set_constant_torque")
        assert(self._method_set_constant_torque_373806689 != nil)
        self._method_get_constant_torque_1740695150 = StringName(from: "get_constant_torque")
        assert(self._method_get_constant_torque_1740695150 != nil)
        self._method_set_sleeping_2586408642 = StringName(from: "set_sleeping")
        assert(self._method_set_sleeping_2586408642 != nil)
        self._method_is_sleeping_36873697 = StringName(from: "is_sleeping")
        assert(self._method_is_sleeping_36873697 != nil)
        self._method_set_can_sleep_2586408642 = StringName(from: "set_can_sleep")
        assert(self._method_set_can_sleep_2586408642 != nil)
        self._method_is_able_to_sleep_36873697 = StringName(from: "is_able_to_sleep")
        assert(self._method_is_able_to_sleep_36873697 != nil)
        self._method_set_lock_rotation_enabled_2586408642 = StringName(from: "set_lock_rotation_enabled")
        assert(self._method_set_lock_rotation_enabled_2586408642 != nil)
        self._method_is_lock_rotation_enabled_36873697 = StringName(from: "is_lock_rotation_enabled")
        assert(self._method_is_lock_rotation_enabled_36873697 != nil)
        self._method_set_freeze_enabled_2586408642 = StringName(from: "set_freeze_enabled")
        assert(self._method_set_freeze_enabled_2586408642 != nil)
        self._method_is_freeze_enabled_36873697 = StringName(from: "is_freeze_enabled")
        assert(self._method_is_freeze_enabled_36873697 != nil)
        self._method_set_freeze_mode_1705112154 = StringName(from: "set_freeze_mode")
        assert(self._method_set_freeze_mode_1705112154 != nil)
        self._method_get_freeze_mode_2016872314 = StringName(from: "get_freeze_mode")
        assert(self._method_get_freeze_mode_2016872314 != nil)
        self._method_get_colliding_bodies_3995934104 = StringName(from: "get_colliding_bodies")
        assert(self._method_get_colliding_bodies_3995934104 != nil)
    }

    public func _integrate_forces(state: PhysicsDirectBodyState2D)  {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            fatalError("Not implemented: virtual default results")
    }
    public func set_mass(mass: Float64)  {
        withUnsafePointer(to: mass) { mass_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mass_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mass_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_mass() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mass_1740695150._native_ptr(),
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
    public func get_inertia() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_inertia_1740695150._native_ptr(),
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
    public func set_inertia(inertia: Float64)  {
        withUnsafePointer(to: inertia) { inertia_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inertia_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_inertia_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_center_of_mass_mode(mode: RigidBody2D.CenterOfMassMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_center_of_mass_mode_1757235706._native_ptr(),
                    1757235706)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_center_of_mass_mode() -> RigidBody2D.CenterOfMassMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_center_of_mass_mode_3277132817._native_ptr(),
                    3277132817)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody2D.CenterOfMassMode(godot: __resPtr.pointee)
    }
    public func set_center_of_mass(center_of_mass: Vector2)  {
        let center_of_mass_native = center_of_mass._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(center_of_mass_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_center_of_mass_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_center_of_mass() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_center_of_mass_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_physics_material_override(physics_material_override: PhysicsMaterial)  {
        let physics_material_override_native = physics_material_override._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physics_material_override_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physics_material_override_1784508650._native_ptr(),
                    1784508650)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_physics_material_override() -> PhysicsMaterial {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_physics_material_override_2521850424._native_ptr(),
                    2521850424)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsMaterial(godot: __resPtr.pointee)
    }
    public func set_gravity_scale(gravity_scale: Float64)  {
        withUnsafePointer(to: gravity_scale) { gravity_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gravity_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_scale_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_gravity_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_scale_1740695150._native_ptr(),
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
    public func set_linear_damp_mode(linear_damp_mode: RigidBody2D.DampMode)  {
        withUnsafePointer(to: linear_damp_mode.rawValue) { linear_damp_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_linear_damp_mode_3406533708._native_ptr(),
                    3406533708)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp_mode() -> RigidBody2D.DampMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_linear_damp_mode_2970511462._native_ptr(),
                    2970511462)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody2D.DampMode(godot: __resPtr.pointee)
    }
    public func set_angular_damp_mode(angular_damp_mode: RigidBody2D.DampMode)  {
        withUnsafePointer(to: angular_damp_mode.rawValue) { angular_damp_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_damp_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_angular_damp_mode_3406533708._native_ptr(),
                    3406533708)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp_mode() -> RigidBody2D.DampMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angular_damp_mode_2970511462._native_ptr(),
                    2970511462)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody2D.DampMode(godot: __resPtr.pointee)
    }
    public func set_linear_damp(linear_damp: Float64)  {
        withUnsafePointer(to: linear_damp) { linear_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_linear_damp_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_linear_damp_1740695150._native_ptr(),
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
    public func set_angular_damp(angular_damp: Float64)  {
        withUnsafePointer(to: angular_damp) { angular_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_damp_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_angular_damp_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angular_damp_1740695150._native_ptr(),
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
    public func set_linear_velocity(linear_velocity: Vector2)  {
        let linear_velocity_native = linear_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_linear_velocity_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_linear_velocity_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_angular_velocity(angular_velocity: Float64)  {
        withUnsafePointer(to: angular_velocity) { angular_velocity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_angular_velocity_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_angular_velocity_1740695150._native_ptr(),
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
    public func set_max_contacts_reported(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_max_contacts_reported_1286410249._native_ptr(),
                    1286410249)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_max_contacts_reported() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_max_contacts_reported_3905245786._native_ptr(),
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
    public func get_contact_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_contact_count_3905245786._native_ptr(),
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
    public func set_use_custom_integrator(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_custom_integrator_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_custom_integrator() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_custom_integrator_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_contact_monitor(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_contact_monitor_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_contact_monitor_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_contact_monitor_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_continuous_collision_detection_mode(mode: RigidBody2D.CCDMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_continuous_collision_detection_mode_1000241384._native_ptr(),
                    1000241384)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_continuous_collision_detection_mode() -> RigidBody2D.CCDMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_continuous_collision_detection_mode_815214376._native_ptr(),
                    815214376)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody2D.CCDMode(godot: __resPtr.pointee)
    }
    public func set_axis_velocity(axis_velocity: Vector2)  {
        let axis_velocity_native = axis_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_velocity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_axis_velocity_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_central_impulse(impulse: Vector2)  {
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_central_impulse_3862383994._native_ptr(),
                    3862383994)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_impulse_496058220._native_ptr(),
                    496058220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_torque_impulse(torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_torque_impulse_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func apply_central_force(force: Vector2)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_central_force_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_force_496058220._native_ptr(),
                    496058220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_apply_torque_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_constant_central_force_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_constant_force_496058220._native_ptr(),
                    496058220)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_add_constant_torque_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_force_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_force_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_constant_torque_373806689._native_ptr(),
                    373806689)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_constant_torque_1740695150._native_ptr(),
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
    public func set_sleeping(sleeping: UInt8)  {
        withUnsafePointer(to: sleeping) { sleeping_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sleeping_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sleeping_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_sleeping_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_can_sleep(able_to_sleep: UInt8)  {
        withUnsafePointer(to: able_to_sleep) { able_to_sleep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(able_to_sleep_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_can_sleep_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_able_to_sleep() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_able_to_sleep_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_lock_rotation_enabled(lock_rotation: UInt8)  {
        withUnsafePointer(to: lock_rotation) { lock_rotation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lock_rotation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lock_rotation_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_lock_rotation_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_lock_rotation_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_freeze_enabled(freeze_mode: UInt8)  {
        withUnsafePointer(to: freeze_mode) { freeze_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(freeze_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_freeze_enabled_2586408642._native_ptr(),
                    2586408642)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_freeze_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_freeze_enabled_36873697._native_ptr(),
                    36873697)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_freeze_mode(freeze_mode: RigidBody2D.FreezeMode)  {
        withUnsafePointer(to: freeze_mode.rawValue) { freeze_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(freeze_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_freeze_mode_1705112154._native_ptr(),
                    1705112154)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_freeze_mode() -> RigidBody2D.FreezeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_freeze_mode_2016872314._native_ptr(),
                    2016872314)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody2D.FreezeMode(godot: __resPtr.pointee)
    }
    public func get_colliding_bodies() -> [Node2D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_colliding_bodies_3995934104._native_ptr(),
                    3995934104)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node2D](godot: __resPtr.pointee)
    }
}