import godot_native

fileprivate var __godot_name_PhysicsServer2D: StringName! = nil

/// Server interface for low-level 2D physics access.
/// 
/// PhysicsServer2D is the server responsible for all 2D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
open class PhysicsServer2D : Object {

    public enum SpaceParameter : Int32 {
        case SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0
        case SPACE_PARAM_CONTACT_MAX_SEPARATION = 1
        case SPACE_PARAM_CONTACT_MAX_ALLOWED_PENETRATION = 2
        case SPACE_PARAM_CONTACT_DEFAULT_BIAS = 3
        case SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_THRESHOLD = 4
        case SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_THRESHOLD = 5
        case SPACE_PARAM_BODY_TIME_TO_SLEEP = 6
        case SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 7
        case SPACE_PARAM_SOLVER_ITERATIONS = 8
    }
    public enum ShapeType : Int32 {
        case SHAPE_WORLD_BOUNDARY = 0
        case SHAPE_SEPARATION_RAY = 1
        case SHAPE_SEGMENT = 2
        case SHAPE_CIRCLE = 3
        case SHAPE_RECTANGLE = 4
        case SHAPE_CAPSULE = 5
        case SHAPE_CONVEX_POLYGON = 6
        case SHAPE_CONCAVE_POLYGON = 7
        case SHAPE_CUSTOM = 8
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
    public enum JointType : Int32 {
        case JOINT_TYPE_PIN = 0
        case JOINT_TYPE_GROOVE = 1
        case JOINT_TYPE_DAMPED_SPRING = 2
        case JOINT_TYPE_MAX = 3
    }
    public enum JointParam : Int32 {
        case JOINT_PARAM_BIAS = 0
        case JOINT_PARAM_MAX_BIAS = 1
        case JOINT_PARAM_MAX_FORCE = 2
    }
    public enum PinJointParam : Int32 {
        case PIN_JOINT_SOFTNESS = 0
    }
    public enum DampedSpringParam : Int32 {
        case DAMPED_SPRING_REST_LENGTH = 0
        case DAMPED_SPRING_STIFFNESS = 1
        case DAMPED_SPRING_DAMPING = 2
    }
    public enum CCDMode : Int32 {
        case CCD_MODE_DISABLED = 0
        case CCD_MODE_CAST_RAY = 1
        case CCD_MODE_CAST_SHAPE = 2
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

    public override class var __godot_name: StringName { __godot_name_PhysicsServer2D }

    static var _method_world_boundary_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_separation_ray_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_segment_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_circle_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_rectangle_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_capsule_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_convex_polygon_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_concave_polygon_shape_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_shape_set_data_3175752987: GDExtensionMethodBindPtr! = nil
    static var _method_shape_get_type_1240598777: GDExtensionMethodBindPtr! = nil
    static var _method_shape_get_data_4171304767: GDExtensionMethodBindPtr! = nil
    static var _method_space_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_space_set_active_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_space_is_active_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_space_set_param_949194586: GDExtensionMethodBindPtr! = nil
    static var _method_space_get_param_874111783: GDExtensionMethodBindPtr! = nil
    static var _method_space_get_direct_state_3160173886: GDExtensionMethodBindPtr! = nil
    static var _method_area_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_space_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_space_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_area_add_shape_754862190: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_shape_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_shape_transform_736082694: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_shape_disabled_2658558584: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_shape_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_shape_1066463050: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_shape_transform_1324854622: GDExtensionMethodBindPtr! = nil
    static var _method_area_remove_shape_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_clear_shapes_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_collision_layer_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_collision_layer_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_collision_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_collision_mask_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_param_1257146028: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_param_3047435120: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_transform_213527486: GDExtensionMethodBindPtr! = nil
    static var _method_area_attach_object_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_object_instance_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_attach_canvas_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_area_get_canvas_instance_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_monitor_callback_3379118538: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_area_monitor_callback_3379118538: GDExtensionMethodBindPtr! = nil
    static var _method_area_set_monitorable_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_body_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_space_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_space_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_mode_1658067650: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_mode_3261702585: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_shape_754862190: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_transform_736082694: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_shape_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_shape_1066463050: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_shape_transform_1324854622: GDExtensionMethodBindPtr! = nil
    static var _method_body_remove_shape_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_clear_shapes_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_disabled_2658558584: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_shape_as_one_way_collision_2556489974: GDExtensionMethodBindPtr! = nil
    static var _method_body_attach_object_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_object_instance_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_attach_canvas_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_canvas_instance_id_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_continuous_collision_detection_mode_1882257015: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_continuous_collision_detection_mode_2661282217: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_collision_layer_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_collision_layer_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_collision_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_collision_mask_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_collision_priority_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_collision_priority_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_param_2715630609: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_param_3208033526: GDExtensionMethodBindPtr! = nil
    static var _method_body_reset_mass_properties_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_state_1706355209: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_state_4036367961: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_central_impulse_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_torque_impulse_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_impulse_34330743: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_central_force_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_force_34330743: GDExtensionMethodBindPtr! = nil
    static var _method_body_apply_torque_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_constant_central_force_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_constant_force_34330743: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_constant_torque_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_constant_force_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_constant_force_2440833711: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_constant_torque_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_constant_torque_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_axis_velocity_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_body_add_collision_exception_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_body_remove_collision_exception_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_max_contacts_reported_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_max_contacts_reported_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_omit_force_integration_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_body_is_omitting_force_integration_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_body_set_force_integration_callback_3059434249: GDExtensionMethodBindPtr! = nil
    static var _method_body_test_motion_1699844009: GDExtensionMethodBindPtr! = nil
    static var _method_body_get_direct_state_1191931871: GDExtensionMethodBindPtr! = nil
    static var _method_joint_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_joint_clear_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_joint_set_param_3972556514: GDExtensionMethodBindPtr! = nil
    static var _method_joint_get_param_4016448949: GDExtensionMethodBindPtr! = nil
    static var _method_joint_disable_collisions_between_bodies_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_joint_is_disabled_collisions_between_bodies_4155700596: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_pin_2288600450: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_groove_3573265764: GDExtensionMethodBindPtr! = nil
    static var _method_joint_make_damped_spring_206603952: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_set_param_550574241: GDExtensionMethodBindPtr! = nil
    static var _method_pin_joint_get_param_348281383: GDExtensionMethodBindPtr! = nil
    static var _method_damped_spring_joint_set_param_220564071: GDExtensionMethodBindPtr! = nil
    static var _method_damped_spring_joint_get_param_2075871277: GDExtensionMethodBindPtr! = nil
    static var _method_joint_get_type_4262502231: GDExtensionMethodBindPtr! = nil
    static var _method_free_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_set_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_info_576496006: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_PhysicsServer2D = StringName(from: "PhysicsServer2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_world_boundary_shape_create_529393457_name = StringName(from: "world_boundary_shape_create")
        self._method_world_boundary_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_world_boundary_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_world_boundary_shape_create_529393457 != nil)
        let _method_separation_ray_shape_create_529393457_name = StringName(from: "separation_ray_shape_create")
        self._method_separation_ray_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_separation_ray_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_separation_ray_shape_create_529393457 != nil)
        let _method_segment_shape_create_529393457_name = StringName(from: "segment_shape_create")
        self._method_segment_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_segment_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_segment_shape_create_529393457 != nil)
        let _method_circle_shape_create_529393457_name = StringName(from: "circle_shape_create")
        self._method_circle_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_circle_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_circle_shape_create_529393457 != nil)
        let _method_rectangle_shape_create_529393457_name = StringName(from: "rectangle_shape_create")
        self._method_rectangle_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_rectangle_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_rectangle_shape_create_529393457 != nil)
        let _method_capsule_shape_create_529393457_name = StringName(from: "capsule_shape_create")
        self._method_capsule_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_capsule_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_capsule_shape_create_529393457 != nil)
        let _method_convex_polygon_shape_create_529393457_name = StringName(from: "convex_polygon_shape_create")
        self._method_convex_polygon_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_convex_polygon_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_convex_polygon_shape_create_529393457 != nil)
        let _method_concave_polygon_shape_create_529393457_name = StringName(from: "concave_polygon_shape_create")
        self._method_concave_polygon_shape_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_concave_polygon_shape_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_concave_polygon_shape_create_529393457 != nil)
        let _method_shape_set_data_3175752987_name = StringName(from: "shape_set_data")
        self._method_shape_set_data_3175752987 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_shape_set_data_3175752987_name._native_ptr(), 3175752987)
        assert(PhysicsServer2D._method_shape_set_data_3175752987 != nil)
        let _method_shape_get_type_1240598777_name = StringName(from: "shape_get_type")
        self._method_shape_get_type_1240598777 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_shape_get_type_1240598777_name._native_ptr(), 1240598777)
        assert(PhysicsServer2D._method_shape_get_type_1240598777 != nil)
        let _method_shape_get_data_4171304767_name = StringName(from: "shape_get_data")
        self._method_shape_get_data_4171304767 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_shape_get_data_4171304767_name._native_ptr(), 4171304767)
        assert(PhysicsServer2D._method_shape_get_data_4171304767 != nil)
        let _method_space_create_529393457_name = StringName(from: "space_create")
        self._method_space_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_space_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_space_create_529393457 != nil)
        let _method_space_set_active_1265174801_name = StringName(from: "space_set_active")
        self._method_space_set_active_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_space_set_active_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer2D._method_space_set_active_1265174801 != nil)
        let _method_space_is_active_4155700596_name = StringName(from: "space_is_active")
        self._method_space_is_active_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_space_is_active_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer2D._method_space_is_active_4155700596 != nil)
        let _method_space_set_param_949194586_name = StringName(from: "space_set_param")
        self._method_space_set_param_949194586 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_space_set_param_949194586_name._native_ptr(), 949194586)
        assert(PhysicsServer2D._method_space_set_param_949194586 != nil)
        let _method_space_get_param_874111783_name = StringName(from: "space_get_param")
        self._method_space_get_param_874111783 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_space_get_param_874111783_name._native_ptr(), 874111783)
        assert(PhysicsServer2D._method_space_get_param_874111783 != nil)
        let _method_space_get_direct_state_3160173886_name = StringName(from: "space_get_direct_state")
        self._method_space_get_direct_state_3160173886 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_space_get_direct_state_3160173886_name._native_ptr(), 3160173886)
        assert(PhysicsServer2D._method_space_get_direct_state_3160173886 != nil)
        let _method_area_create_529393457_name = StringName(from: "area_create")
        self._method_area_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_area_create_529393457 != nil)
        let _method_area_set_space_395945892_name = StringName(from: "area_set_space")
        self._method_area_set_space_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_space_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer2D._method_area_set_space_395945892 != nil)
        let _method_area_get_space_3814569979_name = StringName(from: "area_get_space")
        self._method_area_get_space_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_space_3814569979_name._native_ptr(), 3814569979)
        assert(PhysicsServer2D._method_area_get_space_3814569979 != nil)
        let _method_area_add_shape_754862190_name = StringName(from: "area_add_shape")
        self._method_area_add_shape_754862190 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_add_shape_754862190_name._native_ptr(), 754862190)
        assert(PhysicsServer2D._method_area_add_shape_754862190 != nil)
        let _method_area_set_shape_2310537182_name = StringName(from: "area_set_shape")
        self._method_area_set_shape_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_shape_2310537182_name._native_ptr(), 2310537182)
        assert(PhysicsServer2D._method_area_set_shape_2310537182 != nil)
        let _method_area_set_shape_transform_736082694_name = StringName(from: "area_set_shape_transform")
        self._method_area_set_shape_transform_736082694 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_shape_transform_736082694_name._native_ptr(), 736082694)
        assert(PhysicsServer2D._method_area_set_shape_transform_736082694 != nil)
        let _method_area_set_shape_disabled_2658558584_name = StringName(from: "area_set_shape_disabled")
        self._method_area_set_shape_disabled_2658558584 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_shape_disabled_2658558584_name._native_ptr(), 2658558584)
        assert(PhysicsServer2D._method_area_set_shape_disabled_2658558584 != nil)
        let _method_area_get_shape_count_2198884583_name = StringName(from: "area_get_shape_count")
        self._method_area_get_shape_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_shape_count_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_area_get_shape_count_2198884583 != nil)
        let _method_area_get_shape_1066463050_name = StringName(from: "area_get_shape")
        self._method_area_get_shape_1066463050 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_shape_1066463050_name._native_ptr(), 1066463050)
        assert(PhysicsServer2D._method_area_get_shape_1066463050 != nil)
        let _method_area_get_shape_transform_1324854622_name = StringName(from: "area_get_shape_transform")
        self._method_area_get_shape_transform_1324854622 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_shape_transform_1324854622_name._native_ptr(), 1324854622)
        assert(PhysicsServer2D._method_area_get_shape_transform_1324854622 != nil)
        let _method_area_remove_shape_3411492887_name = StringName(from: "area_remove_shape")
        self._method_area_remove_shape_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_remove_shape_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_area_remove_shape_3411492887 != nil)
        let _method_area_clear_shapes_2722037293_name = StringName(from: "area_clear_shapes")
        self._method_area_clear_shapes_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_clear_shapes_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer2D._method_area_clear_shapes_2722037293 != nil)
        let _method_area_set_collision_layer_3411492887_name = StringName(from: "area_set_collision_layer")
        self._method_area_set_collision_layer_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_collision_layer_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_area_set_collision_layer_3411492887 != nil)
        let _method_area_get_collision_layer_2198884583_name = StringName(from: "area_get_collision_layer")
        self._method_area_get_collision_layer_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_collision_layer_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_area_get_collision_layer_2198884583 != nil)
        let _method_area_set_collision_mask_3411492887_name = StringName(from: "area_set_collision_mask")
        self._method_area_set_collision_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_collision_mask_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_area_set_collision_mask_3411492887 != nil)
        let _method_area_get_collision_mask_2198884583_name = StringName(from: "area_get_collision_mask")
        self._method_area_get_collision_mask_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_collision_mask_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_area_get_collision_mask_2198884583 != nil)
        let _method_area_set_param_1257146028_name = StringName(from: "area_set_param")
        self._method_area_set_param_1257146028 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_param_1257146028_name._native_ptr(), 1257146028)
        assert(PhysicsServer2D._method_area_set_param_1257146028 != nil)
        let _method_area_set_transform_1246044741_name = StringName(from: "area_set_transform")
        self._method_area_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(PhysicsServer2D._method_area_set_transform_1246044741 != nil)
        let _method_area_get_param_3047435120_name = StringName(from: "area_get_param")
        self._method_area_get_param_3047435120 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_param_3047435120_name._native_ptr(), 3047435120)
        assert(PhysicsServer2D._method_area_get_param_3047435120 != nil)
        let _method_area_get_transform_213527486_name = StringName(from: "area_get_transform")
        self._method_area_get_transform_213527486 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_transform_213527486_name._native_ptr(), 213527486)
        assert(PhysicsServer2D._method_area_get_transform_213527486 != nil)
        let _method_area_attach_object_instance_id_3411492887_name = StringName(from: "area_attach_object_instance_id")
        self._method_area_attach_object_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_attach_object_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_area_attach_object_instance_id_3411492887 != nil)
        let _method_area_get_object_instance_id_2198884583_name = StringName(from: "area_get_object_instance_id")
        self._method_area_get_object_instance_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_object_instance_id_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_area_get_object_instance_id_2198884583 != nil)
        let _method_area_attach_canvas_instance_id_3411492887_name = StringName(from: "area_attach_canvas_instance_id")
        self._method_area_attach_canvas_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_attach_canvas_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_area_attach_canvas_instance_id_3411492887 != nil)
        let _method_area_get_canvas_instance_id_2198884583_name = StringName(from: "area_get_canvas_instance_id")
        self._method_area_get_canvas_instance_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_get_canvas_instance_id_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_area_get_canvas_instance_id_2198884583 != nil)
        let _method_area_set_monitor_callback_3379118538_name = StringName(from: "area_set_monitor_callback")
        self._method_area_set_monitor_callback_3379118538 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_monitor_callback_3379118538_name._native_ptr(), 3379118538)
        assert(PhysicsServer2D._method_area_set_monitor_callback_3379118538 != nil)
        let _method_area_set_area_monitor_callback_3379118538_name = StringName(from: "area_set_area_monitor_callback")
        self._method_area_set_area_monitor_callback_3379118538 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_area_monitor_callback_3379118538_name._native_ptr(), 3379118538)
        assert(PhysicsServer2D._method_area_set_area_monitor_callback_3379118538 != nil)
        let _method_area_set_monitorable_1265174801_name = StringName(from: "area_set_monitorable")
        self._method_area_set_monitorable_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_area_set_monitorable_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer2D._method_area_set_monitorable_1265174801 != nil)
        let _method_body_create_529393457_name = StringName(from: "body_create")
        self._method_body_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_body_create_529393457 != nil)
        let _method_body_set_space_395945892_name = StringName(from: "body_set_space")
        self._method_body_set_space_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_space_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer2D._method_body_set_space_395945892 != nil)
        let _method_body_get_space_3814569979_name = StringName(from: "body_get_space")
        self._method_body_get_space_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_space_3814569979_name._native_ptr(), 3814569979)
        assert(PhysicsServer2D._method_body_get_space_3814569979 != nil)
        let _method_body_set_mode_1658067650_name = StringName(from: "body_set_mode")
        self._method_body_set_mode_1658067650 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_mode_1658067650_name._native_ptr(), 1658067650)
        assert(PhysicsServer2D._method_body_set_mode_1658067650 != nil)
        let _method_body_get_mode_3261702585_name = StringName(from: "body_get_mode")
        self._method_body_get_mode_3261702585 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_mode_3261702585_name._native_ptr(), 3261702585)
        assert(PhysicsServer2D._method_body_get_mode_3261702585 != nil)
        let _method_body_add_shape_754862190_name = StringName(from: "body_add_shape")
        self._method_body_add_shape_754862190 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_add_shape_754862190_name._native_ptr(), 754862190)
        assert(PhysicsServer2D._method_body_add_shape_754862190 != nil)
        let _method_body_set_shape_2310537182_name = StringName(from: "body_set_shape")
        self._method_body_set_shape_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_shape_2310537182_name._native_ptr(), 2310537182)
        assert(PhysicsServer2D._method_body_set_shape_2310537182 != nil)
        let _method_body_set_shape_transform_736082694_name = StringName(from: "body_set_shape_transform")
        self._method_body_set_shape_transform_736082694 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_shape_transform_736082694_name._native_ptr(), 736082694)
        assert(PhysicsServer2D._method_body_set_shape_transform_736082694 != nil)
        let _method_body_get_shape_count_2198884583_name = StringName(from: "body_get_shape_count")
        self._method_body_get_shape_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_shape_count_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_body_get_shape_count_2198884583 != nil)
        let _method_body_get_shape_1066463050_name = StringName(from: "body_get_shape")
        self._method_body_get_shape_1066463050 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_shape_1066463050_name._native_ptr(), 1066463050)
        assert(PhysicsServer2D._method_body_get_shape_1066463050 != nil)
        let _method_body_get_shape_transform_1324854622_name = StringName(from: "body_get_shape_transform")
        self._method_body_get_shape_transform_1324854622 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_shape_transform_1324854622_name._native_ptr(), 1324854622)
        assert(PhysicsServer2D._method_body_get_shape_transform_1324854622 != nil)
        let _method_body_remove_shape_3411492887_name = StringName(from: "body_remove_shape")
        self._method_body_remove_shape_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_remove_shape_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_body_remove_shape_3411492887 != nil)
        let _method_body_clear_shapes_2722037293_name = StringName(from: "body_clear_shapes")
        self._method_body_clear_shapes_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_clear_shapes_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer2D._method_body_clear_shapes_2722037293 != nil)
        let _method_body_set_shape_disabled_2658558584_name = StringName(from: "body_set_shape_disabled")
        self._method_body_set_shape_disabled_2658558584 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_shape_disabled_2658558584_name._native_ptr(), 2658558584)
        assert(PhysicsServer2D._method_body_set_shape_disabled_2658558584 != nil)
        let _method_body_set_shape_as_one_way_collision_2556489974_name = StringName(from: "body_set_shape_as_one_way_collision")
        self._method_body_set_shape_as_one_way_collision_2556489974 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_shape_as_one_way_collision_2556489974_name._native_ptr(), 2556489974)
        assert(PhysicsServer2D._method_body_set_shape_as_one_way_collision_2556489974 != nil)
        let _method_body_attach_object_instance_id_3411492887_name = StringName(from: "body_attach_object_instance_id")
        self._method_body_attach_object_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_attach_object_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_body_attach_object_instance_id_3411492887 != nil)
        let _method_body_get_object_instance_id_2198884583_name = StringName(from: "body_get_object_instance_id")
        self._method_body_get_object_instance_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_object_instance_id_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_body_get_object_instance_id_2198884583 != nil)
        let _method_body_attach_canvas_instance_id_3411492887_name = StringName(from: "body_attach_canvas_instance_id")
        self._method_body_attach_canvas_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_attach_canvas_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_body_attach_canvas_instance_id_3411492887 != nil)
        let _method_body_get_canvas_instance_id_2198884583_name = StringName(from: "body_get_canvas_instance_id")
        self._method_body_get_canvas_instance_id_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_canvas_instance_id_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_body_get_canvas_instance_id_2198884583 != nil)
        let _method_body_set_continuous_collision_detection_mode_1882257015_name = StringName(from: "body_set_continuous_collision_detection_mode")
        self._method_body_set_continuous_collision_detection_mode_1882257015 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_continuous_collision_detection_mode_1882257015_name._native_ptr(), 1882257015)
        assert(PhysicsServer2D._method_body_set_continuous_collision_detection_mode_1882257015 != nil)
        let _method_body_get_continuous_collision_detection_mode_2661282217_name = StringName(from: "body_get_continuous_collision_detection_mode")
        self._method_body_get_continuous_collision_detection_mode_2661282217 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_continuous_collision_detection_mode_2661282217_name._native_ptr(), 2661282217)
        assert(PhysicsServer2D._method_body_get_continuous_collision_detection_mode_2661282217 != nil)
        let _method_body_set_collision_layer_3411492887_name = StringName(from: "body_set_collision_layer")
        self._method_body_set_collision_layer_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_collision_layer_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_body_set_collision_layer_3411492887 != nil)
        let _method_body_get_collision_layer_2198884583_name = StringName(from: "body_get_collision_layer")
        self._method_body_get_collision_layer_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_collision_layer_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_body_get_collision_layer_2198884583 != nil)
        let _method_body_set_collision_mask_3411492887_name = StringName(from: "body_set_collision_mask")
        self._method_body_set_collision_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_collision_mask_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_body_set_collision_mask_3411492887 != nil)
        let _method_body_get_collision_mask_2198884583_name = StringName(from: "body_get_collision_mask")
        self._method_body_get_collision_mask_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_collision_mask_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_body_get_collision_mask_2198884583 != nil)
        let _method_body_set_collision_priority_1794382983_name = StringName(from: "body_set_collision_priority")
        self._method_body_set_collision_priority_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_collision_priority_1794382983_name._native_ptr(), 1794382983)
        assert(PhysicsServer2D._method_body_set_collision_priority_1794382983 != nil)
        let _method_body_get_collision_priority_866169185_name = StringName(from: "body_get_collision_priority")
        self._method_body_get_collision_priority_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_collision_priority_866169185_name._native_ptr(), 866169185)
        assert(PhysicsServer2D._method_body_get_collision_priority_866169185 != nil)
        let _method_body_set_param_2715630609_name = StringName(from: "body_set_param")
        self._method_body_set_param_2715630609 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_param_2715630609_name._native_ptr(), 2715630609)
        assert(PhysicsServer2D._method_body_set_param_2715630609 != nil)
        let _method_body_get_param_3208033526_name = StringName(from: "body_get_param")
        self._method_body_get_param_3208033526 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_param_3208033526_name._native_ptr(), 3208033526)
        assert(PhysicsServer2D._method_body_get_param_3208033526 != nil)
        let _method_body_reset_mass_properties_2722037293_name = StringName(from: "body_reset_mass_properties")
        self._method_body_reset_mass_properties_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_reset_mass_properties_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer2D._method_body_reset_mass_properties_2722037293 != nil)
        let _method_body_set_state_1706355209_name = StringName(from: "body_set_state")
        self._method_body_set_state_1706355209 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_state_1706355209_name._native_ptr(), 1706355209)
        assert(PhysicsServer2D._method_body_set_state_1706355209 != nil)
        let _method_body_get_state_4036367961_name = StringName(from: "body_get_state")
        self._method_body_get_state_4036367961 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_state_4036367961_name._native_ptr(), 4036367961)
        assert(PhysicsServer2D._method_body_get_state_4036367961 != nil)
        let _method_body_apply_central_impulse_3201125042_name = StringName(from: "body_apply_central_impulse")
        self._method_body_apply_central_impulse_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_apply_central_impulse_3201125042_name._native_ptr(), 3201125042)
        assert(PhysicsServer2D._method_body_apply_central_impulse_3201125042 != nil)
        let _method_body_apply_torque_impulse_1794382983_name = StringName(from: "body_apply_torque_impulse")
        self._method_body_apply_torque_impulse_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_apply_torque_impulse_1794382983_name._native_ptr(), 1794382983)
        assert(PhysicsServer2D._method_body_apply_torque_impulse_1794382983 != nil)
        let _method_body_apply_impulse_34330743_name = StringName(from: "body_apply_impulse")
        self._method_body_apply_impulse_34330743 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_apply_impulse_34330743_name._native_ptr(), 34330743)
        assert(PhysicsServer2D._method_body_apply_impulse_34330743 != nil)
        let _method_body_apply_central_force_3201125042_name = StringName(from: "body_apply_central_force")
        self._method_body_apply_central_force_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_apply_central_force_3201125042_name._native_ptr(), 3201125042)
        assert(PhysicsServer2D._method_body_apply_central_force_3201125042 != nil)
        let _method_body_apply_force_34330743_name = StringName(from: "body_apply_force")
        self._method_body_apply_force_34330743 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_apply_force_34330743_name._native_ptr(), 34330743)
        assert(PhysicsServer2D._method_body_apply_force_34330743 != nil)
        let _method_body_apply_torque_1794382983_name = StringName(from: "body_apply_torque")
        self._method_body_apply_torque_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_apply_torque_1794382983_name._native_ptr(), 1794382983)
        assert(PhysicsServer2D._method_body_apply_torque_1794382983 != nil)
        let _method_body_add_constant_central_force_3201125042_name = StringName(from: "body_add_constant_central_force")
        self._method_body_add_constant_central_force_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_add_constant_central_force_3201125042_name._native_ptr(), 3201125042)
        assert(PhysicsServer2D._method_body_add_constant_central_force_3201125042 != nil)
        let _method_body_add_constant_force_34330743_name = StringName(from: "body_add_constant_force")
        self._method_body_add_constant_force_34330743 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_add_constant_force_34330743_name._native_ptr(), 34330743)
        assert(PhysicsServer2D._method_body_add_constant_force_34330743 != nil)
        let _method_body_add_constant_torque_1794382983_name = StringName(from: "body_add_constant_torque")
        self._method_body_add_constant_torque_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_add_constant_torque_1794382983_name._native_ptr(), 1794382983)
        assert(PhysicsServer2D._method_body_add_constant_torque_1794382983 != nil)
        let _method_body_set_constant_force_3201125042_name = StringName(from: "body_set_constant_force")
        self._method_body_set_constant_force_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_constant_force_3201125042_name._native_ptr(), 3201125042)
        assert(PhysicsServer2D._method_body_set_constant_force_3201125042 != nil)
        let _method_body_get_constant_force_2440833711_name = StringName(from: "body_get_constant_force")
        self._method_body_get_constant_force_2440833711 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_constant_force_2440833711_name._native_ptr(), 2440833711)
        assert(PhysicsServer2D._method_body_get_constant_force_2440833711 != nil)
        let _method_body_set_constant_torque_1794382983_name = StringName(from: "body_set_constant_torque")
        self._method_body_set_constant_torque_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_constant_torque_1794382983_name._native_ptr(), 1794382983)
        assert(PhysicsServer2D._method_body_set_constant_torque_1794382983 != nil)
        let _method_body_get_constant_torque_866169185_name = StringName(from: "body_get_constant_torque")
        self._method_body_get_constant_torque_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_constant_torque_866169185_name._native_ptr(), 866169185)
        assert(PhysicsServer2D._method_body_get_constant_torque_866169185 != nil)
        let _method_body_set_axis_velocity_3201125042_name = StringName(from: "body_set_axis_velocity")
        self._method_body_set_axis_velocity_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_axis_velocity_3201125042_name._native_ptr(), 3201125042)
        assert(PhysicsServer2D._method_body_set_axis_velocity_3201125042 != nil)
        let _method_body_add_collision_exception_395945892_name = StringName(from: "body_add_collision_exception")
        self._method_body_add_collision_exception_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_add_collision_exception_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer2D._method_body_add_collision_exception_395945892 != nil)
        let _method_body_remove_collision_exception_395945892_name = StringName(from: "body_remove_collision_exception")
        self._method_body_remove_collision_exception_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_remove_collision_exception_395945892_name._native_ptr(), 395945892)
        assert(PhysicsServer2D._method_body_remove_collision_exception_395945892 != nil)
        let _method_body_set_max_contacts_reported_3411492887_name = StringName(from: "body_set_max_contacts_reported")
        self._method_body_set_max_contacts_reported_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_max_contacts_reported_3411492887_name._native_ptr(), 3411492887)
        assert(PhysicsServer2D._method_body_set_max_contacts_reported_3411492887 != nil)
        let _method_body_get_max_contacts_reported_2198884583_name = StringName(from: "body_get_max_contacts_reported")
        self._method_body_get_max_contacts_reported_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_max_contacts_reported_2198884583_name._native_ptr(), 2198884583)
        assert(PhysicsServer2D._method_body_get_max_contacts_reported_2198884583 != nil)
        let _method_body_set_omit_force_integration_1265174801_name = StringName(from: "body_set_omit_force_integration")
        self._method_body_set_omit_force_integration_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_omit_force_integration_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer2D._method_body_set_omit_force_integration_1265174801 != nil)
        let _method_body_is_omitting_force_integration_4155700596_name = StringName(from: "body_is_omitting_force_integration")
        self._method_body_is_omitting_force_integration_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_is_omitting_force_integration_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer2D._method_body_is_omitting_force_integration_4155700596 != nil)
        let _method_body_set_force_integration_callback_3059434249_name = StringName(from: "body_set_force_integration_callback")
        self._method_body_set_force_integration_callback_3059434249 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_set_force_integration_callback_3059434249_name._native_ptr(), 3059434249)
        assert(PhysicsServer2D._method_body_set_force_integration_callback_3059434249 != nil)
        let _method_body_test_motion_1699844009_name = StringName(from: "body_test_motion")
        self._method_body_test_motion_1699844009 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_test_motion_1699844009_name._native_ptr(), 1699844009)
        assert(PhysicsServer2D._method_body_test_motion_1699844009 != nil)
        let _method_body_get_direct_state_1191931871_name = StringName(from: "body_get_direct_state")
        self._method_body_get_direct_state_1191931871 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_body_get_direct_state_1191931871_name._native_ptr(), 1191931871)
        assert(PhysicsServer2D._method_body_get_direct_state_1191931871 != nil)
        let _method_joint_create_529393457_name = StringName(from: "joint_create")
        self._method_joint_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_create_529393457_name._native_ptr(), 529393457)
        assert(PhysicsServer2D._method_joint_create_529393457 != nil)
        let _method_joint_clear_2722037293_name = StringName(from: "joint_clear")
        self._method_joint_clear_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_clear_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer2D._method_joint_clear_2722037293 != nil)
        let _method_joint_set_param_3972556514_name = StringName(from: "joint_set_param")
        self._method_joint_set_param_3972556514 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_set_param_3972556514_name._native_ptr(), 3972556514)
        assert(PhysicsServer2D._method_joint_set_param_3972556514 != nil)
        let _method_joint_get_param_4016448949_name = StringName(from: "joint_get_param")
        self._method_joint_get_param_4016448949 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_get_param_4016448949_name._native_ptr(), 4016448949)
        assert(PhysicsServer2D._method_joint_get_param_4016448949 != nil)
        let _method_joint_disable_collisions_between_bodies_1265174801_name = StringName(from: "joint_disable_collisions_between_bodies")
        self._method_joint_disable_collisions_between_bodies_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_disable_collisions_between_bodies_1265174801_name._native_ptr(), 1265174801)
        assert(PhysicsServer2D._method_joint_disable_collisions_between_bodies_1265174801 != nil)
        let _method_joint_is_disabled_collisions_between_bodies_4155700596_name = StringName(from: "joint_is_disabled_collisions_between_bodies")
        self._method_joint_is_disabled_collisions_between_bodies_4155700596 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_is_disabled_collisions_between_bodies_4155700596_name._native_ptr(), 4155700596)
        assert(PhysicsServer2D._method_joint_is_disabled_collisions_between_bodies_4155700596 != nil)
        let _method_joint_make_pin_2288600450_name = StringName(from: "joint_make_pin")
        self._method_joint_make_pin_2288600450 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_make_pin_2288600450_name._native_ptr(), 2288600450)
        assert(PhysicsServer2D._method_joint_make_pin_2288600450 != nil)
        let _method_joint_make_groove_3573265764_name = StringName(from: "joint_make_groove")
        self._method_joint_make_groove_3573265764 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_make_groove_3573265764_name._native_ptr(), 3573265764)
        assert(PhysicsServer2D._method_joint_make_groove_3573265764 != nil)
        let _method_joint_make_damped_spring_206603952_name = StringName(from: "joint_make_damped_spring")
        self._method_joint_make_damped_spring_206603952 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_make_damped_spring_206603952_name._native_ptr(), 206603952)
        assert(PhysicsServer2D._method_joint_make_damped_spring_206603952 != nil)
        let _method_pin_joint_set_param_550574241_name = StringName(from: "pin_joint_set_param")
        self._method_pin_joint_set_param_550574241 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_pin_joint_set_param_550574241_name._native_ptr(), 550574241)
        assert(PhysicsServer2D._method_pin_joint_set_param_550574241 != nil)
        let _method_pin_joint_get_param_348281383_name = StringName(from: "pin_joint_get_param")
        self._method_pin_joint_get_param_348281383 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_pin_joint_get_param_348281383_name._native_ptr(), 348281383)
        assert(PhysicsServer2D._method_pin_joint_get_param_348281383 != nil)
        let _method_damped_spring_joint_set_param_220564071_name = StringName(from: "damped_spring_joint_set_param")
        self._method_damped_spring_joint_set_param_220564071 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_damped_spring_joint_set_param_220564071_name._native_ptr(), 220564071)
        assert(PhysicsServer2D._method_damped_spring_joint_set_param_220564071 != nil)
        let _method_damped_spring_joint_get_param_2075871277_name = StringName(from: "damped_spring_joint_get_param")
        self._method_damped_spring_joint_get_param_2075871277 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_damped_spring_joint_get_param_2075871277_name._native_ptr(), 2075871277)
        assert(PhysicsServer2D._method_damped_spring_joint_get_param_2075871277 != nil)
        let _method_joint_get_type_4262502231_name = StringName(from: "joint_get_type")
        self._method_joint_get_type_4262502231 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_joint_get_type_4262502231_name._native_ptr(), 4262502231)
        assert(PhysicsServer2D._method_joint_get_type_4262502231 != nil)
        let _method_free_rid_2722037293_name = StringName(from: "free_rid")
        self._method_free_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_free_rid_2722037293_name._native_ptr(), 2722037293)
        assert(PhysicsServer2D._method_free_rid_2722037293 != nil)
        let _method_set_active_2586408642_name = StringName(from: "set_active")
        self._method_set_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_set_active_2586408642_name._native_ptr(), 2586408642)
        assert(PhysicsServer2D._method_set_active_2586408642 != nil)
        let _method_get_process_info_576496006_name = StringName(from: "get_process_info")
        self._method_get_process_info_576496006 = self.interface.pointee.classdb_get_method_bind(__godot_name_PhysicsServer2D._native_ptr(), _method_get_process_info_576496006_name._native_ptr(), 576496006)
        assert(PhysicsServer2D._method_get_process_info_576496006 != nil)
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
            return RID(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
    }
    public func segment_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_segment_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func circle_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_circle_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func rectangle_shape_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_rectangle_shape_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
    public func shape_get_type(shape: RID) -> PhysicsServer2D.ShapeType {
        let shape_native = shape._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shape_get_type_1240598777,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer2D.ShapeType(godot: __resPtr.pointee)
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
            return Variant(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func space_set_param(space: RID, param: PhysicsServer2D.SpaceParameter, value: Float64)  {
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
                    Self._method_space_set_param_949194586,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func space_get_param(space: RID, param: PhysicsServer2D.SpaceParameter) -> Float64 {
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
                    Self._method_space_get_param_874111783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func space_get_direct_state(space: RID) -> PhysicsDirectSpaceState2D {
        let space_native = space._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(space_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_space_get_direct_state_3160173886,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectSpaceState2D(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
    }
    public func area_add_shape(area: RID, shape: RID, transform: Transform2D, disabled: UInt8)  {
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
                    Self._method_area_add_shape_754862190,
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
    public func area_set_shape_transform(area: RID, shape_idx: Int64, transform: Transform2D)  {
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
                    Self._method_area_set_shape_transform_736082694,
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
            return Int64(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
        }
    }
    public func area_get_shape_transform(area: RID, shape_idx: Int64) -> Transform2D {
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
                    Self._method_area_get_shape_transform_1324854622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
    }
    public func area_set_param(area: RID, param: PhysicsServer2D.AreaParameter, value: Variant)  {
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
                    Self._method_area_set_param_1257146028,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_set_transform(area: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func area_get_param(area: RID, param: PhysicsServer2D.AreaParameter) -> Variant {
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
                    Self._method_area_get_param_3047435120,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func area_get_transform(area: RID) -> Transform2D {
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_get_transform_213527486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
    }
    public func area_attach_canvas_instance_id(area: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let area_native = area._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(area_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_area_attach_canvas_instance_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func area_get_canvas_instance_id(area: RID) -> Int64 {
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
                    Self._method_area_get_canvas_instance_id_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
    }
    public func body_set_mode(body: RID, mode: PhysicsServer2D.BodyMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_mode_1658067650,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_mode(body: RID) -> PhysicsServer2D.BodyMode {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_mode_3261702585,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer2D.BodyMode(godot: __resPtr.pointee)
    }
    public func body_add_shape(body: RID, shape: RID, transform: Transform2D, disabled: UInt8)  {
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
                    Self._method_body_add_shape_754862190,
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
    public func body_set_shape_transform(body: RID, shape_idx: Int64, transform: Transform2D)  {
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
                    Self._method_body_set_shape_transform_736082694,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            return Int64(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
        }
    }
    public func body_get_shape_transform(body: RID, shape_idx: Int64) -> Transform2D {
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
                    Self._method_body_get_shape_transform_1324854622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
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
    public func body_set_shape_as_one_way_collision(body: RID, shape_idx: Int64, enable: UInt8, margin: Float64)  {
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
                    Self._method_body_set_shape_as_one_way_collision_2556489974,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
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
            return Int64(godot: __resPtr.pointee)
    }
    public func body_attach_canvas_instance_id(body: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_attach_canvas_instance_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_canvas_instance_id(body: RID) -> Int64 {
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
                    Self._method_body_get_canvas_instance_id_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func body_set_continuous_collision_detection_mode(body: RID, mode: PhysicsServer2D.CCDMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_continuous_collision_detection_mode_1882257015,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_continuous_collision_detection_mode(body: RID) -> PhysicsServer2D.CCDMode {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_continuous_collision_detection_mode_2661282217,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer2D.CCDMode(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return Int64(godot: __resPtr.pointee)
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
            return Float64(godot: __resPtr.pointee)
    }
    public func body_set_param(body: RID, param: PhysicsServer2D.BodyParameter, value: Variant)  {
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
                    Self._method_body_set_param_2715630609,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_param(body: RID, param: PhysicsServer2D.BodyParameter) -> Variant {
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
                    Self._method_body_get_param_3208033526,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
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
    public func body_set_state(body: RID, state: PhysicsServer2D.BodyState, value: Variant)  {
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
                    Self._method_body_set_state_1706355209,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_state(body: RID, state: PhysicsServer2D.BodyState) -> Variant {
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
                    Self._method_body_get_state_4036367961,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
        }
    }
    public func body_apply_central_impulse(body: RID, impulse: Vector2)  {
        let impulse_native = impulse._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_central_impulse_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_torque_impulse(body: RID, impulse: Float64)  {
        withUnsafePointer(to: impulse) { impulse_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(impulse_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_torque_impulse_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_apply_impulse(body: RID, impulse: Vector2, position: Vector2)  {
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
                    Self._method_body_apply_impulse_34330743,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_central_force(body: RID, force: Vector2)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_central_force_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_force(body: RID, force: Vector2, position: Vector2)  {
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
                    Self._method_body_apply_force_34330743,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_apply_torque(body: RID, torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_apply_torque_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_add_constant_central_force(body: RID, force: Vector2)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_add_constant_central_force_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_add_constant_force(body: RID, force: Vector2, position: Vector2)  {
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
                    Self._method_body_add_constant_force_34330743,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_add_constant_torque(body: RID, torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_add_constant_torque_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_set_constant_force(body: RID, force: Vector2)  {
        let force_native = force._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(force_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_constant_force_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func body_get_constant_force(body: RID) -> Vector2 {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_constant_force_2440833711,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func body_set_constant_torque(body: RID, torque: Float64)  {
        withUnsafePointer(to: torque) { torque_native in
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(torque_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_constant_torque_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func body_get_constant_torque(body: RID) -> Float64 {
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
                    Self._method_body_get_constant_torque_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func body_set_axis_velocity(body: RID, axis_velocity: Vector2)  {
        let axis_velocity_native = axis_velocity._native_ptr()
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native), .init(axis_velocity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_set_axis_velocity_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
            return Int64(godot: __resPtr.pointee)
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
            return UInt8(godot: __resPtr.pointee)
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
    public func body_test_motion(body: RID, parameters: PhysicsTestMotionParameters2D, result: PhysicsTestMotionResult2D) -> UInt8 {
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
                    Self._method_body_test_motion_1699844009,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func body_get_direct_state(body: RID) -> PhysicsDirectBodyState2D {
        let body_native = body._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(body_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_body_get_direct_state_1191931871,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsDirectBodyState2D(godot: __resPtr.pointee)
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
            return RID(godot: __resPtr.pointee)
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
    public func joint_set_param(joint: RID, param: PhysicsServer2D.JointParam, value: Float64)  {
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
                    Self._method_joint_set_param_3972556514,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func joint_get_param(joint: RID, param: PhysicsServer2D.JointParam) -> Float64 {
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
                    Self._method_joint_get_param_4016448949,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
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
            return UInt8(godot: __resPtr.pointee)
    }
    public func joint_make_pin(joint: RID, anchor: Vector2, body_a: RID, body_b: RID)  {
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
                    Self._method_joint_make_pin_2288600450,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func joint_make_groove(joint: RID, groove1_a: Vector2, groove2_a: Vector2, anchor_b: Vector2, body_a: RID, body_b: RID)  {
        let body_b_native = body_b._native_ptr()
        let body_a_native = body_a._native_ptr()
        let anchor_b_native = anchor_b._native_ptr()
        let groove2_a_native = groove2_a._native_ptr()
        let groove1_a_native = groove1_a._native_ptr()
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native), .init(groove1_a_native), .init(groove2_a_native), .init(anchor_b_native), .init(body_a_native), .init(body_b_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_make_groove_3573265764,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func joint_make_damped_spring(joint: RID, anchor_a: Vector2, anchor_b: Vector2, body_a: RID, body_b: RID)  {
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
                    Self._method_joint_make_damped_spring_206603952,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func pin_joint_set_param(joint: RID, param: PhysicsServer2D.PinJointParam, value: Float64)  {
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
                    Self._method_pin_joint_set_param_550574241,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func pin_joint_get_param(joint: RID, param: PhysicsServer2D.PinJointParam) -> Float64 {
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
                    Self._method_pin_joint_get_param_348281383,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func damped_spring_joint_set_param(joint: RID, param: PhysicsServer2D.DampedSpringParam, value: Float64)  {
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
                    Self._method_damped_spring_joint_set_param_220564071,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func damped_spring_joint_get_param(joint: RID, param: PhysicsServer2D.DampedSpringParam) -> Float64 {
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
                    Self._method_damped_spring_joint_get_param_2075871277,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func joint_get_type(joint: RID) -> PhysicsServer2D.JointType {
        let joint_native = joint._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(joint_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_joint_get_type_4262502231,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PhysicsServer2D.JointType(godot: __resPtr.pointee)
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
    public func get_process_info(process_info: PhysicsServer2D.ProcessInfo) -> Int64 {
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
                    Self._method_get_process_info_576496006,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
    }
}