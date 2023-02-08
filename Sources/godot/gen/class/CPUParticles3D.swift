import godot_native

fileprivate var __godot_name_CPUParticles3D: StringName! = nil

/// CPU-based 3D particle emitter.
/// 
/// CPU-based 3D particle node used to create a variety of particle systems and effects.
///  
/// See also [GPUParticles3D], which provides the same functionality with hardware acceleration, but may not run on older devices.
open class CPUParticles3D : GeometryInstance3D {

    public enum DrawOrder : Int32 {
        case DRAW_ORDER_INDEX = 0
        case DRAW_ORDER_LIFETIME = 1
        case DRAW_ORDER_VIEW_DEPTH = 2
    }
    public enum Parameter : Int32 {
        case PARAM_INITIAL_LINEAR_VELOCITY = 0
        case PARAM_ANGULAR_VELOCITY = 1
        case PARAM_ORBIT_VELOCITY = 2
        case PARAM_LINEAR_ACCEL = 3
        case PARAM_RADIAL_ACCEL = 4
        case PARAM_TANGENTIAL_ACCEL = 5
        case PARAM_DAMPING = 6
        case PARAM_ANGLE = 7
        case PARAM_SCALE = 8
        case PARAM_HUE_VARIATION = 9
        case PARAM_ANIM_SPEED = 10
        case PARAM_ANIM_OFFSET = 11
        case PARAM_MAX = 12
    }
    public enum ParticleFlags : Int32 {
        case PARTICLE_FLAG_ALIGN_Y_TO_VELOCITY = 0
        case PARTICLE_FLAG_ROTATE_Y = 1
        case PARTICLE_FLAG_DISABLE_Z = 2
        case PARTICLE_FLAG_MAX = 3
    }
    public enum EmissionShape : Int32 {
        case EMISSION_SHAPE_POINT = 0
        case EMISSION_SHAPE_SPHERE = 1
        case EMISSION_SHAPE_SPHERE_SURFACE = 2
        case EMISSION_SHAPE_BOX = 3
        case EMISSION_SHAPE_POINTS = 4
        case EMISSION_SHAPE_DIRECTED_POINTS = 5
        case EMISSION_SHAPE_RING = 6
        case EMISSION_SHAPE_MAX = 7
    }

    public override class var __godot_name: StringName { __godot_name_CPUParticles3D }

    static var _method_set_emitting_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_amount_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_lifetime_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_shot_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_pre_process_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_explosiveness_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_randomness_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_lifetime_randomness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_local_coordinates_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_fixed_fps_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_fractional_delta_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_speed_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_is_emitting_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_amount_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_lifetime_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_one_shot_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_pre_process_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_explosiveness_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_randomness_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_lifetime_randomness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_local_coordinates_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_fixed_fps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_fractional_delta_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_speed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_order_1427401774: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_order_1321900776: GDExtensionMethodBindPtr! = nil
    static var _method_set_mesh_194775623: GDExtensionMethodBindPtr! = nil
    static var _method_get_mesh_1808005922: GDExtensionMethodBindPtr! = nil
    static var _method_restart_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_direction_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_direction_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_spread_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_spread_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_flatness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_flatness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_min_557936109: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_min_597646162: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_max_557936109: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_max_597646162: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_curve_4044142537: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_curve_4132790277: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_ramp_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_ramp_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_initial_ramp_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_initial_ramp_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_particle_flag_3515406498: GDExtensionMethodBindPtr! = nil
    static var _method_get_particle_flag_2845201987: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_shape_491823814: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_shape_2961454842: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_sphere_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_sphere_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_box_extents_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_box_extents_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_points_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_points_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_normals_334873810: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_normals_497664490: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_colors_3546319833: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_colors_1392750486: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_ring_axis_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_ring_axis_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_ring_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_ring_height_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_ring_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_ring_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_ring_inner_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_ring_inner_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_split_scale_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_split_scale_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_curve_x_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_curve_x_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_curve_y_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_curve_y_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_curve_z_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_curve_z_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_convert_from_particles_1078189570: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CPUParticles3D = StringName(from: "CPUParticles3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_emitting_2586408642_name = StringName(from: "set_emitting")
        self._method_set_emitting_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emitting_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles3D._method_set_emitting_2586408642 != nil)
        let _method_set_amount_1286410249_name = StringName(from: "set_amount")
        self._method_set_amount_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_amount_1286410249_name._native_ptr(), 1286410249)
        assert(CPUParticles3D._method_set_amount_1286410249 != nil)
        let _method_set_lifetime_373806689_name = StringName(from: "set_lifetime")
        self._method_set_lifetime_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_lifetime_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_lifetime_373806689 != nil)
        let _method_set_one_shot_2586408642_name = StringName(from: "set_one_shot")
        self._method_set_one_shot_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_one_shot_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles3D._method_set_one_shot_2586408642 != nil)
        let _method_set_pre_process_time_373806689_name = StringName(from: "set_pre_process_time")
        self._method_set_pre_process_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_pre_process_time_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_pre_process_time_373806689 != nil)
        let _method_set_explosiveness_ratio_373806689_name = StringName(from: "set_explosiveness_ratio")
        self._method_set_explosiveness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_explosiveness_ratio_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_explosiveness_ratio_373806689 != nil)
        let _method_set_randomness_ratio_373806689_name = StringName(from: "set_randomness_ratio")
        self._method_set_randomness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_randomness_ratio_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_randomness_ratio_373806689 != nil)
        let _method_set_lifetime_randomness_373806689_name = StringName(from: "set_lifetime_randomness")
        self._method_set_lifetime_randomness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_lifetime_randomness_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_lifetime_randomness_373806689 != nil)
        let _method_set_use_local_coordinates_2586408642_name = StringName(from: "set_use_local_coordinates")
        self._method_set_use_local_coordinates_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_use_local_coordinates_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles3D._method_set_use_local_coordinates_2586408642 != nil)
        let _method_set_fixed_fps_1286410249_name = StringName(from: "set_fixed_fps")
        self._method_set_fixed_fps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_fixed_fps_1286410249_name._native_ptr(), 1286410249)
        assert(CPUParticles3D._method_set_fixed_fps_1286410249 != nil)
        let _method_set_fractional_delta_2586408642_name = StringName(from: "set_fractional_delta")
        self._method_set_fractional_delta_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_fractional_delta_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles3D._method_set_fractional_delta_2586408642 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_speed_scale_373806689 != nil)
        let _method_is_emitting_36873697_name = StringName(from: "is_emitting")
        self._method_is_emitting_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_is_emitting_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles3D._method_is_emitting_36873697 != nil)
        let _method_get_amount_3905245786_name = StringName(from: "get_amount")
        self._method_get_amount_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_amount_3905245786_name._native_ptr(), 3905245786)
        assert(CPUParticles3D._method_get_amount_3905245786 != nil)
        let _method_get_lifetime_1740695150_name = StringName(from: "get_lifetime")
        self._method_get_lifetime_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_lifetime_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_lifetime_1740695150 != nil)
        let _method_get_one_shot_36873697_name = StringName(from: "get_one_shot")
        self._method_get_one_shot_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_one_shot_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles3D._method_get_one_shot_36873697 != nil)
        let _method_get_pre_process_time_1740695150_name = StringName(from: "get_pre_process_time")
        self._method_get_pre_process_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_pre_process_time_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_pre_process_time_1740695150 != nil)
        let _method_get_explosiveness_ratio_1740695150_name = StringName(from: "get_explosiveness_ratio")
        self._method_get_explosiveness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_explosiveness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_explosiveness_ratio_1740695150 != nil)
        let _method_get_randomness_ratio_1740695150_name = StringName(from: "get_randomness_ratio")
        self._method_get_randomness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_randomness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_randomness_ratio_1740695150 != nil)
        let _method_get_lifetime_randomness_1740695150_name = StringName(from: "get_lifetime_randomness")
        self._method_get_lifetime_randomness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_lifetime_randomness_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_lifetime_randomness_1740695150 != nil)
        let _method_get_use_local_coordinates_36873697_name = StringName(from: "get_use_local_coordinates")
        self._method_get_use_local_coordinates_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_use_local_coordinates_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles3D._method_get_use_local_coordinates_36873697 != nil)
        let _method_get_fixed_fps_3905245786_name = StringName(from: "get_fixed_fps")
        self._method_get_fixed_fps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_fixed_fps_3905245786_name._native_ptr(), 3905245786)
        assert(CPUParticles3D._method_get_fixed_fps_3905245786 != nil)
        let _method_get_fractional_delta_36873697_name = StringName(from: "get_fractional_delta")
        self._method_get_fractional_delta_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_fractional_delta_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles3D._method_get_fractional_delta_36873697 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_speed_scale_1740695150 != nil)
        let _method_set_draw_order_1427401774_name = StringName(from: "set_draw_order")
        self._method_set_draw_order_1427401774 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_draw_order_1427401774_name._native_ptr(), 1427401774)
        assert(CPUParticles3D._method_set_draw_order_1427401774 != nil)
        let _method_get_draw_order_1321900776_name = StringName(from: "get_draw_order")
        self._method_get_draw_order_1321900776 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_draw_order_1321900776_name._native_ptr(), 1321900776)
        assert(CPUParticles3D._method_get_draw_order_1321900776 != nil)
        let _method_set_mesh_194775623_name = StringName(from: "set_mesh")
        self._method_set_mesh_194775623 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_mesh_194775623_name._native_ptr(), 194775623)
        assert(CPUParticles3D._method_set_mesh_194775623 != nil)
        let _method_get_mesh_1808005922_name = StringName(from: "get_mesh")
        self._method_get_mesh_1808005922 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_mesh_1808005922_name._native_ptr(), 1808005922)
        assert(CPUParticles3D._method_get_mesh_1808005922 != nil)
        let _method_restart_3218959716_name = StringName(from: "restart")
        self._method_restart_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_restart_3218959716_name._native_ptr(), 3218959716)
        assert(CPUParticles3D._method_restart_3218959716 != nil)
        let _method_set_direction_3460891852_name = StringName(from: "set_direction")
        self._method_set_direction_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_direction_3460891852_name._native_ptr(), 3460891852)
        assert(CPUParticles3D._method_set_direction_3460891852 != nil)
        let _method_get_direction_3360562783_name = StringName(from: "get_direction")
        self._method_get_direction_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_direction_3360562783_name._native_ptr(), 3360562783)
        assert(CPUParticles3D._method_get_direction_3360562783 != nil)
        let _method_set_spread_373806689_name = StringName(from: "set_spread")
        self._method_set_spread_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_spread_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_spread_373806689 != nil)
        let _method_get_spread_1740695150_name = StringName(from: "get_spread")
        self._method_get_spread_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_spread_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_spread_1740695150 != nil)
        let _method_set_flatness_373806689_name = StringName(from: "set_flatness")
        self._method_set_flatness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_flatness_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_flatness_373806689 != nil)
        let _method_get_flatness_1740695150_name = StringName(from: "get_flatness")
        self._method_get_flatness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_flatness_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_flatness_1740695150 != nil)
        let _method_set_param_min_557936109_name = StringName(from: "set_param_min")
        self._method_set_param_min_557936109 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_param_min_557936109_name._native_ptr(), 557936109)
        assert(CPUParticles3D._method_set_param_min_557936109 != nil)
        let _method_get_param_min_597646162_name = StringName(from: "get_param_min")
        self._method_get_param_min_597646162 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_param_min_597646162_name._native_ptr(), 597646162)
        assert(CPUParticles3D._method_get_param_min_597646162 != nil)
        let _method_set_param_max_557936109_name = StringName(from: "set_param_max")
        self._method_set_param_max_557936109 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_param_max_557936109_name._native_ptr(), 557936109)
        assert(CPUParticles3D._method_set_param_max_557936109 != nil)
        let _method_get_param_max_597646162_name = StringName(from: "get_param_max")
        self._method_get_param_max_597646162 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_param_max_597646162_name._native_ptr(), 597646162)
        assert(CPUParticles3D._method_get_param_max_597646162 != nil)
        let _method_set_param_curve_4044142537_name = StringName(from: "set_param_curve")
        self._method_set_param_curve_4044142537 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_param_curve_4044142537_name._native_ptr(), 4044142537)
        assert(CPUParticles3D._method_set_param_curve_4044142537 != nil)
        let _method_get_param_curve_4132790277_name = StringName(from: "get_param_curve")
        self._method_get_param_curve_4132790277 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_param_curve_4132790277_name._native_ptr(), 4132790277)
        assert(CPUParticles3D._method_get_param_curve_4132790277 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(CPUParticles3D._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(CPUParticles3D._method_get_color_3444240500 != nil)
        let _method_set_color_ramp_2756054477_name = StringName(from: "set_color_ramp")
        self._method_set_color_ramp_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_color_ramp_2756054477_name._native_ptr(), 2756054477)
        assert(CPUParticles3D._method_set_color_ramp_2756054477 != nil)
        let _method_get_color_ramp_132272999_name = StringName(from: "get_color_ramp")
        self._method_get_color_ramp_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_color_ramp_132272999_name._native_ptr(), 132272999)
        assert(CPUParticles3D._method_get_color_ramp_132272999 != nil)
        let _method_set_color_initial_ramp_2756054477_name = StringName(from: "set_color_initial_ramp")
        self._method_set_color_initial_ramp_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_color_initial_ramp_2756054477_name._native_ptr(), 2756054477)
        assert(CPUParticles3D._method_set_color_initial_ramp_2756054477 != nil)
        let _method_get_color_initial_ramp_132272999_name = StringName(from: "get_color_initial_ramp")
        self._method_get_color_initial_ramp_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_color_initial_ramp_132272999_name._native_ptr(), 132272999)
        assert(CPUParticles3D._method_get_color_initial_ramp_132272999 != nil)
        let _method_set_particle_flag_3515406498_name = StringName(from: "set_particle_flag")
        self._method_set_particle_flag_3515406498 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_particle_flag_3515406498_name._native_ptr(), 3515406498)
        assert(CPUParticles3D._method_set_particle_flag_3515406498 != nil)
        let _method_get_particle_flag_2845201987_name = StringName(from: "get_particle_flag")
        self._method_get_particle_flag_2845201987 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_particle_flag_2845201987_name._native_ptr(), 2845201987)
        assert(CPUParticles3D._method_get_particle_flag_2845201987 != nil)
        let _method_set_emission_shape_491823814_name = StringName(from: "set_emission_shape")
        self._method_set_emission_shape_491823814 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_shape_491823814_name._native_ptr(), 491823814)
        assert(CPUParticles3D._method_set_emission_shape_491823814 != nil)
        let _method_get_emission_shape_2961454842_name = StringName(from: "get_emission_shape")
        self._method_get_emission_shape_2961454842 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_shape_2961454842_name._native_ptr(), 2961454842)
        assert(CPUParticles3D._method_get_emission_shape_2961454842 != nil)
        let _method_set_emission_sphere_radius_373806689_name = StringName(from: "set_emission_sphere_radius")
        self._method_set_emission_sphere_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_sphere_radius_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_emission_sphere_radius_373806689 != nil)
        let _method_get_emission_sphere_radius_1740695150_name = StringName(from: "get_emission_sphere_radius")
        self._method_get_emission_sphere_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_sphere_radius_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_emission_sphere_radius_1740695150 != nil)
        let _method_set_emission_box_extents_3460891852_name = StringName(from: "set_emission_box_extents")
        self._method_set_emission_box_extents_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_box_extents_3460891852_name._native_ptr(), 3460891852)
        assert(CPUParticles3D._method_set_emission_box_extents_3460891852 != nil)
        let _method_get_emission_box_extents_3360562783_name = StringName(from: "get_emission_box_extents")
        self._method_get_emission_box_extents_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_box_extents_3360562783_name._native_ptr(), 3360562783)
        assert(CPUParticles3D._method_get_emission_box_extents_3360562783 != nil)
        let _method_set_emission_points_334873810_name = StringName(from: "set_emission_points")
        self._method_set_emission_points_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_points_334873810_name._native_ptr(), 334873810)
        assert(CPUParticles3D._method_set_emission_points_334873810 != nil)
        let _method_get_emission_points_497664490_name = StringName(from: "get_emission_points")
        self._method_get_emission_points_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_points_497664490_name._native_ptr(), 497664490)
        assert(CPUParticles3D._method_get_emission_points_497664490 != nil)
        let _method_set_emission_normals_334873810_name = StringName(from: "set_emission_normals")
        self._method_set_emission_normals_334873810 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_normals_334873810_name._native_ptr(), 334873810)
        assert(CPUParticles3D._method_set_emission_normals_334873810 != nil)
        let _method_get_emission_normals_497664490_name = StringName(from: "get_emission_normals")
        self._method_get_emission_normals_497664490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_normals_497664490_name._native_ptr(), 497664490)
        assert(CPUParticles3D._method_get_emission_normals_497664490 != nil)
        let _method_set_emission_colors_3546319833_name = StringName(from: "set_emission_colors")
        self._method_set_emission_colors_3546319833 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_colors_3546319833_name._native_ptr(), 3546319833)
        assert(CPUParticles3D._method_set_emission_colors_3546319833 != nil)
        let _method_get_emission_colors_1392750486_name = StringName(from: "get_emission_colors")
        self._method_get_emission_colors_1392750486 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_colors_1392750486_name._native_ptr(), 1392750486)
        assert(CPUParticles3D._method_get_emission_colors_1392750486 != nil)
        let _method_set_emission_ring_axis_3460891852_name = StringName(from: "set_emission_ring_axis")
        self._method_set_emission_ring_axis_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_ring_axis_3460891852_name._native_ptr(), 3460891852)
        assert(CPUParticles3D._method_set_emission_ring_axis_3460891852 != nil)
        let _method_get_emission_ring_axis_3360562783_name = StringName(from: "get_emission_ring_axis")
        self._method_get_emission_ring_axis_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_ring_axis_3360562783_name._native_ptr(), 3360562783)
        assert(CPUParticles3D._method_get_emission_ring_axis_3360562783 != nil)
        let _method_set_emission_ring_height_373806689_name = StringName(from: "set_emission_ring_height")
        self._method_set_emission_ring_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_ring_height_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_emission_ring_height_373806689 != nil)
        let _method_get_emission_ring_height_1740695150_name = StringName(from: "get_emission_ring_height")
        self._method_get_emission_ring_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_ring_height_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_emission_ring_height_1740695150 != nil)
        let _method_set_emission_ring_radius_373806689_name = StringName(from: "set_emission_ring_radius")
        self._method_set_emission_ring_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_ring_radius_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_emission_ring_radius_373806689 != nil)
        let _method_get_emission_ring_radius_1740695150_name = StringName(from: "get_emission_ring_radius")
        self._method_get_emission_ring_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_ring_radius_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_emission_ring_radius_1740695150 != nil)
        let _method_set_emission_ring_inner_radius_373806689_name = StringName(from: "set_emission_ring_inner_radius")
        self._method_set_emission_ring_inner_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_emission_ring_inner_radius_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles3D._method_set_emission_ring_inner_radius_373806689 != nil)
        let _method_get_emission_ring_inner_radius_1740695150_name = StringName(from: "get_emission_ring_inner_radius")
        self._method_get_emission_ring_inner_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_emission_ring_inner_radius_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles3D._method_get_emission_ring_inner_radius_1740695150 != nil)
        let _method_get_gravity_3360562783_name = StringName(from: "get_gravity")
        self._method_get_gravity_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_gravity_3360562783_name._native_ptr(), 3360562783)
        assert(CPUParticles3D._method_get_gravity_3360562783 != nil)
        let _method_set_gravity_3460891852_name = StringName(from: "set_gravity")
        self._method_set_gravity_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_gravity_3460891852_name._native_ptr(), 3460891852)
        assert(CPUParticles3D._method_set_gravity_3460891852 != nil)
        let _method_get_split_scale_2240911060_name = StringName(from: "get_split_scale")
        self._method_get_split_scale_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_split_scale_2240911060_name._native_ptr(), 2240911060)
        assert(CPUParticles3D._method_get_split_scale_2240911060 != nil)
        let _method_set_split_scale_2586408642_name = StringName(from: "set_split_scale")
        self._method_set_split_scale_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_split_scale_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles3D._method_set_split_scale_2586408642 != nil)
        let _method_get_scale_curve_x_2460114913_name = StringName(from: "get_scale_curve_x")
        self._method_get_scale_curve_x_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_scale_curve_x_2460114913_name._native_ptr(), 2460114913)
        assert(CPUParticles3D._method_get_scale_curve_x_2460114913 != nil)
        let _method_set_scale_curve_x_270443179_name = StringName(from: "set_scale_curve_x")
        self._method_set_scale_curve_x_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_scale_curve_x_270443179_name._native_ptr(), 270443179)
        assert(CPUParticles3D._method_set_scale_curve_x_270443179 != nil)
        let _method_get_scale_curve_y_2460114913_name = StringName(from: "get_scale_curve_y")
        self._method_get_scale_curve_y_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_scale_curve_y_2460114913_name._native_ptr(), 2460114913)
        assert(CPUParticles3D._method_get_scale_curve_y_2460114913 != nil)
        let _method_set_scale_curve_y_270443179_name = StringName(from: "set_scale_curve_y")
        self._method_set_scale_curve_y_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_scale_curve_y_270443179_name._native_ptr(), 270443179)
        assert(CPUParticles3D._method_set_scale_curve_y_270443179 != nil)
        let _method_get_scale_curve_z_2460114913_name = StringName(from: "get_scale_curve_z")
        self._method_get_scale_curve_z_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_get_scale_curve_z_2460114913_name._native_ptr(), 2460114913)
        assert(CPUParticles3D._method_get_scale_curve_z_2460114913 != nil)
        let _method_set_scale_curve_z_270443179_name = StringName(from: "set_scale_curve_z")
        self._method_set_scale_curve_z_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_set_scale_curve_z_270443179_name._native_ptr(), 270443179)
        assert(CPUParticles3D._method_set_scale_curve_z_270443179 != nil)
        let _method_convert_from_particles_1078189570_name = StringName(from: "convert_from_particles")
        self._method_convert_from_particles_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles3D._native_ptr(), _method_convert_from_particles_1078189570_name._native_ptr(), 1078189570)
        assert(CPUParticles3D._method_convert_from_particles_1078189570 != nil)
    }

    public func set_emitting(emitting: UInt8)  {
        withUnsafePointer(to: emitting) { emitting_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emitting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emitting_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_amount(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_amount_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_lifetime(secs: Float64)  {
        withUnsafePointer(to: secs) { secs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(secs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lifetime_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_one_shot(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_one_shot_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_pre_process_time(secs: Float64)  {
        withUnsafePointer(to: secs) { secs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(secs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_pre_process_time_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_explosiveness_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_explosiveness_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_randomness_ratio(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_randomness_ratio_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_lifetime_randomness(random: Float64)  {
        withUnsafePointer(to: random) { random_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(random_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_lifetime_randomness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_use_local_coordinates(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_use_local_coordinates_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_fixed_fps(fps: Int64)  {
        withUnsafePointer(to: fps) { fps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fixed_fps_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_fractional_delta(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fractional_delta_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_speed_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_speed_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_emitting() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_emitting_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_amount() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_amount_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_lifetime() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_lifetime_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_one_shot() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_one_shot_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_pre_process_time() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_pre_process_time_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_explosiveness_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_explosiveness_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_randomness_ratio() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_randomness_ratio_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_lifetime_randomness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_lifetime_randomness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_use_local_coordinates() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_use_local_coordinates_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_fixed_fps() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fixed_fps_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_fractional_delta() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fractional_delta_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_speed_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_speed_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_draw_order(order: CPUParticles3D.DrawOrder)  {
        withUnsafePointer(to: order.rawValue) { order_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(order_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_order_1427401774,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_draw_order() -> CPUParticles3D.DrawOrder {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_order_1321900776,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CPUParticles3D.DrawOrder(godot: __resPtr.pointee)
    }
    public func set_mesh(mesh: Mesh)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_mesh_194775623,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_mesh() -> Mesh {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_mesh_1808005922,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(godot: __resPtr.pointee)
    }
    public func restart()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_restart_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_direction(direction: Vector3)  {
        let direction_native = direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_direction_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_direction() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_direction_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_spread(degrees: Float64)  {
        withUnsafePointer(to: degrees) { degrees_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_spread_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_spread() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_spread_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_flatness(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flatness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_flatness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flatness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_param_min(param: CPUParticles3D.Parameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_min_557936109,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_min(param: CPUParticles3D.Parameter) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_param_min_597646162,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_max(param: CPUParticles3D.Parameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_max_557936109,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_max(param: CPUParticles3D.Parameter) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_param_max_597646162,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_curve(param: CPUParticles3D.Parameter, curve: Curve)  {
        withUnsafePointer(to: param.rawValue) { param_native in
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_curve_4044142537,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_param_curve(param: CPUParticles3D.Parameter) -> Curve {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_param_curve_4132790277,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
        }
    }
    public func set_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_color_ramp(ramp: Gradient)  {
        let ramp_native = ramp._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ramp_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_ramp_2756054477,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_ramp() -> Gradient {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_ramp_132272999,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient(godot: __resPtr.pointee)
    }
    public func set_color_initial_ramp(ramp: Gradient)  {
        let ramp_native = ramp._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ramp_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_color_initial_ramp_2756054477,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_initial_ramp() -> Gradient {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_color_initial_ramp_132272999,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Gradient(godot: __resPtr.pointee)
    }
    public func set_particle_flag(particle_flag: CPUParticles3D.ParticleFlags, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: particle_flag.rawValue) { particle_flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particle_flag_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particle_flag_3515406498,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_particle_flag(particle_flag: CPUParticles3D.ParticleFlags) -> UInt8 {
        withUnsafePointer(to: particle_flag.rawValue) { particle_flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particle_flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particle_flag_2845201987,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_emission_shape(shape: CPUParticles3D.EmissionShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_shape_491823814,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_shape() -> CPUParticles3D.EmissionShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_shape_2961454842,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CPUParticles3D.EmissionShape(godot: __resPtr.pointee)
    }
    public func set_emission_sphere_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_sphere_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_sphere_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_sphere_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_emission_box_extents(extents: Vector3)  {
        let extents_native = extents._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extents_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_box_extents_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_box_extents() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_box_extents_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_emission_points(array: PackedVector3Array)  {
        let array_native = array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(array_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_points_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_points() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_points_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func set_emission_normals(array: PackedVector3Array)  {
        let array_native = array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(array_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_normals_334873810,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_normals() -> PackedVector3Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_normals_497664490,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(godot: __resPtr.pointee)
    }
    public func set_emission_colors(array: PackedColorArray)  {
        let array_native = array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(array_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_colors_3546319833,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_colors() -> PackedColorArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_colors_1392750486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedColorArray(godot: __resPtr.pointee)
    }
    public func set_emission_ring_axis(axis: Vector3)  {
        let axis_native = axis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_ring_axis_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_ring_axis() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_ring_axis_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_emission_ring_height(height: Float64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_ring_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_ring_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_ring_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_emission_ring_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_ring_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_ring_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_ring_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_emission_ring_inner_radius(inner_radius: Float64)  {
        withUnsafePointer(to: inner_radius) { inner_radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inner_radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_ring_inner_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_ring_inner_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_ring_inner_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func get_gravity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_gravity(accel_vec: Vector3)  {
        let accel_vec_native = accel_vec._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(accel_vec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_split_scale() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_split_scale_2240911060,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_split_scale(split_scale: UInt8)  {
        withUnsafePointer(to: split_scale) { split_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(split_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_split_scale_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_scale_curve_x() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_curve_x_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
    public func set_scale_curve_x(scale_curve: Curve)  {
        let scale_curve_native = scale_curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_curve_x_270443179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scale_curve_y() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_curve_y_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
    public func set_scale_curve_y(scale_curve: Curve)  {
        let scale_curve_native = scale_curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_curve_y_270443179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_scale_curve_z() -> Curve {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_scale_curve_z_2460114913,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Curve(godot: __resPtr.pointee)
    }
    public func set_scale_curve_z(scale_curve: Curve)  {
        let scale_curve_native = scale_curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_scale_curve_z_270443179,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func convert_from_particles(particles: Node)  {
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_convert_from_particles_1078189570,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
}