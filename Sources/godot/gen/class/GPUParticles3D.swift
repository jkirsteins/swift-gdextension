import godot_native

fileprivate var __godot_name_GPUParticles3D: StringName! = nil

/// 3D particle emitter.
/// 
/// 3D particle node used to create a variety of particle systems and effects. [GPUParticles3D] features an emitter that generates some number of particles at a given rate.
///  
/// Use the [code]process_material[/code] property to add a [ParticleProcessMaterial] to configure particle appearance and behavior. Alternatively, you can add a [ShaderMaterial] which will be applied to all particles.
open class GPUParticles3D : GeometryInstance3D {

    public enum DrawOrder : Int32 {
        case DRAW_ORDER_INDEX = 0
        case DRAW_ORDER_LIFETIME = 1
        case DRAW_ORDER_REVERSE_LIFETIME = 2
        case DRAW_ORDER_VIEW_DEPTH = 3
    }
    public enum EmitFlags : Int32 {
        case EMIT_FLAG_POSITION = 1
        case EMIT_FLAG_ROTATION_SCALE = 2
        case EMIT_FLAG_VELOCITY = 4
        case EMIT_FLAG_COLOR = 8
        case EMIT_FLAG_CUSTOM = 16
    }
    public enum TransformAlign : Int32 {
        case TRANSFORM_ALIGN_DISABLED = 0
        case TRANSFORM_ALIGN_Z_BILLBOARD = 1
        case TRANSFORM_ALIGN_Y_TO_VELOCITY = 2
        case TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY = 3
    }

    public override class var __godot_name: StringName { __godot_name_GPUParticles3D }

    static var _method_set_emitting_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_amount_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_lifetime_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_one_shot_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_pre_process_time_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_explosiveness_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_randomness_ratio_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_set_visibility_aabb_259215842: GDExtensionMethodBindPtr! = nil
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
    static var _method_get_visibility_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_get_use_local_coordinates_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_fixed_fps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_fractional_delta_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_interpolate_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_process_material_5934680: GDExtensionMethodBindPtr! = nil
    static var _method_get_speed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_get_collision_base_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_order_1208074815: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_order_3770381780: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_passes_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_set_draw_pass_mesh_969122797: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_passes_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_get_draw_pass_mesh_1576363275: GDExtensionMethodBindPtr! = nil
    static var _method_set_skin_3971435618: GDExtensionMethodBindPtr! = nil
    static var _method_get_skin_2074563878: GDExtensionMethodBindPtr! = nil
    static var _method_restart_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_capture_aabb_1068685055: GDExtensionMethodBindPtr! = nil
    static var _method_set_sub_emitter_1348162250: GDExtensionMethodBindPtr! = nil
    static var _method_get_sub_emitter_4075236667: GDExtensionMethodBindPtr! = nil
    static var _method_emit_particle_992173727: GDExtensionMethodBindPtr! = nil
    static var _method_set_trail_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_set_trail_lifetime_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_is_trail_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_trail_lifetime_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_transform_align_3892425954: GDExtensionMethodBindPtr! = nil
    static var _method_get_transform_align_2100992166: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_CORE else { return }

        __godot_name_GPUParticles3D = StringName(from: "GPUParticles3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        let _method_set_emitting_2586408642_name = StringName(from: "set_emitting")
        self._method_set_emitting_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_emitting_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles3D._method_set_emitting_2586408642 != nil)
        let _method_set_amount_1286410249_name = StringName(from: "set_amount")
        self._method_set_amount_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_amount_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles3D._method_set_amount_1286410249 != nil)
        let _method_set_lifetime_373806689_name = StringName(from: "set_lifetime")
        self._method_set_lifetime_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_lifetime_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_lifetime_373806689 != nil)
        let _method_set_one_shot_2586408642_name = StringName(from: "set_one_shot")
        self._method_set_one_shot_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_one_shot_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles3D._method_set_one_shot_2586408642 != nil)
        let _method_set_pre_process_time_373806689_name = StringName(from: "set_pre_process_time")
        self._method_set_pre_process_time_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_pre_process_time_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_pre_process_time_373806689 != nil)
        let _method_set_explosiveness_ratio_373806689_name = StringName(from: "set_explosiveness_ratio")
        self._method_set_explosiveness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_explosiveness_ratio_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_explosiveness_ratio_373806689 != nil)
        let _method_set_randomness_ratio_373806689_name = StringName(from: "set_randomness_ratio")
        self._method_set_randomness_ratio_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_randomness_ratio_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_randomness_ratio_373806689 != nil)
        let _method_set_visibility_aabb_259215842_name = StringName(from: "set_visibility_aabb")
        self._method_set_visibility_aabb_259215842 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_visibility_aabb_259215842_name._native_ptr(), 259215842)
        assert(GPUParticles3D._method_set_visibility_aabb_259215842 != nil)
        let _method_set_use_local_coordinates_2586408642_name = StringName(from: "set_use_local_coordinates")
        self._method_set_use_local_coordinates_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_use_local_coordinates_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles3D._method_set_use_local_coordinates_2586408642 != nil)
        let _method_set_fixed_fps_1286410249_name = StringName(from: "set_fixed_fps")
        self._method_set_fixed_fps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_fixed_fps_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles3D._method_set_fixed_fps_1286410249 != nil)
        let _method_set_fractional_delta_2586408642_name = StringName(from: "set_fractional_delta")
        self._method_set_fractional_delta_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_fractional_delta_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles3D._method_set_fractional_delta_2586408642 != nil)
        let _method_set_interpolate_2586408642_name = StringName(from: "set_interpolate")
        self._method_set_interpolate_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_interpolate_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles3D._method_set_interpolate_2586408642 != nil)
        let _method_set_process_material_2757459619_name = StringName(from: "set_process_material")
        self._method_set_process_material_2757459619 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_process_material_2757459619_name._native_ptr(), 2757459619)
        assert(GPUParticles3D._method_set_process_material_2757459619 != nil)
        let _method_set_speed_scale_373806689_name = StringName(from: "set_speed_scale")
        self._method_set_speed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_speed_scale_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_speed_scale_373806689 != nil)
        let _method_set_collision_base_size_373806689_name = StringName(from: "set_collision_base_size")
        self._method_set_collision_base_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_collision_base_size_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_collision_base_size_373806689 != nil)
        let _method_is_emitting_36873697_name = StringName(from: "is_emitting")
        self._method_is_emitting_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_is_emitting_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles3D._method_is_emitting_36873697 != nil)
        let _method_get_amount_3905245786_name = StringName(from: "get_amount")
        self._method_get_amount_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_amount_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles3D._method_get_amount_3905245786 != nil)
        let _method_get_lifetime_1740695150_name = StringName(from: "get_lifetime")
        self._method_get_lifetime_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_lifetime_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_lifetime_1740695150 != nil)
        let _method_get_one_shot_36873697_name = StringName(from: "get_one_shot")
        self._method_get_one_shot_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_one_shot_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles3D._method_get_one_shot_36873697 != nil)
        let _method_get_pre_process_time_1740695150_name = StringName(from: "get_pre_process_time")
        self._method_get_pre_process_time_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_pre_process_time_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_pre_process_time_1740695150 != nil)
        let _method_get_explosiveness_ratio_1740695150_name = StringName(from: "get_explosiveness_ratio")
        self._method_get_explosiveness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_explosiveness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_explosiveness_ratio_1740695150 != nil)
        let _method_get_randomness_ratio_1740695150_name = StringName(from: "get_randomness_ratio")
        self._method_get_randomness_ratio_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_randomness_ratio_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_randomness_ratio_1740695150 != nil)
        let _method_get_visibility_aabb_1068685055_name = StringName(from: "get_visibility_aabb")
        self._method_get_visibility_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_visibility_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(GPUParticles3D._method_get_visibility_aabb_1068685055 != nil)
        let _method_get_use_local_coordinates_36873697_name = StringName(from: "get_use_local_coordinates")
        self._method_get_use_local_coordinates_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_use_local_coordinates_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles3D._method_get_use_local_coordinates_36873697 != nil)
        let _method_get_fixed_fps_3905245786_name = StringName(from: "get_fixed_fps")
        self._method_get_fixed_fps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_fixed_fps_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles3D._method_get_fixed_fps_3905245786 != nil)
        let _method_get_fractional_delta_36873697_name = StringName(from: "get_fractional_delta")
        self._method_get_fractional_delta_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_fractional_delta_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles3D._method_get_fractional_delta_36873697 != nil)
        let _method_get_interpolate_36873697_name = StringName(from: "get_interpolate")
        self._method_get_interpolate_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_interpolate_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles3D._method_get_interpolate_36873697 != nil)
        let _method_get_process_material_5934680_name = StringName(from: "get_process_material")
        self._method_get_process_material_5934680 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_process_material_5934680_name._native_ptr(), 5934680)
        assert(GPUParticles3D._method_get_process_material_5934680 != nil)
        let _method_get_speed_scale_1740695150_name = StringName(from: "get_speed_scale")
        self._method_get_speed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_speed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_speed_scale_1740695150 != nil)
        let _method_get_collision_base_size_1740695150_name = StringName(from: "get_collision_base_size")
        self._method_get_collision_base_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_collision_base_size_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_collision_base_size_1740695150 != nil)
        let _method_set_draw_order_1208074815_name = StringName(from: "set_draw_order")
        self._method_set_draw_order_1208074815 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_draw_order_1208074815_name._native_ptr(), 1208074815)
        assert(GPUParticles3D._method_set_draw_order_1208074815 != nil)
        let _method_get_draw_order_3770381780_name = StringName(from: "get_draw_order")
        self._method_get_draw_order_3770381780 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_draw_order_3770381780_name._native_ptr(), 3770381780)
        assert(GPUParticles3D._method_get_draw_order_3770381780 != nil)
        let _method_set_draw_passes_1286410249_name = StringName(from: "set_draw_passes")
        self._method_set_draw_passes_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_draw_passes_1286410249_name._native_ptr(), 1286410249)
        assert(GPUParticles3D._method_set_draw_passes_1286410249 != nil)
        let _method_set_draw_pass_mesh_969122797_name = StringName(from: "set_draw_pass_mesh")
        self._method_set_draw_pass_mesh_969122797 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_draw_pass_mesh_969122797_name._native_ptr(), 969122797)
        assert(GPUParticles3D._method_set_draw_pass_mesh_969122797 != nil)
        let _method_get_draw_passes_3905245786_name = StringName(from: "get_draw_passes")
        self._method_get_draw_passes_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_draw_passes_3905245786_name._native_ptr(), 3905245786)
        assert(GPUParticles3D._method_get_draw_passes_3905245786 != nil)
        let _method_get_draw_pass_mesh_1576363275_name = StringName(from: "get_draw_pass_mesh")
        self._method_get_draw_pass_mesh_1576363275 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_draw_pass_mesh_1576363275_name._native_ptr(), 1576363275)
        assert(GPUParticles3D._method_get_draw_pass_mesh_1576363275 != nil)
        let _method_set_skin_3971435618_name = StringName(from: "set_skin")
        self._method_set_skin_3971435618 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_skin_3971435618_name._native_ptr(), 3971435618)
        assert(GPUParticles3D._method_set_skin_3971435618 != nil)
        let _method_get_skin_2074563878_name = StringName(from: "get_skin")
        self._method_get_skin_2074563878 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_skin_2074563878_name._native_ptr(), 2074563878)
        assert(GPUParticles3D._method_get_skin_2074563878 != nil)
        let _method_restart_3218959716_name = StringName(from: "restart")
        self._method_restart_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_restart_3218959716_name._native_ptr(), 3218959716)
        assert(GPUParticles3D._method_restart_3218959716 != nil)
        let _method_capture_aabb_1068685055_name = StringName(from: "capture_aabb")
        self._method_capture_aabb_1068685055 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_capture_aabb_1068685055_name._native_ptr(), 1068685055)
        assert(GPUParticles3D._method_capture_aabb_1068685055 != nil)
        let _method_set_sub_emitter_1348162250_name = StringName(from: "set_sub_emitter")
        self._method_set_sub_emitter_1348162250 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_sub_emitter_1348162250_name._native_ptr(), 1348162250)
        assert(GPUParticles3D._method_set_sub_emitter_1348162250 != nil)
        let _method_get_sub_emitter_4075236667_name = StringName(from: "get_sub_emitter")
        self._method_get_sub_emitter_4075236667 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_sub_emitter_4075236667_name._native_ptr(), 4075236667)
        assert(GPUParticles3D._method_get_sub_emitter_4075236667 != nil)
        let _method_emit_particle_992173727_name = StringName(from: "emit_particle")
        self._method_emit_particle_992173727 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_emit_particle_992173727_name._native_ptr(), 992173727)
        assert(GPUParticles3D._method_emit_particle_992173727 != nil)
        let _method_set_trail_enabled_2586408642_name = StringName(from: "set_trail_enabled")
        self._method_set_trail_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_trail_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(GPUParticles3D._method_set_trail_enabled_2586408642 != nil)
        let _method_set_trail_lifetime_373806689_name = StringName(from: "set_trail_lifetime")
        self._method_set_trail_lifetime_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_trail_lifetime_373806689_name._native_ptr(), 373806689)
        assert(GPUParticles3D._method_set_trail_lifetime_373806689 != nil)
        let _method_is_trail_enabled_36873697_name = StringName(from: "is_trail_enabled")
        self._method_is_trail_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_is_trail_enabled_36873697_name._native_ptr(), 36873697)
        assert(GPUParticles3D._method_is_trail_enabled_36873697 != nil)
        let _method_get_trail_lifetime_1740695150_name = StringName(from: "get_trail_lifetime")
        self._method_get_trail_lifetime_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_trail_lifetime_1740695150_name._native_ptr(), 1740695150)
        assert(GPUParticles3D._method_get_trail_lifetime_1740695150 != nil)
        let _method_set_transform_align_3892425954_name = StringName(from: "set_transform_align")
        self._method_set_transform_align_3892425954 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_set_transform_align_3892425954_name._native_ptr(), 3892425954)
        assert(GPUParticles3D._method_set_transform_align_3892425954 != nil)
        let _method_get_transform_align_2100992166_name = StringName(from: "get_transform_align")
        self._method_get_transform_align_2100992166 = self.interface.pointee.classdb_get_method_bind(__godot_name_GPUParticles3D._native_ptr(), _method_get_transform_align_2100992166_name._native_ptr(), 2100992166)
        assert(GPUParticles3D._method_get_transform_align_2100992166 != nil)
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
    public func set_visibility_aabb(aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_visibility_aabb_259215842,
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
    public func get_visibility_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_visibility_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
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
    public func set_draw_order(order: GPUParticles3D.DrawOrder)  {
        withUnsafePointer(to: order.rawValue) { order_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(order_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_order_1208074815,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_draw_order() -> GPUParticles3D.DrawOrder {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_order_3770381780,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticles3D.DrawOrder(godot: __resPtr.pointee)
    }
    public func set_draw_passes(passes: Int64)  {
        withUnsafePointer(to: passes) { passes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(passes_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_passes_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func set_draw_pass_mesh(pass: Int64, mesh: Mesh)  {
        withUnsafePointer(to: pass) { pass_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pass_native), .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_draw_pass_mesh_969122797,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_draw_passes() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_passes_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func get_draw_pass_mesh(pass: Int64) -> Mesh {
        withUnsafePointer(to: pass) { pass_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pass_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_draw_pass_mesh_1576363275,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Mesh(godot: __resPtr.pointee)
        }
    }
    public func set_skin(skin: Skin)  {
        let skin_native = skin._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_skin_3971435618,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_skin() -> Skin {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_skin_2074563878,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Skin(godot: __resPtr.pointee)
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
    public func capture_aabb() -> AABB {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_capture_aabb_1068685055,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(godot: __resPtr.pointee)
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
    public func emit_particle(xform: Transform3D, velocity: Vector3, color: Color, custom: Color, flags: Int64)  {
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
                    Self._method_emit_particle_992173727,
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
    public func set_transform_align(align: GPUParticles3D.TransformAlign)  {
        withUnsafePointer(to: align.rawValue) { align_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(align_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transform_align_3892425954,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_transform_align() -> GPUParticles3D.TransformAlign {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transform_align_2100992166,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return GPUParticles3D.TransformAlign(godot: __resPtr.pointee)
    }
}