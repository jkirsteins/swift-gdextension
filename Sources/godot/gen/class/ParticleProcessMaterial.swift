import godot_native

fileprivate var __godot_name_ParticleProcessMaterial: StringName! = nil

/// Particle properties for [GPUParticles3D] and [GPUParticles2D] nodes.
/// 
/// ParticleProcessMaterial defines particle properties and behavior. It is used in the [code]process_material[/code] of [GPUParticles3D] and [GPUParticles2D] emitter nodes.
///  
/// Some of this material's properties are applied to each particle when emitted, while others can have a [CurveTexture] applied to vary values over the lifetime of the particle.
///  
/// Particle animation is available only in [GPUParticles2D]. To use it, attach a [CanvasItemMaterial], with [member CanvasItemMaterial.particles_animation] enabled, to the particles node.
open class ParticleProcessMaterial : Material {

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
        case PARAM_MAX = 15
        case PARAM_TURB_VEL_INFLUENCE = 13
        case PARAM_TURB_INIT_DISPLACEMENT = 14
        case PARAM_TURB_INFLUENCE_OVER_LIFE = 12
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
    public enum SubEmitterMode : Int32 {
        case SUB_EMITTER_DISABLED = 0
        case SUB_EMITTER_CONSTANT = 1
        case SUB_EMITTER_AT_END = 2
        case SUB_EMITTER_AT_COLLISION = 3
        case SUB_EMITTER_MAX = 4
    }
    public enum CollisionMode : Int32 {
        case COLLISION_DISABLED = 0
        case COLLISION_RIGID = 1
        case COLLISION_HIDE_ON_CONTACT = 2
        case COLLISION_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_ParticleProcessMaterial }

    static var _method_set_direction_3460891852: StringName! = nil
    static var _method_get_direction_3360562783: StringName! = nil
    static var _method_set_spread_373806689: StringName! = nil
    static var _method_get_spread_1740695150: StringName! = nil
    static var _method_set_flatness_373806689: StringName! = nil
    static var _method_get_flatness_1740695150: StringName! = nil
    static var _method_set_param_min_2295964248: StringName! = nil
    static var _method_get_param_min_3903786503: StringName! = nil
    static var _method_set_param_max_2295964248: StringName! = nil
    static var _method_get_param_max_3903786503: StringName! = nil
    static var _method_set_param_texture_526976089: StringName! = nil
    static var _method_get_param_texture_3489372978: StringName! = nil
    static var _method_set_color_2920490490: StringName! = nil
    static var _method_get_color_3444240500: StringName! = nil
    static var _method_set_color_ramp_4051416890: StringName! = nil
    static var _method_get_color_ramp_3635182373: StringName! = nil
    static var _method_set_color_initial_ramp_4051416890: StringName! = nil
    static var _method_get_color_initial_ramp_3635182373: StringName! = nil
    static var _method_set_particle_flag_1711815571: StringName! = nil
    static var _method_get_particle_flag_3895316907: StringName! = nil
    static var _method_set_emission_shape_461501442: StringName! = nil
    static var _method_get_emission_shape_3719733018: StringName! = nil
    static var _method_set_emission_sphere_radius_373806689: StringName! = nil
    static var _method_get_emission_sphere_radius_1740695150: StringName! = nil
    static var _method_set_emission_box_extents_3460891852: StringName! = nil
    static var _method_get_emission_box_extents_3360562783: StringName! = nil
    static var _method_set_emission_point_texture_4051416890: StringName! = nil
    static var _method_get_emission_point_texture_3635182373: StringName! = nil
    static var _method_set_emission_normal_texture_4051416890: StringName! = nil
    static var _method_get_emission_normal_texture_3635182373: StringName! = nil
    static var _method_set_emission_color_texture_4051416890: StringName! = nil
    static var _method_get_emission_color_texture_3635182373: StringName! = nil
    static var _method_set_emission_point_count_1286410249: StringName! = nil
    static var _method_get_emission_point_count_3905245786: StringName! = nil
    static var _method_set_emission_ring_axis_3460891852: StringName! = nil
    static var _method_get_emission_ring_axis_3360562783: StringName! = nil
    static var _method_set_emission_ring_height_373806689: StringName! = nil
    static var _method_get_emission_ring_height_1740695150: StringName! = nil
    static var _method_set_emission_ring_radius_373806689: StringName! = nil
    static var _method_get_emission_ring_radius_1740695150: StringName! = nil
    static var _method_set_emission_ring_inner_radius_373806689: StringName! = nil
    static var _method_get_emission_ring_inner_radius_1740695150: StringName! = nil
    static var _method_get_turbulence_enabled_36873697: StringName! = nil
    static var _method_set_turbulence_enabled_2586408642: StringName! = nil
    static var _method_get_turbulence_noise_strength_1740695150: StringName! = nil
    static var _method_set_turbulence_noise_strength_373806689: StringName! = nil
    static var _method_get_turbulence_noise_scale_1740695150: StringName! = nil
    static var _method_set_turbulence_noise_scale_373806689: StringName! = nil
    static var _method_get_turbulence_noise_speed_random_1740695150: StringName! = nil
    static var _method_set_turbulence_noise_speed_random_373806689: StringName! = nil
    static var _method_get_turbulence_noise_speed_3360562783: StringName! = nil
    static var _method_set_turbulence_noise_speed_3460891852: StringName! = nil
    static var _method_get_gravity_3360562783: StringName! = nil
    static var _method_set_gravity_3460891852: StringName! = nil
    static var _method_set_lifetime_randomness_373806689: StringName! = nil
    static var _method_get_lifetime_randomness_1740695150: StringName! = nil
    static var _method_get_sub_emitter_mode_2399052877: StringName! = nil
    static var _method_set_sub_emitter_mode_2161806672: StringName! = nil
    static var _method_get_sub_emitter_frequency_1740695150: StringName! = nil
    static var _method_set_sub_emitter_frequency_373806689: StringName! = nil
    static var _method_get_sub_emitter_amount_at_end_3905245786: StringName! = nil
    static var _method_set_sub_emitter_amount_at_end_1286410249: StringName! = nil
    static var _method_get_sub_emitter_amount_at_collision_3905245786: StringName! = nil
    static var _method_set_sub_emitter_amount_at_collision_1286410249: StringName! = nil
    static var _method_get_sub_emitter_keep_velocity_36873697: StringName! = nil
    static var _method_set_sub_emitter_keep_velocity_2586408642: StringName! = nil
    static var _method_set_attractor_interaction_enabled_2586408642: StringName! = nil
    static var _method_is_attractor_interaction_enabled_36873697: StringName! = nil
    static var _method_set_collision_mode_653804659: StringName! = nil
    static var _method_get_collision_mode_139371864: StringName! = nil
    static var _method_set_collision_use_scale_2586408642: StringName! = nil
    static var _method_is_collision_using_scale_36873697: StringName! = nil
    static var _method_set_collision_friction_373806689: StringName! = nil
    static var _method_get_collision_friction_1740695150: StringName! = nil
    static var _method_set_collision_bounce_373806689: StringName! = nil
    static var _method_get_collision_bounce_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_ParticleProcessMaterial == nil)
        __godot_name_ParticleProcessMaterial = StringName(from: "ParticleProcessMaterial")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_direction_3460891852 = StringName(from: "set_direction")
        assert(self._method_set_direction_3460891852 != nil)
        self._method_get_direction_3360562783 = StringName(from: "get_direction")
        assert(self._method_get_direction_3360562783 != nil)
        self._method_set_spread_373806689 = StringName(from: "set_spread")
        assert(self._method_set_spread_373806689 != nil)
        self._method_get_spread_1740695150 = StringName(from: "get_spread")
        assert(self._method_get_spread_1740695150 != nil)
        self._method_set_flatness_373806689 = StringName(from: "set_flatness")
        assert(self._method_set_flatness_373806689 != nil)
        self._method_get_flatness_1740695150 = StringName(from: "get_flatness")
        assert(self._method_get_flatness_1740695150 != nil)
        self._method_set_param_min_2295964248 = StringName(from: "set_param_min")
        assert(self._method_set_param_min_2295964248 != nil)
        self._method_get_param_min_3903786503 = StringName(from: "get_param_min")
        assert(self._method_get_param_min_3903786503 != nil)
        self._method_set_param_max_2295964248 = StringName(from: "set_param_max")
        assert(self._method_set_param_max_2295964248 != nil)
        self._method_get_param_max_3903786503 = StringName(from: "get_param_max")
        assert(self._method_get_param_max_3903786503 != nil)
        self._method_set_param_texture_526976089 = StringName(from: "set_param_texture")
        assert(self._method_set_param_texture_526976089 != nil)
        self._method_get_param_texture_3489372978 = StringName(from: "get_param_texture")
        assert(self._method_get_param_texture_3489372978 != nil)
        self._method_set_color_2920490490 = StringName(from: "set_color")
        assert(self._method_set_color_2920490490 != nil)
        self._method_get_color_3444240500 = StringName(from: "get_color")
        assert(self._method_get_color_3444240500 != nil)
        self._method_set_color_ramp_4051416890 = StringName(from: "set_color_ramp")
        assert(self._method_set_color_ramp_4051416890 != nil)
        self._method_get_color_ramp_3635182373 = StringName(from: "get_color_ramp")
        assert(self._method_get_color_ramp_3635182373 != nil)
        self._method_set_color_initial_ramp_4051416890 = StringName(from: "set_color_initial_ramp")
        assert(self._method_set_color_initial_ramp_4051416890 != nil)
        self._method_get_color_initial_ramp_3635182373 = StringName(from: "get_color_initial_ramp")
        assert(self._method_get_color_initial_ramp_3635182373 != nil)
        self._method_set_particle_flag_1711815571 = StringName(from: "set_particle_flag")
        assert(self._method_set_particle_flag_1711815571 != nil)
        self._method_get_particle_flag_3895316907 = StringName(from: "get_particle_flag")
        assert(self._method_get_particle_flag_3895316907 != nil)
        self._method_set_emission_shape_461501442 = StringName(from: "set_emission_shape")
        assert(self._method_set_emission_shape_461501442 != nil)
        self._method_get_emission_shape_3719733018 = StringName(from: "get_emission_shape")
        assert(self._method_get_emission_shape_3719733018 != nil)
        self._method_set_emission_sphere_radius_373806689 = StringName(from: "set_emission_sphere_radius")
        assert(self._method_set_emission_sphere_radius_373806689 != nil)
        self._method_get_emission_sphere_radius_1740695150 = StringName(from: "get_emission_sphere_radius")
        assert(self._method_get_emission_sphere_radius_1740695150 != nil)
        self._method_set_emission_box_extents_3460891852 = StringName(from: "set_emission_box_extents")
        assert(self._method_set_emission_box_extents_3460891852 != nil)
        self._method_get_emission_box_extents_3360562783 = StringName(from: "get_emission_box_extents")
        assert(self._method_get_emission_box_extents_3360562783 != nil)
        self._method_set_emission_point_texture_4051416890 = StringName(from: "set_emission_point_texture")
        assert(self._method_set_emission_point_texture_4051416890 != nil)
        self._method_get_emission_point_texture_3635182373 = StringName(from: "get_emission_point_texture")
        assert(self._method_get_emission_point_texture_3635182373 != nil)
        self._method_set_emission_normal_texture_4051416890 = StringName(from: "set_emission_normal_texture")
        assert(self._method_set_emission_normal_texture_4051416890 != nil)
        self._method_get_emission_normal_texture_3635182373 = StringName(from: "get_emission_normal_texture")
        assert(self._method_get_emission_normal_texture_3635182373 != nil)
        self._method_set_emission_color_texture_4051416890 = StringName(from: "set_emission_color_texture")
        assert(self._method_set_emission_color_texture_4051416890 != nil)
        self._method_get_emission_color_texture_3635182373 = StringName(from: "get_emission_color_texture")
        assert(self._method_get_emission_color_texture_3635182373 != nil)
        self._method_set_emission_point_count_1286410249 = StringName(from: "set_emission_point_count")
        assert(self._method_set_emission_point_count_1286410249 != nil)
        self._method_get_emission_point_count_3905245786 = StringName(from: "get_emission_point_count")
        assert(self._method_get_emission_point_count_3905245786 != nil)
        self._method_set_emission_ring_axis_3460891852 = StringName(from: "set_emission_ring_axis")
        assert(self._method_set_emission_ring_axis_3460891852 != nil)
        self._method_get_emission_ring_axis_3360562783 = StringName(from: "get_emission_ring_axis")
        assert(self._method_get_emission_ring_axis_3360562783 != nil)
        self._method_set_emission_ring_height_373806689 = StringName(from: "set_emission_ring_height")
        assert(self._method_set_emission_ring_height_373806689 != nil)
        self._method_get_emission_ring_height_1740695150 = StringName(from: "get_emission_ring_height")
        assert(self._method_get_emission_ring_height_1740695150 != nil)
        self._method_set_emission_ring_radius_373806689 = StringName(from: "set_emission_ring_radius")
        assert(self._method_set_emission_ring_radius_373806689 != nil)
        self._method_get_emission_ring_radius_1740695150 = StringName(from: "get_emission_ring_radius")
        assert(self._method_get_emission_ring_radius_1740695150 != nil)
        self._method_set_emission_ring_inner_radius_373806689 = StringName(from: "set_emission_ring_inner_radius")
        assert(self._method_set_emission_ring_inner_radius_373806689 != nil)
        self._method_get_emission_ring_inner_radius_1740695150 = StringName(from: "get_emission_ring_inner_radius")
        assert(self._method_get_emission_ring_inner_radius_1740695150 != nil)
        self._method_get_turbulence_enabled_36873697 = StringName(from: "get_turbulence_enabled")
        assert(self._method_get_turbulence_enabled_36873697 != nil)
        self._method_set_turbulence_enabled_2586408642 = StringName(from: "set_turbulence_enabled")
        assert(self._method_set_turbulence_enabled_2586408642 != nil)
        self._method_get_turbulence_noise_strength_1740695150 = StringName(from: "get_turbulence_noise_strength")
        assert(self._method_get_turbulence_noise_strength_1740695150 != nil)
        self._method_set_turbulence_noise_strength_373806689 = StringName(from: "set_turbulence_noise_strength")
        assert(self._method_set_turbulence_noise_strength_373806689 != nil)
        self._method_get_turbulence_noise_scale_1740695150 = StringName(from: "get_turbulence_noise_scale")
        assert(self._method_get_turbulence_noise_scale_1740695150 != nil)
        self._method_set_turbulence_noise_scale_373806689 = StringName(from: "set_turbulence_noise_scale")
        assert(self._method_set_turbulence_noise_scale_373806689 != nil)
        self._method_get_turbulence_noise_speed_random_1740695150 = StringName(from: "get_turbulence_noise_speed_random")
        assert(self._method_get_turbulence_noise_speed_random_1740695150 != nil)
        self._method_set_turbulence_noise_speed_random_373806689 = StringName(from: "set_turbulence_noise_speed_random")
        assert(self._method_set_turbulence_noise_speed_random_373806689 != nil)
        self._method_get_turbulence_noise_speed_3360562783 = StringName(from: "get_turbulence_noise_speed")
        assert(self._method_get_turbulence_noise_speed_3360562783 != nil)
        self._method_set_turbulence_noise_speed_3460891852 = StringName(from: "set_turbulence_noise_speed")
        assert(self._method_set_turbulence_noise_speed_3460891852 != nil)
        self._method_get_gravity_3360562783 = StringName(from: "get_gravity")
        assert(self._method_get_gravity_3360562783 != nil)
        self._method_set_gravity_3460891852 = StringName(from: "set_gravity")
        assert(self._method_set_gravity_3460891852 != nil)
        self._method_set_lifetime_randomness_373806689 = StringName(from: "set_lifetime_randomness")
        assert(self._method_set_lifetime_randomness_373806689 != nil)
        self._method_get_lifetime_randomness_1740695150 = StringName(from: "get_lifetime_randomness")
        assert(self._method_get_lifetime_randomness_1740695150 != nil)
        self._method_get_sub_emitter_mode_2399052877 = StringName(from: "get_sub_emitter_mode")
        assert(self._method_get_sub_emitter_mode_2399052877 != nil)
        self._method_set_sub_emitter_mode_2161806672 = StringName(from: "set_sub_emitter_mode")
        assert(self._method_set_sub_emitter_mode_2161806672 != nil)
        self._method_get_sub_emitter_frequency_1740695150 = StringName(from: "get_sub_emitter_frequency")
        assert(self._method_get_sub_emitter_frequency_1740695150 != nil)
        self._method_set_sub_emitter_frequency_373806689 = StringName(from: "set_sub_emitter_frequency")
        assert(self._method_set_sub_emitter_frequency_373806689 != nil)
        self._method_get_sub_emitter_amount_at_end_3905245786 = StringName(from: "get_sub_emitter_amount_at_end")
        assert(self._method_get_sub_emitter_amount_at_end_3905245786 != nil)
        self._method_set_sub_emitter_amount_at_end_1286410249 = StringName(from: "set_sub_emitter_amount_at_end")
        assert(self._method_set_sub_emitter_amount_at_end_1286410249 != nil)
        self._method_get_sub_emitter_amount_at_collision_3905245786 = StringName(from: "get_sub_emitter_amount_at_collision")
        assert(self._method_get_sub_emitter_amount_at_collision_3905245786 != nil)
        self._method_set_sub_emitter_amount_at_collision_1286410249 = StringName(from: "set_sub_emitter_amount_at_collision")
        assert(self._method_set_sub_emitter_amount_at_collision_1286410249 != nil)
        self._method_get_sub_emitter_keep_velocity_36873697 = StringName(from: "get_sub_emitter_keep_velocity")
        assert(self._method_get_sub_emitter_keep_velocity_36873697 != nil)
        self._method_set_sub_emitter_keep_velocity_2586408642 = StringName(from: "set_sub_emitter_keep_velocity")
        assert(self._method_set_sub_emitter_keep_velocity_2586408642 != nil)
        self._method_set_attractor_interaction_enabled_2586408642 = StringName(from: "set_attractor_interaction_enabled")
        assert(self._method_set_attractor_interaction_enabled_2586408642 != nil)
        self._method_is_attractor_interaction_enabled_36873697 = StringName(from: "is_attractor_interaction_enabled")
        assert(self._method_is_attractor_interaction_enabled_36873697 != nil)
        self._method_set_collision_mode_653804659 = StringName(from: "set_collision_mode")
        assert(self._method_set_collision_mode_653804659 != nil)
        self._method_get_collision_mode_139371864 = StringName(from: "get_collision_mode")
        assert(self._method_get_collision_mode_139371864 != nil)
        self._method_set_collision_use_scale_2586408642 = StringName(from: "set_collision_use_scale")
        assert(self._method_set_collision_use_scale_2586408642 != nil)
        self._method_is_collision_using_scale_36873697 = StringName(from: "is_collision_using_scale")
        assert(self._method_is_collision_using_scale_36873697 != nil)
        self._method_set_collision_friction_373806689 = StringName(from: "set_collision_friction")
        assert(self._method_set_collision_friction_373806689 != nil)
        self._method_get_collision_friction_1740695150 = StringName(from: "get_collision_friction")
        assert(self._method_get_collision_friction_1740695150 != nil)
        self._method_set_collision_bounce_373806689 = StringName(from: "set_collision_bounce")
        assert(self._method_set_collision_bounce_373806689 != nil)
        self._method_get_collision_bounce_1740695150 = StringName(from: "get_collision_bounce")
        assert(self._method_get_collision_bounce_1740695150 != nil)
    }

    public func set_direction(degrees: Vector3)  {
        let degrees_native = degrees._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(degrees_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_direction_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_direction_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_spread_373806689._native_ptr(),
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
    public func get_spread() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_spread_1740695150._native_ptr(),
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
    public func set_flatness(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flatness_373806689._native_ptr(),
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
    public func get_flatness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flatness_1740695150._native_ptr(),
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
    public func set_param_min(param: ParticleProcessMaterial.Parameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_min_2295964248._native_ptr(),
                    2295964248)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_min(param: ParticleProcessMaterial.Parameter) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_min_3903786503._native_ptr(),
                    3903786503)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_max(param: ParticleProcessMaterial.Parameter, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(value_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_max_2295964248._native_ptr(),
                    2295964248)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_param_max(param: ParticleProcessMaterial.Parameter) -> Float64 {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_max_3903786503._native_ptr(),
                    3903786503)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
        }
    }
    public func set_param_texture(param: ParticleProcessMaterial.Parameter, texture: Texture2D)  {
        withUnsafePointer(to: param.rawValue) { param_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native), .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_param_texture_526976089._native_ptr(),
                    526976089)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_param_texture(param: ParticleProcessMaterial.Parameter) -> Texture2D {
        withUnsafePointer(to: param.rawValue) { param_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(param_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_param_texture_3489372978._native_ptr(),
                    3489372978)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_3444240500._native_ptr(),
                    3444240500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(godot: __resPtr.pointee)
    }
    public func set_color_ramp(ramp: Texture2D)  {
        let ramp_native = ramp._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ramp_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_ramp_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_ramp() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_ramp_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_color_initial_ramp(ramp: Texture2D)  {
        let ramp_native = ramp._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ramp_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_color_initial_ramp_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_color_initial_ramp() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_color_initial_ramp_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_particle_flag(particle_flag: ParticleProcessMaterial.ParticleFlags, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: particle_flag.rawValue) { particle_flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particle_flag_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_particle_flag_1711815571._native_ptr(),
                    1711815571)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_particle_flag(particle_flag: ParticleProcessMaterial.ParticleFlags) -> UInt8 {
        withUnsafePointer(to: particle_flag.rawValue) { particle_flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particle_flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_particle_flag_3895316907._native_ptr(),
                    3895316907)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
        }
    }
    public func set_emission_shape(shape: ParticleProcessMaterial.EmissionShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_shape_461501442._native_ptr(),
                    461501442)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_shape() -> ParticleProcessMaterial.EmissionShape {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_shape_3719733018._native_ptr(),
                    3719733018)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ParticleProcessMaterial.EmissionShape(godot: __resPtr.pointee)
    }
    public func set_emission_sphere_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_sphere_radius_373806689._native_ptr(),
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
    public func get_emission_sphere_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_sphere_radius_1740695150._native_ptr(),
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
    public func set_emission_box_extents(extents: Vector3)  {
        let extents_native = extents._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(extents_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_box_extents_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_box_extents_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_emission_point_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_point_texture_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_point_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_point_texture_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_emission_normal_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_normal_texture_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_normal_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_normal_texture_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_emission_color_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_color_texture_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission_color_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_color_texture_3635182373._native_ptr(),
                    3635182373)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(godot: __resPtr.pointee)
    }
    public func set_emission_point_count(point_count: Int64)  {
        withUnsafePointer(to: point_count) { point_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_point_count_1286410249._native_ptr(),
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
    public func get_emission_point_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_point_count_3905245786._native_ptr(),
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
    public func set_emission_ring_axis(axis: Vector3)  {
        let axis_native = axis._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(axis_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_ring_axis_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_ring_axis_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_ring_height_373806689._native_ptr(),
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
    public func get_emission_ring_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_ring_height_1740695150._native_ptr(),
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
    public func set_emission_ring_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_ring_radius_373806689._native_ptr(),
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
    public func get_emission_ring_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_ring_radius_1740695150._native_ptr(),
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
    public func set_emission_ring_inner_radius(inner_radius: Float64)  {
        withUnsafePointer(to: inner_radius) { inner_radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(inner_radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_ring_inner_radius_373806689._native_ptr(),
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
    public func get_emission_ring_inner_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_ring_inner_radius_1740695150._native_ptr(),
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
    public func get_turbulence_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_turbulence_enabled_36873697._native_ptr(),
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
    public func set_turbulence_enabled(turbulence_enabled: UInt8)  {
        withUnsafePointer(to: turbulence_enabled) { turbulence_enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(turbulence_enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_turbulence_enabled_2586408642._native_ptr(),
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
    public func get_turbulence_noise_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_turbulence_noise_strength_1740695150._native_ptr(),
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
    public func set_turbulence_noise_strength(turbulence_noise_strength: Float64)  {
        withUnsafePointer(to: turbulence_noise_strength) { turbulence_noise_strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(turbulence_noise_strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_turbulence_noise_strength_373806689._native_ptr(),
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
    public func get_turbulence_noise_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_turbulence_noise_scale_1740695150._native_ptr(),
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
    public func set_turbulence_noise_scale(turbulence_noise_scale: Float64)  {
        withUnsafePointer(to: turbulence_noise_scale) { turbulence_noise_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(turbulence_noise_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_turbulence_noise_scale_373806689._native_ptr(),
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
    public func get_turbulence_noise_speed_random() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_turbulence_noise_speed_random_1740695150._native_ptr(),
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
    public func set_turbulence_noise_speed_random(turbulence_noise_speed_random: Float64)  {
        withUnsafePointer(to: turbulence_noise_speed_random) { turbulence_noise_speed_random_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(turbulence_noise_speed_random_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_turbulence_noise_speed_random_373806689._native_ptr(),
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
    public func get_turbulence_noise_speed() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_turbulence_noise_speed_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(godot: __resPtr.pointee)
    }
    public func set_turbulence_noise_speed(turbulence_noise_speed: Vector3)  {
        let turbulence_noise_speed_native = turbulence_noise_speed._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(turbulence_noise_speed_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_turbulence_noise_speed_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_gravity() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_gravity_3360562783._native_ptr(),
                    3360562783)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_gravity_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func set_lifetime_randomness(randomness: Float64)  {
        withUnsafePointer(to: randomness) { randomness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(randomness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_lifetime_randomness_373806689._native_ptr(),
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
    public func get_lifetime_randomness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_lifetime_randomness_1740695150._native_ptr(),
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
    public func get_sub_emitter_mode() -> ParticleProcessMaterial.SubEmitterMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sub_emitter_mode_2399052877._native_ptr(),
                    2399052877)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ParticleProcessMaterial.SubEmitterMode(godot: __resPtr.pointee)
    }
    public func set_sub_emitter_mode(mode: ParticleProcessMaterial.SubEmitterMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sub_emitter_mode_2161806672._native_ptr(),
                    2161806672)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sub_emitter_frequency() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sub_emitter_frequency_1740695150._native_ptr(),
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
    public func set_sub_emitter_frequency(hz: Float64)  {
        withUnsafePointer(to: hz) { hz_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(hz_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sub_emitter_frequency_373806689._native_ptr(),
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
    public func get_sub_emitter_amount_at_end() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sub_emitter_amount_at_end_3905245786._native_ptr(),
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
    public func set_sub_emitter_amount_at_end(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sub_emitter_amount_at_end_1286410249._native_ptr(),
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
    public func get_sub_emitter_amount_at_collision() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sub_emitter_amount_at_collision_3905245786._native_ptr(),
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
    public func set_sub_emitter_amount_at_collision(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sub_emitter_amount_at_collision_1286410249._native_ptr(),
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
    public func get_sub_emitter_keep_velocity() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sub_emitter_keep_velocity_36873697._native_ptr(),
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
    public func set_sub_emitter_keep_velocity(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sub_emitter_keep_velocity_2586408642._native_ptr(),
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
    public func set_attractor_interaction_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_attractor_interaction_enabled_2586408642._native_ptr(),
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
    public func is_attractor_interaction_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_attractor_interaction_enabled_36873697._native_ptr(),
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
    public func set_collision_mode(mode: ParticleProcessMaterial.CollisionMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_mode_653804659._native_ptr(),
                    653804659)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_collision_mode() -> ParticleProcessMaterial.CollisionMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_mode_139371864._native_ptr(),
                    139371864)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ParticleProcessMaterial.CollisionMode(godot: __resPtr.pointee)
    }
    public func set_collision_use_scale(radius: UInt8)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_use_scale_2586408642._native_ptr(),
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
    public func is_collision_using_scale() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_collision_using_scale_36873697._native_ptr(),
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
    public func set_collision_friction(friction: Float64)  {
        withUnsafePointer(to: friction) { friction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(friction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_friction_373806689._native_ptr(),
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
    public func get_collision_friction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_friction_1740695150._native_ptr(),
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
    public func set_collision_bounce(bounce: Float64)  {
        withUnsafePointer(to: bounce) { bounce_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bounce_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_collision_bounce_373806689._native_ptr(),
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
    public func get_collision_bounce() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_collision_bounce_1740695150._native_ptr(),
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
}