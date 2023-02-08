import godot_native

fileprivate var __godot_name_GPUParticles2D: StringName! = nil

/// 2D particle emitter.
/// 
/// 2D particle node used to create a variety of particle systems and effects. [GPUParticles2D] features an emitter that generates some number of particles at a given rate.
///  
/// Use the [member process_material] property to add a [ParticleProcessMaterial] to configure particle appearance and behavior. Alternatively, you can add a [ShaderMaterial] which will be applied to all particles.
///  
/// 2D particles can optionally collide with [LightOccluder2D] nodes (note: they don't collide with [PhysicsBody2D] nodes).
open class GPUParticles2D : Node2D {

    public enum DrawOrder : Int32 {
        case DRAW_ORDER_INDEX = 0
        case DRAW_ORDER_LIFETIME = 1
        case DRAW_ORDER_REVERSE_LIFETIME = 2
    }
    public enum EmitFlags : Int32 {
        case EMIT_FLAG_POSITION = 1
        case EMIT_FLAG_ROTATION_SCALE = 2
        case EMIT_FLAG_VELOCITY = 4
        case EMIT_FLAG_COLOR = 8
        case EMIT_FLAG_CUSTOM = 16
    }

    public override class var __godot_name: StringName { __godot_name_GPUParticles2D }

    static var _method_set_emitting_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_amount_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_lifetime_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_shot_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_pre_process_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_explosiveness_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_randomness_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_rect_2046264180: GDExtensionMethodBindPtr! = nil
    static var _method_set_use_local_coordinates_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_fixed_fps_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_fractional_delta_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_interpolate_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_process_material_2757459619: GDExtensionMethodBindPtr! = nil
    static var _method_set_speed_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_collision_base_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_is_emitting_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_amount_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_lifetime_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_one_shot_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_pre_process_time_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_explosiveness_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_randomness_ratio_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_visibility_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_local_coordinates_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_fixed_fps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_fractional_delta_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_interpolate_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_get_speed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_base_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_order_1939677959: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_order_941479095: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_4051416890: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_3635182373: GDExtensionMethodBindPtr! = nil
    static var _method_capture_rect_1639390495: GDExtensionMethodBindPtr! = nil
    static var _method_restart_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_set_sub_emitter_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_sub_emitter_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_emit_particle_2179202058: GDExtensionMethodBindPtr! = nil
    static var _method_set_trail_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_trail_lifetime_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_is_trail_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_trail_lifetime_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_trail_sections_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_trail_sections_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_trail_section_subdivisions_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_trail_section_subdivisions_3905245786: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GPUParticles2D = StringName(from: "GPUParticles2D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_emitting_2586408642_name = StringName(from: "set_emitting")
        self._method_set_emitting_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_emitting_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles2D._method_set_emitting_2586408642 != nil)
        let _method_set_amount_1286410249_name = StringName(from: "set_amount")
        self._method_set_amount_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_amount_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles2D._method_set_amount_1286410249 != nil)
        let _method_set_lifetime_373806689_name = StringName(from: "set_lifetime")
        self._method_set_lifetime_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_lifetime_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_lifetime_373806689 != nil)
        let _method_set_one_shot_2586408642_name = StringName(from: "set_one_shot")
        self._method_set_one_shot_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_one_shot_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles2D._method_set_one_shot_2586408642 != nil)
        let _method_set_pre_process_time_373806689_name = StringName(from: "set_pre_process_time")
        self._method_set_pre_process_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_pre_process_time_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_pre_process_time_373806689 != nil)
        let _method_set_explosiveness_ratio_373806689_name = StringName(from: "set_explosiveness_ratio")
        self._method_set_explosiveness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_explosiveness_ratio_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_explosiveness_ratio_373806689 != nil)
        let _method_set_randomness_ratio_373806689_name = StringName(from: "set_randomness_ratio")
        self._method_set_randomness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_randomness_ratio_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_randomness_ratio_373806689 != nil)
        let _method_set_visibility_rect_2046264180_name = StringName(from: "set_visibility_rect")
        self._method_set_visibility_rect_2046264180 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_visibility_rect_2046264180_name._native_ptr(), 2046264180)
        assert(GPUParticles2D._method_set_visibility_rect_2046264180 != nil)
        let _method_set_use_local_coordinates_2586408642_name = StringName(from: "set_use_local_coordinates")
        self._method_set_use_local_coordinates_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_use_local_coordinates_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles2D._method_set_use_local_coordinates_2586408642 != nil)
        let _method_set_fixed_fps_1286410249_name = StringName(from: "set_fixed_fps")
        self._method_set_fixed_fps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_fixed_fps_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles2D._method_set_fixed_fps_1286410249 != nil)
        let _method_set_fractional_delta_2586408642_name = StringName(from: "set_fractional_delta")
        self._method_set_fractional_delta_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_fractional_delta_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles2D._method_set_fractional_delta_2586408642 != nil)
        let _method_set_interpolate_2586408642_name = StringName(from: "set_interpolate")
        self._method_set_interpolate_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_interpolate_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles2D._method_set_interpolate_2586408642 != nil)
        let _method_set_process_material_2757459619_name = StringName(from: "set_process_material")
        self._method_set_process_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_process_material_2757459619_name._native_ptr(), 2757459619)
        assert(GPUParticles2D._method_set_process_material_2757459619 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_speed_scale_373806689 != nil)
        let _method_set_collision_base_size_373806689_name = StringName(from: "set_collision_base_size")
        self._method_set_collision_base_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_collision_base_size_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_collision_base_size_373806689 != nil)
        let _method_is_emitting_36873697_name = StringName(from: "is_emitting")
        self._method_is_emitting_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_is_emitting_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles2D._method_is_emitting_36873697 != nil)
        let _method_get_amount_3905245786_name = StringName(from: "get_amount")
        self._method_get_amount_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_amount_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles2D._method_get_amount_3905245786 != nil)
        let _method_get_lifetime_1740695150_name = StringName(from: "get_lifetime")
        self._method_get_lifetime_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_lifetime_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_lifetime_1740695150 != nil)
        let _method_get_one_shot_36873697_name = StringName(from: "get_one_shot")
        self._method_get_one_shot_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_one_shot_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles2D._method_get_one_shot_36873697 != nil)
        let _method_get_pre_process_time_1740695150_name = StringName(from: "get_pre_process_time")
        self._method_get_pre_process_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_pre_process_time_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_pre_process_time_1740695150 != nil)
        let _method_get_explosiveness_ratio_1740695150_name = StringName(from: "get_explosiveness_ratio")
        self._method_get_explosiveness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_explosiveness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_explosiveness_ratio_1740695150 != nil)
        let _method_get_randomness_ratio_1740695150_name = StringName(from: "get_randomness_ratio")
        self._method_get_randomness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_randomness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_randomness_ratio_1740695150 != nil)
        let _method_get_visibility_rect_1639390495_name = StringName(from: "get_visibility_rect")
        self._method_get_visibility_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_visibility_rect_1639390495_name._native_ptr(), 1639390495)
        assert(GPUParticles2D._method_get_visibility_rect_1639390495 != nil)
        let _method_get_use_local_coordinates_36873697_name = StringName(from: "get_use_local_coordinates")
        self._method_get_use_local_coordinates_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_use_local_coordinates_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles2D._method_get_use_local_coordinates_36873697 != nil)
        let _method_get_fixed_fps_3905245786_name = StringName(from: "get_fixed_fps")
        self._method_get_fixed_fps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_fixed_fps_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles2D._method_get_fixed_fps_3905245786 != nil)
        let _method_get_fractional_delta_36873697_name = StringName(from: "get_fractional_delta")
        self._method_get_fractional_delta_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_fractional_delta_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles2D._method_get_fractional_delta_36873697 != nil)
        let _method_get_interpolate_36873697_name = StringName(from: "get_interpolate")
        self._method_get_interpolate_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_interpolate_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles2D._method_get_interpolate_36873697 != nil)
        let _method_get_process_material_5934680_name = StringName(from: "get_process_material")
        self._method_get_process_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_process_material_5934680_name._native_ptr(), 5934680)
        assert(GPUParticles2D._method_get_process_material_5934680 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_speed_scale_1740695150 != nil)
        let _method_get_collision_base_size_1740695150_name = StringName(from: "get_collision_base_size")
        self._method_get_collision_base_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_collision_base_size_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_collision_base_size_1740695150 != nil)
        let _method_set_draw_order_1939677959_name = StringName(from: "set_draw_order")
        self._method_set_draw_order_1939677959 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_draw_order_1939677959_name._native_ptr(), 1939677959)
        assert(GPUParticles2D._method_set_draw_order_1939677959 != nil)
        let _method_get_draw_order_941479095_name = StringName(from: "get_draw_order")
        self._method_get_draw_order_941479095 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_draw_order_941479095_name._native_ptr(), 941479095)
        assert(GPUParticles2D._method_get_draw_order_941479095 != nil)
        let _method_set_texture_4051416890_name = StringName(from: "set_texture")
        self._method_set_texture_4051416890 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_texture_4051416890_name._native_ptr(), 4051416890)
        assert(GPUParticles2D._method_set_texture_4051416890 != nil)
        let _method_get_texture_3635182373_name = StringName(from: "get_texture")
        self._method_get_texture_3635182373 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_texture_3635182373_name._native_ptr(), 3635182373)
        assert(GPUParticles2D._method_get_texture_3635182373 != nil)
        let _method_capture_rect_1639390495_name = StringName(from: "capture_rect")
        self._method_capture_rect_1639390495 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_capture_rect_1639390495_name._native_ptr(), 1639390495)
        assert(GPUParticles2D._method_capture_rect_1639390495 != nil)
        let _method_restart_3218959716_name = StringName(from: "restart")
        self._method_restart_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_restart_3218959716_name._native_ptr(), 3218959716)
        assert(GPUParticles2D._method_restart_3218959716 != nil)
        let _method_set_sub_emitter_1348162250_name = StringName(from: "set_sub_emitter")
        self._method_set_sub_emitter_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_sub_emitter_1348162250_name._native_ptr(), 1348162250)
        assert(GPUParticles2D._method_set_sub_emitter_1348162250 != nil)
        let _method_get_sub_emitter_4075236667_name = StringName(from: "get_sub_emitter")
        self._method_get_sub_emitter_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_sub_emitter_4075236667_name._native_ptr(), 4075236667)
        assert(GPUParticles2D._method_get_sub_emitter_4075236667 != nil)
        let _method_emit_particle_2179202058_name = StringName(from: "emit_particle")
        self._method_emit_particle_2179202058 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_emit_particle_2179202058_name._native_ptr(), 2179202058)
        assert(GPUParticles2D._method_emit_particle_2179202058 != nil)
        let _method_set_trail_enabled_2586408642_name = StringName(from: "set_trail_enabled")
        self._method_set_trail_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_trail_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles2D._method_set_trail_enabled_2586408642 != nil)
        let _method_set_trail_lifetime_373806689_name = StringName(from: "set_trail_lifetime")
        self._method_set_trail_lifetime_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_trail_lifetime_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles2D._method_set_trail_lifetime_373806689 != nil)
        let _method_is_trail_enabled_36873697_name = StringName(from: "is_trail_enabled")
        self._method_is_trail_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_is_trail_enabled_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles2D._method_is_trail_enabled_36873697 != nil)
        let _method_get_trail_lifetime_1740695150_name = StringName(from: "get_trail_lifetime")
        self._method_get_trail_lifetime_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_trail_lifetime_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles2D._method_get_trail_lifetime_1740695150 != nil)
        let _method_set_trail_sections_1286410249_name = StringName(from: "set_trail_sections")
        self._method_set_trail_sections_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_trail_sections_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles2D._method_set_trail_sections_1286410249 != nil)
        let _method_get_trail_sections_3905245786_name = StringName(from: "get_trail_sections")
        self._method_get_trail_sections_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_trail_sections_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles2D._method_get_trail_sections_3905245786 != nil)
        let _method_set_trail_section_subdivisions_1286410249_name = StringName(from: "set_trail_section_subdivisions")
        self._method_set_trail_section_subdivisions_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_set_trail_section_subdivisions_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles2D._method_set_trail_section_subdivisions_1286410249 != nil)
        let _method_get_trail_section_subdivisions_3905245786_name = StringName(from: "get_trail_section_subdivisions")
        self._method_get_trail_section_subdivisions_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles2D._native_ptr(), _method_get_trail_section_subdivisions_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles2D._method_get_trail_section_subdivisions_3905245786 != nil)
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
    public func set_one_shot(secs: UInt8)  {
        withUnsafePointer(to: secs) { secs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(secs_native)
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
    public func set_visibility_rect(visibility_rect: Rect2)  {
        let visibility_rect_native = visibility_rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(visibility_rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_rect_2046264180,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func set_interpolate(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_interpolate_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_process_material(material: Material)  {
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_process_material_2757459619,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
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
    public func set_collision_base_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_collision_base_size_373806689,
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
    public func get_visibility_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_rect_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
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
    public func get_interpolate() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_interpolate_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_process_material() -> Material {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_process_material_5934680,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Material(godot: __resPtr.pointee)
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
    public func get_collision_base_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_collision_base_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_draw_order(order: GPUParticles2D.DrawOrder)  {
        withUnsafePointer(to: order.rawValue) { order_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(order_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_order_1939677959,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_draw_order() -> GPUParticles2D.DrawOrder {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_order_941479095,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticles2D.DrawOrder(godot: __resPtr.pointee)
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
    public func capture_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_capture_rect_1639390495,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
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
    public func set_sub_emitter(path: NodePath)  {
        let path_native = path._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sub_emitter_1348162250,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sub_emitter() -> NodePath {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sub_emitter_4075236667,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return NodePath(godot: __resPtr.pointee)
    }
    public func emit_particle(xform: Transform2D, velocity: Vector2, color: Color, custom: Color, flags: Int64)  {
        withUnsafePointer(to: flags) { flags_native in
        let custom_native = custom._native_ptr()
        let color_native = color._native_ptr()
        let velocity_native = velocity._native_ptr()
        let xform_native = xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(xform_native), .init(velocity_native), .init(color_native), .init(custom_native), .init(flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_emit_particle_2179202058,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_trail_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_trail_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_trail_lifetime(secs: Float64)  {
        withUnsafePointer(to: secs) { secs_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(secs_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_trail_lifetime_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_trail_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_trail_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_trail_lifetime() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_trail_lifetime_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(godot: __resPtr.pointee)
    }
    public func set_trail_sections(sections: Int64)  {
        withUnsafePointer(to: sections) { sections_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sections_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_trail_sections_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_trail_sections() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_trail_sections_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func set_trail_section_subdivisions(subdivisions: Int64)  {
        withUnsafePointer(to: subdivisions) { subdivisions_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(subdivisions_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_trail_section_subdivisions_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_trail_section_subdivisions() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_trail_section_subdivisions_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
}