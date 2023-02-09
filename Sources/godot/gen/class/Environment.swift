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
open class Environment : Resource {

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

    static var _method_set_background_4071623990: StringName! = nil
    static var _method_get_background_1843210413: StringName! = nil
    static var _method_set_sky_3336722921: StringName! = nil
    static var _method_get_sky_1177136966: StringName! = nil
    static var _method_set_sky_custom_fov_373806689: StringName! = nil
    static var _method_get_sky_custom_fov_1740695150: StringName! = nil
    static var _method_set_sky_rotation_3460891852: StringName! = nil
    static var _method_get_sky_rotation_3360562783: StringName! = nil
    static var _method_set_bg_color_2920490490: StringName! = nil
    static var _method_get_bg_color_3444240500: StringName! = nil
    static var _method_set_bg_energy_multiplier_373806689: StringName! = nil
    static var _method_get_bg_energy_multiplier_1740695150: StringName! = nil
    static var _method_set_bg_intensity_373806689: StringName! = nil
    static var _method_get_bg_intensity_1740695150: StringName! = nil
    static var _method_set_canvas_max_layer_1286410249: StringName! = nil
    static var _method_get_canvas_max_layer_3905245786: StringName! = nil
    static var _method_set_camera_feed_id_1286410249: StringName! = nil
    static var _method_get_camera_feed_id_3905245786: StringName! = nil
    static var _method_set_ambient_light_color_2920490490: StringName! = nil
    static var _method_get_ambient_light_color_3444240500: StringName! = nil
    static var _method_set_ambient_source_2607780160: StringName! = nil
    static var _method_get_ambient_source_67453933: StringName! = nil
    static var _method_set_ambient_light_energy_373806689: StringName! = nil
    static var _method_get_ambient_light_energy_1740695150: StringName! = nil
    static var _method_set_ambient_light_sky_contribution_373806689: StringName! = nil
    static var _method_get_ambient_light_sky_contribution_1740695150: StringName! = nil
    static var _method_set_reflection_source_299673197: StringName! = nil
    static var _method_get_reflection_source_777700713: StringName! = nil
    static var _method_set_tonemapper_1509116664: StringName! = nil
    static var _method_get_tonemapper_2908408137: StringName! = nil
    static var _method_set_tonemap_exposure_373806689: StringName! = nil
    static var _method_get_tonemap_exposure_1740695150: StringName! = nil
    static var _method_set_tonemap_white_373806689: StringName! = nil
    static var _method_get_tonemap_white_1740695150: StringName! = nil
    static var _method_set_ssr_enabled_2586408642: StringName! = nil
    static var _method_is_ssr_enabled_36873697: StringName! = nil
    static var _method_set_ssr_max_steps_1286410249: StringName! = nil
    static var _method_get_ssr_max_steps_3905245786: StringName! = nil
    static var _method_set_ssr_fade_in_373806689: StringName! = nil
    static var _method_get_ssr_fade_in_1740695150: StringName! = nil
    static var _method_set_ssr_fade_out_373806689: StringName! = nil
    static var _method_get_ssr_fade_out_1740695150: StringName! = nil
    static var _method_set_ssr_depth_tolerance_373806689: StringName! = nil
    static var _method_get_ssr_depth_tolerance_1740695150: StringName! = nil
    static var _method_set_ssao_enabled_2586408642: StringName! = nil
    static var _method_is_ssao_enabled_36873697: StringName! = nil
    static var _method_set_ssao_radius_373806689: StringName! = nil
    static var _method_get_ssao_radius_1740695150: StringName! = nil
    static var _method_set_ssao_intensity_373806689: StringName! = nil
    static var _method_get_ssao_intensity_1740695150: StringName! = nil
    static var _method_set_ssao_power_373806689: StringName! = nil
    static var _method_get_ssao_power_1740695150: StringName! = nil
    static var _method_set_ssao_detail_373806689: StringName! = nil
    static var _method_get_ssao_detail_1740695150: StringName! = nil
    static var _method_set_ssao_horizon_373806689: StringName! = nil
    static var _method_get_ssao_horizon_1740695150: StringName! = nil
    static var _method_set_ssao_sharpness_373806689: StringName! = nil
    static var _method_get_ssao_sharpness_1740695150: StringName! = nil
    static var _method_set_ssao_direct_light_affect_373806689: StringName! = nil
    static var _method_get_ssao_direct_light_affect_1740695150: StringName! = nil
    static var _method_set_ssao_ao_channel_affect_373806689: StringName! = nil
    static var _method_get_ssao_ao_channel_affect_1740695150: StringName! = nil
    static var _method_set_ssil_enabled_2586408642: StringName! = nil
    static var _method_is_ssil_enabled_36873697: StringName! = nil
    static var _method_set_ssil_radius_373806689: StringName! = nil
    static var _method_get_ssil_radius_1740695150: StringName! = nil
    static var _method_set_ssil_intensity_373806689: StringName! = nil
    static var _method_get_ssil_intensity_1740695150: StringName! = nil
    static var _method_set_ssil_sharpness_373806689: StringName! = nil
    static var _method_get_ssil_sharpness_1740695150: StringName! = nil
    static var _method_set_ssil_normal_rejection_373806689: StringName! = nil
    static var _method_get_ssil_normal_rejection_1740695150: StringName! = nil
    static var _method_set_sdfgi_enabled_2586408642: StringName! = nil
    static var _method_is_sdfgi_enabled_36873697: StringName! = nil
    static var _method_set_sdfgi_cascades_1286410249: StringName! = nil
    static var _method_get_sdfgi_cascades_3905245786: StringName! = nil
    static var _method_set_sdfgi_min_cell_size_373806689: StringName! = nil
    static var _method_get_sdfgi_min_cell_size_1740695150: StringName! = nil
    static var _method_set_sdfgi_max_distance_373806689: StringName! = nil
    static var _method_get_sdfgi_max_distance_1740695150: StringName! = nil
    static var _method_set_sdfgi_cascade0_distance_373806689: StringName! = nil
    static var _method_get_sdfgi_cascade0_distance_1740695150: StringName! = nil
    static var _method_set_sdfgi_y_scale_3608608372: StringName! = nil
    static var _method_get_sdfgi_y_scale_2568002245: StringName! = nil
    static var _method_set_sdfgi_use_occlusion_2586408642: StringName! = nil
    static var _method_is_sdfgi_using_occlusion_36873697: StringName! = nil
    static var _method_set_sdfgi_bounce_feedback_373806689: StringName! = nil
    static var _method_get_sdfgi_bounce_feedback_1740695150: StringName! = nil
    static var _method_set_sdfgi_read_sky_light_2586408642: StringName! = nil
    static var _method_is_sdfgi_reading_sky_light_36873697: StringName! = nil
    static var _method_set_sdfgi_energy_373806689: StringName! = nil
    static var _method_get_sdfgi_energy_1740695150: StringName! = nil
    static var _method_set_sdfgi_normal_bias_373806689: StringName! = nil
    static var _method_get_sdfgi_normal_bias_1740695150: StringName! = nil
    static var _method_set_sdfgi_probe_bias_373806689: StringName! = nil
    static var _method_get_sdfgi_probe_bias_1740695150: StringName! = nil
    static var _method_set_glow_enabled_2586408642: StringName! = nil
    static var _method_is_glow_enabled_36873697: StringName! = nil
    static var _method_set_glow_level_1602489585: StringName! = nil
    static var _method_get_glow_level_2339986948: StringName! = nil
    static var _method_set_glow_normalized_2586408642: StringName! = nil
    static var _method_is_glow_normalized_36873697: StringName! = nil
    static var _method_set_glow_intensity_373806689: StringName! = nil
    static var _method_get_glow_intensity_1740695150: StringName! = nil
    static var _method_set_glow_strength_373806689: StringName! = nil
    static var _method_get_glow_strength_1740695150: StringName! = nil
    static var _method_set_glow_mix_373806689: StringName! = nil
    static var _method_get_glow_mix_1740695150: StringName! = nil
    static var _method_set_glow_bloom_373806689: StringName! = nil
    static var _method_get_glow_bloom_1740695150: StringName! = nil
    static var _method_set_glow_blend_mode_2561587761: StringName! = nil
    static var _method_get_glow_blend_mode_1529667332: StringName! = nil
    static var _method_set_glow_hdr_bleed_threshold_373806689: StringName! = nil
    static var _method_get_glow_hdr_bleed_threshold_1740695150: StringName! = nil
    static var _method_set_glow_hdr_bleed_scale_373806689: StringName! = nil
    static var _method_get_glow_hdr_bleed_scale_1740695150: StringName! = nil
    static var _method_set_glow_hdr_luminance_cap_373806689: StringName! = nil
    static var _method_get_glow_hdr_luminance_cap_1740695150: StringName! = nil
    static var _method_set_glow_map_strength_373806689: StringName! = nil
    static var _method_get_glow_map_strength_1740695150: StringName! = nil
    static var _method_set_glow_map_1790811099: StringName! = nil
    static var _method_get_glow_map_4037048985: StringName! = nil
    static var _method_set_fog_enabled_2586408642: StringName! = nil
    static var _method_is_fog_enabled_36873697: StringName! = nil
    static var _method_set_fog_light_color_2920490490: StringName! = nil
    static var _method_get_fog_light_color_3444240500: StringName! = nil
    static var _method_set_fog_light_energy_373806689: StringName! = nil
    static var _method_get_fog_light_energy_1740695150: StringName! = nil
    static var _method_set_fog_sun_scatter_373806689: StringName! = nil
    static var _method_get_fog_sun_scatter_1740695150: StringName! = nil
    static var _method_set_fog_density_373806689: StringName! = nil
    static var _method_get_fog_density_1740695150: StringName! = nil
    static var _method_set_fog_height_373806689: StringName! = nil
    static var _method_get_fog_height_1740695150: StringName! = nil
    static var _method_set_fog_height_density_373806689: StringName! = nil
    static var _method_get_fog_height_density_1740695150: StringName! = nil
    static var _method_set_fog_aerial_perspective_373806689: StringName! = nil
    static var _method_get_fog_aerial_perspective_1740695150: StringName! = nil
    static var _method_set_fog_sky_affect_373806689: StringName! = nil
    static var _method_get_fog_sky_affect_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_enabled_2586408642: StringName! = nil
    static var _method_is_volumetric_fog_enabled_36873697: StringName! = nil
    static var _method_set_volumetric_fog_emission_2920490490: StringName! = nil
    static var _method_get_volumetric_fog_emission_3444240500: StringName! = nil
    static var _method_set_volumetric_fog_albedo_2920490490: StringName! = nil
    static var _method_get_volumetric_fog_albedo_3444240500: StringName! = nil
    static var _method_set_volumetric_fog_density_373806689: StringName! = nil
    static var _method_get_volumetric_fog_density_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_emission_energy_373806689: StringName! = nil
    static var _method_get_volumetric_fog_emission_energy_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_anisotropy_373806689: StringName! = nil
    static var _method_get_volumetric_fog_anisotropy_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_length_373806689: StringName! = nil
    static var _method_get_volumetric_fog_length_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_detail_spread_373806689: StringName! = nil
    static var _method_get_volumetric_fog_detail_spread_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_gi_inject_373806689: StringName! = nil
    static var _method_get_volumetric_fog_gi_inject_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_ambient_inject_373806689: StringName! = nil
    static var _method_get_volumetric_fog_ambient_inject_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_sky_affect_373806689: StringName! = nil
    static var _method_get_volumetric_fog_sky_affect_1740695150: StringName! = nil
    static var _method_set_volumetric_fog_temporal_reprojection_enabled_2586408642: StringName! = nil
    static var _method_is_volumetric_fog_temporal_reprojection_enabled_36873697: StringName! = nil
    static var _method_set_volumetric_fog_temporal_reprojection_amount_373806689: StringName! = nil
    static var _method_get_volumetric_fog_temporal_reprojection_amount_1740695150: StringName! = nil
    static var _method_set_adjustment_enabled_2586408642: StringName! = nil
    static var _method_is_adjustment_enabled_36873697: StringName! = nil
    static var _method_set_adjustment_brightness_373806689: StringName! = nil
    static var _method_get_adjustment_brightness_1740695150: StringName! = nil
    static var _method_set_adjustment_contrast_373806689: StringName! = nil
    static var _method_get_adjustment_contrast_1740695150: StringName! = nil
    static var _method_set_adjustment_saturation_373806689: StringName! = nil
    static var _method_get_adjustment_saturation_1740695150: StringName! = nil
    static var _method_set_adjustment_color_correction_1790811099: StringName! = nil
    static var _method_get_adjustment_color_correction_4037048985: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Environment == nil)
        __godot_name_Environment = StringName(from: "Environment")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_background_4071623990 = StringName(from: "set_background")
        assert(self._method_set_background_4071623990 != nil)
        self._method_get_background_1843210413 = StringName(from: "get_background")
        assert(self._method_get_background_1843210413 != nil)
        self._method_set_sky_3336722921 = StringName(from: "set_sky")
        assert(self._method_set_sky_3336722921 != nil)
        self._method_get_sky_1177136966 = StringName(from: "get_sky")
        assert(self._method_get_sky_1177136966 != nil)
        self._method_set_sky_custom_fov_373806689 = StringName(from: "set_sky_custom_fov")
        assert(self._method_set_sky_custom_fov_373806689 != nil)
        self._method_get_sky_custom_fov_1740695150 = StringName(from: "get_sky_custom_fov")
        assert(self._method_get_sky_custom_fov_1740695150 != nil)
        self._method_set_sky_rotation_3460891852 = StringName(from: "set_sky_rotation")
        assert(self._method_set_sky_rotation_3460891852 != nil)
        self._method_get_sky_rotation_3360562783 = StringName(from: "get_sky_rotation")
        assert(self._method_get_sky_rotation_3360562783 != nil)
        self._method_set_bg_color_2920490490 = StringName(from: "set_bg_color")
        assert(self._method_set_bg_color_2920490490 != nil)
        self._method_get_bg_color_3444240500 = StringName(from: "get_bg_color")
        assert(self._method_get_bg_color_3444240500 != nil)
        self._method_set_bg_energy_multiplier_373806689 = StringName(from: "set_bg_energy_multiplier")
        assert(self._method_set_bg_energy_multiplier_373806689 != nil)
        self._method_get_bg_energy_multiplier_1740695150 = StringName(from: "get_bg_energy_multiplier")
        assert(self._method_get_bg_energy_multiplier_1740695150 != nil)
        self._method_set_bg_intensity_373806689 = StringName(from: "set_bg_intensity")
        assert(self._method_set_bg_intensity_373806689 != nil)
        self._method_get_bg_intensity_1740695150 = StringName(from: "get_bg_intensity")
        assert(self._method_get_bg_intensity_1740695150 != nil)
        self._method_set_canvas_max_layer_1286410249 = StringName(from: "set_canvas_max_layer")
        assert(self._method_set_canvas_max_layer_1286410249 != nil)
        self._method_get_canvas_max_layer_3905245786 = StringName(from: "get_canvas_max_layer")
        assert(self._method_get_canvas_max_layer_3905245786 != nil)
        self._method_set_camera_feed_id_1286410249 = StringName(from: "set_camera_feed_id")
        assert(self._method_set_camera_feed_id_1286410249 != nil)
        self._method_get_camera_feed_id_3905245786 = StringName(from: "get_camera_feed_id")
        assert(self._method_get_camera_feed_id_3905245786 != nil)
        self._method_set_ambient_light_color_2920490490 = StringName(from: "set_ambient_light_color")
        assert(self._method_set_ambient_light_color_2920490490 != nil)
        self._method_get_ambient_light_color_3444240500 = StringName(from: "get_ambient_light_color")
        assert(self._method_get_ambient_light_color_3444240500 != nil)
        self._method_set_ambient_source_2607780160 = StringName(from: "set_ambient_source")
        assert(self._method_set_ambient_source_2607780160 != nil)
        self._method_get_ambient_source_67453933 = StringName(from: "get_ambient_source")
        assert(self._method_get_ambient_source_67453933 != nil)
        self._method_set_ambient_light_energy_373806689 = StringName(from: "set_ambient_light_energy")
        assert(self._method_set_ambient_light_energy_373806689 != nil)
        self._method_get_ambient_light_energy_1740695150 = StringName(from: "get_ambient_light_energy")
        assert(self._method_get_ambient_light_energy_1740695150 != nil)
        self._method_set_ambient_light_sky_contribution_373806689 = StringName(from: "set_ambient_light_sky_contribution")
        assert(self._method_set_ambient_light_sky_contribution_373806689 != nil)
        self._method_get_ambient_light_sky_contribution_1740695150 = StringName(from: "get_ambient_light_sky_contribution")
        assert(self._method_get_ambient_light_sky_contribution_1740695150 != nil)
        self._method_set_reflection_source_299673197 = StringName(from: "set_reflection_source")
        assert(self._method_set_reflection_source_299673197 != nil)
        self._method_get_reflection_source_777700713 = StringName(from: "get_reflection_source")
        assert(self._method_get_reflection_source_777700713 != nil)
        self._method_set_tonemapper_1509116664 = StringName(from: "set_tonemapper")
        assert(self._method_set_tonemapper_1509116664 != nil)
        self._method_get_tonemapper_2908408137 = StringName(from: "get_tonemapper")
        assert(self._method_get_tonemapper_2908408137 != nil)
        self._method_set_tonemap_exposure_373806689 = StringName(from: "set_tonemap_exposure")
        assert(self._method_set_tonemap_exposure_373806689 != nil)
        self._method_get_tonemap_exposure_1740695150 = StringName(from: "get_tonemap_exposure")
        assert(self._method_get_tonemap_exposure_1740695150 != nil)
        self._method_set_tonemap_white_373806689 = StringName(from: "set_tonemap_white")
        assert(self._method_set_tonemap_white_373806689 != nil)
        self._method_get_tonemap_white_1740695150 = StringName(from: "get_tonemap_white")
        assert(self._method_get_tonemap_white_1740695150 != nil)
        self._method_set_ssr_enabled_2586408642 = StringName(from: "set_ssr_enabled")
        assert(self._method_set_ssr_enabled_2586408642 != nil)
        self._method_is_ssr_enabled_36873697 = StringName(from: "is_ssr_enabled")
        assert(self._method_is_ssr_enabled_36873697 != nil)
        self._method_set_ssr_max_steps_1286410249 = StringName(from: "set_ssr_max_steps")
        assert(self._method_set_ssr_max_steps_1286410249 != nil)
        self._method_get_ssr_max_steps_3905245786 = StringName(from: "get_ssr_max_steps")
        assert(self._method_get_ssr_max_steps_3905245786 != nil)
        self._method_set_ssr_fade_in_373806689 = StringName(from: "set_ssr_fade_in")
        assert(self._method_set_ssr_fade_in_373806689 != nil)
        self._method_get_ssr_fade_in_1740695150 = StringName(from: "get_ssr_fade_in")
        assert(self._method_get_ssr_fade_in_1740695150 != nil)
        self._method_set_ssr_fade_out_373806689 = StringName(from: "set_ssr_fade_out")
        assert(self._method_set_ssr_fade_out_373806689 != nil)
        self._method_get_ssr_fade_out_1740695150 = StringName(from: "get_ssr_fade_out")
        assert(self._method_get_ssr_fade_out_1740695150 != nil)
        self._method_set_ssr_depth_tolerance_373806689 = StringName(from: "set_ssr_depth_tolerance")
        assert(self._method_set_ssr_depth_tolerance_373806689 != nil)
        self._method_get_ssr_depth_tolerance_1740695150 = StringName(from: "get_ssr_depth_tolerance")
        assert(self._method_get_ssr_depth_tolerance_1740695150 != nil)
        self._method_set_ssao_enabled_2586408642 = StringName(from: "set_ssao_enabled")
        assert(self._method_set_ssao_enabled_2586408642 != nil)
        self._method_is_ssao_enabled_36873697 = StringName(from: "is_ssao_enabled")
        assert(self._method_is_ssao_enabled_36873697 != nil)
        self._method_set_ssao_radius_373806689 = StringName(from: "set_ssao_radius")
        assert(self._method_set_ssao_radius_373806689 != nil)
        self._method_get_ssao_radius_1740695150 = StringName(from: "get_ssao_radius")
        assert(self._method_get_ssao_radius_1740695150 != nil)
        self._method_set_ssao_intensity_373806689 = StringName(from: "set_ssao_intensity")
        assert(self._method_set_ssao_intensity_373806689 != nil)
        self._method_get_ssao_intensity_1740695150 = StringName(from: "get_ssao_intensity")
        assert(self._method_get_ssao_intensity_1740695150 != nil)
        self._method_set_ssao_power_373806689 = StringName(from: "set_ssao_power")
        assert(self._method_set_ssao_power_373806689 != nil)
        self._method_get_ssao_power_1740695150 = StringName(from: "get_ssao_power")
        assert(self._method_get_ssao_power_1740695150 != nil)
        self._method_set_ssao_detail_373806689 = StringName(from: "set_ssao_detail")
        assert(self._method_set_ssao_detail_373806689 != nil)
        self._method_get_ssao_detail_1740695150 = StringName(from: "get_ssao_detail")
        assert(self._method_get_ssao_detail_1740695150 != nil)
        self._method_set_ssao_horizon_373806689 = StringName(from: "set_ssao_horizon")
        assert(self._method_set_ssao_horizon_373806689 != nil)
        self._method_get_ssao_horizon_1740695150 = StringName(from: "get_ssao_horizon")
        assert(self._method_get_ssao_horizon_1740695150 != nil)
        self._method_set_ssao_sharpness_373806689 = StringName(from: "set_ssao_sharpness")
        assert(self._method_set_ssao_sharpness_373806689 != nil)
        self._method_get_ssao_sharpness_1740695150 = StringName(from: "get_ssao_sharpness")
        assert(self._method_get_ssao_sharpness_1740695150 != nil)
        self._method_set_ssao_direct_light_affect_373806689 = StringName(from: "set_ssao_direct_light_affect")
        assert(self._method_set_ssao_direct_light_affect_373806689 != nil)
        self._method_get_ssao_direct_light_affect_1740695150 = StringName(from: "get_ssao_direct_light_affect")
        assert(self._method_get_ssao_direct_light_affect_1740695150 != nil)
        self._method_set_ssao_ao_channel_affect_373806689 = StringName(from: "set_ssao_ao_channel_affect")
        assert(self._method_set_ssao_ao_channel_affect_373806689 != nil)
        self._method_get_ssao_ao_channel_affect_1740695150 = StringName(from: "get_ssao_ao_channel_affect")
        assert(self._method_get_ssao_ao_channel_affect_1740695150 != nil)
        self._method_set_ssil_enabled_2586408642 = StringName(from: "set_ssil_enabled")
        assert(self._method_set_ssil_enabled_2586408642 != nil)
        self._method_is_ssil_enabled_36873697 = StringName(from: "is_ssil_enabled")
        assert(self._method_is_ssil_enabled_36873697 != nil)
        self._method_set_ssil_radius_373806689 = StringName(from: "set_ssil_radius")
        assert(self._method_set_ssil_radius_373806689 != nil)
        self._method_get_ssil_radius_1740695150 = StringName(from: "get_ssil_radius")
        assert(self._method_get_ssil_radius_1740695150 != nil)
        self._method_set_ssil_intensity_373806689 = StringName(from: "set_ssil_intensity")
        assert(self._method_set_ssil_intensity_373806689 != nil)
        self._method_get_ssil_intensity_1740695150 = StringName(from: "get_ssil_intensity")
        assert(self._method_get_ssil_intensity_1740695150 != nil)
        self._method_set_ssil_sharpness_373806689 = StringName(from: "set_ssil_sharpness")
        assert(self._method_set_ssil_sharpness_373806689 != nil)
        self._method_get_ssil_sharpness_1740695150 = StringName(from: "get_ssil_sharpness")
        assert(self._method_get_ssil_sharpness_1740695150 != nil)
        self._method_set_ssil_normal_rejection_373806689 = StringName(from: "set_ssil_normal_rejection")
        assert(self._method_set_ssil_normal_rejection_373806689 != nil)
        self._method_get_ssil_normal_rejection_1740695150 = StringName(from: "get_ssil_normal_rejection")
        assert(self._method_get_ssil_normal_rejection_1740695150 != nil)
        self._method_set_sdfgi_enabled_2586408642 = StringName(from: "set_sdfgi_enabled")
        assert(self._method_set_sdfgi_enabled_2586408642 != nil)
        self._method_is_sdfgi_enabled_36873697 = StringName(from: "is_sdfgi_enabled")
        assert(self._method_is_sdfgi_enabled_36873697 != nil)
        self._method_set_sdfgi_cascades_1286410249 = StringName(from: "set_sdfgi_cascades")
        assert(self._method_set_sdfgi_cascades_1286410249 != nil)
        self._method_get_sdfgi_cascades_3905245786 = StringName(from: "get_sdfgi_cascades")
        assert(self._method_get_sdfgi_cascades_3905245786 != nil)
        self._method_set_sdfgi_min_cell_size_373806689 = StringName(from: "set_sdfgi_min_cell_size")
        assert(self._method_set_sdfgi_min_cell_size_373806689 != nil)
        self._method_get_sdfgi_min_cell_size_1740695150 = StringName(from: "get_sdfgi_min_cell_size")
        assert(self._method_get_sdfgi_min_cell_size_1740695150 != nil)
        self._method_set_sdfgi_max_distance_373806689 = StringName(from: "set_sdfgi_max_distance")
        assert(self._method_set_sdfgi_max_distance_373806689 != nil)
        self._method_get_sdfgi_max_distance_1740695150 = StringName(from: "get_sdfgi_max_distance")
        assert(self._method_get_sdfgi_max_distance_1740695150 != nil)
        self._method_set_sdfgi_cascade0_distance_373806689 = StringName(from: "set_sdfgi_cascade0_distance")
        assert(self._method_set_sdfgi_cascade0_distance_373806689 != nil)
        self._method_get_sdfgi_cascade0_distance_1740695150 = StringName(from: "get_sdfgi_cascade0_distance")
        assert(self._method_get_sdfgi_cascade0_distance_1740695150 != nil)
        self._method_set_sdfgi_y_scale_3608608372 = StringName(from: "set_sdfgi_y_scale")
        assert(self._method_set_sdfgi_y_scale_3608608372 != nil)
        self._method_get_sdfgi_y_scale_2568002245 = StringName(from: "get_sdfgi_y_scale")
        assert(self._method_get_sdfgi_y_scale_2568002245 != nil)
        self._method_set_sdfgi_use_occlusion_2586408642 = StringName(from: "set_sdfgi_use_occlusion")
        assert(self._method_set_sdfgi_use_occlusion_2586408642 != nil)
        self._method_is_sdfgi_using_occlusion_36873697 = StringName(from: "is_sdfgi_using_occlusion")
        assert(self._method_is_sdfgi_using_occlusion_36873697 != nil)
        self._method_set_sdfgi_bounce_feedback_373806689 = StringName(from: "set_sdfgi_bounce_feedback")
        assert(self._method_set_sdfgi_bounce_feedback_373806689 != nil)
        self._method_get_sdfgi_bounce_feedback_1740695150 = StringName(from: "get_sdfgi_bounce_feedback")
        assert(self._method_get_sdfgi_bounce_feedback_1740695150 != nil)
        self._method_set_sdfgi_read_sky_light_2586408642 = StringName(from: "set_sdfgi_read_sky_light")
        assert(self._method_set_sdfgi_read_sky_light_2586408642 != nil)
        self._method_is_sdfgi_reading_sky_light_36873697 = StringName(from: "is_sdfgi_reading_sky_light")
        assert(self._method_is_sdfgi_reading_sky_light_36873697 != nil)
        self._method_set_sdfgi_energy_373806689 = StringName(from: "set_sdfgi_energy")
        assert(self._method_set_sdfgi_energy_373806689 != nil)
        self._method_get_sdfgi_energy_1740695150 = StringName(from: "get_sdfgi_energy")
        assert(self._method_get_sdfgi_energy_1740695150 != nil)
        self._method_set_sdfgi_normal_bias_373806689 = StringName(from: "set_sdfgi_normal_bias")
        assert(self._method_set_sdfgi_normal_bias_373806689 != nil)
        self._method_get_sdfgi_normal_bias_1740695150 = StringName(from: "get_sdfgi_normal_bias")
        assert(self._method_get_sdfgi_normal_bias_1740695150 != nil)
        self._method_set_sdfgi_probe_bias_373806689 = StringName(from: "set_sdfgi_probe_bias")
        assert(self._method_set_sdfgi_probe_bias_373806689 != nil)
        self._method_get_sdfgi_probe_bias_1740695150 = StringName(from: "get_sdfgi_probe_bias")
        assert(self._method_get_sdfgi_probe_bias_1740695150 != nil)
        self._method_set_glow_enabled_2586408642 = StringName(from: "set_glow_enabled")
        assert(self._method_set_glow_enabled_2586408642 != nil)
        self._method_is_glow_enabled_36873697 = StringName(from: "is_glow_enabled")
        assert(self._method_is_glow_enabled_36873697 != nil)
        self._method_set_glow_level_1602489585 = StringName(from: "set_glow_level")
        assert(self._method_set_glow_level_1602489585 != nil)
        self._method_get_glow_level_2339986948 = StringName(from: "get_glow_level")
        assert(self._method_get_glow_level_2339986948 != nil)
        self._method_set_glow_normalized_2586408642 = StringName(from: "set_glow_normalized")
        assert(self._method_set_glow_normalized_2586408642 != nil)
        self._method_is_glow_normalized_36873697 = StringName(from: "is_glow_normalized")
        assert(self._method_is_glow_normalized_36873697 != nil)
        self._method_set_glow_intensity_373806689 = StringName(from: "set_glow_intensity")
        assert(self._method_set_glow_intensity_373806689 != nil)
        self._method_get_glow_intensity_1740695150 = StringName(from: "get_glow_intensity")
        assert(self._method_get_glow_intensity_1740695150 != nil)
        self._method_set_glow_strength_373806689 = StringName(from: "set_glow_strength")
        assert(self._method_set_glow_strength_373806689 != nil)
        self._method_get_glow_strength_1740695150 = StringName(from: "get_glow_strength")
        assert(self._method_get_glow_strength_1740695150 != nil)
        self._method_set_glow_mix_373806689 = StringName(from: "set_glow_mix")
        assert(self._method_set_glow_mix_373806689 != nil)
        self._method_get_glow_mix_1740695150 = StringName(from: "get_glow_mix")
        assert(self._method_get_glow_mix_1740695150 != nil)
        self._method_set_glow_bloom_373806689 = StringName(from: "set_glow_bloom")
        assert(self._method_set_glow_bloom_373806689 != nil)
        self._method_get_glow_bloom_1740695150 = StringName(from: "get_glow_bloom")
        assert(self._method_get_glow_bloom_1740695150 != nil)
        self._method_set_glow_blend_mode_2561587761 = StringName(from: "set_glow_blend_mode")
        assert(self._method_set_glow_blend_mode_2561587761 != nil)
        self._method_get_glow_blend_mode_1529667332 = StringName(from: "get_glow_blend_mode")
        assert(self._method_get_glow_blend_mode_1529667332 != nil)
        self._method_set_glow_hdr_bleed_threshold_373806689 = StringName(from: "set_glow_hdr_bleed_threshold")
        assert(self._method_set_glow_hdr_bleed_threshold_373806689 != nil)
        self._method_get_glow_hdr_bleed_threshold_1740695150 = StringName(from: "get_glow_hdr_bleed_threshold")
        assert(self._method_get_glow_hdr_bleed_threshold_1740695150 != nil)
        self._method_set_glow_hdr_bleed_scale_373806689 = StringName(from: "set_glow_hdr_bleed_scale")
        assert(self._method_set_glow_hdr_bleed_scale_373806689 != nil)
        self._method_get_glow_hdr_bleed_scale_1740695150 = StringName(from: "get_glow_hdr_bleed_scale")
        assert(self._method_get_glow_hdr_bleed_scale_1740695150 != nil)
        self._method_set_glow_hdr_luminance_cap_373806689 = StringName(from: "set_glow_hdr_luminance_cap")
        assert(self._method_set_glow_hdr_luminance_cap_373806689 != nil)
        self._method_get_glow_hdr_luminance_cap_1740695150 = StringName(from: "get_glow_hdr_luminance_cap")
        assert(self._method_get_glow_hdr_luminance_cap_1740695150 != nil)
        self._method_set_glow_map_strength_373806689 = StringName(from: "set_glow_map_strength")
        assert(self._method_set_glow_map_strength_373806689 != nil)
        self._method_get_glow_map_strength_1740695150 = StringName(from: "get_glow_map_strength")
        assert(self._method_get_glow_map_strength_1740695150 != nil)
        self._method_set_glow_map_1790811099 = StringName(from: "set_glow_map")
        assert(self._method_set_glow_map_1790811099 != nil)
        self._method_get_glow_map_4037048985 = StringName(from: "get_glow_map")
        assert(self._method_get_glow_map_4037048985 != nil)
        self._method_set_fog_enabled_2586408642 = StringName(from: "set_fog_enabled")
        assert(self._method_set_fog_enabled_2586408642 != nil)
        self._method_is_fog_enabled_36873697 = StringName(from: "is_fog_enabled")
        assert(self._method_is_fog_enabled_36873697 != nil)
        self._method_set_fog_light_color_2920490490 = StringName(from: "set_fog_light_color")
        assert(self._method_set_fog_light_color_2920490490 != nil)
        self._method_get_fog_light_color_3444240500 = StringName(from: "get_fog_light_color")
        assert(self._method_get_fog_light_color_3444240500 != nil)
        self._method_set_fog_light_energy_373806689 = StringName(from: "set_fog_light_energy")
        assert(self._method_set_fog_light_energy_373806689 != nil)
        self._method_get_fog_light_energy_1740695150 = StringName(from: "get_fog_light_energy")
        assert(self._method_get_fog_light_energy_1740695150 != nil)
        self._method_set_fog_sun_scatter_373806689 = StringName(from: "set_fog_sun_scatter")
        assert(self._method_set_fog_sun_scatter_373806689 != nil)
        self._method_get_fog_sun_scatter_1740695150 = StringName(from: "get_fog_sun_scatter")
        assert(self._method_get_fog_sun_scatter_1740695150 != nil)
        self._method_set_fog_density_373806689 = StringName(from: "set_fog_density")
        assert(self._method_set_fog_density_373806689 != nil)
        self._method_get_fog_density_1740695150 = StringName(from: "get_fog_density")
        assert(self._method_get_fog_density_1740695150 != nil)
        self._method_set_fog_height_373806689 = StringName(from: "set_fog_height")
        assert(self._method_set_fog_height_373806689 != nil)
        self._method_get_fog_height_1740695150 = StringName(from: "get_fog_height")
        assert(self._method_get_fog_height_1740695150 != nil)
        self._method_set_fog_height_density_373806689 = StringName(from: "set_fog_height_density")
        assert(self._method_set_fog_height_density_373806689 != nil)
        self._method_get_fog_height_density_1740695150 = StringName(from: "get_fog_height_density")
        assert(self._method_get_fog_height_density_1740695150 != nil)
        self._method_set_fog_aerial_perspective_373806689 = StringName(from: "set_fog_aerial_perspective")
        assert(self._method_set_fog_aerial_perspective_373806689 != nil)
        self._method_get_fog_aerial_perspective_1740695150 = StringName(from: "get_fog_aerial_perspective")
        assert(self._method_get_fog_aerial_perspective_1740695150 != nil)
        self._method_set_fog_sky_affect_373806689 = StringName(from: "set_fog_sky_affect")
        assert(self._method_set_fog_sky_affect_373806689 != nil)
        self._method_get_fog_sky_affect_1740695150 = StringName(from: "get_fog_sky_affect")
        assert(self._method_get_fog_sky_affect_1740695150 != nil)
        self._method_set_volumetric_fog_enabled_2586408642 = StringName(from: "set_volumetric_fog_enabled")
        assert(self._method_set_volumetric_fog_enabled_2586408642 != nil)
        self._method_is_volumetric_fog_enabled_36873697 = StringName(from: "is_volumetric_fog_enabled")
        assert(self._method_is_volumetric_fog_enabled_36873697 != nil)
        self._method_set_volumetric_fog_emission_2920490490 = StringName(from: "set_volumetric_fog_emission")
        assert(self._method_set_volumetric_fog_emission_2920490490 != nil)
        self._method_get_volumetric_fog_emission_3444240500 = StringName(from: "get_volumetric_fog_emission")
        assert(self._method_get_volumetric_fog_emission_3444240500 != nil)
        self._method_set_volumetric_fog_albedo_2920490490 = StringName(from: "set_volumetric_fog_albedo")
        assert(self._method_set_volumetric_fog_albedo_2920490490 != nil)
        self._method_get_volumetric_fog_albedo_3444240500 = StringName(from: "get_volumetric_fog_albedo")
        assert(self._method_get_volumetric_fog_albedo_3444240500 != nil)
        self._method_set_volumetric_fog_density_373806689 = StringName(from: "set_volumetric_fog_density")
        assert(self._method_set_volumetric_fog_density_373806689 != nil)
        self._method_get_volumetric_fog_density_1740695150 = StringName(from: "get_volumetric_fog_density")
        assert(self._method_get_volumetric_fog_density_1740695150 != nil)
        self._method_set_volumetric_fog_emission_energy_373806689 = StringName(from: "set_volumetric_fog_emission_energy")
        assert(self._method_set_volumetric_fog_emission_energy_373806689 != nil)
        self._method_get_volumetric_fog_emission_energy_1740695150 = StringName(from: "get_volumetric_fog_emission_energy")
        assert(self._method_get_volumetric_fog_emission_energy_1740695150 != nil)
        self._method_set_volumetric_fog_anisotropy_373806689 = StringName(from: "set_volumetric_fog_anisotropy")
        assert(self._method_set_volumetric_fog_anisotropy_373806689 != nil)
        self._method_get_volumetric_fog_anisotropy_1740695150 = StringName(from: "get_volumetric_fog_anisotropy")
        assert(self._method_get_volumetric_fog_anisotropy_1740695150 != nil)
        self._method_set_volumetric_fog_length_373806689 = StringName(from: "set_volumetric_fog_length")
        assert(self._method_set_volumetric_fog_length_373806689 != nil)
        self._method_get_volumetric_fog_length_1740695150 = StringName(from: "get_volumetric_fog_length")
        assert(self._method_get_volumetric_fog_length_1740695150 != nil)
        self._method_set_volumetric_fog_detail_spread_373806689 = StringName(from: "set_volumetric_fog_detail_spread")
        assert(self._method_set_volumetric_fog_detail_spread_373806689 != nil)
        self._method_get_volumetric_fog_detail_spread_1740695150 = StringName(from: "get_volumetric_fog_detail_spread")
        assert(self._method_get_volumetric_fog_detail_spread_1740695150 != nil)
        self._method_set_volumetric_fog_gi_inject_373806689 = StringName(from: "set_volumetric_fog_gi_inject")
        assert(self._method_set_volumetric_fog_gi_inject_373806689 != nil)
        self._method_get_volumetric_fog_gi_inject_1740695150 = StringName(from: "get_volumetric_fog_gi_inject")
        assert(self._method_get_volumetric_fog_gi_inject_1740695150 != nil)
        self._method_set_volumetric_fog_ambient_inject_373806689 = StringName(from: "set_volumetric_fog_ambient_inject")
        assert(self._method_set_volumetric_fog_ambient_inject_373806689 != nil)
        self._method_get_volumetric_fog_ambient_inject_1740695150 = StringName(from: "get_volumetric_fog_ambient_inject")
        assert(self._method_get_volumetric_fog_ambient_inject_1740695150 != nil)
        self._method_set_volumetric_fog_sky_affect_373806689 = StringName(from: "set_volumetric_fog_sky_affect")
        assert(self._method_set_volumetric_fog_sky_affect_373806689 != nil)
        self._method_get_volumetric_fog_sky_affect_1740695150 = StringName(from: "get_volumetric_fog_sky_affect")
        assert(self._method_get_volumetric_fog_sky_affect_1740695150 != nil)
        self._method_set_volumetric_fog_temporal_reprojection_enabled_2586408642 = StringName(from: "set_volumetric_fog_temporal_reprojection_enabled")
        assert(self._method_set_volumetric_fog_temporal_reprojection_enabled_2586408642 != nil)
        self._method_is_volumetric_fog_temporal_reprojection_enabled_36873697 = StringName(from: "is_volumetric_fog_temporal_reprojection_enabled")
        assert(self._method_is_volumetric_fog_temporal_reprojection_enabled_36873697 != nil)
        self._method_set_volumetric_fog_temporal_reprojection_amount_373806689 = StringName(from: "set_volumetric_fog_temporal_reprojection_amount")
        assert(self._method_set_volumetric_fog_temporal_reprojection_amount_373806689 != nil)
        self._method_get_volumetric_fog_temporal_reprojection_amount_1740695150 = StringName(from: "get_volumetric_fog_temporal_reprojection_amount")
        assert(self._method_get_volumetric_fog_temporal_reprojection_amount_1740695150 != nil)
        self._method_set_adjustment_enabled_2586408642 = StringName(from: "set_adjustment_enabled")
        assert(self._method_set_adjustment_enabled_2586408642 != nil)
        self._method_is_adjustment_enabled_36873697 = StringName(from: "is_adjustment_enabled")
        assert(self._method_is_adjustment_enabled_36873697 != nil)
        self._method_set_adjustment_brightness_373806689 = StringName(from: "set_adjustment_brightness")
        assert(self._method_set_adjustment_brightness_373806689 != nil)
        self._method_get_adjustment_brightness_1740695150 = StringName(from: "get_adjustment_brightness")
        assert(self._method_get_adjustment_brightness_1740695150 != nil)
        self._method_set_adjustment_contrast_373806689 = StringName(from: "set_adjustment_contrast")
        assert(self._method_set_adjustment_contrast_373806689 != nil)
        self._method_get_adjustment_contrast_1740695150 = StringName(from: "get_adjustment_contrast")
        assert(self._method_get_adjustment_contrast_1740695150 != nil)
        self._method_set_adjustment_saturation_373806689 = StringName(from: "set_adjustment_saturation")
        assert(self._method_set_adjustment_saturation_373806689 != nil)
        self._method_get_adjustment_saturation_1740695150 = StringName(from: "get_adjustment_saturation")
        assert(self._method_get_adjustment_saturation_1740695150 != nil)
        self._method_set_adjustment_color_correction_1790811099 = StringName(from: "set_adjustment_color_correction")
        assert(self._method_set_adjustment_color_correction_1790811099 != nil)
        self._method_get_adjustment_color_correction_4037048985 = StringName(from: "get_adjustment_color_correction")
        assert(self._method_get_adjustment_color_correction_4037048985 != nil)
    }

    public func set_background(mode: Environment.BGMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_background_4071623990._native_ptr(),
                    4071623990)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_background_1843210413._native_ptr(),
                    1843210413)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.BGMode(godot: __resPtr.pointee)
    }
    public func set_sky(sky: Sky)  {
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sky_3336722921._native_ptr(),
                    3336722921)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sky_1177136966._native_ptr(),
                    1177136966)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Sky(godot: __resPtr.pointee)
    }
    public func set_sky_custom_fov(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sky_custom_fov_373806689._native_ptr(),
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
    public func get_sky_custom_fov() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sky_custom_fov_1740695150._native_ptr(),
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
    public func set_sky_rotation(euler_radians: Vector3)  {
        let euler_radians_native = euler_radians._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(euler_radians_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sky_rotation_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sky_rotation_3360562783._native_ptr(),
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
    public func set_bg_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bg_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bg_color_3444240500._native_ptr(),
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
    public func set_bg_energy_multiplier(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bg_energy_multiplier_373806689._native_ptr(),
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
    public func get_bg_energy_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bg_energy_multiplier_1740695150._native_ptr(),
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
    public func set_bg_intensity(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_bg_intensity_373806689._native_ptr(),
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
    public func get_bg_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_bg_intensity_1740695150._native_ptr(),
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
    public func set_canvas_max_layer(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_canvas_max_layer_1286410249._native_ptr(),
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
    public func get_canvas_max_layer() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_max_layer_3905245786._native_ptr(),
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
    public func set_camera_feed_id(id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_camera_feed_id_1286410249._native_ptr(),
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
    public func get_camera_feed_id() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_feed_id_3905245786._native_ptr(),
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
    public func set_ambient_light_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_light_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_light_color_3444240500._native_ptr(),
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
    public func set_ambient_source(source: Environment.AmbientSource)  {
        withUnsafePointer(to: source.rawValue) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_source_2607780160._native_ptr(),
                    2607780160)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_source_67453933._native_ptr(),
                    67453933)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.AmbientSource(godot: __resPtr.pointee)
    }
    public func set_ambient_light_energy(energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(energy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_light_energy_373806689._native_ptr(),
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
    public func get_ambient_light_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_light_energy_1740695150._native_ptr(),
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
    public func set_ambient_light_sky_contribution(ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ratio_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ambient_light_sky_contribution_373806689._native_ptr(),
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
    public func get_ambient_light_sky_contribution() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ambient_light_sky_contribution_1740695150._native_ptr(),
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
    public func set_reflection_source(source: Environment.ReflectionSource)  {
        withUnsafePointer(to: source.rawValue) { source_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(source_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_reflection_source_299673197._native_ptr(),
                    299673197)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_reflection_source_777700713._native_ptr(),
                    777700713)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.ReflectionSource(godot: __resPtr.pointee)
    }
    public func set_tonemapper(mode: Environment.ToneMapper)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tonemapper_1509116664._native_ptr(),
                    1509116664)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tonemapper_2908408137._native_ptr(),
                    2908408137)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.ToneMapper(godot: __resPtr.pointee)
    }
    public func set_tonemap_exposure(exposure: Float64)  {
        withUnsafePointer(to: exposure) { exposure_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(exposure_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tonemap_exposure_373806689._native_ptr(),
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
    public func get_tonemap_exposure() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tonemap_exposure_1740695150._native_ptr(),
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
    public func set_tonemap_white(white: Float64)  {
        withUnsafePointer(to: white) { white_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(white_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_tonemap_white_373806689._native_ptr(),
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
    public func get_tonemap_white() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_tonemap_white_1740695150._native_ptr(),
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
    public func set_ssr_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssr_enabled_2586408642._native_ptr(),
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
    public func is_ssr_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_ssr_enabled_36873697._native_ptr(),
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
    public func set_ssr_max_steps(max_steps: Int64)  {
        withUnsafePointer(to: max_steps) { max_steps_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(max_steps_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssr_max_steps_1286410249._native_ptr(),
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
    public func get_ssr_max_steps() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssr_max_steps_3905245786._native_ptr(),
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
    public func set_ssr_fade_in(fade_in: Float64)  {
        withUnsafePointer(to: fade_in) { fade_in_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_in_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssr_fade_in_373806689._native_ptr(),
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
    public func get_ssr_fade_in() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssr_fade_in_1740695150._native_ptr(),
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
    public func set_ssr_fade_out(fade_out: Float64)  {
        withUnsafePointer(to: fade_out) { fade_out_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fade_out_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssr_fade_out_373806689._native_ptr(),
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
    public func get_ssr_fade_out() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssr_fade_out_1740695150._native_ptr(),
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
    public func set_ssr_depth_tolerance(depth_tolerance: Float64)  {
        withUnsafePointer(to: depth_tolerance) { depth_tolerance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_tolerance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssr_depth_tolerance_373806689._native_ptr(),
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
    public func get_ssr_depth_tolerance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssr_depth_tolerance_1740695150._native_ptr(),
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
    public func set_ssao_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_enabled_2586408642._native_ptr(),
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
    public func is_ssao_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_ssao_enabled_36873697._native_ptr(),
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
    public func set_ssao_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_radius_373806689._native_ptr(),
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
    public func get_ssao_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_radius_1740695150._native_ptr(),
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
    public func set_ssao_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_intensity_373806689._native_ptr(),
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
    public func get_ssao_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_intensity_1740695150._native_ptr(),
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
    public func set_ssao_power(power: Float64)  {
        withUnsafePointer(to: power) { power_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(power_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_power_373806689._native_ptr(),
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
    public func get_ssao_power() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_power_1740695150._native_ptr(),
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
    public func set_ssao_detail(detail: Float64)  {
        withUnsafePointer(to: detail) { detail_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_detail_373806689._native_ptr(),
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
    public func get_ssao_detail() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_detail_1740695150._native_ptr(),
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
    public func set_ssao_horizon(horizon: Float64)  {
        withUnsafePointer(to: horizon) { horizon_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(horizon_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_horizon_373806689._native_ptr(),
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
    public func get_ssao_horizon() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_horizon_1740695150._native_ptr(),
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
    public func set_ssao_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_sharpness_373806689._native_ptr(),
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
    public func get_ssao_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_sharpness_1740695150._native_ptr(),
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
    public func set_ssao_direct_light_affect(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_direct_light_affect_373806689._native_ptr(),
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
    public func get_ssao_direct_light_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_direct_light_affect_1740695150._native_ptr(),
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
    public func set_ssao_ao_channel_affect(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssao_ao_channel_affect_373806689._native_ptr(),
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
    public func get_ssao_ao_channel_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssao_ao_channel_affect_1740695150._native_ptr(),
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
    public func set_ssil_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssil_enabled_2586408642._native_ptr(),
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
    public func is_ssil_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_ssil_enabled_36873697._native_ptr(),
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
    public func set_ssil_radius(radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(radius_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssil_radius_373806689._native_ptr(),
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
    public func get_ssil_radius() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssil_radius_1740695150._native_ptr(),
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
    public func set_ssil_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssil_intensity_373806689._native_ptr(),
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
    public func get_ssil_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssil_intensity_1740695150._native_ptr(),
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
    public func set_ssil_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssil_sharpness_373806689._native_ptr(),
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
    public func get_ssil_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssil_sharpness_1740695150._native_ptr(),
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
    public func set_ssil_normal_rejection(normal_rejection: Float64)  {
        withUnsafePointer(to: normal_rejection) { normal_rejection_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_rejection_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ssil_normal_rejection_373806689._native_ptr(),
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
    public func get_ssil_normal_rejection() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ssil_normal_rejection_1740695150._native_ptr(),
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
    public func set_sdfgi_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_enabled_2586408642._native_ptr(),
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
    public func is_sdfgi_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_sdfgi_enabled_36873697._native_ptr(),
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
    public func set_sdfgi_cascades(amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_cascades_1286410249._native_ptr(),
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
    public func get_sdfgi_cascades() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_cascades_3905245786._native_ptr(),
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
    public func set_sdfgi_min_cell_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_min_cell_size_373806689._native_ptr(),
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
    public func get_sdfgi_min_cell_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_min_cell_size_1740695150._native_ptr(),
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
    public func set_sdfgi_max_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_max_distance_373806689._native_ptr(),
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
    public func get_sdfgi_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_max_distance_1740695150._native_ptr(),
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
    public func set_sdfgi_cascade0_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_cascade0_distance_373806689._native_ptr(),
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
    public func get_sdfgi_cascade0_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_cascade0_distance_1740695150._native_ptr(),
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
    public func set_sdfgi_y_scale(scale: Environment.SDFGIYScale)  {
        withUnsafePointer(to: scale.rawValue) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_y_scale_3608608372._native_ptr(),
                    3608608372)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_y_scale_2568002245._native_ptr(),
                    2568002245)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.SDFGIYScale(godot: __resPtr.pointee)
    }
    public func set_sdfgi_use_occlusion(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_use_occlusion_2586408642._native_ptr(),
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
    public func is_sdfgi_using_occlusion() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_sdfgi_using_occlusion_36873697._native_ptr(),
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
    public func set_sdfgi_bounce_feedback(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_bounce_feedback_373806689._native_ptr(),
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
    public func get_sdfgi_bounce_feedback() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_bounce_feedback_1740695150._native_ptr(),
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
    public func set_sdfgi_read_sky_light(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_read_sky_light_2586408642._native_ptr(),
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
    public func is_sdfgi_reading_sky_light() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_sdfgi_reading_sky_light_36873697._native_ptr(),
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
    public func set_sdfgi_energy(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_energy_373806689._native_ptr(),
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
    public func get_sdfgi_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_energy_1740695150._native_ptr(),
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
    public func set_sdfgi_normal_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_normal_bias_373806689._native_ptr(),
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
    public func get_sdfgi_normal_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_normal_bias_1740695150._native_ptr(),
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
    public func set_sdfgi_probe_bias(bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(bias_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdfgi_probe_bias_373806689._native_ptr(),
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
    public func get_sdfgi_probe_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdfgi_probe_bias_1740695150._native_ptr(),
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
    public func set_glow_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_enabled_2586408642._native_ptr(),
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
    public func is_glow_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_glow_enabled_36873697._native_ptr(),
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
    public func set_glow_level(idx: Int64, intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        withUnsafePointer(to: idx) { idx_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(idx_native), .init(intensity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_level_1602489585._native_ptr(),
                    1602489585)
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_level_2339986948._native_ptr(),
                    2339986948)
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
    public func set_glow_normalized(normalize: UInt8)  {
        withUnsafePointer(to: normalize) { normalize_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normalize_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_normalized_2586408642._native_ptr(),
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
    public func is_glow_normalized() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_glow_normalized_36873697._native_ptr(),
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
    public func set_glow_intensity(intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(intensity_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_intensity_373806689._native_ptr(),
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
    public func get_glow_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_intensity_1740695150._native_ptr(),
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
    public func set_glow_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_strength_373806689._native_ptr(),
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
    public func get_glow_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_strength_1740695150._native_ptr(),
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
    public func set_glow_mix(mix: Float64)  {
        withUnsafePointer(to: mix) { mix_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mix_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_mix_373806689._native_ptr(),
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
    public func get_glow_mix() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_mix_1740695150._native_ptr(),
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
    public func set_glow_bloom(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_bloom_373806689._native_ptr(),
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
    public func get_glow_bloom() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_bloom_1740695150._native_ptr(),
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
    public func set_glow_blend_mode(mode: Environment.GlowBlendMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_blend_mode_2561587761._native_ptr(),
                    2561587761)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_blend_mode_1529667332._native_ptr(),
                    1529667332)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Environment.GlowBlendMode(godot: __resPtr.pointee)
    }
    public func set_glow_hdr_bleed_threshold(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_hdr_bleed_threshold_373806689._native_ptr(),
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
    public func get_glow_hdr_bleed_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_hdr_bleed_threshold_1740695150._native_ptr(),
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
    public func set_glow_hdr_bleed_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_hdr_bleed_scale_373806689._native_ptr(),
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
    public func get_glow_hdr_bleed_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_hdr_bleed_scale_1740695150._native_ptr(),
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
    public func set_glow_hdr_luminance_cap(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_hdr_luminance_cap_373806689._native_ptr(),
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
    public func get_glow_hdr_luminance_cap() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_hdr_luminance_cap_1740695150._native_ptr(),
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
    public func set_glow_map_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_map_strength_373806689._native_ptr(),
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
    public func get_glow_map_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_map_strength_1740695150._native_ptr(),
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
    public func set_glow_map(mode: Texture)  {
        let mode_native = mode._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_glow_map_1790811099._native_ptr(),
                    1790811099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_glow_map_4037048985._native_ptr(),
                    4037048985)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture(godot: __resPtr.pointee)
    }
    public func set_fog_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_enabled_2586408642._native_ptr(),
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
    public func is_fog_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_fog_enabled_36873697._native_ptr(),
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
    public func set_fog_light_color(light_color: Color)  {
        let light_color_native = light_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_light_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_light_color_3444240500._native_ptr(),
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
    public func set_fog_light_energy(light_energy: Float64)  {
        withUnsafePointer(to: light_energy) { light_energy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_energy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_light_energy_373806689._native_ptr(),
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
    public func get_fog_light_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_light_energy_1740695150._native_ptr(),
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
    public func set_fog_sun_scatter(sun_scatter: Float64)  {
        withUnsafePointer(to: sun_scatter) { sun_scatter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sun_scatter_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_sun_scatter_373806689._native_ptr(),
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
    public func get_fog_sun_scatter() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_sun_scatter_1740695150._native_ptr(),
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
    public func set_fog_density(density: Float64)  {
        withUnsafePointer(to: density) { density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(density_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_density_373806689._native_ptr(),
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
    public func get_fog_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_density_1740695150._native_ptr(),
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
    public func set_fog_height(height: Float64)  {
        withUnsafePointer(to: height) { height_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_height_373806689._native_ptr(),
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
    public func get_fog_height() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_height_1740695150._native_ptr(),
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
    public func set_fog_height_density(height_density: Float64)  {
        withUnsafePointer(to: height_density) { height_density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(height_density_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_height_density_373806689._native_ptr(),
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
    public func get_fog_height_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_height_density_1740695150._native_ptr(),
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
    public func set_fog_aerial_perspective(aerial_perspective: Float64)  {
        withUnsafePointer(to: aerial_perspective) { aerial_perspective_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aerial_perspective_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_aerial_perspective_373806689._native_ptr(),
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
    public func get_fog_aerial_perspective() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_aerial_perspective_1740695150._native_ptr(),
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
    public func set_fog_sky_affect(sky_affect: Float64)  {
        withUnsafePointer(to: sky_affect) { sky_affect_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_affect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fog_sky_affect_373806689._native_ptr(),
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
    public func get_fog_sky_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fog_sky_affect_1740695150._native_ptr(),
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
    public func set_volumetric_fog_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_enabled_2586408642._native_ptr(),
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
    public func is_volumetric_fog_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_volumetric_fog_enabled_36873697._native_ptr(),
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
    public func set_volumetric_fog_emission(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_emission_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_emission_3444240500._native_ptr(),
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
    public func set_volumetric_fog_albedo(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_albedo_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_albedo_3444240500._native_ptr(),
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
    public func set_volumetric_fog_density(density: Float64)  {
        withUnsafePointer(to: density) { density_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(density_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_density_373806689._native_ptr(),
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
    public func get_volumetric_fog_density() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_density_1740695150._native_ptr(),
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
    public func set_volumetric_fog_emission_energy(begin: Float64)  {
        withUnsafePointer(to: begin) { begin_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(begin_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_emission_energy_373806689._native_ptr(),
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
    public func get_volumetric_fog_emission_energy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_emission_energy_1740695150._native_ptr(),
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
    public func set_volumetric_fog_anisotropy(anisotropy: Float64)  {
        withUnsafePointer(to: anisotropy) { anisotropy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anisotropy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_anisotropy_373806689._native_ptr(),
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
    public func get_volumetric_fog_anisotropy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_anisotropy_1740695150._native_ptr(),
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
    public func set_volumetric_fog_length(length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(length_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_length_373806689._native_ptr(),
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
    public func get_volumetric_fog_length() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_length_1740695150._native_ptr(),
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
    public func set_volumetric_fog_detail_spread(detail_spread: Float64)  {
        withUnsafePointer(to: detail_spread) { detail_spread_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_spread_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_detail_spread_373806689._native_ptr(),
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
    public func get_volumetric_fog_detail_spread() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_detail_spread_1740695150._native_ptr(),
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
    public func set_volumetric_fog_gi_inject(gi_inject: Float64)  {
        withUnsafePointer(to: gi_inject) { gi_inject_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(gi_inject_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_gi_inject_373806689._native_ptr(),
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
    public func get_volumetric_fog_gi_inject() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_gi_inject_1740695150._native_ptr(),
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
    public func set_volumetric_fog_ambient_inject(enabled: Float64)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_ambient_inject_373806689._native_ptr(),
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
    public func get_volumetric_fog_ambient_inject() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_ambient_inject_1740695150._native_ptr(),
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
    public func set_volumetric_fog_sky_affect(sky_affect: Float64)  {
        withUnsafePointer(to: sky_affect) { sky_affect_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_affect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_sky_affect_373806689._native_ptr(),
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
    public func get_volumetric_fog_sky_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_sky_affect_1740695150._native_ptr(),
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
    public func set_volumetric_fog_temporal_reprojection_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_temporal_reprojection_enabled_2586408642._native_ptr(),
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
    public func is_volumetric_fog_temporal_reprojection_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_volumetric_fog_temporal_reprojection_enabled_36873697._native_ptr(),
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
    public func set_volumetric_fog_temporal_reprojection_amount(temporal_reprojection_amount: Float64)  {
        withUnsafePointer(to: temporal_reprojection_amount) { temporal_reprojection_amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(temporal_reprojection_amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_volumetric_fog_temporal_reprojection_amount_373806689._native_ptr(),
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
    public func get_volumetric_fog_temporal_reprojection_amount() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_volumetric_fog_temporal_reprojection_amount_1740695150._native_ptr(),
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
    public func set_adjustment_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_adjustment_enabled_2586408642._native_ptr(),
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
    public func is_adjustment_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_adjustment_enabled_36873697._native_ptr(),
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
    public func set_adjustment_brightness(brightness: Float64)  {
        withUnsafePointer(to: brightness) { brightness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(brightness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_adjustment_brightness_373806689._native_ptr(),
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
    public func get_adjustment_brightness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_adjustment_brightness_1740695150._native_ptr(),
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
    public func set_adjustment_contrast(contrast: Float64)  {
        withUnsafePointer(to: contrast) { contrast_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(contrast_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_adjustment_contrast_373806689._native_ptr(),
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
    public func get_adjustment_contrast() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_adjustment_contrast_1740695150._native_ptr(),
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
    public func set_adjustment_saturation(saturation: Float64)  {
        withUnsafePointer(to: saturation) { saturation_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(saturation_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_adjustment_saturation_373806689._native_ptr(),
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
    public func get_adjustment_saturation() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_adjustment_saturation_1740695150._native_ptr(),
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
    public func set_adjustment_color_correction(color_correction: Texture)  {
        let color_correction_native = color_correction._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_correction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_adjustment_color_correction_1790811099._native_ptr(),
                    1790811099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
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
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_adjustment_color_correction_4037048985._native_ptr(),
                    4037048985)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture(godot: __resPtr.pointee)
    }
}