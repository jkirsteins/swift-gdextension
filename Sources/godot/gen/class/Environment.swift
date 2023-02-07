import godot_native

fileprivate var __godot_name_Environment: StringName! = nil

/// Resource for environment nodes (like [WorldEnvironment]) that define multiple rendering options.
/// 
/// Resource for environment nodes (like [WorldEnvironment]) that define multiple environment operations (such as background [Sky] or [Color], ambient light, fog, depth-of-field...). These parameters affect the final render of the scene. The order of these operations is:
///  
/// - Depth of Field Blur
///  
/// - Glow
///  
/// - Tonemap (Auto Exposure)
///  
/// - Adjustments
public class Environment : Resource {

    public enum BGMode : Int32 {
        case BG_CLEAR_COLOR = 0
        case BG_COLOR = 1
        case BG_SKY = 2
        case BG_CANVAS = 3
        case BG_KEEP = 4
        case BG_CAMERA_FEED = 5
        case BG_MAX = 6
    }
    public enum AmbientSource : Int32 {
        case AMBIENT_SOURCE_BG = 0
        case AMBIENT_SOURCE_DISABLED = 1
        case AMBIENT_SOURCE_COLOR = 2
        case AMBIENT_SOURCE_SKY = 3
    }
    public enum ReflectionSource : Int32 {
        case REFLECTION_SOURCE_BG = 0
        case REFLECTION_SOURCE_DISABLED = 1
        case REFLECTION_SOURCE_SKY = 2
    }
    public enum ToneMapper : Int32 {
        case TONE_MAPPER_LINEAR = 0
        case TONE_MAPPER_REINHARDT = 1
        case TONE_MAPPER_FILMIC = 2
        case TONE_MAPPER_ACES = 3
    }
    public enum GlowBlendMode : Int32 {
        case GLOW_BLEND_MODE_ADDITIVE = 0
        case GLOW_BLEND_MODE_SCREEN = 1
        case GLOW_BLEND_MODE_SOFTLIGHT = 2
        case GLOW_BLEND_MODE_REPLACE = 3
        case GLOW_BLEND_MODE_MIX = 4
    }
    public enum SDFGIYScale : Int32 {
        case SDFGI_Y_SCALE_50_PERCENT = 0
        case SDFGI_Y_SCALE_75_PERCENT = 1
        case SDFGI_Y_SCALE_100_PERCENT = 2
    }

    public override class var __godot_name: StringName { __godot_name_Environment }

    static var _method_set_background_4071623990: GDExtensionMethodBindPtr! = nil
    static var _method_get_background_1843210413: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_3336722921: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_1177136966: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_custom_fov_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_custom_fov_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sky_rotation_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_sky_rotation_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_bg_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_bg_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_bg_energy_multiplier_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bg_energy_multiplier_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_bg_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_bg_intensity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_canvas_max_layer_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_canvas_max_layer_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_camera_feed_id_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_camera_feed_id_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_light_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_light_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_source_2607780160: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_source_67453933: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_light_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_light_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ambient_light_sky_contribution_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ambient_light_sky_contribution_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_reflection_source_299673197: GDExtensionMethodBindPtr! = nil
    static var _method_get_reflection_source_777700713: GDExtensionMethodBindPtr! = nil
    static var _method_set_tonemapper_1509116664: GDExtensionMethodBindPtr! = nil
    static var _method_get_tonemapper_2908408137: GDExtensionMethodBindPtr! = nil
    static var _method_set_tonemap_exposure_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tonemap_exposure_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_tonemap_white_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_tonemap_white_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssr_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ssr_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssr_max_steps_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssr_max_steps_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssr_fade_in_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssr_fade_in_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssr_fade_out_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssr_fade_out_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssr_depth_tolerance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssr_depth_tolerance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ssao_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_intensity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_power_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_power_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_detail_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_detail_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_horizon_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_horizon_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_sharpness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_sharpness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_direct_light_affect_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_direct_light_affect_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssao_ao_channel_affect_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssao_ao_channel_affect_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssil_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_ssil_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssil_radius_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssil_radius_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssil_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssil_intensity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssil_sharpness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssil_sharpness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_ssil_normal_rejection_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ssil_normal_rejection_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sdfgi_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_cascades_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_cascades_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_min_cell_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_min_cell_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_max_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_max_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_cascade0_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_cascade0_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_y_scale_3608608372: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_y_scale_2568002245: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_use_occlusion_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sdfgi_using_occlusion_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_bounce_feedback_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_bounce_feedback_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_read_sky_light_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_sdfgi_reading_sky_light_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_normal_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_normal_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_sdfgi_probe_bias_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_sdfgi_probe_bias_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_glow_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_level_1602489585: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_level_2339986948: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_normalized_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_glow_normalized_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_intensity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_strength_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_mix_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_mix_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_bloom_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_bloom_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_blend_mode_2561587761: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_blend_mode_1529667332: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_hdr_bleed_threshold_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_hdr_bleed_threshold_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_hdr_bleed_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_hdr_bleed_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_hdr_luminance_cap_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_hdr_luminance_cap_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_map_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_map_strength_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_glow_map_1790811099: GDExtensionMethodBindPtr! = nil
    static var _method_get_glow_map_4037048985: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_fog_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_light_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_light_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_light_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_light_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_sun_scatter_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_sun_scatter_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_density_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_density_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_height_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_height_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_height_density_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_height_density_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_aerial_perspective_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_aerial_perspective_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_fog_sky_affect_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_fog_sky_affect_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_volumetric_fog_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_emission_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_emission_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_albedo_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_albedo_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_density_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_density_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_emission_energy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_emission_energy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_anisotropy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_anisotropy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_length_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_length_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_detail_spread_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_detail_spread_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_gi_inject_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_gi_inject_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_ambient_inject_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_ambient_inject_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_sky_affect_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_sky_affect_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_temporal_reprojection_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_volumetric_fog_temporal_reprojection_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_volumetric_fog_temporal_reprojection_amount_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_volumetric_fog_temporal_reprojection_amount_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_adjustment_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_adjustment_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_adjustment_brightness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_adjustment_brightness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_adjustment_contrast_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_adjustment_contrast_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_adjustment_saturation_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_adjustment_saturation_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_adjustment_color_correction_1790811099: GDExtensionMethodBindPtr! = nil
    static var _method_get_adjustment_color_correction_4037048985: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_Environment = StringName(from: "Environment")

        let _method_set_background_4071623990_name = StringName(from: "set_background")
        self._method_set_background_4071623990 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_background_4071623990_name._native_ptr(), 4071623990)
        assert(Environment._method_set_background_4071623990 != nil)
        let _method_get_background_1843210413_name = StringName(from: "get_background")
        self._method_get_background_1843210413 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_background_1843210413_name._native_ptr(), 1843210413)
        assert(Environment._method_get_background_1843210413 != nil)
        let _method_set_sky_3336722921_name = StringName(from: "set_sky")
        self._method_set_sky_3336722921 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_3336722921_name._native_ptr(), 3336722921)
        assert(Environment._method_set_sky_3336722921 != nil)
        let _method_get_sky_1177136966_name = StringName(from: "get_sky")
        self._method_get_sky_1177136966 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_1177136966_name._native_ptr(), 1177136966)
        assert(Environment._method_get_sky_1177136966 != nil)
        let _method_set_sky_custom_fov_373806689_name = StringName(from: "set_sky_custom_fov")
        self._method_set_sky_custom_fov_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_custom_fov_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sky_custom_fov_373806689 != nil)
        let _method_get_sky_custom_fov_1740695150_name = StringName(from: "get_sky_custom_fov")
        self._method_get_sky_custom_fov_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_custom_fov_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sky_custom_fov_1740695150 != nil)
        let _method_set_sky_rotation_3460891852_name = StringName(from: "set_sky_rotation")
        self._method_set_sky_rotation_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sky_rotation_3460891852_name._native_ptr(), 3460891852)
        assert(Environment._method_set_sky_rotation_3460891852 != nil)
        let _method_get_sky_rotation_3360562783_name = StringName(from: "get_sky_rotation")
        self._method_get_sky_rotation_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sky_rotation_3360562783_name._native_ptr(), 3360562783)
        assert(Environment._method_get_sky_rotation_3360562783 != nil)
        let _method_set_bg_color_2920490490_name = StringName(from: "set_bg_color")
        self._method_set_bg_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bg_color_2920490490_name._native_ptr(), 2920490490)
        assert(Environment._method_set_bg_color_2920490490 != nil)
        let _method_get_bg_color_3444240500_name = StringName(from: "get_bg_color")
        self._method_get_bg_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bg_color_3444240500_name._native_ptr(), 3444240500)
        assert(Environment._method_get_bg_color_3444240500 != nil)
        let _method_set_bg_energy_multiplier_373806689_name = StringName(from: "set_bg_energy_multiplier")
        self._method_set_bg_energy_multiplier_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bg_energy_multiplier_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_bg_energy_multiplier_373806689 != nil)
        let _method_get_bg_energy_multiplier_1740695150_name = StringName(from: "get_bg_energy_multiplier")
        self._method_get_bg_energy_multiplier_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bg_energy_multiplier_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_bg_energy_multiplier_1740695150 != nil)
        let _method_set_bg_intensity_373806689_name = StringName(from: "set_bg_intensity")
        self._method_set_bg_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_bg_intensity_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_bg_intensity_373806689 != nil)
        let _method_get_bg_intensity_1740695150_name = StringName(from: "get_bg_intensity")
        self._method_get_bg_intensity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_bg_intensity_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_bg_intensity_1740695150 != nil)
        let _method_set_canvas_max_layer_1286410249_name = StringName(from: "set_canvas_max_layer")
        self._method_set_canvas_max_layer_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_canvas_max_layer_1286410249_name._native_ptr(), 1286410249)
        assert(Environment._method_set_canvas_max_layer_1286410249 != nil)
        let _method_get_canvas_max_layer_3905245786_name = StringName(from: "get_canvas_max_layer")
        self._method_get_canvas_max_layer_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_canvas_max_layer_3905245786_name._native_ptr(), 3905245786)
        assert(Environment._method_get_canvas_max_layer_3905245786 != nil)
        let _method_set_camera_feed_id_1286410249_name = StringName(from: "set_camera_feed_id")
        self._method_set_camera_feed_id_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_camera_feed_id_1286410249_name._native_ptr(), 1286410249)
        assert(Environment._method_set_camera_feed_id_1286410249 != nil)
        let _method_get_camera_feed_id_3905245786_name = StringName(from: "get_camera_feed_id")
        self._method_get_camera_feed_id_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_camera_feed_id_3905245786_name._native_ptr(), 3905245786)
        assert(Environment._method_get_camera_feed_id_3905245786 != nil)
        let _method_set_ambient_light_color_2920490490_name = StringName(from: "set_ambient_light_color")
        self._method_set_ambient_light_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ambient_light_color_2920490490_name._native_ptr(), 2920490490)
        assert(Environment._method_set_ambient_light_color_2920490490 != nil)
        let _method_get_ambient_light_color_3444240500_name = StringName(from: "get_ambient_light_color")
        self._method_get_ambient_light_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ambient_light_color_3444240500_name._native_ptr(), 3444240500)
        assert(Environment._method_get_ambient_light_color_3444240500 != nil)
        let _method_set_ambient_source_2607780160_name = StringName(from: "set_ambient_source")
        self._method_set_ambient_source_2607780160 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ambient_source_2607780160_name._native_ptr(), 2607780160)
        assert(Environment._method_set_ambient_source_2607780160 != nil)
        let _method_get_ambient_source_67453933_name = StringName(from: "get_ambient_source")
        self._method_get_ambient_source_67453933 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ambient_source_67453933_name._native_ptr(), 67453933)
        assert(Environment._method_get_ambient_source_67453933 != nil)
        let _method_set_ambient_light_energy_373806689_name = StringName(from: "set_ambient_light_energy")
        self._method_set_ambient_light_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ambient_light_energy_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ambient_light_energy_373806689 != nil)
        let _method_get_ambient_light_energy_1740695150_name = StringName(from: "get_ambient_light_energy")
        self._method_get_ambient_light_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ambient_light_energy_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ambient_light_energy_1740695150 != nil)
        let _method_set_ambient_light_sky_contribution_373806689_name = StringName(from: "set_ambient_light_sky_contribution")
        self._method_set_ambient_light_sky_contribution_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ambient_light_sky_contribution_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ambient_light_sky_contribution_373806689 != nil)
        let _method_get_ambient_light_sky_contribution_1740695150_name = StringName(from: "get_ambient_light_sky_contribution")
        self._method_get_ambient_light_sky_contribution_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ambient_light_sky_contribution_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ambient_light_sky_contribution_1740695150 != nil)
        let _method_set_reflection_source_299673197_name = StringName(from: "set_reflection_source")
        self._method_set_reflection_source_299673197 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_reflection_source_299673197_name._native_ptr(), 299673197)
        assert(Environment._method_set_reflection_source_299673197 != nil)
        let _method_get_reflection_source_777700713_name = StringName(from: "get_reflection_source")
        self._method_get_reflection_source_777700713 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_reflection_source_777700713_name._native_ptr(), 777700713)
        assert(Environment._method_get_reflection_source_777700713 != nil)
        let _method_set_tonemapper_1509116664_name = StringName(from: "set_tonemapper")
        self._method_set_tonemapper_1509116664 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tonemapper_1509116664_name._native_ptr(), 1509116664)
        assert(Environment._method_set_tonemapper_1509116664 != nil)
        let _method_get_tonemapper_2908408137_name = StringName(from: "get_tonemapper")
        self._method_get_tonemapper_2908408137 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tonemapper_2908408137_name._native_ptr(), 2908408137)
        assert(Environment._method_get_tonemapper_2908408137 != nil)
        let _method_set_tonemap_exposure_373806689_name = StringName(from: "set_tonemap_exposure")
        self._method_set_tonemap_exposure_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tonemap_exposure_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_tonemap_exposure_373806689 != nil)
        let _method_get_tonemap_exposure_1740695150_name = StringName(from: "get_tonemap_exposure")
        self._method_get_tonemap_exposure_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tonemap_exposure_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_tonemap_exposure_1740695150 != nil)
        let _method_set_tonemap_white_373806689_name = StringName(from: "set_tonemap_white")
        self._method_set_tonemap_white_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_tonemap_white_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_tonemap_white_373806689 != nil)
        let _method_get_tonemap_white_1740695150_name = StringName(from: "get_tonemap_white")
        self._method_get_tonemap_white_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_tonemap_white_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_tonemap_white_1740695150 != nil)
        let _method_set_ssr_enabled_2586408642_name = StringName(from: "set_ssr_enabled")
        self._method_set_ssr_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssr_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_ssr_enabled_2586408642 != nil)
        let _method_is_ssr_enabled_36873697_name = StringName(from: "is_ssr_enabled")
        self._method_is_ssr_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ssr_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_ssr_enabled_36873697 != nil)
        let _method_set_ssr_max_steps_1286410249_name = StringName(from: "set_ssr_max_steps")
        self._method_set_ssr_max_steps_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssr_max_steps_1286410249_name._native_ptr(), 1286410249)
        assert(Environment._method_set_ssr_max_steps_1286410249 != nil)
        let _method_get_ssr_max_steps_3905245786_name = StringName(from: "get_ssr_max_steps")
        self._method_get_ssr_max_steps_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssr_max_steps_3905245786_name._native_ptr(), 3905245786)
        assert(Environment._method_get_ssr_max_steps_3905245786 != nil)
        let _method_set_ssr_fade_in_373806689_name = StringName(from: "set_ssr_fade_in")
        self._method_set_ssr_fade_in_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssr_fade_in_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssr_fade_in_373806689 != nil)
        let _method_get_ssr_fade_in_1740695150_name = StringName(from: "get_ssr_fade_in")
        self._method_get_ssr_fade_in_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssr_fade_in_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssr_fade_in_1740695150 != nil)
        let _method_set_ssr_fade_out_373806689_name = StringName(from: "set_ssr_fade_out")
        self._method_set_ssr_fade_out_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssr_fade_out_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssr_fade_out_373806689 != nil)
        let _method_get_ssr_fade_out_1740695150_name = StringName(from: "get_ssr_fade_out")
        self._method_get_ssr_fade_out_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssr_fade_out_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssr_fade_out_1740695150 != nil)
        let _method_set_ssr_depth_tolerance_373806689_name = StringName(from: "set_ssr_depth_tolerance")
        self._method_set_ssr_depth_tolerance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssr_depth_tolerance_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssr_depth_tolerance_373806689 != nil)
        let _method_get_ssr_depth_tolerance_1740695150_name = StringName(from: "get_ssr_depth_tolerance")
        self._method_get_ssr_depth_tolerance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssr_depth_tolerance_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssr_depth_tolerance_1740695150 != nil)
        let _method_set_ssao_enabled_2586408642_name = StringName(from: "set_ssao_enabled")
        self._method_set_ssao_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_ssao_enabled_2586408642 != nil)
        let _method_is_ssao_enabled_36873697_name = StringName(from: "is_ssao_enabled")
        self._method_is_ssao_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ssao_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_ssao_enabled_36873697 != nil)
        let _method_set_ssao_radius_373806689_name = StringName(from: "set_ssao_radius")
        self._method_set_ssao_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_radius_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_radius_373806689 != nil)
        let _method_get_ssao_radius_1740695150_name = StringName(from: "get_ssao_radius")
        self._method_get_ssao_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_radius_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_radius_1740695150 != nil)
        let _method_set_ssao_intensity_373806689_name = StringName(from: "set_ssao_intensity")
        self._method_set_ssao_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_intensity_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_intensity_373806689 != nil)
        let _method_get_ssao_intensity_1740695150_name = StringName(from: "get_ssao_intensity")
        self._method_get_ssao_intensity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_intensity_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_intensity_1740695150 != nil)
        let _method_set_ssao_power_373806689_name = StringName(from: "set_ssao_power")
        self._method_set_ssao_power_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_power_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_power_373806689 != nil)
        let _method_get_ssao_power_1740695150_name = StringName(from: "get_ssao_power")
        self._method_get_ssao_power_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_power_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_power_1740695150 != nil)
        let _method_set_ssao_detail_373806689_name = StringName(from: "set_ssao_detail")
        self._method_set_ssao_detail_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_detail_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_detail_373806689 != nil)
        let _method_get_ssao_detail_1740695150_name = StringName(from: "get_ssao_detail")
        self._method_get_ssao_detail_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_detail_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_detail_1740695150 != nil)
        let _method_set_ssao_horizon_373806689_name = StringName(from: "set_ssao_horizon")
        self._method_set_ssao_horizon_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_horizon_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_horizon_373806689 != nil)
        let _method_get_ssao_horizon_1740695150_name = StringName(from: "get_ssao_horizon")
        self._method_get_ssao_horizon_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_horizon_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_horizon_1740695150 != nil)
        let _method_set_ssao_sharpness_373806689_name = StringName(from: "set_ssao_sharpness")
        self._method_set_ssao_sharpness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_sharpness_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_sharpness_373806689 != nil)
        let _method_get_ssao_sharpness_1740695150_name = StringName(from: "get_ssao_sharpness")
        self._method_get_ssao_sharpness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_sharpness_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_sharpness_1740695150 != nil)
        let _method_set_ssao_direct_light_affect_373806689_name = StringName(from: "set_ssao_direct_light_affect")
        self._method_set_ssao_direct_light_affect_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_direct_light_affect_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_direct_light_affect_373806689 != nil)
        let _method_get_ssao_direct_light_affect_1740695150_name = StringName(from: "get_ssao_direct_light_affect")
        self._method_get_ssao_direct_light_affect_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_direct_light_affect_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_direct_light_affect_1740695150 != nil)
        let _method_set_ssao_ao_channel_affect_373806689_name = StringName(from: "set_ssao_ao_channel_affect")
        self._method_set_ssao_ao_channel_affect_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssao_ao_channel_affect_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssao_ao_channel_affect_373806689 != nil)
        let _method_get_ssao_ao_channel_affect_1740695150_name = StringName(from: "get_ssao_ao_channel_affect")
        self._method_get_ssao_ao_channel_affect_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssao_ao_channel_affect_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssao_ao_channel_affect_1740695150 != nil)
        let _method_set_ssil_enabled_2586408642_name = StringName(from: "set_ssil_enabled")
        self._method_set_ssil_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssil_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_ssil_enabled_2586408642 != nil)
        let _method_is_ssil_enabled_36873697_name = StringName(from: "is_ssil_enabled")
        self._method_is_ssil_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_ssil_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_ssil_enabled_36873697 != nil)
        let _method_set_ssil_radius_373806689_name = StringName(from: "set_ssil_radius")
        self._method_set_ssil_radius_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssil_radius_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssil_radius_373806689 != nil)
        let _method_get_ssil_radius_1740695150_name = StringName(from: "get_ssil_radius")
        self._method_get_ssil_radius_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssil_radius_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssil_radius_1740695150 != nil)
        let _method_set_ssil_intensity_373806689_name = StringName(from: "set_ssil_intensity")
        self._method_set_ssil_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssil_intensity_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssil_intensity_373806689 != nil)
        let _method_get_ssil_intensity_1740695150_name = StringName(from: "get_ssil_intensity")
        self._method_get_ssil_intensity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssil_intensity_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssil_intensity_1740695150 != nil)
        let _method_set_ssil_sharpness_373806689_name = StringName(from: "set_ssil_sharpness")
        self._method_set_ssil_sharpness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssil_sharpness_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssil_sharpness_373806689 != nil)
        let _method_get_ssil_sharpness_1740695150_name = StringName(from: "get_ssil_sharpness")
        self._method_get_ssil_sharpness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssil_sharpness_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssil_sharpness_1740695150 != nil)
        let _method_set_ssil_normal_rejection_373806689_name = StringName(from: "set_ssil_normal_rejection")
        self._method_set_ssil_normal_rejection_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ssil_normal_rejection_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_ssil_normal_rejection_373806689 != nil)
        let _method_get_ssil_normal_rejection_1740695150_name = StringName(from: "get_ssil_normal_rejection")
        self._method_get_ssil_normal_rejection_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ssil_normal_rejection_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_ssil_normal_rejection_1740695150 != nil)
        let _method_set_sdfgi_enabled_2586408642_name = StringName(from: "set_sdfgi_enabled")
        self._method_set_sdfgi_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_sdfgi_enabled_2586408642 != nil)
        let _method_is_sdfgi_enabled_36873697_name = StringName(from: "is_sdfgi_enabled")
        self._method_is_sdfgi_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_sdfgi_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_sdfgi_enabled_36873697 != nil)
        let _method_set_sdfgi_cascades_1286410249_name = StringName(from: "set_sdfgi_cascades")
        self._method_set_sdfgi_cascades_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_cascades_1286410249_name._native_ptr(), 1286410249)
        assert(Environment._method_set_sdfgi_cascades_1286410249 != nil)
        let _method_get_sdfgi_cascades_3905245786_name = StringName(from: "get_sdfgi_cascades")
        self._method_get_sdfgi_cascades_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_cascades_3905245786_name._native_ptr(), 3905245786)
        assert(Environment._method_get_sdfgi_cascades_3905245786 != nil)
        let _method_set_sdfgi_min_cell_size_373806689_name = StringName(from: "set_sdfgi_min_cell_size")
        self._method_set_sdfgi_min_cell_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_min_cell_size_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_min_cell_size_373806689 != nil)
        let _method_get_sdfgi_min_cell_size_1740695150_name = StringName(from: "get_sdfgi_min_cell_size")
        self._method_get_sdfgi_min_cell_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_min_cell_size_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_min_cell_size_1740695150 != nil)
        let _method_set_sdfgi_max_distance_373806689_name = StringName(from: "set_sdfgi_max_distance")
        self._method_set_sdfgi_max_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_max_distance_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_max_distance_373806689 != nil)
        let _method_get_sdfgi_max_distance_1740695150_name = StringName(from: "get_sdfgi_max_distance")
        self._method_get_sdfgi_max_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_max_distance_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_max_distance_1740695150 != nil)
        let _method_set_sdfgi_cascade0_distance_373806689_name = StringName(from: "set_sdfgi_cascade0_distance")
        self._method_set_sdfgi_cascade0_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_cascade0_distance_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_cascade0_distance_373806689 != nil)
        let _method_get_sdfgi_cascade0_distance_1740695150_name = StringName(from: "get_sdfgi_cascade0_distance")
        self._method_get_sdfgi_cascade0_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_cascade0_distance_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_cascade0_distance_1740695150 != nil)
        let _method_set_sdfgi_y_scale_3608608372_name = StringName(from: "set_sdfgi_y_scale")
        self._method_set_sdfgi_y_scale_3608608372 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_y_scale_3608608372_name._native_ptr(), 3608608372)
        assert(Environment._method_set_sdfgi_y_scale_3608608372 != nil)
        let _method_get_sdfgi_y_scale_2568002245_name = StringName(from: "get_sdfgi_y_scale")
        self._method_get_sdfgi_y_scale_2568002245 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_y_scale_2568002245_name._native_ptr(), 2568002245)
        assert(Environment._method_get_sdfgi_y_scale_2568002245 != nil)
        let _method_set_sdfgi_use_occlusion_2586408642_name = StringName(from: "set_sdfgi_use_occlusion")
        self._method_set_sdfgi_use_occlusion_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_use_occlusion_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_sdfgi_use_occlusion_2586408642 != nil)
        let _method_is_sdfgi_using_occlusion_36873697_name = StringName(from: "is_sdfgi_using_occlusion")
        self._method_is_sdfgi_using_occlusion_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_sdfgi_using_occlusion_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_sdfgi_using_occlusion_36873697 != nil)
        let _method_set_sdfgi_bounce_feedback_373806689_name = StringName(from: "set_sdfgi_bounce_feedback")
        self._method_set_sdfgi_bounce_feedback_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_bounce_feedback_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_bounce_feedback_373806689 != nil)
        let _method_get_sdfgi_bounce_feedback_1740695150_name = StringName(from: "get_sdfgi_bounce_feedback")
        self._method_get_sdfgi_bounce_feedback_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_bounce_feedback_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_bounce_feedback_1740695150 != nil)
        let _method_set_sdfgi_read_sky_light_2586408642_name = StringName(from: "set_sdfgi_read_sky_light")
        self._method_set_sdfgi_read_sky_light_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_read_sky_light_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_sdfgi_read_sky_light_2586408642 != nil)
        let _method_is_sdfgi_reading_sky_light_36873697_name = StringName(from: "is_sdfgi_reading_sky_light")
        self._method_is_sdfgi_reading_sky_light_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_sdfgi_reading_sky_light_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_sdfgi_reading_sky_light_36873697 != nil)
        let _method_set_sdfgi_energy_373806689_name = StringName(from: "set_sdfgi_energy")
        self._method_set_sdfgi_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_energy_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_energy_373806689 != nil)
        let _method_get_sdfgi_energy_1740695150_name = StringName(from: "get_sdfgi_energy")
        self._method_get_sdfgi_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_energy_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_energy_1740695150 != nil)
        let _method_set_sdfgi_normal_bias_373806689_name = StringName(from: "set_sdfgi_normal_bias")
        self._method_set_sdfgi_normal_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_normal_bias_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_normal_bias_373806689 != nil)
        let _method_get_sdfgi_normal_bias_1740695150_name = StringName(from: "get_sdfgi_normal_bias")
        self._method_get_sdfgi_normal_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_normal_bias_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_normal_bias_1740695150 != nil)
        let _method_set_sdfgi_probe_bias_373806689_name = StringName(from: "set_sdfgi_probe_bias")
        self._method_set_sdfgi_probe_bias_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_sdfgi_probe_bias_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_sdfgi_probe_bias_373806689 != nil)
        let _method_get_sdfgi_probe_bias_1740695150_name = StringName(from: "get_sdfgi_probe_bias")
        self._method_get_sdfgi_probe_bias_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_sdfgi_probe_bias_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_sdfgi_probe_bias_1740695150 != nil)
        let _method_set_glow_enabled_2586408642_name = StringName(from: "set_glow_enabled")
        self._method_set_glow_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_glow_enabled_2586408642 != nil)
        let _method_is_glow_enabled_36873697_name = StringName(from: "is_glow_enabled")
        self._method_is_glow_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_glow_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_glow_enabled_36873697 != nil)
        let _method_set_glow_level_1602489585_name = StringName(from: "set_glow_level")
        self._method_set_glow_level_1602489585 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_level_1602489585_name._native_ptr(), 1602489585)
        assert(Environment._method_set_glow_level_1602489585 != nil)
        let _method_get_glow_level_2339986948_name = StringName(from: "get_glow_level")
        self._method_get_glow_level_2339986948 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_level_2339986948_name._native_ptr(), 2339986948)
        assert(Environment._method_get_glow_level_2339986948 != nil)
        let _method_set_glow_normalized_2586408642_name = StringName(from: "set_glow_normalized")
        self._method_set_glow_normalized_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_normalized_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_glow_normalized_2586408642 != nil)
        let _method_is_glow_normalized_36873697_name = StringName(from: "is_glow_normalized")
        self._method_is_glow_normalized_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_glow_normalized_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_glow_normalized_36873697 != nil)
        let _method_set_glow_intensity_373806689_name = StringName(from: "set_glow_intensity")
        self._method_set_glow_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_intensity_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_intensity_373806689 != nil)
        let _method_get_glow_intensity_1740695150_name = StringName(from: "get_glow_intensity")
        self._method_get_glow_intensity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_intensity_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_intensity_1740695150 != nil)
        let _method_set_glow_strength_373806689_name = StringName(from: "set_glow_strength")
        self._method_set_glow_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_strength_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_strength_373806689 != nil)
        let _method_get_glow_strength_1740695150_name = StringName(from: "get_glow_strength")
        self._method_get_glow_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_strength_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_strength_1740695150 != nil)
        let _method_set_glow_mix_373806689_name = StringName(from: "set_glow_mix")
        self._method_set_glow_mix_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_mix_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_mix_373806689 != nil)
        let _method_get_glow_mix_1740695150_name = StringName(from: "get_glow_mix")
        self._method_get_glow_mix_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_mix_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_mix_1740695150 != nil)
        let _method_set_glow_bloom_373806689_name = StringName(from: "set_glow_bloom")
        self._method_set_glow_bloom_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_bloom_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_bloom_373806689 != nil)
        let _method_get_glow_bloom_1740695150_name = StringName(from: "get_glow_bloom")
        self._method_get_glow_bloom_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_bloom_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_bloom_1740695150 != nil)
        let _method_set_glow_blend_mode_2561587761_name = StringName(from: "set_glow_blend_mode")
        self._method_set_glow_blend_mode_2561587761 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_blend_mode_2561587761_name._native_ptr(), 2561587761)
        assert(Environment._method_set_glow_blend_mode_2561587761 != nil)
        let _method_get_glow_blend_mode_1529667332_name = StringName(from: "get_glow_blend_mode")
        self._method_get_glow_blend_mode_1529667332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_blend_mode_1529667332_name._native_ptr(), 1529667332)
        assert(Environment._method_get_glow_blend_mode_1529667332 != nil)
        let _method_set_glow_hdr_bleed_threshold_373806689_name = StringName(from: "set_glow_hdr_bleed_threshold")
        self._method_set_glow_hdr_bleed_threshold_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_hdr_bleed_threshold_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_hdr_bleed_threshold_373806689 != nil)
        let _method_get_glow_hdr_bleed_threshold_1740695150_name = StringName(from: "get_glow_hdr_bleed_threshold")
        self._method_get_glow_hdr_bleed_threshold_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_hdr_bleed_threshold_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_hdr_bleed_threshold_1740695150 != nil)
        let _method_set_glow_hdr_bleed_scale_373806689_name = StringName(from: "set_glow_hdr_bleed_scale")
        self._method_set_glow_hdr_bleed_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_hdr_bleed_scale_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_hdr_bleed_scale_373806689 != nil)
        let _method_get_glow_hdr_bleed_scale_1740695150_name = StringName(from: "get_glow_hdr_bleed_scale")
        self._method_get_glow_hdr_bleed_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_hdr_bleed_scale_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_hdr_bleed_scale_1740695150 != nil)
        let _method_set_glow_hdr_luminance_cap_373806689_name = StringName(from: "set_glow_hdr_luminance_cap")
        self._method_set_glow_hdr_luminance_cap_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_hdr_luminance_cap_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_hdr_luminance_cap_373806689 != nil)
        let _method_get_glow_hdr_luminance_cap_1740695150_name = StringName(from: "get_glow_hdr_luminance_cap")
        self._method_get_glow_hdr_luminance_cap_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_hdr_luminance_cap_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_hdr_luminance_cap_1740695150 != nil)
        let _method_set_glow_map_strength_373806689_name = StringName(from: "set_glow_map_strength")
        self._method_set_glow_map_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_map_strength_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_glow_map_strength_373806689 != nil)
        let _method_get_glow_map_strength_1740695150_name = StringName(from: "get_glow_map_strength")
        self._method_get_glow_map_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_map_strength_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_glow_map_strength_1740695150 != nil)
        let _method_set_glow_map_1790811099_name = StringName(from: "set_glow_map")
        self._method_set_glow_map_1790811099 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_glow_map_1790811099_name._native_ptr(), 1790811099)
        assert(Environment._method_set_glow_map_1790811099 != nil)
        let _method_get_glow_map_4037048985_name = StringName(from: "get_glow_map")
        self._method_get_glow_map_4037048985 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_glow_map_4037048985_name._native_ptr(), 4037048985)
        assert(Environment._method_get_glow_map_4037048985 != nil)
        let _method_set_fog_enabled_2586408642_name = StringName(from: "set_fog_enabled")
        self._method_set_fog_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_fog_enabled_2586408642 != nil)
        let _method_is_fog_enabled_36873697_name = StringName(from: "is_fog_enabled")
        self._method_is_fog_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_fog_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_fog_enabled_36873697 != nil)
        let _method_set_fog_light_color_2920490490_name = StringName(from: "set_fog_light_color")
        self._method_set_fog_light_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_light_color_2920490490_name._native_ptr(), 2920490490)
        assert(Environment._method_set_fog_light_color_2920490490 != nil)
        let _method_get_fog_light_color_3444240500_name = StringName(from: "get_fog_light_color")
        self._method_get_fog_light_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_light_color_3444240500_name._native_ptr(), 3444240500)
        assert(Environment._method_get_fog_light_color_3444240500 != nil)
        let _method_set_fog_light_energy_373806689_name = StringName(from: "set_fog_light_energy")
        self._method_set_fog_light_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_light_energy_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_light_energy_373806689 != nil)
        let _method_get_fog_light_energy_1740695150_name = StringName(from: "get_fog_light_energy")
        self._method_get_fog_light_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_light_energy_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_light_energy_1740695150 != nil)
        let _method_set_fog_sun_scatter_373806689_name = StringName(from: "set_fog_sun_scatter")
        self._method_set_fog_sun_scatter_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_sun_scatter_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_sun_scatter_373806689 != nil)
        let _method_get_fog_sun_scatter_1740695150_name = StringName(from: "get_fog_sun_scatter")
        self._method_get_fog_sun_scatter_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_sun_scatter_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_sun_scatter_1740695150 != nil)
        let _method_set_fog_density_373806689_name = StringName(from: "set_fog_density")
        self._method_set_fog_density_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_density_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_density_373806689 != nil)
        let _method_get_fog_density_1740695150_name = StringName(from: "get_fog_density")
        self._method_get_fog_density_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_density_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_density_1740695150 != nil)
        let _method_set_fog_height_373806689_name = StringName(from: "set_fog_height")
        self._method_set_fog_height_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_height_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_height_373806689 != nil)
        let _method_get_fog_height_1740695150_name = StringName(from: "get_fog_height")
        self._method_get_fog_height_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_height_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_height_1740695150 != nil)
        let _method_set_fog_height_density_373806689_name = StringName(from: "set_fog_height_density")
        self._method_set_fog_height_density_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_height_density_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_height_density_373806689 != nil)
        let _method_get_fog_height_density_1740695150_name = StringName(from: "get_fog_height_density")
        self._method_get_fog_height_density_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_height_density_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_height_density_1740695150 != nil)
        let _method_set_fog_aerial_perspective_373806689_name = StringName(from: "set_fog_aerial_perspective")
        self._method_set_fog_aerial_perspective_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_aerial_perspective_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_aerial_perspective_373806689 != nil)
        let _method_get_fog_aerial_perspective_1740695150_name = StringName(from: "get_fog_aerial_perspective")
        self._method_get_fog_aerial_perspective_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_aerial_perspective_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_aerial_perspective_1740695150 != nil)
        let _method_set_fog_sky_affect_373806689_name = StringName(from: "set_fog_sky_affect")
        self._method_set_fog_sky_affect_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_fog_sky_affect_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_fog_sky_affect_373806689 != nil)
        let _method_get_fog_sky_affect_1740695150_name = StringName(from: "get_fog_sky_affect")
        self._method_get_fog_sky_affect_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_fog_sky_affect_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_fog_sky_affect_1740695150 != nil)
        let _method_set_volumetric_fog_enabled_2586408642_name = StringName(from: "set_volumetric_fog_enabled")
        self._method_set_volumetric_fog_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_volumetric_fog_enabled_2586408642 != nil)
        let _method_is_volumetric_fog_enabled_36873697_name = StringName(from: "is_volumetric_fog_enabled")
        self._method_is_volumetric_fog_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_volumetric_fog_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_volumetric_fog_enabled_36873697 != nil)
        let _method_set_volumetric_fog_emission_2920490490_name = StringName(from: "set_volumetric_fog_emission")
        self._method_set_volumetric_fog_emission_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_emission_2920490490_name._native_ptr(), 2920490490)
        assert(Environment._method_set_volumetric_fog_emission_2920490490 != nil)
        let _method_get_volumetric_fog_emission_3444240500_name = StringName(from: "get_volumetric_fog_emission")
        self._method_get_volumetric_fog_emission_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_emission_3444240500_name._native_ptr(), 3444240500)
        assert(Environment._method_get_volumetric_fog_emission_3444240500 != nil)
        let _method_set_volumetric_fog_albedo_2920490490_name = StringName(from: "set_volumetric_fog_albedo")
        self._method_set_volumetric_fog_albedo_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_albedo_2920490490_name._native_ptr(), 2920490490)
        assert(Environment._method_set_volumetric_fog_albedo_2920490490 != nil)
        let _method_get_volumetric_fog_albedo_3444240500_name = StringName(from: "get_volumetric_fog_albedo")
        self._method_get_volumetric_fog_albedo_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_albedo_3444240500_name._native_ptr(), 3444240500)
        assert(Environment._method_get_volumetric_fog_albedo_3444240500 != nil)
        let _method_set_volumetric_fog_density_373806689_name = StringName(from: "set_volumetric_fog_density")
        self._method_set_volumetric_fog_density_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_density_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_density_373806689 != nil)
        let _method_get_volumetric_fog_density_1740695150_name = StringName(from: "get_volumetric_fog_density")
        self._method_get_volumetric_fog_density_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_density_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_density_1740695150 != nil)
        let _method_set_volumetric_fog_emission_energy_373806689_name = StringName(from: "set_volumetric_fog_emission_energy")
        self._method_set_volumetric_fog_emission_energy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_emission_energy_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_emission_energy_373806689 != nil)
        let _method_get_volumetric_fog_emission_energy_1740695150_name = StringName(from: "get_volumetric_fog_emission_energy")
        self._method_get_volumetric_fog_emission_energy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_emission_energy_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_emission_energy_1740695150 != nil)
        let _method_set_volumetric_fog_anisotropy_373806689_name = StringName(from: "set_volumetric_fog_anisotropy")
        self._method_set_volumetric_fog_anisotropy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_anisotropy_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_anisotropy_373806689 != nil)
        let _method_get_volumetric_fog_anisotropy_1740695150_name = StringName(from: "get_volumetric_fog_anisotropy")
        self._method_get_volumetric_fog_anisotropy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_anisotropy_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_anisotropy_1740695150 != nil)
        let _method_set_volumetric_fog_length_373806689_name = StringName(from: "set_volumetric_fog_length")
        self._method_set_volumetric_fog_length_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_length_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_length_373806689 != nil)
        let _method_get_volumetric_fog_length_1740695150_name = StringName(from: "get_volumetric_fog_length")
        self._method_get_volumetric_fog_length_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_length_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_length_1740695150 != nil)
        let _method_set_volumetric_fog_detail_spread_373806689_name = StringName(from: "set_volumetric_fog_detail_spread")
        self._method_set_volumetric_fog_detail_spread_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_detail_spread_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_detail_spread_373806689 != nil)
        let _method_get_volumetric_fog_detail_spread_1740695150_name = StringName(from: "get_volumetric_fog_detail_spread")
        self._method_get_volumetric_fog_detail_spread_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_detail_spread_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_detail_spread_1740695150 != nil)
        let _method_set_volumetric_fog_gi_inject_373806689_name = StringName(from: "set_volumetric_fog_gi_inject")
        self._method_set_volumetric_fog_gi_inject_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_gi_inject_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_gi_inject_373806689 != nil)
        let _method_get_volumetric_fog_gi_inject_1740695150_name = StringName(from: "get_volumetric_fog_gi_inject")
        self._method_get_volumetric_fog_gi_inject_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_gi_inject_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_gi_inject_1740695150 != nil)
        let _method_set_volumetric_fog_ambient_inject_373806689_name = StringName(from: "set_volumetric_fog_ambient_inject")
        self._method_set_volumetric_fog_ambient_inject_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_ambient_inject_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_ambient_inject_373806689 != nil)
        let _method_get_volumetric_fog_ambient_inject_1740695150_name = StringName(from: "get_volumetric_fog_ambient_inject")
        self._method_get_volumetric_fog_ambient_inject_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_ambient_inject_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_ambient_inject_1740695150 != nil)
        let _method_set_volumetric_fog_sky_affect_373806689_name = StringName(from: "set_volumetric_fog_sky_affect")
        self._method_set_volumetric_fog_sky_affect_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_sky_affect_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_sky_affect_373806689 != nil)
        let _method_get_volumetric_fog_sky_affect_1740695150_name = StringName(from: "get_volumetric_fog_sky_affect")
        self._method_get_volumetric_fog_sky_affect_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_sky_affect_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_sky_affect_1740695150 != nil)
        let _method_set_volumetric_fog_temporal_reprojection_enabled_2586408642_name = StringName(from: "set_volumetric_fog_temporal_reprojection_enabled")
        self._method_set_volumetric_fog_temporal_reprojection_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_temporal_reprojection_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_volumetric_fog_temporal_reprojection_enabled_2586408642 != nil)
        let _method_is_volumetric_fog_temporal_reprojection_enabled_36873697_name = StringName(from: "is_volumetric_fog_temporal_reprojection_enabled")
        self._method_is_volumetric_fog_temporal_reprojection_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_volumetric_fog_temporal_reprojection_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_volumetric_fog_temporal_reprojection_enabled_36873697 != nil)
        let _method_set_volumetric_fog_temporal_reprojection_amount_373806689_name = StringName(from: "set_volumetric_fog_temporal_reprojection_amount")
        self._method_set_volumetric_fog_temporal_reprojection_amount_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_volumetric_fog_temporal_reprojection_amount_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_volumetric_fog_temporal_reprojection_amount_373806689 != nil)
        let _method_get_volumetric_fog_temporal_reprojection_amount_1740695150_name = StringName(from: "get_volumetric_fog_temporal_reprojection_amount")
        self._method_get_volumetric_fog_temporal_reprojection_amount_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_volumetric_fog_temporal_reprojection_amount_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_volumetric_fog_temporal_reprojection_amount_1740695150 != nil)
        let _method_set_adjustment_enabled_2586408642_name = StringName(from: "set_adjustment_enabled")
        self._method_set_adjustment_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_adjustment_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(Environment._method_set_adjustment_enabled_2586408642 != nil)
        let _method_is_adjustment_enabled_36873697_name = StringName(from: "is_adjustment_enabled")
        self._method_is_adjustment_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_adjustment_enabled_36873697_name._native_ptr(), 36873697)
        assert(Environment._method_is_adjustment_enabled_36873697 != nil)
        let _method_set_adjustment_brightness_373806689_name = StringName(from: "set_adjustment_brightness")
        self._method_set_adjustment_brightness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_adjustment_brightness_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_adjustment_brightness_373806689 != nil)
        let _method_get_adjustment_brightness_1740695150_name = StringName(from: "get_adjustment_brightness")
        self._method_get_adjustment_brightness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_adjustment_brightness_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_adjustment_brightness_1740695150 != nil)
        let _method_set_adjustment_contrast_373806689_name = StringName(from: "set_adjustment_contrast")
        self._method_set_adjustment_contrast_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_adjustment_contrast_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_adjustment_contrast_373806689 != nil)
        let _method_get_adjustment_contrast_1740695150_name = StringName(from: "get_adjustment_contrast")
        self._method_get_adjustment_contrast_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_adjustment_contrast_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_adjustment_contrast_1740695150 != nil)
        let _method_set_adjustment_saturation_373806689_name = StringName(from: "set_adjustment_saturation")
        self._method_set_adjustment_saturation_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_adjustment_saturation_373806689_name._native_ptr(), 373806689)
        assert(Environment._method_set_adjustment_saturation_373806689 != nil)
        let _method_get_adjustment_saturation_1740695150_name = StringName(from: "get_adjustment_saturation")
        self._method_get_adjustment_saturation_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_adjustment_saturation_1740695150_name._native_ptr(), 1740695150)
        assert(Environment._method_get_adjustment_saturation_1740695150 != nil)
        let _method_set_adjustment_color_correction_1790811099_name = StringName(from: "set_adjustment_color_correction")
        self._method_set_adjustment_color_correction_1790811099 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_adjustment_color_correction_1790811099_name._native_ptr(), 1790811099)
        assert(Environment._method_set_adjustment_color_correction_1790811099 != nil)
        let _method_get_adjustment_color_correction_4037048985_name = StringName(from: "get_adjustment_color_correction")
        self._method_get_adjustment_color_correction_4037048985 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_adjustment_color_correction_4037048985_name._native_ptr(), 4037048985)
        assert(Environment._method_get_adjustment_color_correction_4037048985 != nil)
    }

    public func set_background(mode: Environment.BGMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_background_4071623990,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_background() -> Environment.BGMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_background_1843210413,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.BGMode(from: __resPtr.pointee)
    }
    public func set_sky(sky: Sky)  {
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_3336722921,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sky() -> Sky {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_1177136966,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky(from: __resPtr.pointee)
    }
    public func set_sky_custom_fov(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_custom_fov_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sky_custom_fov() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_custom_fov_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sky_rotation(euler_radians: Vector3)  {
        let euler_radians_native = euler_radians._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_radians_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sky_rotation_3460891852,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_sky_rotation() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sky_rotation_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_bg_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bg_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_bg_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bg_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_bg_energy_multiplier(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bg_energy_multiplier_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bg_energy_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bg_energy_multiplier_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_bg_intensity(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_bg_intensity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_bg_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_bg_intensity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_canvas_max_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_canvas_max_layer_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_canvas_max_layer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_canvas_max_layer_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_camera_feed_id(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_camera_feed_id_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_camera_feed_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_camera_feed_id_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_ambient_light_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_light_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_ambient_light_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_light_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_ambient_source(source: Environment.AmbientSource)  {
        withUnsafePointer(to: source.rawValue) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_source_2607780160,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ambient_source() -> Environment.AmbientSource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_source_67453933,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.AmbientSource(from: __resPtr.pointee)
    }
    public func set_ambient_light_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_light_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ambient_light_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_light_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ambient_light_sky_contribution(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ambient_light_sky_contribution_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ambient_light_sky_contribution() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ambient_light_sky_contribution_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_reflection_source(source: Environment.ReflectionSource)  {
        withUnsafePointer(to: source.rawValue) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_reflection_source_299673197,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_reflection_source() -> Environment.ReflectionSource {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_reflection_source_777700713,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.ReflectionSource(from: __resPtr.pointee)
    }
    public func set_tonemapper(mode: Environment.ToneMapper)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tonemapper_1509116664,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tonemapper() -> Environment.ToneMapper {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tonemapper_2908408137,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.ToneMapper(from: __resPtr.pointee)
    }
    public func set_tonemap_exposure(exposure: Float64)  {
        withUnsafePointer(to: exposure) { exposure_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exposure_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tonemap_exposure_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tonemap_exposure() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tonemap_exposure_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_tonemap_white(white: Float64)  {
        withUnsafePointer(to: white) { white_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(white_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_tonemap_white_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_tonemap_white() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_tonemap_white_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssr_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssr_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ssr_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ssr_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_ssr_max_steps(max_steps: Int64)  {
        withUnsafePointer(to: max_steps) { max_steps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_steps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssr_max_steps_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssr_max_steps() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssr_max_steps_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_ssr_fade_in(fade_in: Float64)  {
        withUnsafePointer(to: fade_in) { fade_in_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_in_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssr_fade_in_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssr_fade_in() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssr_fade_in_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssr_fade_out(fade_out: Float64)  {
        withUnsafePointer(to: fade_out) { fade_out_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_out_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssr_fade_out_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssr_fade_out() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssr_fade_out_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssr_depth_tolerance(depth_tolerance: Float64)  {
        withUnsafePointer(to: depth_tolerance) { depth_tolerance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_tolerance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssr_depth_tolerance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssr_depth_tolerance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssr_depth_tolerance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ssao_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ssao_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_ssao_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_intensity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_intensity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_power(power: Float64)  {
        withUnsafePointer(to: power) { power_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(power_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_power_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_power() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_power_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_detail(detail: Float64)  {
        withUnsafePointer(to: detail) { detail_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_detail_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_detail() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_detail_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_horizon(horizon: Float64)  {
        withUnsafePointer(to: horizon) { horizon_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(horizon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_horizon_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_horizon() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_horizon_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_sharpness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_sharpness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_direct_light_affect(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_direct_light_affect_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_direct_light_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_direct_light_affect_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssao_ao_channel_affect(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssao_ao_channel_affect_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssao_ao_channel_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssao_ao_channel_affect_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssil_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssil_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_ssil_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_ssil_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_ssil_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssil_radius_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssil_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssil_radius_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssil_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssil_intensity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssil_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssil_intensity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssil_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssil_sharpness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssil_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssil_sharpness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_ssil_normal_rejection(normal_rejection: Float64)  {
        withUnsafePointer(to: normal_rejection) { normal_rejection_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_rejection_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ssil_normal_rejection_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ssil_normal_rejection() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ssil_normal_rejection_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sdfgi_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sdfgi_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_sdfgi_cascades(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_cascades_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_cascades() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_cascades_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_sdfgi_min_cell_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_min_cell_size_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_min_cell_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_min_cell_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_max_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_max_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_max_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_cascade0_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_cascade0_distance_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_cascade0_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_cascade0_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_y_scale(scale: Environment.SDFGIYScale)  {
        withUnsafePointer(to: scale.rawValue) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_y_scale_3608608372,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_y_scale() -> Environment.SDFGIYScale {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_y_scale_2568002245,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.SDFGIYScale(from: __resPtr.pointee)
    }
    public func set_sdfgi_use_occlusion(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_use_occlusion_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sdfgi_using_occlusion() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sdfgi_using_occlusion_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_sdfgi_bounce_feedback(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_bounce_feedback_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_bounce_feedback() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_bounce_feedback_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_read_sky_light(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_read_sky_light_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_sdfgi_reading_sky_light() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_sdfgi_reading_sky_light_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_sdfgi_energy(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_normal_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_normal_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_normal_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_normal_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_sdfgi_probe_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_sdfgi_probe_bias_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdfgi_probe_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_sdfgi_probe_bias_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_glow_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_glow_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_glow_level(idx: Int64, intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_level_1602489585,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_glow_level(idx: Int64) -> Float64 {
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_level_2339986948,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
        }
    }
    public func set_glow_normalized(normalize: UInt8)  {
        withUnsafePointer(to: normalize) { normalize_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normalize_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_normalized_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_glow_normalized() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_glow_normalized_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_glow_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_intensity_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_intensity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_mix(mix: Float64)  {
        withUnsafePointer(to: mix) { mix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_mix_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_mix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_mix_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_bloom(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_bloom_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_bloom() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_bloom_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_blend_mode(mode: Environment.GlowBlendMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_blend_mode_2561587761,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_blend_mode() -> Environment.GlowBlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_blend_mode_1529667332,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.GlowBlendMode(from: __resPtr.pointee)
    }
    public func set_glow_hdr_bleed_threshold(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_hdr_bleed_threshold_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_hdr_bleed_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_hdr_bleed_threshold_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_hdr_bleed_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_hdr_bleed_scale_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_hdr_bleed_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_hdr_bleed_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_hdr_luminance_cap(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_hdr_luminance_cap_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_hdr_luminance_cap() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_hdr_luminance_cap_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_map_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_map_strength_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_glow_map_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_map_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_glow_map(mode: Texture)  {
        let mode_native = mode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_glow_map_1790811099,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_glow_map() -> Texture {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_glow_map_4037048985,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture(from: __resPtr.pointee)
    }
    public func set_fog_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_fog_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_fog_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_fog_light_color(light_color: Color)  {
        let light_color_native = light_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_light_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_fog_light_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_light_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_fog_light_energy(light_energy: Float64)  {
        withUnsafePointer(to: light_energy) { light_energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_light_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_light_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_light_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fog_sun_scatter(sun_scatter: Float64)  {
        withUnsafePointer(to: sun_scatter) { sun_scatter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sun_scatter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_sun_scatter_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_sun_scatter() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_sun_scatter_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fog_density(density: Float64)  {
        withUnsafePointer(to: density) { density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(density_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_density_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_density_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fog_height(height: Float64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_height_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_height_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fog_height_density(height_density: Float64)  {
        withUnsafePointer(to: height_density) { height_density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_density_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_height_density_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_height_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_height_density_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fog_aerial_perspective(aerial_perspective: Float64)  {
        withUnsafePointer(to: aerial_perspective) { aerial_perspective_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aerial_perspective_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_aerial_perspective_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_aerial_perspective() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_aerial_perspective_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_fog_sky_affect(sky_affect: Float64)  {
        withUnsafePointer(to: sky_affect) { sky_affect_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_affect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_fog_sky_affect_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_fog_sky_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_fog_sky_affect_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_volumetric_fog_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_volumetric_fog_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_emission(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_emission_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_volumetric_fog_emission() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_emission_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_albedo(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_albedo_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_volumetric_fog_albedo() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_albedo_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_density(density: Float64)  {
        withUnsafePointer(to: density) { density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(density_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_density_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_density_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_emission_energy(begin: Float64)  {
        withUnsafePointer(to: begin) { begin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(begin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_emission_energy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_emission_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_emission_energy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_anisotropy(anisotropy: Float64)  {
        withUnsafePointer(to: anisotropy) { anisotropy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anisotropy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_anisotropy_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_anisotropy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_anisotropy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_length_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_length_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_detail_spread(detail_spread: Float64)  {
        withUnsafePointer(to: detail_spread) { detail_spread_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_spread_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_detail_spread_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_detail_spread() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_detail_spread_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_gi_inject(gi_inject: Float64)  {
        withUnsafePointer(to: gi_inject) { gi_inject_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gi_inject_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_gi_inject_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_gi_inject() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_gi_inject_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_ambient_inject(enabled: Float64)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_ambient_inject_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_ambient_inject() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_ambient_inject_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_sky_affect(sky_affect: Float64)  {
        withUnsafePointer(to: sky_affect) { sky_affect_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_affect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_sky_affect_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_sky_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_sky_affect_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_temporal_reprojection_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_temporal_reprojection_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_volumetric_fog_temporal_reprojection_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_volumetric_fog_temporal_reprojection_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_volumetric_fog_temporal_reprojection_amount(temporal_reprojection_amount: Float64)  {
        withUnsafePointer(to: temporal_reprojection_amount) { temporal_reprojection_amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(temporal_reprojection_amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_volumetric_fog_temporal_reprojection_amount_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_volumetric_fog_temporal_reprojection_amount() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_volumetric_fog_temporal_reprojection_amount_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_adjustment_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_adjustment_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_adjustment_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_adjustment_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_adjustment_brightness(brightness: Float64)  {
        withUnsafePointer(to: brightness) { brightness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(brightness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_adjustment_brightness_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_adjustment_brightness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_adjustment_brightness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_adjustment_contrast(contrast: Float64)  {
        withUnsafePointer(to: contrast) { contrast_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contrast_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_adjustment_contrast_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_adjustment_contrast() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_adjustment_contrast_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_adjustment_saturation(saturation: Float64)  {
        withUnsafePointer(to: saturation) { saturation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(saturation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_adjustment_saturation_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_adjustment_saturation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_adjustment_saturation_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_adjustment_color_correction(color_correction: Texture)  {
        let color_correction_native = color_correction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_correction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_adjustment_color_correction_1790811099,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_adjustment_color_correction() -> Texture {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_adjustment_color_correction_4037048985,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture(from: __resPtr.pointee)
    }
}