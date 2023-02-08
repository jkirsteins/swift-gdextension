import godot_native

fileprivate var __godot_name_RigidBody3D: StringName! = nil

/// Physics Body which is moved by 3D physics simulation. Useful for objects that have gravity and can be pushed by other objects.
/// 
/// This is the node that implements full 3D physics. This means that you do not control a RigidBody3D directly. Instead, you can apply forces to it (gravity, impulses, etc.), and the physics simulation will calculate the resulting movement, collision, bouncing, rotating, etc.
///  
/// You can switch the body's behavior using [member lock_rotation], [member freeze], and [member freeze_mode].
///  
/// [b]Note:[/b] Don't change a RigidBody3D's position every frame or very often. Sporadic changes work fine, but physics runs at a different granularity (fixed Hz) than usual rendering (process callback) and maybe even in a separate thread, so changing this from a process loop may result in strange behavior. If you need to directly affect the body's state, use [method _integrate_forces], which allows you to directly access the physics state.
///  
/// If you need to override the default physics behavior, you can write a custom force integration function. See [member custom_integrator].
///  
/// [b]Warning:[/b] With a non-uniform scale this node will probably not function as expected. Please make sure to keep its scale uniform (i.e. the same on all axes), and change the size(s) of its collision shape(s) instead.
open class RigidBody3D : PhysicsBody3D {

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

    public override class var __godot_name: StringName { __godot_name_RigidBody3D }

    static var _method__integrate_forces_0: GDExtensionMethodBindPtr! = nil
    static var _method_set_mass_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_mass_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_inertia_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_inertia_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_center_of_mass_mode_3625866032: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_of_mass_mode_237405040: GDExtensionMethodBindPtr! = nil
    static var _method_set_center_of_mass_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_center_of_mass_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_physics_material_override_1784508650: GDExtensionMethodBindPtr! = nil
    static var _method_get_physics_material_override_2521850424: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_velocity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_velocity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_get_inverse_inertia_tensor_2716978435: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_mode_1802035050: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_mode_1366206940: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_mode_1802035050: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_mode_1366206940: GDExtensionMethodBindPtr! = nil
    static var _method_set_linear_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_linear_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_angular_damp_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_angular_damp_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_max_contacts_reported_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_max_contacts_reported_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_contact_count_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_custom_integrator_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_custom_integrator_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_contact_monitor_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_contact_monitor_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_continuous_collision_detection_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_using_continuous_collision_detection_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_axis_velocity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_apply_central_impulse_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_apply_impulse_1002852006: GDExtensionMethodBindPtr! = nil
    static var _method_apply_torque_impulse_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_apply_central_force_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_apply_force_1002852006: GDExtensionMethodBindPtr! = nil
    static var _method_apply_torque_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_add_constant_central_force_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_add_constant_force_1002852006: GDExtensionMethodBindPtr! = nil
    static var _method_add_constant_torque_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_force_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_force_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_constant_torque_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_constant_torque_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_sleeping_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sleeping_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_can_sleep_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_able_to_sleep_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_lock_rotation_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_lock_rotation_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_freeze_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_freeze_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_freeze_mode_1319914653: GDExtensionMethodBindPtr! = nil
    static var _method_get_freeze_mode_2008423905: GDExtensionMethodBindPtr! = nil
    static var _method_get_colliding_bodies_3995934104: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_RigidBody3D = StringName(from: "RigidBody3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_mass_373806689_name = StringName(from: "set_mass")
        self._method_set_mass_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_mass_373806689_name._native_ptr(), 373806689)
        assert(RigidBody3D._method_set_mass_373806689 != nil)
        let _method_get_mass_1740695150_name = StringName(from: "get_mass")
        self._method_get_mass_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_mass_1740695150_name._native_ptr(), 1740695150)
        assert(RigidBody3D._method_get_mass_1740695150 != nil)
        let _method_set_inertia_3460891852_name = StringName(from: "set_inertia")
        self._method_set_inertia_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_inertia_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_inertia_3460891852 != nil)
        let _method_get_inertia_3360562783_name = StringName(from: "get_inertia")
        self._method_get_inertia_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_inertia_3360562783_name._native_ptr(), 3360562783)
        assert(RigidBody3D._method_get_inertia_3360562783 != nil)
        let _method_set_center_of_mass_mode_3625866032_name = StringName(from: "set_center_of_mass_mode")
        self._method_set_center_of_mass_mode_3625866032 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_center_of_mass_mode_3625866032_name._native_ptr(), 3625866032)
        assert(RigidBody3D._method_set_center_of_mass_mode_3625866032 != nil)
        let _method_get_center_of_mass_mode_237405040_name = StringName(from: "get_center_of_mass_mode")
        self._method_get_center_of_mass_mode_237405040 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_center_of_mass_mode_237405040_name._native_ptr(), 237405040)
        assert(RigidBody3D._method_get_center_of_mass_mode_237405040 != nil)
        let _method_set_center_of_mass_3460891852_name = StringName(from: "set_center_of_mass")
        self._method_set_center_of_mass_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_center_of_mass_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_center_of_mass_3460891852 != nil)
        let _method_get_center_of_mass_3360562783_name = StringName(from: "get_center_of_mass")
        self._method_get_center_of_mass_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_center_of_mass_3360562783_name._native_ptr(), 3360562783)
        assert(RigidBody3D._method_get_center_of_mass_3360562783 != nil)
        let _method_set_physics_material_override_1784508650_name = StringName(from: "set_physics_material_override")
        self._method_set_physics_material_override_1784508650 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_physics_material_override_1784508650_name._native_ptr(), 1784508650)
        assert(RigidBody3D._method_set_physics_material_override_1784508650 != nil)
        let _method_get_physics_material_override_2521850424_name = StringName(from: "get_physics_material_override")
        self._method_get_physics_material_override_2521850424 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_physics_material_override_2521850424_name._native_ptr(), 2521850424)
        assert(RigidBody3D._method_get_physics_material_override_2521850424 != nil)
        let _method_set_linear_velocity_3460891852_name = StringName(from: "set_linear_velocity")
        self._method_set_linear_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_linear_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_linear_velocity_3460891852 != nil)
        let _method_get_linear_velocity_3360562783_name = StringName(from: "get_linear_velocity")
        self._method_get_linear_velocity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_linear_velocity_3360562783_name._native_ptr(), 3360562783)
        assert(RigidBody3D._method_get_linear_velocity_3360562783 != nil)
        let _method_set_angular_velocity_3460891852_name = StringName(from: "set_angular_velocity")
        self._method_set_angular_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_angular_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_angular_velocity_3460891852 != nil)
        let _method_get_angular_velocity_3360562783_name = StringName(from: "get_angular_velocity")
        self._method_get_angular_velocity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_angular_velocity_3360562783_name._native_ptr(), 3360562783)
        assert(RigidBody3D._method_get_angular_velocity_3360562783 != nil)
        let _method_get_inverse_inertia_tensor_2716978435_name = StringName(from: "get_inverse_inertia_tensor")
        self._method_get_inverse_inertia_tensor_2716978435 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_inverse_inertia_tensor_2716978435_name._native_ptr(), 2716978435)
        assert(RigidBody3D._method_get_inverse_inertia_tensor_2716978435 != nil)
        let _method_set_gravity_scale_373806689_name = StringName(from: "set_gravity_scale")
        self._method_set_gravity_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_gravity_scale_373806689_name._native_ptr(), 373806689)
        assert(RigidBody3D._method_set_gravity_scale_373806689 != nil)
        let _method_get_gravity_scale_1740695150_name = StringName(from: "get_gravity_scale")
        self._method_get_gravity_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_gravity_scale_1740695150_name._native_ptr(), 1740695150)
        assert(RigidBody3D._method_get_gravity_scale_1740695150 != nil)
        let _method_set_linear_damp_mode_1802035050_name = StringName(from: "set_linear_damp_mode")
        self._method_set_linear_damp_mode_1802035050 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_linear_damp_mode_1802035050_name._native_ptr(), 1802035050)
        assert(RigidBody3D._method_set_linear_damp_mode_1802035050 != nil)
        let _method_get_linear_damp_mode_1366206940_name = StringName(from: "get_linear_damp_mode")
        self._method_get_linear_damp_mode_1366206940 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_linear_damp_mode_1366206940_name._native_ptr(), 1366206940)
        assert(RigidBody3D._method_get_linear_damp_mode_1366206940 != nil)
        let _method_set_angular_damp_mode_1802035050_name = StringName(from: "set_angular_damp_mode")
        self._method_set_angular_damp_mode_1802035050 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_angular_damp_mode_1802035050_name._native_ptr(), 1802035050)
        assert(RigidBody3D._method_set_angular_damp_mode_1802035050 != nil)
        let _method_get_angular_damp_mode_1366206940_name = StringName(from: "get_angular_damp_mode")
        self._method_get_angular_damp_mode_1366206940 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_angular_damp_mode_1366206940_name._native_ptr(), 1366206940)
        assert(RigidBody3D._method_get_angular_damp_mode_1366206940 != nil)
        let _method_set_linear_damp_373806689_name = StringName(from: "set_linear_damp")
        self._method_set_linear_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_linear_damp_373806689_name._native_ptr(), 373806689)
        assert(RigidBody3D._method_set_linear_damp_373806689 != nil)
        let _method_get_linear_damp_1740695150_name = StringName(from: "get_linear_damp")
        self._method_get_linear_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_linear_damp_1740695150_name._native_ptr(), 1740695150)
        assert(RigidBody3D._method_get_linear_damp_1740695150 != nil)
        let _method_set_angular_damp_373806689_name = StringName(from: "set_angular_damp")
        self._method_set_angular_damp_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_angular_damp_373806689_name._native_ptr(), 373806689)
        assert(RigidBody3D._method_set_angular_damp_373806689 != nil)
        let _method_get_angular_damp_1740695150_name = StringName(from: "get_angular_damp")
        self._method_get_angular_damp_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_angular_damp_1740695150_name._native_ptr(), 1740695150)
        assert(RigidBody3D._method_get_angular_damp_1740695150 != nil)
        let _method_set_max_contacts_reported_1286410249_name = StringName(from: "set_max_contacts_reported")
        self._method_set_max_contacts_reported_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_max_contacts_reported_1286410249_name._native_ptr(), 1286410249)
        assert(RigidBody3D._method_set_max_contacts_reported_1286410249 != nil)
        let _method_get_max_contacts_reported_3905245786_name = StringName(from: "get_max_contacts_reported")
        self._method_get_max_contacts_reported_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_max_contacts_reported_3905245786_name._native_ptr(), 3905245786)
        assert(RigidBody3D._method_get_max_contacts_reported_3905245786 != nil)
        let _method_get_contact_count_3905245786_name = StringName(from: "get_contact_count")
        self._method_get_contact_count_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_contact_count_3905245786_name._native_ptr(), 3905245786)
        assert(RigidBody3D._method_get_contact_count_3905245786 != nil)
        let _method_set_use_custom_integrator_2586408642_name = StringName(from: "set_use_custom_integrator")
        self._method_set_use_custom_integrator_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_use_custom_integrator_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_use_custom_integrator_2586408642 != nil)
        let _method_is_using_custom_integrator_2240911060_name = StringName(from: "is_using_custom_integrator")
        self._method_is_using_custom_integrator_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_using_custom_integrator_2240911060_name._native_ptr(), 2240911060)
        assert(RigidBody3D._method_is_using_custom_integrator_2240911060 != nil)
        let _method_set_contact_monitor_2586408642_name = StringName(from: "set_contact_monitor")
        self._method_set_contact_monitor_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_contact_monitor_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_contact_monitor_2586408642 != nil)
        let _method_is_contact_monitor_enabled_36873697_name = StringName(from: "is_contact_monitor_enabled")
        self._method_is_contact_monitor_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_contact_monitor_enabled_36873697_name._native_ptr(), 36873697)
        assert(RigidBody3D._method_is_contact_monitor_enabled_36873697 != nil)
        let _method_set_use_continuous_collision_detection_2586408642_name = StringName(from: "set_use_continuous_collision_detection")
        self._method_set_use_continuous_collision_detection_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_use_continuous_collision_detection_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_use_continuous_collision_detection_2586408642 != nil)
        let _method_is_using_continuous_collision_detection_36873697_name = StringName(from: "is_using_continuous_collision_detection")
        self._method_is_using_continuous_collision_detection_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_using_continuous_collision_detection_36873697_name._native_ptr(), 36873697)
        assert(RigidBody3D._method_is_using_continuous_collision_detection_36873697 != nil)
        let _method_set_axis_velocity_3460891852_name = StringName(from: "set_axis_velocity")
        self._method_set_axis_velocity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_axis_velocity_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_axis_velocity_3460891852 != nil)
        let _method_apply_central_impulse_3460891852_name = StringName(from: "apply_central_impulse")
        self._method_apply_central_impulse_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_apply_central_impulse_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_apply_central_impulse_3460891852 != nil)
        let _method_apply_impulse_1002852006_name = StringName(from: "apply_impulse")
        self._method_apply_impulse_1002852006 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_apply_impulse_1002852006_name._native_ptr(), 1002852006)
        assert(RigidBody3D._method_apply_impulse_1002852006 != nil)
        let _method_apply_torque_impulse_3460891852_name = StringName(from: "apply_torque_impulse")
        self._method_apply_torque_impulse_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_apply_torque_impulse_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_apply_torque_impulse_3460891852 != nil)
        let _method_apply_central_force_3460891852_name = StringName(from: "apply_central_force")
        self._method_apply_central_force_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_apply_central_force_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_apply_central_force_3460891852 != nil)
        let _method_apply_force_1002852006_name = StringName(from: "apply_force")
        self._method_apply_force_1002852006 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_apply_force_1002852006_name._native_ptr(), 1002852006)
        assert(RigidBody3D._method_apply_force_1002852006 != nil)
        let _method_apply_torque_3460891852_name = StringName(from: "apply_torque")
        self._method_apply_torque_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_apply_torque_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_apply_torque_3460891852 != nil)
        let _method_add_constant_central_force_3460891852_name = StringName(from: "add_constant_central_force")
        self._method_add_constant_central_force_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_add_constant_central_force_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_add_constant_central_force_3460891852 != nil)
        let _method_add_constant_force_1002852006_name = StringName(from: "add_constant_force")
        self._method_add_constant_force_1002852006 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_add_constant_force_1002852006_name._native_ptr(), 1002852006)
        assert(RigidBody3D._method_add_constant_force_1002852006 != nil)
        let _method_add_constant_torque_3460891852_name = StringName(from: "add_constant_torque")
        self._method_add_constant_torque_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_add_constant_torque_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_add_constant_torque_3460891852 != nil)
        let _method_set_constant_force_3460891852_name = StringName(from: "set_constant_force")
        self._method_set_constant_force_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_constant_force_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_constant_force_3460891852 != nil)
        let _method_get_constant_force_3360562783_name = StringName(from: "get_constant_force")
        self._method_get_constant_force_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_constant_force_3360562783_name._native_ptr(), 3360562783)
        assert(RigidBody3D._method_get_constant_force_3360562783 != nil)
        let _method_set_constant_torque_3460891852_name = StringName(from: "set_constant_torque")
        self._method_set_constant_torque_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_constant_torque_3460891852_name._native_ptr(), 3460891852)
        assert(RigidBody3D._method_set_constant_torque_3460891852 != nil)
        let _method_get_constant_torque_3360562783_name = StringName(from: "get_constant_torque")
        self._method_get_constant_torque_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_constant_torque_3360562783_name._native_ptr(), 3360562783)
        assert(RigidBody3D._method_get_constant_torque_3360562783 != nil)
        let _method_set_sleeping_2586408642_name = StringName(from: "set_sleeping")
        self._method_set_sleeping_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_sleeping_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_sleeping_2586408642 != nil)
        let _method_is_sleeping_36873697_name = StringName(from: "is_sleeping")
        self._method_is_sleeping_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_sleeping_36873697_name._native_ptr(), 36873697)
        assert(RigidBody3D._method_is_sleeping_36873697 != nil)
        let _method_set_can_sleep_2586408642_name = StringName(from: "set_can_sleep")
        self._method_set_can_sleep_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_can_sleep_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_can_sleep_2586408642 != nil)
        let _method_is_able_to_sleep_36873697_name = StringName(from: "is_able_to_sleep")
        self._method_is_able_to_sleep_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_able_to_sleep_36873697_name._native_ptr(), 36873697)
        assert(RigidBody3D._method_is_able_to_sleep_36873697 != nil)
        let _method_set_lock_rotation_enabled_2586408642_name = StringName(from: "set_lock_rotation_enabled")
        self._method_set_lock_rotation_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_lock_rotation_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_lock_rotation_enabled_2586408642 != nil)
        let _method_is_lock_rotation_enabled_36873697_name = StringName(from: "is_lock_rotation_enabled")
        self._method_is_lock_rotation_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_lock_rotation_enabled_36873697_name._native_ptr(), 36873697)
        assert(RigidBody3D._method_is_lock_rotation_enabled_36873697 != nil)
        let _method_set_freeze_enabled_2586408642_name = StringName(from: "set_freeze_enabled")
        self._method_set_freeze_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_freeze_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RigidBody3D._method_set_freeze_enabled_2586408642 != nil)
        let _method_is_freeze_enabled_36873697_name = StringName(from: "is_freeze_enabled")
        self._method_is_freeze_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_is_freeze_enabled_36873697_name._native_ptr(), 36873697)
        assert(RigidBody3D._method_is_freeze_enabled_36873697 != nil)
        let _method_set_freeze_mode_1319914653_name = StringName(from: "set_freeze_mode")
        self._method_set_freeze_mode_1319914653 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_set_freeze_mode_1319914653_name._native_ptr(), 1319914653)
        assert(RigidBody3D._method_set_freeze_mode_1319914653 != nil)
        let _method_get_freeze_mode_2008423905_name = StringName(from: "get_freeze_mode")
        self._method_get_freeze_mode_2008423905 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_freeze_mode_2008423905_name._native_ptr(), 2008423905)
        assert(RigidBody3D._method_get_freeze_mode_2008423905 != nil)
        let _method_get_colliding_bodies_3995934104_name = StringName(from: "get_colliding_bodies")
        self._method_get_colliding_bodies_3995934104 = self.interface.pointee.classdb_get_method_bind(__godot_name_RigidBody3D._native_ptr(), _method_get_colliding_bodies_3995934104_name._native_ptr(), 3995934104)
        assert(RigidBody3D._method_get_colliding_bodies_3995934104 != nil)
    }

    public func _integrate_forces(state: PhysicsDirectBodyState3D)  {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method__integrate_forces_0,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_mass(mass: Float64)  {
        withUnsafePointer(to: mass) { mass_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mass_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mass_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_inertia(inertia: Vector3)  {
        let inertia_native = inertia._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inertia_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_inertia_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_inertia() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inertia_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_center_of_mass_mode(mode: RigidBody3D.CenterOfMassMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_center_of_mass_mode_3625866032,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_center_of_mass_mode() -> RigidBody3D.CenterOfMassMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_of_mass_mode_237405040,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody3D.CenterOfMassMode(godot: __resPtr.pointee)
    }
    public func set_center_of_mass(center_of_mass: Vector3)  {
        let center_of_mass_native = center_of_mass._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(center_of_mass_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_center_of_mass_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_center_of_mass() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_center_of_mass_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_physics_material_override(physics_material_override: PhysicsMaterial)  {
        let physics_material_override_native = physics_material_override._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(physics_material_override_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_physics_material_override_1784508650,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_physics_material_override_2521850424,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsMaterial(godot: __resPtr.pointee)
    }
    public func set_linear_velocity(linear_velocity: Vector3)  {
        let linear_velocity_native = linear_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_velocity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_linear_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_velocity_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_angular_velocity(angular_velocity: Vector3)  {
        let angular_velocity_native = angular_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_velocity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_angular_velocity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_velocity_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func get_inverse_inertia_tensor() -> Basis {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_inverse_inertia_tensor_2716978435,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Basis(godot: __resPtr.pointee)
    }
    public func set_gravity_scale(gravity_scale: Float64)  {
        withUnsafePointer(to: gravity_scale) { gravity_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gravity_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_scale_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_linear_damp_mode(linear_damp_mode: RigidBody3D.DampMode)  {
        withUnsafePointer(to: linear_damp_mode.rawValue) { linear_damp_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_damp_mode_1802035050,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_linear_damp_mode() -> RigidBody3D.DampMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_damp_mode_1366206940,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody3D.DampMode(godot: __resPtr.pointee)
    }
    public func set_angular_damp_mode(angular_damp_mode: RigidBody3D.DampMode)  {
        withUnsafePointer(to: angular_damp_mode.rawValue) { angular_damp_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(angular_damp_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_damp_mode_1802035050,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_angular_damp_mode() -> RigidBody3D.DampMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_damp_mode_1366206940,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody3D.DampMode(godot: __resPtr.pointee)
    }
    public func set_linear_damp(linear_damp: Float64)  {
        withUnsafePointer(to: linear_damp) { linear_damp_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(linear_damp_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_linear_damp_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_linear_damp_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_angular_damp_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_angular_damp_1740695150,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_max_contacts_reported_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_max_contacts_reported_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_contact_count_3905245786,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_custom_integrator_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_custom_integrator_2240911060,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_contact_monitor_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_contact_monitor_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_use_continuous_collision_detection(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_continuous_collision_detection_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_using_continuous_collision_detection() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_using_continuous_collision_detection_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_axis_velocity(axis_velocity: Vector3)  {
        let axis_velocity_native = axis_velocity._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_axis_velocity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_central_impulse(impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_central_impulse_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_impulse(impulse: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_impulse_1002852006,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_torque_impulse(impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_torque_impulse_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_central_force(force: Vector3)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_central_force_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_force(force: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_force_1002852006,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func apply_torque(torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_apply_torque_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_constant_central_force(force: Vector3)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_constant_central_force_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_constant_force(force: Vector3, position: Vector3)  {
        let position_native = position._native_ptr()
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native), .init(position_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_constant_force_1002852006,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func add_constant_torque(torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_add_constant_torque_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_constant_force(force: Vector3)  {
        let force_native = force._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_force_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant_force() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_force_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_constant_torque(torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_constant_torque_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_constant_torque() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_constant_torque_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_sleeping(sleeping: UInt8)  {
        withUnsafePointer(to: sleeping) { sleeping_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sleeping_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sleeping_2586408642,
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
    public func set_can_sleep(able_to_sleep: UInt8)  {
        withUnsafePointer(to: able_to_sleep) { able_to_sleep_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(able_to_sleep_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_can_sleep_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_able_to_sleep_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lock_rotation_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_lock_rotation_enabled_36873697,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_freeze_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_freeze_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_freeze_mode(freeze_mode: RigidBody3D.FreezeMode)  {
        withUnsafePointer(to: freeze_mode.rawValue) { freeze_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(freeze_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_freeze_mode_1319914653,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_freeze_mode() -> RigidBody3D.FreezeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_freeze_mode_2008423905,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RigidBody3D.FreezeMode(godot: __resPtr.pointee)
    }
    public func get_colliding_bodies() -> [Node3D] {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_colliding_bodies_3995934104,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Node3D](godot: __resPtr.pointee)
    }
}