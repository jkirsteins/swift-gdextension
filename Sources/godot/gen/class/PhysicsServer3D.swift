import godot_native

fileprivate var __godot_name_PhysicsServer3D: StringName! = nil

/// Server interface for low-level physics access.
/// 
/// PhysicsServer3D is the server responsible for all 3D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
public class PhysicsServer3D : Object {

    public enum JointType : Int32 {
        case JOINT_TYPE_PIN = 0
        case JOINT_TYPE_HINGE = 1
        case JOINT_TYPE_SLIDER = 2
        case JOINT_TYPE_CONE_TWIST = 3
        case JOINT_TYPE_6DOF = 4
        case JOINT_TYPE_MAX = 5
    }
    public enum PinJointParam : Int32 {
        case PIN_JOINT_BIAS = 0
        case PIN_JOINT_DAMPING = 1
        case PIN_JOINT_IMPULSE_CLAMP = 2
    }
    public enum HingeJointParam : Int32 {
        case HINGE_JOINT_BIAS = 0
        case HINGE_JOINT_LIMIT_UPPER = 1
        case HINGE_JOINT_LIMIT_LOWER = 2
        case HINGE_JOINT_LIMIT_BIAS = 3
        case HINGE_JOINT_LIMIT_SOFTNESS = 4
        case HINGE_JOINT_LIMIT_RELAXATION = 5
        case HINGE_JOINT_MOTOR_TARGET_VELOCITY = 6
        case HINGE_JOINT_MOTOR_MAX_IMPULSE = 7
    }
    public enum HingeJointFlag : Int32 {
        case HINGE_JOINT_FLAG_USE_LIMIT = 0
        case HINGE_JOINT_FLAG_ENABLE_MOTOR = 1
    }
    public enum SliderJointParam : Int32 {
        case SLIDER_JOINT_LINEAR_LIMIT_UPPER = 0
        case SLIDER_JOINT_LINEAR_LIMIT_LOWER = 1
        case SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS = 2
        case SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION = 3
        case SLIDER_JOINT_LINEAR_LIMIT_DAMPING = 4
        case SLIDER_JOINT_LINEAR_MOTION_SOFTNESS = 5
        case SLIDER_JOINT_LINEAR_MOTION_RESTITUTION = 6
        case SLIDER_JOINT_LINEAR_MOTION_DAMPING = 7
        case SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS = 8
        case SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION = 9
        case SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING = 10
        case SLIDER_JOINT_ANGULAR_LIMIT_UPPER = 11
        case SLIDER_JOINT_ANGULAR_LIMIT_LOWER = 12
        case SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS = 13
        case SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION = 14
        case SLIDER_JOINT_ANGULAR_LIMIT_DAMPING = 15
        case SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS = 16
        case SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION = 17
        case SLIDER_JOINT_ANGULAR_MOTION_DAMPING = 18
        case SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS = 19
        case SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION = 20
        case SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING = 21
        case SLIDER_JOINT_MAX = 22
    }
    public enum ConeTwistJointParam : Int32 {
        case CONE_TWIST_JOINT_SWING_SPAN = 0
        case CONE_TWIST_JOINT_TWIST_SPAN = 1
        case CONE_TWIST_JOINT_BIAS = 2
        case CONE_TWIST_JOINT_SOFTNESS = 3
        case CONE_TWIST_JOINT_RELAXATION = 4
    }
    public enum G6DOFJointAxisParam : Int32 {
        case G6DOF_JOINT_LINEAR_LOWER_LIMIT = 0
        case G6DOF_JOINT_LINEAR_UPPER_LIMIT = 1
        case G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS = 2
        case G6DOF_JOINT_LINEAR_RESTITUTION = 3
        case G6DOF_JOINT_LINEAR_DAMPING = 4
        case G6DOF_JOINT_LINEAR_MOTOR_TARGET_VELOCITY = 5
        case G6DOF_JOINT_LINEAR_MOTOR_FORCE_LIMIT = 6
        case G6DOF_JOINT_ANGULAR_LOWER_LIMIT = 10
        case G6DOF_JOINT_ANGULAR_UPPER_LIMIT = 11
        case G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS = 12
        case G6DOF_JOINT_ANGULAR_DAMPING = 13
        case G6DOF_JOINT_ANGULAR_RESTITUTION = 14
        case G6DOF_JOINT_ANGULAR_FORCE_LIMIT = 15
        case G6DOF_JOINT_ANGULAR_ERP = 16
        case G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY = 17
        case G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT = 18
    }
    public enum G6DOFJointAxisFlag : Int32 {
        case G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT = 0
        case G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT = 1
        case G6DOF_JOINT_FLAG_ENABLE_MOTOR = 4
        case G6DOF_JOINT_FLAG_ENABLE_LINEAR_MOTOR = 5
    }
    public enum ShapeType : Int32 {
        case SHAPE_WORLD_BOUNDARY = 0
        case SHAPE_SEPARATION_RAY = 1
        case SHAPE_SPHERE = 2
        case SHAPE_BOX = 3
        case SHAPE_CAPSULE = 4
        case SHAPE_CYLINDER = 5
        case SHAPE_CONVEX_POLYGON = 6
        case SHAPE_CONCAVE_POLYGON = 7
        case SHAPE_HEIGHTMAP = 8
        case SHAPE_SOFT_BODY = 9
        case SHAPE_CUSTOM = 10
    }
    public enum AreaParameter : Int32 {
        case AREA_PARAM_GRAVITY_OVERRIDE_MODE = 0
        case AREA_PARAM_GRAVITY = 1
        case AREA_PARAM_GRAVITY_VECTOR = 2
        case AREA_PARAM_GRAVITY_IS_POINT = 3
        case AREA_PARAM_GRAVITY_POINT_UNIT_DISTANCE = 4
        case AREA_PARAM_LINEAR_DAMP_OVERRIDE_MODE = 5
        case AREA_PARAM_LINEAR_DAMP = 6
        case AREA_PARAM_ANGULAR_DAMP_OVERRIDE_MODE = 7
        case AREA_PARAM_ANGULAR_DAMP = 8
        case AREA_PARAM_PRIORITY = 9
        case AREA_PARAM_WIND_FORCE_MAGNITUDE = 10
        case AREA_PARAM_WIND_SOURCE = 11
        case AREA_PARAM_WIND_DIRECTION = 12
        case AREA_PARAM_WIND_ATTENUATION_FACTOR = 13
    }
    public enum AreaSpaceOverrideMode : Int32 {
        case AREA_SPACE_OVERRIDE_DISABLED = 0
        case AREA_SPACE_OVERRIDE_COMBINE = 1
        case AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2
        case AREA_SPACE_OVERRIDE_REPLACE = 3
        case AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4
    }
    public enum BodyMode : Int32 {
        case BODY_MODE_STATIC = 0
        case BODY_MODE_KINEMATIC = 1
        case BODY_MODE_RIGID = 2
        case BODY_MODE_RIGID_LINEAR = 3
    }
    public enum BodyParameter : Int32 {
        case BODY_PARAM_BOUNCE = 0
        case BODY_PARAM_FRICTION = 1
        case BODY_PARAM_MASS = 2
        case BODY_PARAM_INERTIA = 3
        case BODY_PARAM_CENTER_OF_MASS = 4
        case BODY_PARAM_GRAVITY_SCALE = 5
        case BODY_PARAM_LINEAR_DAMP_MODE = 6
        case BODY_PARAM_ANGULAR_DAMP_MODE = 7
        case BODY_PARAM_LINEAR_DAMP = 8
        case BODY_PARAM_ANGULAR_DAMP = 9
        case BODY_PARAM_MAX = 10
    }
    public enum BodyDampMode : Int32 {
        case BODY_DAMP_MODE_COMBINE = 0
        case BODY_DAMP_MODE_REPLACE = 1
    }
    public enum BodyState : Int32 {
        case BODY_STATE_TRANSFORM = 0
        case BODY_STATE_LINEAR_VELOCITY = 1
        case BODY_STATE_ANGULAR_VELOCITY = 2
        case BODY_STATE_SLEEPING = 3
        case BODY_STATE_CAN_SLEEP = 4
    }
    public enum AreaBodyStatus : Int32 {
        case AREA_BODY_ADDED = 0
        case AREA_BODY_REMOVED = 1
    }
    public enum ProcessInfo : Int32 {
        case INFO_ACTIVE_OBJECTS = 0
        case INFO_COLLISION_PAIRS = 1
        case INFO_ISLAND_COUNT = 2
    }
    public enum SpaceParameter : Int32 {
        case SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0
        case SPACE_PARAM_CONTACT_MAX_SEPARATION = 1
        case SPACE_PARAM_CONTACT_MAX_ALLOWED_PENETRATION = 2
        case SPACE_PARAM_CONTACT_DEFAULT_BIAS = 3
        case SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 4
        case SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 5
        case SPACE_PARAM_BODY_TIME_TO_SLEEP = 6
        case SPACE_PARAM_SOLVER_ITERATIONS = 7
    }
    public enum BodyAxis : Int32 {
        case BODY_AXIS_LINEAR_X = 1
        case BODY_AXIS_LINEAR_Y = 2
        case BODY_AXIS_LINEAR_Z = 4
        case BODY_AXIS_ANGULAR_X = 8
        case BODY_AXIS_ANGULAR_Y = 16
        case BODY_AXIS_ANGULAR_Z = 32
    }

    public override class var __godot_name: StringName { __godot_name_PhysicsServer3D }

    static var _method_world_boundary_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_separation_ray_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_sphere_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_box_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_capsule_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_cylinder_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_convex_polygon_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_concave_polygon_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_heightmap_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_custom_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_shape_set_data_3175752987: GDExtensionMethodBindPtr! = nil
    static var _method_shape_get_type_3418923367: GDExtensionMethodBindPtr! = nil
    static var _method_shape_get_data_4171304767: GDExtensionMethodBindPtr! = nil
    static var _method_space_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_space_set_active_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_space_is_active_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_space_set_param_2406017470: GDExtensionMethodBindPtr! = nil
    static var _method_space_get_param_1523206731: GDExtensionMethodBindPtr! = nil
    static var _method_space_get_direct_state_2048616813: GDExtensionMethodBindPtr! = nil
    static var _method_area_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_space_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_space_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_area_add_shape_4040559639: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_shape_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_shape_transform_675327471: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_shape_disabled_2658558584: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_shape_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_shape_1066463050: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_shape_transform_1050775521: GDExtensionMethodBindPtr! = nil
    static var _method_area_remove_shape_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_clear_shapes_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_collision_layer_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_collision_layer_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_collision_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_collision_mask_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_param_2980114638: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_transform_3935195649: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_param_890056067: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_transform_1128465797: GDExtensionMethodBindPtr! = nil
    static var _method_area_attach_object_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_object_instance_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_monitor_callback_3379118538: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_area_monitor_callback_3379118538: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_monitorable_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_ray_pickable_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_body_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_space_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_space_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_mode_606803466: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_mode_2488819728: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_collision_layer_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_collision_layer_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_collision_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_collision_mask_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_collision_priority_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_collision_priority_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_shape_4040559639: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_transform_675327471: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_disabled_2658558584: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_shape_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_shape_1066463050: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_shape_transform_1050775521: GDExtensionMethodBindPtr! = nil
    static var _method_body_remove_shape_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_clear_shapes_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_body_attach_object_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_object_instance_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_enable_continuous_collision_detection_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_body_is_continuous_collision_detection_enabled_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_param_910941953: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_param_3385027841: GDExtensionMethodBindPtr! = nil
    static var _method_body_reset_mass_properties_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_state_599977762: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_state_1850449534: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_central_impulse_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_impulse_110375048: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_torque_impulse_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_central_force_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_force_110375048: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_torque_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_constant_central_force_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_constant_force_110375048: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_constant_torque_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_constant_force_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_constant_force_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_constant_torque_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_constant_torque_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_axis_velocity_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_axis_lock_2020836892: GDExtensionMethodBindPtr! = nil
    static var _method_body_is_axis_locked_587853580: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_collision_exception_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_body_remove_collision_exception_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_max_contacts_reported_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_max_contacts_reported_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_omit_force_integration_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_body_is_omitting_force_integration_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_force_integration_callback_3059434249: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_ray_pickable_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_body_test_motion_1944921792: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_direct_state_3029727957: GDExtensionMethodBindPtr! = nil
    static var _method_soft_body_get_bounds_974181306: GDExtensionMethodBindPtr! = nil
    static var _method_joint_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_joint_clear_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_pin_4280171926: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_set_param_810685294: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_get_param_2817972347: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_set_local_a_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_get_local_a_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_set_local_b_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_get_local_b_531438156: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_hinge_1684107643: GDExtensionMethodBindPtr! = nil
    static var _method_hinge_joint_set_param_3165502333: GDExtensionMethodBindPtr! = nil
    static var _method_hinge_joint_get_param_2129207581: GDExtensionMethodBindPtr! = nil
    static var _method_hinge_joint_set_flag_1601626188: GDExtensionMethodBindPtr! = nil
    static var _method_hinge_joint_get_flag_4165147865: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_slider_1684107643: GDExtensionMethodBindPtr! = nil
    static var _method_slider_joint_set_param_2264833593: GDExtensionMethodBindPtr! = nil
    static var _method_slider_joint_get_param_3498644957: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_cone_twist_1684107643: GDExtensionMethodBindPtr! = nil
    static var _method_cone_twist_joint_set_param_808587618: GDExtensionMethodBindPtr! = nil
    static var _method_cone_twist_joint_get_param_1134789658: GDExtensionMethodBindPtr! = nil
    static var _method_joint_get_type_4290791900: GDExtensionMethodBindPtr! = nil
    static var _method_joint_set_solver_priority_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_joint_get_solver_priority_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_joint_disable_collisions_between_bodies_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_joint_is_disabled_collisions_between_bodies_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_generic_6dof_1684107643: GDExtensionMethodBindPtr! = nil
    static var _method_generic_6dof_joint_set_param_2600081391: GDExtensionMethodBindPtr! = nil
    static var _method_generic_6dof_joint_get_param_467122058: GDExtensionMethodBindPtr! = nil
    static var _method_generic_6dof_joint_set_flag_3570926903: GDExtensionMethodBindPtr! = nil
    static var _method_generic_6dof_joint_get_flag_4158090196: GDExtensionMethodBindPtr! = nil
    static var _method_free_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_set_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_info_1332958745: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_PhysicsServer3D = StringName(from: "PhysicsServer3D")

        let _method_world_boundary_shape_create_529393457_name = StringName(from: "world_boundary_shape_create")
        self._method_world_boundary_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_world_boundary_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_world_boundary_shape_create_529393457 != nil)
        let _method_separation_ray_shape_create_529393457_name = StringName(from: "separation_ray_shape_create")
        self._method_separation_ray_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_separation_ray_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_separation_ray_shape_create_529393457 != nil)
        let _method_sphere_shape_create_529393457_name = StringName(from: "sphere_shape_create")
        self._method_sphere_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sphere_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_sphere_shape_create_529393457 != nil)
        let _method_box_shape_create_529393457_name = StringName(from: "box_shape_create")
        self._method_box_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_box_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_box_shape_create_529393457 != nil)
        let _method_capsule_shape_create_529393457_name = StringName(from: "capsule_shape_create")
        self._method_capsule_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_capsule_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_capsule_shape_create_529393457 != nil)
        let _method_cylinder_shape_create_529393457_name = StringName(from: "cylinder_shape_create")
        self._method_cylinder_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cylinder_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_cylinder_shape_create_529393457 != nil)
        let _method_convex_polygon_shape_create_529393457_name = StringName(from: "convex_polygon_shape_create")
        self._method_convex_polygon_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_convex_polygon_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_convex_polygon_shape_create_529393457 != nil)
        let _method_concave_polygon_shape_create_529393457_name = StringName(from: "concave_polygon_shape_create")
        self._method_concave_polygon_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_concave_polygon_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_concave_polygon_shape_create_529393457 != nil)
        let _method_heightmap_shape_create_529393457_name = StringName(from: "heightmap_shape_create")
        self._method_heightmap_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_heightmap_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_heightmap_shape_create_529393457 != nil)
        let _method_custom_shape_create_529393457_name = StringName(from: "custom_shape_create")
        self._method_custom_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_custom_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_custom_shape_create_529393457 != nil)
        let _method_shape_set_data_3175752987_name = StringName(from: "shape_set_data")
        self._method_shape_set_data_3175752987 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_set_data_3175752987_name._native_ptr(), 3175752987)
        assert(PhysicsServer3D._method_shape_set_data_3175752987 != nil)
        let _method_shape_get_type_3418923367_name = StringName(from: "shape_get_type")
        self._method_shape_get_type_3418923367 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_get_type_3418923367_name._native_ptr(), 3418923367)
        assert(PhysicsServer3D._method_shape_get_type_3418923367 != nil)
        let _method_shape_get_data_4171304767_name = StringName(from: "shape_get_data")
        self._method_shape_get_data_4171304767 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shape_get_data_4171304767_name._native_ptr(), 4171304767)
        assert(PhysicsServer3D._method_shape_get_data_4171304767 != nil)
        let _method_space_create_529393457_name = StringName(from: "space_create")
        self._method_space_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_space_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_space_create_529393457 != nil)
        let _method_space_set_active_1265174801_name = StringName(from: "space_set_active")
        self._method_space_set_active_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_space_set_active_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_space_set_active_1265174801 != nil)
        let _method_space_is_active_4155700596_name = StringName(from: "space_is_active")
        self._method_space_is_active_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_space_is_active_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer3D._method_space_is_active_4155700596 != nil)
        let _method_space_set_param_2406017470_name = StringName(from: "space_set_param")
        self._method_space_set_param_2406017470 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_space_set_param_2406017470_name._native_ptr(), 2406017470)
        assert(PhysicsServer3D._method_space_set_param_2406017470 != nil)
        let _method_space_get_param_1523206731_name = StringName(from: "space_get_param")
        self._method_space_get_param_1523206731 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_space_get_param_1523206731_name._native_ptr(), 1523206731)
        assert(PhysicsServer3D._method_space_get_param_1523206731 != nil)
        let _method_space_get_direct_state_2048616813_name = StringName(from: "space_get_direct_state")
        self._method_space_get_direct_state_2048616813 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_space_get_direct_state_2048616813_name._native_ptr(), 2048616813)
        assert(PhysicsServer3D._method_space_get_direct_state_2048616813 != nil)
        let _method_area_create_529393457_name = StringName(from: "area_create")
        self._method_area_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_area_create_529393457 != nil)
        let _method_area_set_space_395945892_name = StringName(from: "area_set_space")
        self._method_area_set_space_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_space_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer3D._method_area_set_space_395945892 != nil)
        let _method_area_get_space_3814569979_name = StringName(from: "area_get_space")
        self._method_area_get_space_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_space_3814569979_name._native_ptr(), 3814569979)
        assert(PhysicsServer3D._method_area_get_space_3814569979 != nil)
        let _method_area_add_shape_4040559639_name = StringName(from: "area_add_shape")
        self._method_area_add_shape_4040559639 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_add_shape_4040559639_name._native_ptr(), 4040559639)
        assert(PhysicsServer3D._method_area_add_shape_4040559639 != nil)
        let _method_area_set_shape_2310537182_name = StringName(from: "area_set_shape")
        self._method_area_set_shape_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_shape_2310537182_name._native_ptr(), 2310537182)
        assert(PhysicsServer3D._method_area_set_shape_2310537182 != nil)
        let _method_area_set_shape_transform_675327471_name = StringName(from: "area_set_shape_transform")
        self._method_area_set_shape_transform_675327471 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_shape_transform_675327471_name._native_ptr(), 675327471)
        assert(PhysicsServer3D._method_area_set_shape_transform_675327471 != nil)
        let _method_area_set_shape_disabled_2658558584_name = StringName(from: "area_set_shape_disabled")
        self._method_area_set_shape_disabled_2658558584 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_shape_disabled_2658558584_name._native_ptr(), 2658558584)
        assert(PhysicsServer3D._method_area_set_shape_disabled_2658558584 != nil)
        let _method_area_get_shape_count_2198884583_name = StringName(from: "area_get_shape_count")
        self._method_area_get_shape_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_shape_count_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_area_get_shape_count_2198884583 != nil)
        let _method_area_get_shape_1066463050_name = StringName(from: "area_get_shape")
        self._method_area_get_shape_1066463050 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_shape_1066463050_name._native_ptr(), 1066463050)
        assert(PhysicsServer3D._method_area_get_shape_1066463050 != nil)
        let _method_area_get_shape_transform_1050775521_name = StringName(from: "area_get_shape_transform")
        self._method_area_get_shape_transform_1050775521 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_shape_transform_1050775521_name._native_ptr(), 1050775521)
        assert(PhysicsServer3D._method_area_get_shape_transform_1050775521 != nil)
        let _method_area_remove_shape_3411492887_name = StringName(from: "area_remove_shape")
        self._method_area_remove_shape_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_remove_shape_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_area_remove_shape_3411492887 != nil)
        let _method_area_clear_shapes_2722037293_name = StringName(from: "area_clear_shapes")
        self._method_area_clear_shapes_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_clear_shapes_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer3D._method_area_clear_shapes_2722037293 != nil)
        let _method_area_set_collision_layer_3411492887_name = StringName(from: "area_set_collision_layer")
        self._method_area_set_collision_layer_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_collision_layer_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_area_set_collision_layer_3411492887 != nil)
        let _method_area_get_collision_layer_2198884583_name = StringName(from: "area_get_collision_layer")
        self._method_area_get_collision_layer_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_collision_layer_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_area_get_collision_layer_2198884583 != nil)
        let _method_area_set_collision_mask_3411492887_name = StringName(from: "area_set_collision_mask")
        self._method_area_set_collision_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_collision_mask_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_area_set_collision_mask_3411492887 != nil)
        let _method_area_get_collision_mask_2198884583_name = StringName(from: "area_get_collision_mask")
        self._method_area_get_collision_mask_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_collision_mask_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_area_get_collision_mask_2198884583 != nil)
        let _method_area_set_param_2980114638_name = StringName(from: "area_set_param")
        self._method_area_set_param_2980114638 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_param_2980114638_name._native_ptr(), 2980114638)
        assert(PhysicsServer3D._method_area_set_param_2980114638 != nil)
        let _method_area_set_transform_3935195649_name = StringName(from: "area_set_transform")
        self._method_area_set_transform_3935195649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_transform_3935195649_name._native_ptr(), 3935195649)
        assert(PhysicsServer3D._method_area_set_transform_3935195649 != nil)
        let _method_area_get_param_890056067_name = StringName(from: "area_get_param")
        self._method_area_get_param_890056067 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_param_890056067_name._native_ptr(), 890056067)
        assert(PhysicsServer3D._method_area_get_param_890056067 != nil)
        let _method_area_get_transform_1128465797_name = StringName(from: "area_get_transform")
        self._method_area_get_transform_1128465797 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_transform_1128465797_name._native_ptr(), 1128465797)
        assert(PhysicsServer3D._method_area_get_transform_1128465797 != nil)
        let _method_area_attach_object_instance_id_3411492887_name = StringName(from: "area_attach_object_instance_id")
        self._method_area_attach_object_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_attach_object_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_area_attach_object_instance_id_3411492887 != nil)
        let _method_area_get_object_instance_id_2198884583_name = StringName(from: "area_get_object_instance_id")
        self._method_area_get_object_instance_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_get_object_instance_id_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_area_get_object_instance_id_2198884583 != nil)
        let _method_area_set_monitor_callback_3379118538_name = StringName(from: "area_set_monitor_callback")
        self._method_area_set_monitor_callback_3379118538 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_monitor_callback_3379118538_name._native_ptr(), 3379118538)
        assert(PhysicsServer3D._method_area_set_monitor_callback_3379118538 != nil)
        let _method_area_set_area_monitor_callback_3379118538_name = StringName(from: "area_set_area_monitor_callback")
        self._method_area_set_area_monitor_callback_3379118538 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_area_monitor_callback_3379118538_name._native_ptr(), 3379118538)
        assert(PhysicsServer3D._method_area_set_area_monitor_callback_3379118538 != nil)
        let _method_area_set_monitorable_1265174801_name = StringName(from: "area_set_monitorable")
        self._method_area_set_monitorable_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_monitorable_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_area_set_monitorable_1265174801 != nil)
        let _method_area_set_ray_pickable_1265174801_name = StringName(from: "area_set_ray_pickable")
        self._method_area_set_ray_pickable_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_area_set_ray_pickable_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_area_set_ray_pickable_1265174801 != nil)
        let _method_body_create_529393457_name = StringName(from: "body_create")
        self._method_body_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_body_create_529393457 != nil)
        let _method_body_set_space_395945892_name = StringName(from: "body_set_space")
        self._method_body_set_space_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_space_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer3D._method_body_set_space_395945892 != nil)
        let _method_body_get_space_3814569979_name = StringName(from: "body_get_space")
        self._method_body_get_space_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_space_3814569979_name._native_ptr(), 3814569979)
        assert(PhysicsServer3D._method_body_get_space_3814569979 != nil)
        let _method_body_set_mode_606803466_name = StringName(from: "body_set_mode")
        self._method_body_set_mode_606803466 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_mode_606803466_name._native_ptr(), 606803466)
        assert(PhysicsServer3D._method_body_set_mode_606803466 != nil)
        let _method_body_get_mode_2488819728_name = StringName(from: "body_get_mode")
        self._method_body_get_mode_2488819728 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_mode_2488819728_name._native_ptr(), 2488819728)
        assert(PhysicsServer3D._method_body_get_mode_2488819728 != nil)
        let _method_body_set_collision_layer_3411492887_name = StringName(from: "body_set_collision_layer")
        self._method_body_set_collision_layer_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_collision_layer_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_body_set_collision_layer_3411492887 != nil)
        let _method_body_get_collision_layer_2198884583_name = StringName(from: "body_get_collision_layer")
        self._method_body_get_collision_layer_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_collision_layer_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_body_get_collision_layer_2198884583 != nil)
        let _method_body_set_collision_mask_3411492887_name = StringName(from: "body_set_collision_mask")
        self._method_body_set_collision_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_collision_mask_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_body_set_collision_mask_3411492887 != nil)
        let _method_body_get_collision_mask_2198884583_name = StringName(from: "body_get_collision_mask")
        self._method_body_get_collision_mask_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_collision_mask_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_body_get_collision_mask_2198884583 != nil)
        let _method_body_set_collision_priority_1794382983_name = StringName(from: "body_set_collision_priority")
        self._method_body_set_collision_priority_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_collision_priority_1794382983_name._native_ptr(), 1794382983)
        assert(PhysicsServer3D._method_body_set_collision_priority_1794382983 != nil)
        let _method_body_get_collision_priority_866169185_name = StringName(from: "body_get_collision_priority")
        self._method_body_get_collision_priority_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_collision_priority_866169185_name._native_ptr(), 866169185)
        assert(PhysicsServer3D._method_body_get_collision_priority_866169185 != nil)
        let _method_body_add_shape_4040559639_name = StringName(from: "body_add_shape")
        self._method_body_add_shape_4040559639 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_add_shape_4040559639_name._native_ptr(), 4040559639)
        assert(PhysicsServer3D._method_body_add_shape_4040559639 != nil)
        let _method_body_set_shape_2310537182_name = StringName(from: "body_set_shape")
        self._method_body_set_shape_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_shape_2310537182_name._native_ptr(), 2310537182)
        assert(PhysicsServer3D._method_body_set_shape_2310537182 != nil)
        let _method_body_set_shape_transform_675327471_name = StringName(from: "body_set_shape_transform")
        self._method_body_set_shape_transform_675327471 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_shape_transform_675327471_name._native_ptr(), 675327471)
        assert(PhysicsServer3D._method_body_set_shape_transform_675327471 != nil)
        let _method_body_set_shape_disabled_2658558584_name = StringName(from: "body_set_shape_disabled")
        self._method_body_set_shape_disabled_2658558584 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_shape_disabled_2658558584_name._native_ptr(), 2658558584)
        assert(PhysicsServer3D._method_body_set_shape_disabled_2658558584 != nil)
        let _method_body_get_shape_count_2198884583_name = StringName(from: "body_get_shape_count")
        self._method_body_get_shape_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_shape_count_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_body_get_shape_count_2198884583 != nil)
        let _method_body_get_shape_1066463050_name = StringName(from: "body_get_shape")
        self._method_body_get_shape_1066463050 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_shape_1066463050_name._native_ptr(), 1066463050)
        assert(PhysicsServer3D._method_body_get_shape_1066463050 != nil)
        let _method_body_get_shape_transform_1050775521_name = StringName(from: "body_get_shape_transform")
        self._method_body_get_shape_transform_1050775521 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_shape_transform_1050775521_name._native_ptr(), 1050775521)
        assert(PhysicsServer3D._method_body_get_shape_transform_1050775521 != nil)
        let _method_body_remove_shape_3411492887_name = StringName(from: "body_remove_shape")
        self._method_body_remove_shape_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_remove_shape_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_body_remove_shape_3411492887 != nil)
        let _method_body_clear_shapes_2722037293_name = StringName(from: "body_clear_shapes")
        self._method_body_clear_shapes_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_clear_shapes_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer3D._method_body_clear_shapes_2722037293 != nil)
        let _method_body_attach_object_instance_id_3411492887_name = StringName(from: "body_attach_object_instance_id")
        self._method_body_attach_object_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_attach_object_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_body_attach_object_instance_id_3411492887 != nil)
        let _method_body_get_object_instance_id_2198884583_name = StringName(from: "body_get_object_instance_id")
        self._method_body_get_object_instance_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_object_instance_id_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_body_get_object_instance_id_2198884583 != nil)
        let _method_body_set_enable_continuous_collision_detection_1265174801_name = StringName(from: "body_set_enable_continuous_collision_detection")
        self._method_body_set_enable_continuous_collision_detection_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_enable_continuous_collision_detection_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_body_set_enable_continuous_collision_detection_1265174801 != nil)
        let _method_body_is_continuous_collision_detection_enabled_4155700596_name = StringName(from: "body_is_continuous_collision_detection_enabled")
        self._method_body_is_continuous_collision_detection_enabled_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_is_continuous_collision_detection_enabled_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer3D._method_body_is_continuous_collision_detection_enabled_4155700596 != nil)
        let _method_body_set_param_910941953_name = StringName(from: "body_set_param")
        self._method_body_set_param_910941953 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_param_910941953_name._native_ptr(), 910941953)
        assert(PhysicsServer3D._method_body_set_param_910941953 != nil)
        let _method_body_get_param_3385027841_name = StringName(from: "body_get_param")
        self._method_body_get_param_3385027841 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_param_3385027841_name._native_ptr(), 3385027841)
        assert(PhysicsServer3D._method_body_get_param_3385027841 != nil)
        let _method_body_reset_mass_properties_2722037293_name = StringName(from: "body_reset_mass_properties")
        self._method_body_reset_mass_properties_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_reset_mass_properties_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer3D._method_body_reset_mass_properties_2722037293 != nil)
        let _method_body_set_state_599977762_name = StringName(from: "body_set_state")
        self._method_body_set_state_599977762 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_state_599977762_name._native_ptr(), 599977762)
        assert(PhysicsServer3D._method_body_set_state_599977762 != nil)
        let _method_body_get_state_1850449534_name = StringName(from: "body_get_state")
        self._method_body_get_state_1850449534 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_state_1850449534_name._native_ptr(), 1850449534)
        assert(PhysicsServer3D._method_body_get_state_1850449534 != nil)
        let _method_body_apply_central_impulse_3227306858_name = StringName(from: "body_apply_central_impulse")
        self._method_body_apply_central_impulse_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_apply_central_impulse_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_apply_central_impulse_3227306858 != nil)
        let _method_body_apply_impulse_110375048_name = StringName(from: "body_apply_impulse")
        self._method_body_apply_impulse_110375048 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_apply_impulse_110375048_name._native_ptr(), 110375048)
        assert(PhysicsServer3D._method_body_apply_impulse_110375048 != nil)
        let _method_body_apply_torque_impulse_3227306858_name = StringName(from: "body_apply_torque_impulse")
        self._method_body_apply_torque_impulse_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_apply_torque_impulse_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_apply_torque_impulse_3227306858 != nil)
        let _method_body_apply_central_force_3227306858_name = StringName(from: "body_apply_central_force")
        self._method_body_apply_central_force_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_apply_central_force_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_apply_central_force_3227306858 != nil)
        let _method_body_apply_force_110375048_name = StringName(from: "body_apply_force")
        self._method_body_apply_force_110375048 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_apply_force_110375048_name._native_ptr(), 110375048)
        assert(PhysicsServer3D._method_body_apply_force_110375048 != nil)
        let _method_body_apply_torque_3227306858_name = StringName(from: "body_apply_torque")
        self._method_body_apply_torque_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_apply_torque_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_apply_torque_3227306858 != nil)
        let _method_body_add_constant_central_force_3227306858_name = StringName(from: "body_add_constant_central_force")
        self._method_body_add_constant_central_force_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_add_constant_central_force_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_add_constant_central_force_3227306858 != nil)
        let _method_body_add_constant_force_110375048_name = StringName(from: "body_add_constant_force")
        self._method_body_add_constant_force_110375048 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_add_constant_force_110375048_name._native_ptr(), 110375048)
        assert(PhysicsServer3D._method_body_add_constant_force_110375048 != nil)
        let _method_body_add_constant_torque_3227306858_name = StringName(from: "body_add_constant_torque")
        self._method_body_add_constant_torque_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_add_constant_torque_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_add_constant_torque_3227306858 != nil)
        let _method_body_set_constant_force_3227306858_name = StringName(from: "body_set_constant_force")
        self._method_body_set_constant_force_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_constant_force_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_set_constant_force_3227306858 != nil)
        let _method_body_get_constant_force_531438156_name = StringName(from: "body_get_constant_force")
        self._method_body_get_constant_force_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_constant_force_531438156_name._native_ptr(), 531438156)
        assert(PhysicsServer3D._method_body_get_constant_force_531438156 != nil)
        let _method_body_set_constant_torque_3227306858_name = StringName(from: "body_set_constant_torque")
        self._method_body_set_constant_torque_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_constant_torque_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_set_constant_torque_3227306858 != nil)
        let _method_body_get_constant_torque_531438156_name = StringName(from: "body_get_constant_torque")
        self._method_body_get_constant_torque_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_constant_torque_531438156_name._native_ptr(), 531438156)
        assert(PhysicsServer3D._method_body_get_constant_torque_531438156 != nil)
        let _method_body_set_axis_velocity_3227306858_name = StringName(from: "body_set_axis_velocity")
        self._method_body_set_axis_velocity_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_axis_velocity_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_body_set_axis_velocity_3227306858 != nil)
        let _method_body_set_axis_lock_2020836892_name = StringName(from: "body_set_axis_lock")
        self._method_body_set_axis_lock_2020836892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_axis_lock_2020836892_name._native_ptr(), 2020836892)
        assert(PhysicsServer3D._method_body_set_axis_lock_2020836892 != nil)
        let _method_body_is_axis_locked_587853580_name = StringName(from: "body_is_axis_locked")
        self._method_body_is_axis_locked_587853580 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_is_axis_locked_587853580_name._native_ptr(), 587853580)
        assert(PhysicsServer3D._method_body_is_axis_locked_587853580 != nil)
        let _method_body_add_collision_exception_395945892_name = StringName(from: "body_add_collision_exception")
        self._method_body_add_collision_exception_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_add_collision_exception_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer3D._method_body_add_collision_exception_395945892 != nil)
        let _method_body_remove_collision_exception_395945892_name = StringName(from: "body_remove_collision_exception")
        self._method_body_remove_collision_exception_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_remove_collision_exception_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer3D._method_body_remove_collision_exception_395945892 != nil)
        let _method_body_set_max_contacts_reported_3411492887_name = StringName(from: "body_set_max_contacts_reported")
        self._method_body_set_max_contacts_reported_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_max_contacts_reported_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_body_set_max_contacts_reported_3411492887 != nil)
        let _method_body_get_max_contacts_reported_2198884583_name = StringName(from: "body_get_max_contacts_reported")
        self._method_body_get_max_contacts_reported_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_max_contacts_reported_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_body_get_max_contacts_reported_2198884583 != nil)
        let _method_body_set_omit_force_integration_1265174801_name = StringName(from: "body_set_omit_force_integration")
        self._method_body_set_omit_force_integration_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_omit_force_integration_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_body_set_omit_force_integration_1265174801 != nil)
        let _method_body_is_omitting_force_integration_4155700596_name = StringName(from: "body_is_omitting_force_integration")
        self._method_body_is_omitting_force_integration_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_is_omitting_force_integration_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer3D._method_body_is_omitting_force_integration_4155700596 != nil)
        let _method_body_set_force_integration_callback_3059434249_name = StringName(from: "body_set_force_integration_callback")
        self._method_body_set_force_integration_callback_3059434249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_force_integration_callback_3059434249_name._native_ptr(), 3059434249)
        assert(PhysicsServer3D._method_body_set_force_integration_callback_3059434249 != nil)
        let _method_body_set_ray_pickable_1265174801_name = StringName(from: "body_set_ray_pickable")
        self._method_body_set_ray_pickable_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_set_ray_pickable_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_body_set_ray_pickable_1265174801 != nil)
        let _method_body_test_motion_1944921792_name = StringName(from: "body_test_motion")
        self._method_body_test_motion_1944921792 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_test_motion_1944921792_name._native_ptr(), 1944921792)
        assert(PhysicsServer3D._method_body_test_motion_1944921792 != nil)
        let _method_body_get_direct_state_3029727957_name = StringName(from: "body_get_direct_state")
        self._method_body_get_direct_state_3029727957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_body_get_direct_state_3029727957_name._native_ptr(), 3029727957)
        assert(PhysicsServer3D._method_body_get_direct_state_3029727957 != nil)
        let _method_soft_body_get_bounds_974181306_name = StringName(from: "soft_body_get_bounds")
        self._method_soft_body_get_bounds_974181306 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_soft_body_get_bounds_974181306_name._native_ptr(), 974181306)
        assert(PhysicsServer3D._method_soft_body_get_bounds_974181306 != nil)
        let _method_joint_create_529393457_name = StringName(from: "joint_create")
        self._method_joint_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer3D._method_joint_create_529393457 != nil)
        let _method_joint_clear_2722037293_name = StringName(from: "joint_clear")
        self._method_joint_clear_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_clear_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer3D._method_joint_clear_2722037293 != nil)
        let _method_joint_make_pin_4280171926_name = StringName(from: "joint_make_pin")
        self._method_joint_make_pin_4280171926 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_make_pin_4280171926_name._native_ptr(), 4280171926)
        assert(PhysicsServer3D._method_joint_make_pin_4280171926 != nil)
        let _method_pin_joint_set_param_810685294_name = StringName(from: "pin_joint_set_param")
        self._method_pin_joint_set_param_810685294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pin_joint_set_param_810685294_name._native_ptr(), 810685294)
        assert(PhysicsServer3D._method_pin_joint_set_param_810685294 != nil)
        let _method_pin_joint_get_param_2817972347_name = StringName(from: "pin_joint_get_param")
        self._method_pin_joint_get_param_2817972347 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pin_joint_get_param_2817972347_name._native_ptr(), 2817972347)
        assert(PhysicsServer3D._method_pin_joint_get_param_2817972347 != nil)
        let _method_pin_joint_set_local_a_3227306858_name = StringName(from: "pin_joint_set_local_a")
        self._method_pin_joint_set_local_a_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pin_joint_set_local_a_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_pin_joint_set_local_a_3227306858 != nil)
        let _method_pin_joint_get_local_a_531438156_name = StringName(from: "pin_joint_get_local_a")
        self._method_pin_joint_get_local_a_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pin_joint_get_local_a_531438156_name._native_ptr(), 531438156)
        assert(PhysicsServer3D._method_pin_joint_get_local_a_531438156 != nil)
        let _method_pin_joint_set_local_b_3227306858_name = StringName(from: "pin_joint_set_local_b")
        self._method_pin_joint_set_local_b_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pin_joint_set_local_b_3227306858_name._native_ptr(), 3227306858)
        assert(PhysicsServer3D._method_pin_joint_set_local_b_3227306858 != nil)
        let _method_pin_joint_get_local_b_531438156_name = StringName(from: "pin_joint_get_local_b")
        self._method_pin_joint_get_local_b_531438156 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_pin_joint_get_local_b_531438156_name._native_ptr(), 531438156)
        assert(PhysicsServer3D._method_pin_joint_get_local_b_531438156 != nil)
        let _method_joint_make_hinge_1684107643_name = StringName(from: "joint_make_hinge")
        self._method_joint_make_hinge_1684107643 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_make_hinge_1684107643_name._native_ptr(), 1684107643)
        assert(PhysicsServer3D._method_joint_make_hinge_1684107643 != nil)
        let _method_hinge_joint_set_param_3165502333_name = StringName(from: "hinge_joint_set_param")
        self._method_hinge_joint_set_param_3165502333 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hinge_joint_set_param_3165502333_name._native_ptr(), 3165502333)
        assert(PhysicsServer3D._method_hinge_joint_set_param_3165502333 != nil)
        let _method_hinge_joint_get_param_2129207581_name = StringName(from: "hinge_joint_get_param")
        self._method_hinge_joint_get_param_2129207581 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hinge_joint_get_param_2129207581_name._native_ptr(), 2129207581)
        assert(PhysicsServer3D._method_hinge_joint_get_param_2129207581 != nil)
        let _method_hinge_joint_set_flag_1601626188_name = StringName(from: "hinge_joint_set_flag")
        self._method_hinge_joint_set_flag_1601626188 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hinge_joint_set_flag_1601626188_name._native_ptr(), 1601626188)
        assert(PhysicsServer3D._method_hinge_joint_set_flag_1601626188 != nil)
        let _method_hinge_joint_get_flag_4165147865_name = StringName(from: "hinge_joint_get_flag")
        self._method_hinge_joint_get_flag_4165147865 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_hinge_joint_get_flag_4165147865_name._native_ptr(), 4165147865)
        assert(PhysicsServer3D._method_hinge_joint_get_flag_4165147865 != nil)
        let _method_joint_make_slider_1684107643_name = StringName(from: "joint_make_slider")
        self._method_joint_make_slider_1684107643 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_make_slider_1684107643_name._native_ptr(), 1684107643)
        assert(PhysicsServer3D._method_joint_make_slider_1684107643 != nil)
        let _method_slider_joint_set_param_2264833593_name = StringName(from: "slider_joint_set_param")
        self._method_slider_joint_set_param_2264833593 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_slider_joint_set_param_2264833593_name._native_ptr(), 2264833593)
        assert(PhysicsServer3D._method_slider_joint_set_param_2264833593 != nil)
        let _method_slider_joint_get_param_3498644957_name = StringName(from: "slider_joint_get_param")
        self._method_slider_joint_get_param_3498644957 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_slider_joint_get_param_3498644957_name._native_ptr(), 3498644957)
        assert(PhysicsServer3D._method_slider_joint_get_param_3498644957 != nil)
        let _method_joint_make_cone_twist_1684107643_name = StringName(from: "joint_make_cone_twist")
        self._method_joint_make_cone_twist_1684107643 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_make_cone_twist_1684107643_name._native_ptr(), 1684107643)
        assert(PhysicsServer3D._method_joint_make_cone_twist_1684107643 != nil)
        let _method_cone_twist_joint_set_param_808587618_name = StringName(from: "cone_twist_joint_set_param")
        self._method_cone_twist_joint_set_param_808587618 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cone_twist_joint_set_param_808587618_name._native_ptr(), 808587618)
        assert(PhysicsServer3D._method_cone_twist_joint_set_param_808587618 != nil)
        let _method_cone_twist_joint_get_param_1134789658_name = StringName(from: "cone_twist_joint_get_param")
        self._method_cone_twist_joint_get_param_1134789658 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_cone_twist_joint_get_param_1134789658_name._native_ptr(), 1134789658)
        assert(PhysicsServer3D._method_cone_twist_joint_get_param_1134789658 != nil)
        let _method_joint_get_type_4290791900_name = StringName(from: "joint_get_type")
        self._method_joint_get_type_4290791900 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_get_type_4290791900_name._native_ptr(), 4290791900)
        assert(PhysicsServer3D._method_joint_get_type_4290791900 != nil)
        let _method_joint_set_solver_priority_3411492887_name = StringName(from: "joint_set_solver_priority")
        self._method_joint_set_solver_priority_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_set_solver_priority_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer3D._method_joint_set_solver_priority_3411492887 != nil)
        let _method_joint_get_solver_priority_2198884583_name = StringName(from: "joint_get_solver_priority")
        self._method_joint_get_solver_priority_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_get_solver_priority_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer3D._method_joint_get_solver_priority_2198884583 != nil)
        let _method_joint_disable_collisions_between_bodies_1265174801_name = StringName(from: "joint_disable_collisions_between_bodies")
        self._method_joint_disable_collisions_between_bodies_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_disable_collisions_between_bodies_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer3D._method_joint_disable_collisions_between_bodies_1265174801 != nil)
        let _method_joint_is_disabled_collisions_between_bodies_4155700596_name = StringName(from: "joint_is_disabled_collisions_between_bodies")
        self._method_joint_is_disabled_collisions_between_bodies_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_is_disabled_collisions_between_bodies_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer3D._method_joint_is_disabled_collisions_between_bodies_4155700596 != nil)
        let _method_joint_make_generic_6dof_1684107643_name = StringName(from: "joint_make_generic_6dof")
        self._method_joint_make_generic_6dof_1684107643 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_joint_make_generic_6dof_1684107643_name._native_ptr(), 1684107643)
        assert(PhysicsServer3D._method_joint_make_generic_6dof_1684107643 != nil)
        let _method_generic_6dof_joint_set_param_2600081391_name = StringName(from: "generic_6dof_joint_set_param")
        self._method_generic_6dof_joint_set_param_2600081391 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generic_6dof_joint_set_param_2600081391_name._native_ptr(), 2600081391)
        assert(PhysicsServer3D._method_generic_6dof_joint_set_param_2600081391 != nil)
        let _method_generic_6dof_joint_get_param_467122058_name = StringName(from: "generic_6dof_joint_get_param")
        self._method_generic_6dof_joint_get_param_467122058 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generic_6dof_joint_get_param_467122058_name._native_ptr(), 467122058)
        assert(PhysicsServer3D._method_generic_6dof_joint_get_param_467122058 != nil)
        let _method_generic_6dof_joint_set_flag_3570926903_name = StringName(from: "generic_6dof_joint_set_flag")
        self._method_generic_6dof_joint_set_flag_3570926903 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generic_6dof_joint_set_flag_3570926903_name._native_ptr(), 3570926903)
        assert(PhysicsServer3D._method_generic_6dof_joint_set_flag_3570926903 != nil)
        let _method_generic_6dof_joint_get_flag_4158090196_name = StringName(from: "generic_6dof_joint_get_flag")
        self._method_generic_6dof_joint_get_flag_4158090196 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_generic_6dof_joint_get_flag_4158090196_name._native_ptr(), 4158090196)
        assert(PhysicsServer3D._method_generic_6dof_joint_get_flag_4158090196 != nil)
        let _method_free_rid_2722037293_name = StringName(from: "free_rid")
        self._method_free_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_free_rid_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer3D._method_free_rid_2722037293 != nil)
        let _method_set_active_2586408642_name = StringName(from: "set_active")
        self._method_set_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_active_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsServer3D._method_set_active_2586408642 != nil)
        let _method_get_process_info_1332958745_name = StringName(from: "get_process_info")
        self._method_get_process_info_1332958745 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_process_info_1332958745_name._native_ptr(), 1332958745)
        assert(PhysicsServer3D._method_get_process_info_1332958745 != nil)
    }

    public func world_boundary_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_world_boundary_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func separation_ray_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_separation_ray_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func sphere_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sphere_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func box_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_box_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func capsule_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_capsule_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func cylinder_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_cylinder_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func convex_polygon_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_convex_polygon_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func concave_polygon_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_concave_polygon_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func heightmap_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_heightmap_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func custom_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_custom_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func shape_set_data(shape: RID, data: Variant)  {
        let data_native = data._native_ptr()
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_set_data_3175752987,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func shape_get_type(shape: RID) -> PhysicsServer3D.ShapeType {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_get_type_3418923367,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer3D.ShapeType(from: __resPtr.pointee)
    }
    public func shape_get_data(shape: RID) -> Variant {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_get_data_4171304767,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func space_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_space_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func space_set_active(space: RID, active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native), .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_space_set_active_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func space_is_active(space: RID) -> UInt8 {
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
                    Self._method_space_is_active_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func space_set_param(space: RID, param: PhysicsServer3D.SpaceParameter, value: Float64)  {
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
                    Self._method_space_set_param_2406017470,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func space_get_param(space: RID, param: PhysicsServer3D.SpaceParameter) -> Float64 {
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
                    Self._method_space_get_param_1523206731,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func space_get_direct_state(space: RID) -> PhysicsDirectSpaceState3D {
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_space_get_direct_state_2048616813,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState3D(from: __resPtr.pointee)
    }
    public func area_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func area_set_space(area: RID, space: RID)  {
        let space_native = space._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_space_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func area_get_space(area: RID) -> RID {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_get_space_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func area_add_shape(area: RID, shape: RID, transform: Transform3D, disabled: UInt8)  {
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
                    Self._method_area_add_shape_4040559639,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_set_shape(area: RID, shape_idx: Int64, shape: RID)  {
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
                    Self._method_area_set_shape_2310537182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_set_shape_transform(area: RID, shape_idx: Int64, transform: Transform3D)  {
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
                    Self._method_area_set_shape_transform_675327471,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_set_shape_disabled(area: RID, shape_idx: Int64, disabled: UInt8)  {
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
                    Self._method_area_set_shape_disabled_2658558584,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func area_get_shape_count(area: RID) -> Int64 {
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
                    Self._method_area_get_shape_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func area_get_shape(area: RID, shape_idx: Int64) -> RID {
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
                    Self._method_area_get_shape_1066463050,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func area_get_shape_transform(area: RID, shape_idx: Int64) -> Transform3D {
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
                    Self._method_area_get_shape_transform_1050775521,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func area_remove_shape(area: RID, shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_remove_shape_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_clear_shapes(area: RID)  {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_clear_shapes_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func area_set_collision_layer(area: RID, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_collision_layer_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_get_collision_layer(area: RID) -> Int64 {
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
                    Self._method_area_get_collision_layer_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func area_set_collision_mask(area: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_collision_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_get_collision_mask(area: RID) -> Int64 {
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
                    Self._method_area_get_collision_mask_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func area_set_param(area: RID, param: PhysicsServer3D.AreaParameter, value: Variant)  {
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
                    Self._method_area_set_param_2980114638,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_set_transform(area: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_transform_3935195649,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func area_get_param(area: RID, param: PhysicsServer3D.AreaParameter) -> Variant {
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
                    Self._method_area_get_param_890056067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func area_get_transform(area: RID) -> Transform3D {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_get_transform_1128465797,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func area_attach_object_instance_id(area: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_attach_object_instance_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_get_object_instance_id(area: RID) -> Int64 {
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
                    Self._method_area_get_object_instance_id_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func area_set_monitor_callback(area: RID, callback: Callable)  {
        let callback_native = callback._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_monitor_callback_3379118538,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func area_set_area_monitor_callback(area: RID, callback: Callable)  {
        let callback_native = callback._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(callback_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_area_monitor_callback_3379118538,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func area_set_monitorable(area: RID, monitorable: UInt8)  {
        withUnsafePointer(to: monitorable) { monitorable_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(monitorable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_monitorable_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_set_ray_pickable(area: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_ray_pickable_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func body_set_space(body: RID, space: RID)  {
        let space_native = space._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(space_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_space_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_get_space(body: RID) -> RID {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_space_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func body_set_mode(body: RID, mode: PhysicsServer3D.BodyMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_mode_606803466,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_mode(body: RID) -> PhysicsServer3D.BodyMode {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_mode_2488819728,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer3D.BodyMode(from: __resPtr.pointee)
    }
    public func body_set_collision_layer(body: RID, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_collision_layer_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_collision_layer(body: RID) -> Int64 {
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
                    Self._method_body_get_collision_layer_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func body_set_collision_mask(body: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_collision_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_collision_mask(body: RID) -> Int64 {
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
                    Self._method_body_get_collision_mask_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func body_set_collision_priority(body: RID, priority: Float64)  {
        withUnsafePointer(to: priority) { priority_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_collision_priority_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_collision_priority(body: RID) -> Float64 {
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
                    Self._method_body_get_collision_priority_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func body_add_shape(body: RID, shape: RID, transform: Transform3D, disabled: UInt8)  {
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
                    Self._method_body_add_shape_4040559639,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_set_shape(body: RID, shape_idx: Int64, shape: RID)  {
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
                    Self._method_body_set_shape_2310537182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_set_shape_transform(body: RID, shape_idx: Int64, transform: Transform3D)  {
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
                    Self._method_body_set_shape_transform_675327471,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_set_shape_disabled(body: RID, shape_idx: Int64, disabled: UInt8)  {
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
                    Self._method_body_set_shape_disabled_2658558584,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func body_get_shape_count(body: RID) -> Int64 {
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
                    Self._method_body_get_shape_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func body_get_shape(body: RID, shape_idx: Int64) -> RID {
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
                    Self._method_body_get_shape_1066463050,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func body_get_shape_transform(body: RID, shape_idx: Int64) -> Transform3D {
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
                    Self._method_body_get_shape_transform_1050775521,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func body_remove_shape(body: RID, shape_idx: Int64)  {
        withUnsafePointer(to: shape_idx) { shape_idx_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(shape_idx_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_remove_shape_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_clear_shapes(body: RID)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_clear_shapes_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_attach_object_instance_id(body: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_attach_object_instance_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_object_instance_id(body: RID) -> Int64 {
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
                    Self._method_body_get_object_instance_id_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func body_set_enable_continuous_collision_detection(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_enable_continuous_collision_detection_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_is_continuous_collision_detection_enabled(body: RID) -> UInt8 {
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
                    Self._method_body_is_continuous_collision_detection_enabled_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func body_set_param(body: RID, param: PhysicsServer3D.BodyParameter, value: Variant)  {
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
                    Self._method_body_set_param_910941953,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_param(body: RID, param: PhysicsServer3D.BodyParameter) -> Variant {
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
                    Self._method_body_get_param_3385027841,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func body_reset_mass_properties(body: RID)  {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_reset_mass_properties_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_set_state(body: RID, state: PhysicsServer3D.BodyState, value: Variant)  {
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
                    Self._method_body_set_state_599977762,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_state(body: RID, state: PhysicsServer3D.BodyState) -> Variant {
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
                    Self._method_body_get_state_1850449534,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
        }
    }
    public func body_apply_central_impulse(body: RID, impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_central_impulse_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_impulse(body: RID, impulse: Vector3, position: Vector3)  {
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
                    Self._method_body_apply_impulse_110375048,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_torque_impulse(body: RID, impulse: Vector3)  {
        let impulse_native = impulse._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_torque_impulse_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_central_force(body: RID, force: Vector3)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_central_force_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_force(body: RID, force: Vector3, position: Vector3)  {
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
                    Self._method_body_apply_force_110375048,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_torque(body: RID, torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_torque_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_add_constant_central_force(body: RID, force: Vector3)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_add_constant_central_force_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_add_constant_force(body: RID, force: Vector3, position: Vector3)  {
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
                    Self._method_body_add_constant_force_110375048,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_add_constant_torque(body: RID, torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_add_constant_torque_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_set_constant_force(body: RID, force: Vector3)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_constant_force_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_get_constant_force(body: RID) -> Vector3 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_constant_force_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func body_set_constant_torque(body: RID, torque: Vector3)  {
        let torque_native = torque._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_constant_torque_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_get_constant_torque(body: RID) -> Vector3 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_constant_torque_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func body_set_axis_velocity(body: RID, axis_velocity: Vector3)  {
        let axis_velocity_native = axis_velocity._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(axis_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_axis_velocity_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_set_axis_lock(body: RID, axis: PhysicsServer3D.BodyAxis, lock: UInt8)  {
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
                    Self._method_body_set_axis_lock_2020836892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func body_is_axis_locked(body: RID, axis: PhysicsServer3D.BodyAxis) -> UInt8 {
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
                    Self._method_body_is_axis_locked_587853580,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func body_add_collision_exception(body: RID, excepted_body: RID)  {
        let excepted_body_native = excepted_body._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(excepted_body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_add_collision_exception_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_remove_collision_exception(body: RID, excepted_body: RID)  {
        let excepted_body_native = excepted_body._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(excepted_body_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_remove_collision_exception_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_set_max_contacts_reported(body: RID, amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_max_contacts_reported_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_max_contacts_reported(body: RID) -> Int64 {
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
                    Self._method_body_get_max_contacts_reported_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func body_set_omit_force_integration(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_omit_force_integration_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_is_omitting_force_integration(body: RID) -> UInt8 {
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
                    Self._method_body_is_omitting_force_integration_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func body_set_force_integration_callback(body: RID, callable: Callable, userdata: Variant)  {
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
                    Self._method_body_set_force_integration_callback_3059434249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_set_ray_pickable(body: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_ray_pickable_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_test_motion(body: RID, parameters: PhysicsTestMotionParameters3D, result: PhysicsTestMotionResult3D) -> UInt8 {
        let result_native = result._native_ptr()
        let parameters_native = parameters._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(parameters_native), .init(result_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_test_motion_1944921792,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func body_get_direct_state(body: RID) -> PhysicsDirectBodyState3D {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_direct_state_3029727957,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectBodyState3D(from: __resPtr.pointee)
    }
    public func soft_body_get_bounds(body: RID) -> AABB {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_soft_body_get_bounds_974181306,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func joint_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func joint_clear(joint: RID)  {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_clear_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func joint_make_pin(joint: RID, body_A: RID, local_A: Vector3, body_B: RID, local_B: Vector3)  {
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
                    Self._method_joint_make_pin_4280171926,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pin_joint_set_param(joint: RID, param: PhysicsServer3D.PinJointParam, value: Float64)  {
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
                    Self._method_pin_joint_set_param_810685294,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func pin_joint_get_param(joint: RID, param: PhysicsServer3D.PinJointParam) -> Float64 {
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
                    Self._method_pin_joint_get_param_2817972347,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func pin_joint_set_local_a(joint: RID, local_A: Vector3)  {
        let local_A_native = local_A._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(local_A_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pin_joint_set_local_a_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pin_joint_get_local_a(joint: RID) -> Vector3 {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pin_joint_get_local_a_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func pin_joint_set_local_b(joint: RID, local_B: Vector3)  {
        let local_B_native = local_B._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(local_B_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pin_joint_set_local_b_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pin_joint_get_local_b(joint: RID) -> Vector3 {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_pin_joint_get_local_b_531438156,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func joint_make_hinge(joint: RID, body_A: RID, hinge_A: Transform3D, body_B: RID, hinge_B: Transform3D)  {
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
                    Self._method_joint_make_hinge_1684107643,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func hinge_joint_set_param(joint: RID, param: PhysicsServer3D.HingeJointParam, value: Float64)  {
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
                    Self._method_hinge_joint_set_param_3165502333,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func hinge_joint_get_param(joint: RID, param: PhysicsServer3D.HingeJointParam) -> Float64 {
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
                    Self._method_hinge_joint_get_param_2129207581,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func hinge_joint_set_flag(joint: RID, flag: PhysicsServer3D.HingeJointFlag, enabled: UInt8)  {
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
                    Self._method_hinge_joint_set_flag_1601626188,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func hinge_joint_get_flag(joint: RID, flag: PhysicsServer3D.HingeJointFlag) -> UInt8 {
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
                    Self._method_hinge_joint_get_flag_4165147865,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func joint_make_slider(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)  {
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
                    Self._method_joint_make_slider_1684107643,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func slider_joint_set_param(joint: RID, param: PhysicsServer3D.SliderJointParam, value: Float64)  {
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
                    Self._method_slider_joint_set_param_2264833593,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func slider_joint_get_param(joint: RID, param: PhysicsServer3D.SliderJointParam) -> Float64 {
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
                    Self._method_slider_joint_get_param_3498644957,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func joint_make_cone_twist(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)  {
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
                    Self._method_joint_make_cone_twist_1684107643,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func cone_twist_joint_set_param(joint: RID, param: PhysicsServer3D.ConeTwistJointParam, value: Float64)  {
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
                    Self._method_cone_twist_joint_set_param_808587618,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func cone_twist_joint_get_param(joint: RID, param: PhysicsServer3D.ConeTwistJointParam) -> Float64 {
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
                    Self._method_cone_twist_joint_get_param_1134789658,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func joint_get_type(joint: RID) -> PhysicsServer3D.JointType {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_get_type_4290791900,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer3D.JointType(from: __resPtr.pointee)
    }
    public func joint_set_solver_priority(joint: RID, priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_set_solver_priority_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func joint_get_solver_priority(joint: RID) -> Int64 {
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
                    Self._method_joint_get_solver_priority_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func joint_disable_collisions_between_bodies(joint: RID, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_disable_collisions_between_bodies_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func joint_is_disabled_collisions_between_bodies(joint: RID) -> UInt8 {
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
                    Self._method_joint_is_disabled_collisions_between_bodies_4155700596,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func joint_make_generic_6dof(joint: RID, body_A: RID, local_ref_A: Transform3D, body_B: RID, local_ref_B: Transform3D)  {
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
                    Self._method_joint_make_generic_6dof_1684107643,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func generic_6dof_joint_set_param(joint: RID, axis: Vector3.Axis, param: PhysicsServer3D.G6DOFJointAxisParam, value: Float64)  {
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
                    Self._method_generic_6dof_joint_set_param_2600081391,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func generic_6dof_joint_get_param(joint: RID, axis: Vector3.Axis, param: PhysicsServer3D.G6DOFJointAxisParam) -> Float64 {
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
                    Self._method_generic_6dof_joint_get_param_467122058,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
        }
    }
    public func generic_6dof_joint_set_flag(joint: RID, axis: Vector3.Axis, flag: PhysicsServer3D.G6DOFJointAxisFlag, enable: UInt8)  {
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
                    Self._method_generic_6dof_joint_set_flag_3570926903,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func generic_6dof_joint_get_flag(joint: RID, axis: Vector3.Axis, flag: PhysicsServer3D.G6DOFJointAxisFlag) -> UInt8 {
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
                    Self._method_generic_6dof_joint_get_flag_4158090196,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
        }
    }
    public func free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_free_rid_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_process_info(process_info: PhysicsServer3D.ProcessInfo) -> Int64 {
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
                    Self._method_get_process_info_1332958745,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
}