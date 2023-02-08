import godot_native

fileprivate var __godot_name_CPUParticles2D: StringName! = nil

/// CPU-based 2D particle emitter.
/// 
/// CPU-based 2D particle node used to create a variety of particle systems and effects.
///  
/// See also [GPUParticles2D], which provides the same functionality with hardware acceleration, but may not run on older devices.
open class CPUParticles2D : Node2D {

    public enum DrawOrder : Int32 {
        case DRAW_ORDER_INDEX = 0
        case DRAW_ORDER_LIFETIME = 1
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
        case EMISSION_SHAPE_RECTANGLE = 3
        case EMISSION_SHAPE_POINTS = 4
        case EMISSION_SHAPE_DIRECTED_POINTS = 5
        case EMISSION_SHAPE_MAX = 6
    }

    public override class var __godot_name: StringName { __godot_name_CPUParticles2D }

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
    static var _method_set_draw_order_4183193490: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_order_1668655735: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_restart_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_direction_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_direction_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_spread_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_spread_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_min_3320615296: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_min_2038050600: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_max_3320615296: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_max_2038050600: GDExtensionMethodBindPtr! = nil
    static var _method_set_param_curve_2959350143: GDExtensionMethodBindPtr! = nil
    static var _method_get_param_curve_2603158474: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_ramp_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_ramp_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_color_initial_ramp_2756054477: GDExtensionMethodBindPtr! = nil
    static var _method_get_color_initial_ramp_132272999: GDExtensionMethodBindPtr! = nil
    static var _method_set_particle_flag_4178137949: GDExtensionMethodBindPtr! = nil
    static var _method_get_particle_flag_2829976507: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_shape_393763892: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_shape_1740246024: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_sphere_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_sphere_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_rect_extents_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_rect_extents_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_points_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_points_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_normals_1509147220: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_normals_2961356807: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_colors_3546319833: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_colors_1392750486: GDExtensionMethodBindPtr! = nil
    static var _method_get_gravity_3341600327: GDExtensionMethodBindPtr! = nil
    static var _method_set_gravity_743155724: GDExtensionMethodBindPtr! = nil
    static var _method_get_split_scale_2240911060: GDExtensionMethodBindPtr! = nil
    static var _method_set_split_scale_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_curve_x_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_curve_x_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_get_scale_curve_y_2460114913: GDExtensionMethodBindPtr! = nil
    static var _method_set_scale_curve_y_270443179: GDExtensionMethodBindPtr! = nil
    static var _method_convert_from_particles_1078189570: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_CPUParticles2D = StringName(from: "CPUParticles2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_emitting_2586408642_name = StringName(from: "set_emitting")
        self._method_set_emitting_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emitting_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles2D._method_set_emitting_2586408642 != nil)
        let _method_set_amount_1286410249_name = StringName(from: "set_amount")
        self._method_set_amount_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_amount_1286410249_name._native_ptr(), 1286410249)
        assert(CPUParticles2D._method_set_amount_1286410249 != nil)
        let _method_set_lifetime_373806689_name = StringName(from: "set_lifetime")
        self._method_set_lifetime_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_lifetime_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_lifetime_373806689 != nil)
        let _method_set_one_shot_2586408642_name = StringName(from: "set_one_shot")
        self._method_set_one_shot_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_one_shot_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles2D._method_set_one_shot_2586408642 != nil)
        let _method_set_pre_process_time_373806689_name = StringName(from: "set_pre_process_time")
        self._method_set_pre_process_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_pre_process_time_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_pre_process_time_373806689 != nil)
        let _method_set_explosiveness_ratio_373806689_name = StringName(from: "set_explosiveness_ratio")
        self._method_set_explosiveness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_explosiveness_ratio_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_explosiveness_ratio_373806689 != nil)
        let _method_set_randomness_ratio_373806689_name = StringName(from: "set_randomness_ratio")
        self._method_set_randomness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_randomness_ratio_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_randomness_ratio_373806689 != nil)
        let _method_set_lifetime_randomness_373806689_name = StringName(from: "set_lifetime_randomness")
        self._method_set_lifetime_randomness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_lifetime_randomness_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_lifetime_randomness_373806689 != nil)
        let _method_set_use_local_coordinates_2586408642_name = StringName(from: "set_use_local_coordinates")
        self._method_set_use_local_coordinates_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_use_local_coordinates_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles2D._method_set_use_local_coordinates_2586408642 != nil)
        let _method_set_fixed_fps_1286410249_name = StringName(from: "set_fixed_fps")
        self._method_set_fixed_fps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_fixed_fps_1286410249_name._native_ptr(), 1286410249)
        assert(CPUParticles2D._method_set_fixed_fps_1286410249 != nil)
        let _method_set_fractional_delta_2586408642_name = StringName(from: "set_fractional_delta")
        self._method_set_fractional_delta_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_fractional_delta_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles2D._method_set_fractional_delta_2586408642 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_speed_scale_373806689 != nil)
        let _method_is_emitting_36873697_name = StringName(from: "is_emitting")
        self._method_is_emitting_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_is_emitting_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles2D._method_is_emitting_36873697 != nil)
        let _method_get_amount_3905245786_name = StringName(from: "get_amount")
        self._method_get_amount_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_amount_3905245786_name._native_ptr(), 3905245786)
        assert(CPUParticles2D._method_get_amount_3905245786 != nil)
        let _method_get_lifetime_1740695150_name = StringName(from: "get_lifetime")
        self._method_get_lifetime_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_lifetime_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_lifetime_1740695150 != nil)
        let _method_get_one_shot_36873697_name = StringName(from: "get_one_shot")
        self._method_get_one_shot_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_one_shot_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles2D._method_get_one_shot_36873697 != nil)
        let _method_get_pre_process_time_1740695150_name = StringName(from: "get_pre_process_time")
        self._method_get_pre_process_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_pre_process_time_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_pre_process_time_1740695150 != nil)
        let _method_get_explosiveness_ratio_1740695150_name = StringName(from: "get_explosiveness_ratio")
        self._method_get_explosiveness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_explosiveness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_explosiveness_ratio_1740695150 != nil)
        let _method_get_randomness_ratio_1740695150_name = StringName(from: "get_randomness_ratio")
        self._method_get_randomness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_randomness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_randomness_ratio_1740695150 != nil)
        let _method_get_lifetime_randomness_1740695150_name = StringName(from: "get_lifetime_randomness")
        self._method_get_lifetime_randomness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_lifetime_randomness_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_lifetime_randomness_1740695150 != nil)
        let _method_get_use_local_coordinates_36873697_name = StringName(from: "get_use_local_coordinates")
        self._method_get_use_local_coordinates_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_use_local_coordinates_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles2D._method_get_use_local_coordinates_36873697 != nil)
        let _method_get_fixed_fps_3905245786_name = StringName(from: "get_fixed_fps")
        self._method_get_fixed_fps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_fixed_fps_3905245786_name._native_ptr(), 3905245786)
        assert(CPUParticles2D._method_get_fixed_fps_3905245786 != nil)
        let _method_get_fractional_delta_36873697_name = StringName(from: "get_fractional_delta")
        self._method_get_fractional_delta_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_fractional_delta_36873697_name._native_ptr(), 36873697)
        assert(CPUParticles2D._method_get_fractional_delta_36873697 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_speed_scale_1740695150 != nil)
        let _method_set_draw_order_4183193490_name = StringName(from: "set_draw_order")
        self._method_set_draw_order_4183193490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_draw_order_4183193490_name._native_ptr(), 4183193490)
        assert(CPUParticles2D._method_set_draw_order_4183193490 != nil)
        let _method_get_draw_order_1668655735_name = StringName(from: "get_draw_order")
        self._method_get_draw_order_1668655735 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_draw_order_1668655735_name._native_ptr(), 1668655735)
        assert(CPUParticles2D._method_get_draw_order_1668655735 != nil)
        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(CPUParticles2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(CPUParticles2D._method_get_texture_3635182373 != nil)
        let _method_restart_3218959716_name = StringName(from: "restart")
        self._method_restart_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_restart_3218959716_name._native_ptr(), 3218959716)
        assert(CPUParticles2D._method_restart_3218959716 != nil)
        let _method_set_direction_743155724_name = StringName(from: "set_direction")
        self._method_set_direction_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_direction_743155724_name._native_ptr(), 743155724)
        assert(CPUParticles2D._method_set_direction_743155724 != nil)
        let _method_get_direction_3341600327_name = StringName(from: "get_direction")
        self._method_get_direction_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_direction_3341600327_name._native_ptr(), 3341600327)
        assert(CPUParticles2D._method_get_direction_3341600327 != nil)
        let _method_set_spread_373806689_name = StringName(from: "set_spread")
        self._method_set_spread_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_spread_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_spread_373806689 != nil)
        let _method_get_spread_1740695150_name = StringName(from: "get_spread")
        self._method_get_spread_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_spread_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_spread_1740695150 != nil)
        let _method_set_param_min_3320615296_name = StringName(from: "set_param_min")
        self._method_set_param_min_3320615296 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_param_min_3320615296_name._native_ptr(), 3320615296)
        assert(CPUParticles2D._method_set_param_min_3320615296 != nil)
        let _method_get_param_min_2038050600_name = StringName(from: "get_param_min")
        self._method_get_param_min_2038050600 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_param_min_2038050600_name._native_ptr(), 2038050600)
        assert(CPUParticles2D._method_get_param_min_2038050600 != nil)
        let _method_set_param_max_3320615296_name = StringName(from: "set_param_max")
        self._method_set_param_max_3320615296 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_param_max_3320615296_name._native_ptr(), 3320615296)
        assert(CPUParticles2D._method_set_param_max_3320615296 != nil)
        let _method_get_param_max_2038050600_name = StringName(from: "get_param_max")
        self._method_get_param_max_2038050600 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_param_max_2038050600_name._native_ptr(), 2038050600)
        assert(CPUParticles2D._method_get_param_max_2038050600 != nil)
        let _method_set_param_curve_2959350143_name = StringName(from: "set_param_curve")
        self._method_set_param_curve_2959350143 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_param_curve_2959350143_name._native_ptr(), 2959350143)
        assert(CPUParticles2D._method_set_param_curve_2959350143 != nil)
        let _method_get_param_curve_2603158474_name = StringName(from: "get_param_curve")
        self._method_get_param_curve_2603158474 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_param_curve_2603158474_name._native_ptr(), 2603158474)
        assert(CPUParticles2D._method_get_param_curve_2603158474 != nil)
        let _method_set_color_2920490490_name = StringName(from: "set_color")
        self._method_set_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_color_2920490490_name._native_ptr(), 2920490490)
        assert(CPUParticles2D._method_set_color_2920490490 != nil)
        let _method_get_color_3444240500_name = StringName(from: "get_color")
        self._method_get_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_color_3444240500_name._native_ptr(), 3444240500)
        assert(CPUParticles2D._method_get_color_3444240500 != nil)
        let _method_set_color_ramp_2756054477_name = StringName(from: "set_color_ramp")
        self._method_set_color_ramp_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_color_ramp_2756054477_name._native_ptr(), 2756054477)
        assert(CPUParticles2D._method_set_color_ramp_2756054477 != nil)
        let _method_get_color_ramp_132272999_name = StringName(from: "get_color_ramp")
        self._method_get_color_ramp_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_color_ramp_132272999_name._native_ptr(), 132272999)
        assert(CPUParticles2D._method_get_color_ramp_132272999 != nil)
        let _method_set_color_initial_ramp_2756054477_name = StringName(from: "set_color_initial_ramp")
        self._method_set_color_initial_ramp_2756054477 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_color_initial_ramp_2756054477_name._native_ptr(), 2756054477)
        assert(CPUParticles2D._method_set_color_initial_ramp_2756054477 != nil)
        let _method_get_color_initial_ramp_132272999_name = StringName(from: "get_color_initial_ramp")
        self._method_get_color_initial_ramp_132272999 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_color_initial_ramp_132272999_name._native_ptr(), 132272999)
        assert(CPUParticles2D._method_get_color_initial_ramp_132272999 != nil)
        let _method_set_particle_flag_4178137949_name = StringName(from: "set_particle_flag")
        self._method_set_particle_flag_4178137949 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_particle_flag_4178137949_name._native_ptr(), 4178137949)
        assert(CPUParticles2D._method_set_particle_flag_4178137949 != nil)
        let _method_get_particle_flag_2829976507_name = StringName(from: "get_particle_flag")
        self._method_get_particle_flag_2829976507 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_particle_flag_2829976507_name._native_ptr(), 2829976507)
        assert(CPUParticles2D._method_get_particle_flag_2829976507 != nil)
        let _method_set_emission_shape_393763892_name = StringName(from: "set_emission_shape")
        self._method_set_emission_shape_393763892 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emission_shape_393763892_name._native_ptr(), 393763892)
        assert(CPUParticles2D._method_set_emission_shape_393763892 != nil)
        let _method_get_emission_shape_1740246024_name = StringName(from: "get_emission_shape")
        self._method_get_emission_shape_1740246024 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_emission_shape_1740246024_name._native_ptr(), 1740246024)
        assert(CPUParticles2D._method_get_emission_shape_1740246024 != nil)
        let _method_set_emission_sphere_radius_373806689_name = StringName(from: "set_emission_sphere_radius")
        self._method_set_emission_sphere_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emission_sphere_radius_373806689_name._native_ptr(), 373806689)
        assert(CPUParticles2D._method_set_emission_sphere_radius_373806689 != nil)
        let _method_get_emission_sphere_radius_1740695150_name = StringName(from: "get_emission_sphere_radius")
        self._method_get_emission_sphere_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_emission_sphere_radius_1740695150_name._native_ptr(), 1740695150)
        assert(CPUParticles2D._method_get_emission_sphere_radius_1740695150 != nil)
        let _method_set_emission_rect_extents_743155724_name = StringName(from: "set_emission_rect_extents")
        self._method_set_emission_rect_extents_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emission_rect_extents_743155724_name._native_ptr(), 743155724)
        assert(CPUParticles2D._method_set_emission_rect_extents_743155724 != nil)
        let _method_get_emission_rect_extents_3341600327_name = StringName(from: "get_emission_rect_extents")
        self._method_get_emission_rect_extents_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_emission_rect_extents_3341600327_name._native_ptr(), 3341600327)
        assert(CPUParticles2D._method_get_emission_rect_extents_3341600327 != nil)
        let _method_set_emission_points_1509147220_name = StringName(from: "set_emission_points")
        self._method_set_emission_points_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emission_points_1509147220_name._native_ptr(), 1509147220)
        assert(CPUParticles2D._method_set_emission_points_1509147220 != nil)
        let _method_get_emission_points_2961356807_name = StringName(from: "get_emission_points")
        self._method_get_emission_points_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_emission_points_2961356807_name._native_ptr(), 2961356807)
        assert(CPUParticles2D._method_get_emission_points_2961356807 != nil)
        let _method_set_emission_normals_1509147220_name = StringName(from: "set_emission_normals")
        self._method_set_emission_normals_1509147220 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emission_normals_1509147220_name._native_ptr(), 1509147220)
        assert(CPUParticles2D._method_set_emission_normals_1509147220 != nil)
        let _method_get_emission_normals_2961356807_name = StringName(from: "get_emission_normals")
        self._method_get_emission_normals_2961356807 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_emission_normals_2961356807_name._native_ptr(), 2961356807)
        assert(CPUParticles2D._method_get_emission_normals_2961356807 != nil)
        let _method_set_emission_colors_3546319833_name = StringName(from: "set_emission_colors")
        self._method_set_emission_colors_3546319833 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_emission_colors_3546319833_name._native_ptr(), 3546319833)
        assert(CPUParticles2D._method_set_emission_colors_3546319833 != nil)
        let _method_get_emission_colors_1392750486_name = StringName(from: "get_emission_colors")
        self._method_get_emission_colors_1392750486 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_emission_colors_1392750486_name._native_ptr(), 1392750486)
        assert(CPUParticles2D._method_get_emission_colors_1392750486 != nil)
        let _method_get_gravity_3341600327_name = StringName(from: "get_gravity")
        self._method_get_gravity_3341600327 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_gravity_3341600327_name._native_ptr(), 3341600327)
        assert(CPUParticles2D._method_get_gravity_3341600327 != nil)
        let _method_set_gravity_743155724_name = StringName(from: "set_gravity")
        self._method_set_gravity_743155724 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_gravity_743155724_name._native_ptr(), 743155724)
        assert(CPUParticles2D._method_set_gravity_743155724 != nil)
        let _method_get_split_scale_2240911060_name = StringName(from: "get_split_scale")
        self._method_get_split_scale_2240911060 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_split_scale_2240911060_name._native_ptr(), 2240911060)
        assert(CPUParticles2D._method_get_split_scale_2240911060 != nil)
        let _method_set_split_scale_2586408642_name = StringName(from: "set_split_scale")
        self._method_set_split_scale_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_split_scale_2586408642_name._native_ptr(), 2586408642)
        assert(CPUParticles2D._method_set_split_scale_2586408642 != nil)
        let _method_get_scale_curve_x_2460114913_name = StringName(from: "get_scale_curve_x")
        self._method_get_scale_curve_x_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_scale_curve_x_2460114913_name._native_ptr(), 2460114913)
        assert(CPUParticles2D._method_get_scale_curve_x_2460114913 != nil)
        let _method_set_scale_curve_x_270443179_name = StringName(from: "set_scale_curve_x")
        self._method_set_scale_curve_x_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_scale_curve_x_270443179_name._native_ptr(), 270443179)
        assert(CPUParticles2D._method_set_scale_curve_x_270443179 != nil)
        let _method_get_scale_curve_y_2460114913_name = StringName(from: "get_scale_curve_y")
        self._method_get_scale_curve_y_2460114913 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_get_scale_curve_y_2460114913_name._native_ptr(), 2460114913)
        assert(CPUParticles2D._method_get_scale_curve_y_2460114913 != nil)
        let _method_set_scale_curve_y_270443179_name = StringName(from: "set_scale_curve_y")
        self._method_set_scale_curve_y_270443179 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_set_scale_curve_y_270443179_name._native_ptr(), 270443179)
        assert(CPUParticles2D._method_set_scale_curve_y_270443179 != nil)
        let _method_convert_from_particles_1078189570_name = StringName(from: "convert_from_particles")
        self._method_convert_from_particles_1078189570 = self.interface.pointee.classdb_get_method_bind(__godot_name_CPUParticles2D._native_ptr(), _method_convert_from_particles_1078189570_name._native_ptr(), 1078189570)
        assert(CPUParticles2D._method_convert_from_particles_1078189570 != nil)
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
    public func set_draw_order(order: CPUParticles2D.DrawOrder)  {
        withUnsafePointer(to: order.rawValue) { order_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(order_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_order_4183193490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_draw_order() -> CPUParticles2D.DrawOrder {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_order_1668655735,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CPUParticles2D.DrawOrder(godot: __resPtr.pointee)
    }
    public func set_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_4051416890,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_3635182373,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
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
    public func set_direction(direction: Vector2)  {
        let direction_native = direction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(direction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_direction_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_direction() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_direction_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_spread(spread: Float64)  {
        withUnsafePointer(to: spread) { spread_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spread_native)
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
    public func set_param_min(param: CPUParticles2D.Parameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_min_3320615296,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_min(param: CPUParticles2D.Parameter) -> Float64 {
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
                    Self._method_get_param_min_2038050600,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_max(param: CPUParticles2D.Parameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_max_3320615296,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_max(param: CPUParticles2D.Parameter) -> Float64 {
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
                    Self._method_get_param_max_2038050600,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_curve(param: CPUParticles2D.Parameter, curve: Curve)  {
        withUnsafePointer(to: param.rawValue) { param_native in
        let curve_native = curve._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_param_curve_2959350143,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_param_curve(param: CPUParticles2D.Parameter) -> Curve {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_param_curve_2603158474,
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
    public func set_particle_flag(particle_flag: CPUParticles2D.ParticleFlags, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: particle_flag.rawValue) { particle_flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particle_flag_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particle_flag_4178137949,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_particle_flag(particle_flag: CPUParticles2D.ParticleFlags) -> UInt8 {
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
                    Self._method_get_particle_flag_2829976507,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_emission_shape(shape: CPUParticles2D.EmissionShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_shape_393763892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_shape() -> CPUParticles2D.EmissionShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_shape_1740246024,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return CPUParticles2D.EmissionShape(godot: __resPtr.pointee)
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
    public func set_emission_rect_extents(extents: Vector2)  {
        let extents_native = extents._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extents_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_rect_extents_743155724,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_rect_extents() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_rect_extents_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_emission_points(array: PackedVector2Array)  {
        let array_native = array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(array_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_points_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_points() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_points_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
    }
    public func set_emission_normals(array: PackedVector2Array)  {
        let array_native = array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(array_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_normals_1509147220,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_normals() -> PackedVector2Array {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_normals_2961356807,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector2Array(godot: __resPtr.pointee)
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
    public func get_gravity() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_gravity_3341600327,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func set_gravity(accel_vec: Vector2)  {
        let accel_vec_native = accel_vec._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(accel_vec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_gravity_743155724,
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