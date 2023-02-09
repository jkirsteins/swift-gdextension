import godot_native

fileprivate var __godot_name_BaseMaterial3D: StringName! = nil

/// Default 3D rendering material.
/// 
/// This provides a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.
open class BaseMaterial3D : Material {

    public enum TextureParam : Int32 {
        case TEXTURE_ALBEDO = 0
        case TEXTURE_METALLIC = 1
        case TEXTURE_ROUGHNESS = 2
        case TEXTURE_EMISSION = 3
        case TEXTURE_NORMAL = 4
        case TEXTURE_RIM = 5
        case TEXTURE_CLEARCOAT = 6
        case TEXTURE_FLOWMAP = 7
        case TEXTURE_AMBIENT_OCCLUSION = 8
        case TEXTURE_HEIGHTMAP = 9
        case TEXTURE_SUBSURFACE_SCATTERING = 10
        case TEXTURE_SUBSURFACE_TRANSMITTANCE = 11
        case TEXTURE_BACKLIGHT = 12
        case TEXTURE_REFRACTION = 13
        case TEXTURE_DETAIL_MASK = 14
        case TEXTURE_DETAIL_ALBEDO = 15
        case TEXTURE_DETAIL_NORMAL = 16
        case TEXTURE_ORM = 17
        case TEXTURE_MAX = 18
    }
    public enum TextureFilter : Int32 {
        case TEXTURE_FILTER_NEAREST = 0
        case TEXTURE_FILTER_LINEAR = 1
        case TEXTURE_FILTER_NEAREST_WITH_MIPMAPS = 2
        case TEXTURE_FILTER_LINEAR_WITH_MIPMAPS = 3
        case TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC = 4
        case TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC = 5
        case TEXTURE_FILTER_MAX = 6
    }
    public enum DetailUV : Int32 {
        case DETAIL_UV_1 = 0
        case DETAIL_UV_2 = 1
    }
    public enum Transparency : Int32 {
        case TRANSPARENCY_DISABLED = 0
        case TRANSPARENCY_ALPHA = 1
        case TRANSPARENCY_ALPHA_SCISSOR = 2
        case TRANSPARENCY_ALPHA_HASH = 3
        case TRANSPARENCY_ALPHA_DEPTH_PRE_PASS = 4
        case TRANSPARENCY_MAX = 5
    }
    public enum ShadingMode : Int32 {
        case SHADING_MODE_UNSHADED = 0
        case SHADING_MODE_PER_PIXEL = 1
        case SHADING_MODE_PER_VERTEX = 2
        case SHADING_MODE_MAX = 3
    }
    public enum Feature : Int32 {
        case FEATURE_EMISSION = 0
        case FEATURE_NORMAL_MAPPING = 1
        case FEATURE_RIM = 2
        case FEATURE_CLEARCOAT = 3
        case FEATURE_ANISOTROPY = 4
        case FEATURE_AMBIENT_OCCLUSION = 5
        case FEATURE_HEIGHT_MAPPING = 6
        case FEATURE_SUBSURFACE_SCATTERING = 7
        case FEATURE_SUBSURFACE_TRANSMITTANCE = 8
        case FEATURE_BACKLIGHT = 9
        case FEATURE_REFRACTION = 10
        case FEATURE_DETAIL = 11
        case FEATURE_MAX = 12
    }
    public enum BlendMode : Int32 {
        case BLEND_MODE_MIX = 0
        case BLEND_MODE_ADD = 1
        case BLEND_MODE_SUB = 2
        case BLEND_MODE_MUL = 3
    }
    public enum AlphaAntiAliasing : Int32 {
        case ALPHA_ANTIALIASING_OFF = 0
        case ALPHA_ANTIALIASING_ALPHA_TO_COVERAGE = 1
        case ALPHA_ANTIALIASING_ALPHA_TO_COVERAGE_AND_TO_ONE = 2
    }
    public enum DepthDrawMode : Int32 {
        case DEPTH_DRAW_OPAQUE_ONLY = 0
        case DEPTH_DRAW_ALWAYS = 1
        case DEPTH_DRAW_DISABLED = 2
    }
    public enum CullMode : Int32 {
        case CULL_BACK = 0
        case CULL_FRONT = 1
        case CULL_DISABLED = 2
    }
    public enum Flags : Int32 {
        case FLAG_DISABLE_DEPTH_TEST = 0
        case FLAG_ALBEDO_FROM_VERTEX_COLOR = 1
        case FLAG_SRGB_VERTEX_COLOR = 2
        case FLAG_USE_POINT_SIZE = 3
        case FLAG_FIXED_SIZE = 4
        case FLAG_BILLBOARD_KEEP_SCALE = 5
        case FLAG_UV1_USE_TRIPLANAR = 6
        case FLAG_UV2_USE_TRIPLANAR = 7
        case FLAG_UV1_USE_WORLD_TRIPLANAR = 8
        case FLAG_UV2_USE_WORLD_TRIPLANAR = 9
        case FLAG_AO_ON_UV2 = 10
        case FLAG_EMISSION_ON_UV2 = 11
        case FLAG_ALBEDO_TEXTURE_FORCE_SRGB = 12
        case FLAG_DONT_RECEIVE_SHADOWS = 13
        case FLAG_DISABLE_AMBIENT_LIGHT = 14
        case FLAG_USE_SHADOW_TO_OPACITY = 15
        case FLAG_USE_TEXTURE_REPEAT = 16
        case FLAG_INVERT_HEIGHTMAP = 17
        case FLAG_SUBSURFACE_MODE_SKIN = 18
        case FLAG_PARTICLE_TRAILS_MODE = 19
        case FLAG_ALBEDO_TEXTURE_MSDF = 20
        case FLAG_MAX = 21
    }
    public enum DiffuseMode : Int32 {
        case DIFFUSE_BURLEY = 0
        case DIFFUSE_LAMBERT = 1
        case DIFFUSE_LAMBERT_WRAP = 2
        case DIFFUSE_TOON = 3
    }
    public enum SpecularMode : Int32 {
        case SPECULAR_SCHLICK_GGX = 0
        case SPECULAR_TOON = 1
        case SPECULAR_DISABLED = 2
    }
    public enum BillboardMode : Int32 {
        case BILLBOARD_DISABLED = 0
        case BILLBOARD_ENABLED = 1
        case BILLBOARD_FIXED_Y = 2
        case BILLBOARD_PARTICLES = 3
    }
    public enum TextureChannel : Int32 {
        case TEXTURE_CHANNEL_RED = 0
        case TEXTURE_CHANNEL_GREEN = 1
        case TEXTURE_CHANNEL_BLUE = 2
        case TEXTURE_CHANNEL_ALPHA = 3
        case TEXTURE_CHANNEL_GRAYSCALE = 4
    }
    public enum EmissionOperator : Int32 {
        case EMISSION_OP_ADD = 0
        case EMISSION_OP_MULTIPLY = 1
    }
    public enum DistanceFadeMode : Int32 {
        case DISTANCE_FADE_DISABLED = 0
        case DISTANCE_FADE_PIXEL_ALPHA = 1
        case DISTANCE_FADE_PIXEL_DITHER = 2
        case DISTANCE_FADE_OBJECT_DITHER = 3
    }

    public override class var __godot_name: StringName { __godot_name_BaseMaterial3D }

    static var _method_set_albedo_2920490490: StringName! = nil
    static var _method_get_albedo_3444240500: StringName! = nil
    static var _method_set_transparency_3435651667: StringName! = nil
    static var _method_get_transparency_990903061: StringName! = nil
    static var _method_set_alpha_antialiasing_3212649852: StringName! = nil
    static var _method_get_alpha_antialiasing_2889939400: StringName! = nil
    static var _method_set_alpha_antialiasing_edge_373806689: StringName! = nil
    static var _method_get_alpha_antialiasing_edge_1740695150: StringName! = nil
    static var _method_set_shading_mode_3368750322: StringName! = nil
    static var _method_get_shading_mode_2132070559: StringName! = nil
    static var _method_set_specular_373806689: StringName! = nil
    static var _method_get_specular_1740695150: StringName! = nil
    static var _method_set_metallic_373806689: StringName! = nil
    static var _method_get_metallic_1740695150: StringName! = nil
    static var _method_set_roughness_373806689: StringName! = nil
    static var _method_get_roughness_1740695150: StringName! = nil
    static var _method_set_emission_2920490490: StringName! = nil
    static var _method_get_emission_3444240500: StringName! = nil
    static var _method_set_emission_energy_multiplier_373806689: StringName! = nil
    static var _method_get_emission_energy_multiplier_1740695150: StringName! = nil
    static var _method_set_emission_intensity_373806689: StringName! = nil
    static var _method_get_emission_intensity_1740695150: StringName! = nil
    static var _method_set_normal_scale_373806689: StringName! = nil
    static var _method_get_normal_scale_1740695150: StringName! = nil
    static var _method_set_rim_373806689: StringName! = nil
    static var _method_get_rim_1740695150: StringName! = nil
    static var _method_set_rim_tint_373806689: StringName! = nil
    static var _method_get_rim_tint_1740695150: StringName! = nil
    static var _method_set_clearcoat_373806689: StringName! = nil
    static var _method_get_clearcoat_1740695150: StringName! = nil
    static var _method_set_clearcoat_roughness_373806689: StringName! = nil
    static var _method_get_clearcoat_roughness_1740695150: StringName! = nil
    static var _method_set_anisotropy_373806689: StringName! = nil
    static var _method_get_anisotropy_1740695150: StringName! = nil
    static var _method_set_heightmap_scale_373806689: StringName! = nil
    static var _method_get_heightmap_scale_1740695150: StringName! = nil
    static var _method_set_subsurface_scattering_strength_373806689: StringName! = nil
    static var _method_get_subsurface_scattering_strength_1740695150: StringName! = nil
    static var _method_set_transmittance_color_2920490490: StringName! = nil
    static var _method_get_transmittance_color_3444240500: StringName! = nil
    static var _method_set_transmittance_depth_373806689: StringName! = nil
    static var _method_get_transmittance_depth_1740695150: StringName! = nil
    static var _method_set_transmittance_boost_373806689: StringName! = nil
    static var _method_get_transmittance_boost_1740695150: StringName! = nil
    static var _method_set_backlight_2920490490: StringName! = nil
    static var _method_get_backlight_3444240500: StringName! = nil
    static var _method_set_refraction_373806689: StringName! = nil
    static var _method_get_refraction_1740695150: StringName! = nil
    static var _method_set_point_size_373806689: StringName! = nil
    static var _method_get_point_size_1740695150: StringName! = nil
    static var _method_set_detail_uv_456801921: StringName! = nil
    static var _method_get_detail_uv_2306920512: StringName! = nil
    static var _method_set_blend_mode_2830186259: StringName! = nil
    static var _method_get_blend_mode_4022690962: StringName! = nil
    static var _method_set_depth_draw_mode_1456584748: StringName! = nil
    static var _method_get_depth_draw_mode_2578197639: StringName! = nil
    static var _method_set_cull_mode_2338909218: StringName! = nil
    static var _method_get_cull_mode_1941499586: StringName! = nil
    static var _method_set_diffuse_mode_1045299638: StringName! = nil
    static var _method_get_diffuse_mode_3973617136: StringName! = nil
    static var _method_set_specular_mode_584737147: StringName! = nil
    static var _method_get_specular_mode_2569953298: StringName! = nil
    static var _method_set_flag_3070159527: StringName! = nil
    static var _method_get_flag_1286410065: StringName! = nil
    static var _method_set_texture_filter_22904437: StringName! = nil
    static var _method_get_texture_filter_3289213076: StringName! = nil
    static var _method_set_feature_2819288693: StringName! = nil
    static var _method_get_feature_1965241794: StringName! = nil
    static var _method_set_texture_464208135: StringName! = nil
    static var _method_get_texture_329605813: StringName! = nil
    static var _method_set_detail_blend_mode_2830186259: StringName! = nil
    static var _method_get_detail_blend_mode_4022690962: StringName! = nil
    static var _method_set_uv1_scale_3460891852: StringName! = nil
    static var _method_get_uv1_scale_3360562783: StringName! = nil
    static var _method_set_uv1_offset_3460891852: StringName! = nil
    static var _method_get_uv1_offset_3360562783: StringName! = nil
    static var _method_set_uv1_triplanar_blend_sharpness_373806689: StringName! = nil
    static var _method_get_uv1_triplanar_blend_sharpness_1740695150: StringName! = nil
    static var _method_set_uv2_scale_3460891852: StringName! = nil
    static var _method_get_uv2_scale_3360562783: StringName! = nil
    static var _method_set_uv2_offset_3460891852: StringName! = nil
    static var _method_get_uv2_offset_3360562783: StringName! = nil
    static var _method_set_uv2_triplanar_blend_sharpness_373806689: StringName! = nil
    static var _method_get_uv2_triplanar_blend_sharpness_1740695150: StringName! = nil
    static var _method_set_billboard_mode_4202036497: StringName! = nil
    static var _method_get_billboard_mode_1283840139: StringName! = nil
    static var _method_set_particles_anim_h_frames_1286410249: StringName! = nil
    static var _method_get_particles_anim_h_frames_3905245786: StringName! = nil
    static var _method_set_particles_anim_v_frames_1286410249: StringName! = nil
    static var _method_get_particles_anim_v_frames_3905245786: StringName! = nil
    static var _method_set_particles_anim_loop_2586408642: StringName! = nil
    static var _method_get_particles_anim_loop_36873697: StringName! = nil
    static var _method_set_heightmap_deep_parallax_2586408642: StringName! = nil
    static var _method_is_heightmap_deep_parallax_enabled_36873697: StringName! = nil
    static var _method_set_heightmap_deep_parallax_min_layers_1286410249: StringName! = nil
    static var _method_get_heightmap_deep_parallax_min_layers_3905245786: StringName! = nil
    static var _method_set_heightmap_deep_parallax_max_layers_1286410249: StringName! = nil
    static var _method_get_heightmap_deep_parallax_max_layers_3905245786: StringName! = nil
    static var _method_set_heightmap_deep_parallax_flip_tangent_2586408642: StringName! = nil
    static var _method_get_heightmap_deep_parallax_flip_tangent_36873697: StringName! = nil
    static var _method_set_heightmap_deep_parallax_flip_binormal_2586408642: StringName! = nil
    static var _method_get_heightmap_deep_parallax_flip_binormal_36873697: StringName! = nil
    static var _method_set_grow_373806689: StringName! = nil
    static var _method_get_grow_1740695150: StringName! = nil
    static var _method_set_emission_operator_3825128922: StringName! = nil
    static var _method_get_emission_operator_974205018: StringName! = nil
    static var _method_set_ao_light_affect_373806689: StringName! = nil
    static var _method_get_ao_light_affect_1740695150: StringName! = nil
    static var _method_set_alpha_scissor_threshold_373806689: StringName! = nil
    static var _method_get_alpha_scissor_threshold_1740695150: StringName! = nil
    static var _method_set_alpha_hash_scale_373806689: StringName! = nil
    static var _method_get_alpha_hash_scale_1740695150: StringName! = nil
    static var _method_set_grow_enabled_2586408642: StringName! = nil
    static var _method_is_grow_enabled_36873697: StringName! = nil
    static var _method_set_metallic_texture_channel_744167988: StringName! = nil
    static var _method_get_metallic_texture_channel_568133867: StringName! = nil
    static var _method_set_roughness_texture_channel_744167988: StringName! = nil
    static var _method_get_roughness_texture_channel_568133867: StringName! = nil
    static var _method_set_ao_texture_channel_744167988: StringName! = nil
    static var _method_get_ao_texture_channel_568133867: StringName! = nil
    static var _method_set_refraction_texture_channel_744167988: StringName! = nil
    static var _method_get_refraction_texture_channel_568133867: StringName! = nil
    static var _method_set_proximity_fade_enabled_2586408642: StringName! = nil
    static var _method_is_proximity_fade_enabled_36873697: StringName! = nil
    static var _method_set_proximity_fade_distance_373806689: StringName! = nil
    static var _method_get_proximity_fade_distance_1740695150: StringName! = nil
    static var _method_set_msdf_pixel_range_373806689: StringName! = nil
    static var _method_get_msdf_pixel_range_1740695150: StringName! = nil
    static var _method_set_msdf_outline_size_373806689: StringName! = nil
    static var _method_get_msdf_outline_size_1740695150: StringName! = nil
    static var _method_set_distance_fade_1379478617: StringName! = nil
    static var _method_get_distance_fade_2694575734: StringName! = nil
    static var _method_set_distance_fade_max_distance_373806689: StringName! = nil
    static var _method_get_distance_fade_max_distance_1740695150: StringName! = nil
    static var _method_set_distance_fade_min_distance_373806689: StringName! = nil
    static var _method_get_distance_fade_min_distance_1740695150: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_BaseMaterial3D == nil)
        __godot_name_BaseMaterial3D = StringName(from: "BaseMaterial3D")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_albedo_2920490490 = StringName(from: "set_albedo")
        assert(self._method_set_albedo_2920490490 != nil)
        self._method_get_albedo_3444240500 = StringName(from: "get_albedo")
        assert(self._method_get_albedo_3444240500 != nil)
        self._method_set_transparency_3435651667 = StringName(from: "set_transparency")
        assert(self._method_set_transparency_3435651667 != nil)
        self._method_get_transparency_990903061 = StringName(from: "get_transparency")
        assert(self._method_get_transparency_990903061 != nil)
        self._method_set_alpha_antialiasing_3212649852 = StringName(from: "set_alpha_antialiasing")
        assert(self._method_set_alpha_antialiasing_3212649852 != nil)
        self._method_get_alpha_antialiasing_2889939400 = StringName(from: "get_alpha_antialiasing")
        assert(self._method_get_alpha_antialiasing_2889939400 != nil)
        self._method_set_alpha_antialiasing_edge_373806689 = StringName(from: "set_alpha_antialiasing_edge")
        assert(self._method_set_alpha_antialiasing_edge_373806689 != nil)
        self._method_get_alpha_antialiasing_edge_1740695150 = StringName(from: "get_alpha_antialiasing_edge")
        assert(self._method_get_alpha_antialiasing_edge_1740695150 != nil)
        self._method_set_shading_mode_3368750322 = StringName(from: "set_shading_mode")
        assert(self._method_set_shading_mode_3368750322 != nil)
        self._method_get_shading_mode_2132070559 = StringName(from: "get_shading_mode")
        assert(self._method_get_shading_mode_2132070559 != nil)
        self._method_set_specular_373806689 = StringName(from: "set_specular")
        assert(self._method_set_specular_373806689 != nil)
        self._method_get_specular_1740695150 = StringName(from: "get_specular")
        assert(self._method_get_specular_1740695150 != nil)
        self._method_set_metallic_373806689 = StringName(from: "set_metallic")
        assert(self._method_set_metallic_373806689 != nil)
        self._method_get_metallic_1740695150 = StringName(from: "get_metallic")
        assert(self._method_get_metallic_1740695150 != nil)
        self._method_set_roughness_373806689 = StringName(from: "set_roughness")
        assert(self._method_set_roughness_373806689 != nil)
        self._method_get_roughness_1740695150 = StringName(from: "get_roughness")
        assert(self._method_get_roughness_1740695150 != nil)
        self._method_set_emission_2920490490 = StringName(from: "set_emission")
        assert(self._method_set_emission_2920490490 != nil)
        self._method_get_emission_3444240500 = StringName(from: "get_emission")
        assert(self._method_get_emission_3444240500 != nil)
        self._method_set_emission_energy_multiplier_373806689 = StringName(from: "set_emission_energy_multiplier")
        assert(self._method_set_emission_energy_multiplier_373806689 != nil)
        self._method_get_emission_energy_multiplier_1740695150 = StringName(from: "get_emission_energy_multiplier")
        assert(self._method_get_emission_energy_multiplier_1740695150 != nil)
        self._method_set_emission_intensity_373806689 = StringName(from: "set_emission_intensity")
        assert(self._method_set_emission_intensity_373806689 != nil)
        self._method_get_emission_intensity_1740695150 = StringName(from: "get_emission_intensity")
        assert(self._method_get_emission_intensity_1740695150 != nil)
        self._method_set_normal_scale_373806689 = StringName(from: "set_normal_scale")
        assert(self._method_set_normal_scale_373806689 != nil)
        self._method_get_normal_scale_1740695150 = StringName(from: "get_normal_scale")
        assert(self._method_get_normal_scale_1740695150 != nil)
        self._method_set_rim_373806689 = StringName(from: "set_rim")
        assert(self._method_set_rim_373806689 != nil)
        self._method_get_rim_1740695150 = StringName(from: "get_rim")
        assert(self._method_get_rim_1740695150 != nil)
        self._method_set_rim_tint_373806689 = StringName(from: "set_rim_tint")
        assert(self._method_set_rim_tint_373806689 != nil)
        self._method_get_rim_tint_1740695150 = StringName(from: "get_rim_tint")
        assert(self._method_get_rim_tint_1740695150 != nil)
        self._method_set_clearcoat_373806689 = StringName(from: "set_clearcoat")
        assert(self._method_set_clearcoat_373806689 != nil)
        self._method_get_clearcoat_1740695150 = StringName(from: "get_clearcoat")
        assert(self._method_get_clearcoat_1740695150 != nil)
        self._method_set_clearcoat_roughness_373806689 = StringName(from: "set_clearcoat_roughness")
        assert(self._method_set_clearcoat_roughness_373806689 != nil)
        self._method_get_clearcoat_roughness_1740695150 = StringName(from: "get_clearcoat_roughness")
        assert(self._method_get_clearcoat_roughness_1740695150 != nil)
        self._method_set_anisotropy_373806689 = StringName(from: "set_anisotropy")
        assert(self._method_set_anisotropy_373806689 != nil)
        self._method_get_anisotropy_1740695150 = StringName(from: "get_anisotropy")
        assert(self._method_get_anisotropy_1740695150 != nil)
        self._method_set_heightmap_scale_373806689 = StringName(from: "set_heightmap_scale")
        assert(self._method_set_heightmap_scale_373806689 != nil)
        self._method_get_heightmap_scale_1740695150 = StringName(from: "get_heightmap_scale")
        assert(self._method_get_heightmap_scale_1740695150 != nil)
        self._method_set_subsurface_scattering_strength_373806689 = StringName(from: "set_subsurface_scattering_strength")
        assert(self._method_set_subsurface_scattering_strength_373806689 != nil)
        self._method_get_subsurface_scattering_strength_1740695150 = StringName(from: "get_subsurface_scattering_strength")
        assert(self._method_get_subsurface_scattering_strength_1740695150 != nil)
        self._method_set_transmittance_color_2920490490 = StringName(from: "set_transmittance_color")
        assert(self._method_set_transmittance_color_2920490490 != nil)
        self._method_get_transmittance_color_3444240500 = StringName(from: "get_transmittance_color")
        assert(self._method_get_transmittance_color_3444240500 != nil)
        self._method_set_transmittance_depth_373806689 = StringName(from: "set_transmittance_depth")
        assert(self._method_set_transmittance_depth_373806689 != nil)
        self._method_get_transmittance_depth_1740695150 = StringName(from: "get_transmittance_depth")
        assert(self._method_get_transmittance_depth_1740695150 != nil)
        self._method_set_transmittance_boost_373806689 = StringName(from: "set_transmittance_boost")
        assert(self._method_set_transmittance_boost_373806689 != nil)
        self._method_get_transmittance_boost_1740695150 = StringName(from: "get_transmittance_boost")
        assert(self._method_get_transmittance_boost_1740695150 != nil)
        self._method_set_backlight_2920490490 = StringName(from: "set_backlight")
        assert(self._method_set_backlight_2920490490 != nil)
        self._method_get_backlight_3444240500 = StringName(from: "get_backlight")
        assert(self._method_get_backlight_3444240500 != nil)
        self._method_set_refraction_373806689 = StringName(from: "set_refraction")
        assert(self._method_set_refraction_373806689 != nil)
        self._method_get_refraction_1740695150 = StringName(from: "get_refraction")
        assert(self._method_get_refraction_1740695150 != nil)
        self._method_set_point_size_373806689 = StringName(from: "set_point_size")
        assert(self._method_set_point_size_373806689 != nil)
        self._method_get_point_size_1740695150 = StringName(from: "get_point_size")
        assert(self._method_get_point_size_1740695150 != nil)
        self._method_set_detail_uv_456801921 = StringName(from: "set_detail_uv")
        assert(self._method_set_detail_uv_456801921 != nil)
        self._method_get_detail_uv_2306920512 = StringName(from: "get_detail_uv")
        assert(self._method_get_detail_uv_2306920512 != nil)
        self._method_set_blend_mode_2830186259 = StringName(from: "set_blend_mode")
        assert(self._method_set_blend_mode_2830186259 != nil)
        self._method_get_blend_mode_4022690962 = StringName(from: "get_blend_mode")
        assert(self._method_get_blend_mode_4022690962 != nil)
        self._method_set_depth_draw_mode_1456584748 = StringName(from: "set_depth_draw_mode")
        assert(self._method_set_depth_draw_mode_1456584748 != nil)
        self._method_get_depth_draw_mode_2578197639 = StringName(from: "get_depth_draw_mode")
        assert(self._method_get_depth_draw_mode_2578197639 != nil)
        self._method_set_cull_mode_2338909218 = StringName(from: "set_cull_mode")
        assert(self._method_set_cull_mode_2338909218 != nil)
        self._method_get_cull_mode_1941499586 = StringName(from: "get_cull_mode")
        assert(self._method_get_cull_mode_1941499586 != nil)
        self._method_set_diffuse_mode_1045299638 = StringName(from: "set_diffuse_mode")
        assert(self._method_set_diffuse_mode_1045299638 != nil)
        self._method_get_diffuse_mode_3973617136 = StringName(from: "get_diffuse_mode")
        assert(self._method_get_diffuse_mode_3973617136 != nil)
        self._method_set_specular_mode_584737147 = StringName(from: "set_specular_mode")
        assert(self._method_set_specular_mode_584737147 != nil)
        self._method_get_specular_mode_2569953298 = StringName(from: "get_specular_mode")
        assert(self._method_get_specular_mode_2569953298 != nil)
        self._method_set_flag_3070159527 = StringName(from: "set_flag")
        assert(self._method_set_flag_3070159527 != nil)
        self._method_get_flag_1286410065 = StringName(from: "get_flag")
        assert(self._method_get_flag_1286410065 != nil)
        self._method_set_texture_filter_22904437 = StringName(from: "set_texture_filter")
        assert(self._method_set_texture_filter_22904437 != nil)
        self._method_get_texture_filter_3289213076 = StringName(from: "get_texture_filter")
        assert(self._method_get_texture_filter_3289213076 != nil)
        self._method_set_feature_2819288693 = StringName(from: "set_feature")
        assert(self._method_set_feature_2819288693 != nil)
        self._method_get_feature_1965241794 = StringName(from: "get_feature")
        assert(self._method_get_feature_1965241794 != nil)
        self._method_set_texture_464208135 = StringName(from: "set_texture")
        assert(self._method_set_texture_464208135 != nil)
        self._method_get_texture_329605813 = StringName(from: "get_texture")
        assert(self._method_get_texture_329605813 != nil)
        self._method_set_detail_blend_mode_2830186259 = StringName(from: "set_detail_blend_mode")
        assert(self._method_set_detail_blend_mode_2830186259 != nil)
        self._method_get_detail_blend_mode_4022690962 = StringName(from: "get_detail_blend_mode")
        assert(self._method_get_detail_blend_mode_4022690962 != nil)
        self._method_set_uv1_scale_3460891852 = StringName(from: "set_uv1_scale")
        assert(self._method_set_uv1_scale_3460891852 != nil)
        self._method_get_uv1_scale_3360562783 = StringName(from: "get_uv1_scale")
        assert(self._method_get_uv1_scale_3360562783 != nil)
        self._method_set_uv1_offset_3460891852 = StringName(from: "set_uv1_offset")
        assert(self._method_set_uv1_offset_3460891852 != nil)
        self._method_get_uv1_offset_3360562783 = StringName(from: "get_uv1_offset")
        assert(self._method_get_uv1_offset_3360562783 != nil)
        self._method_set_uv1_triplanar_blend_sharpness_373806689 = StringName(from: "set_uv1_triplanar_blend_sharpness")
        assert(self._method_set_uv1_triplanar_blend_sharpness_373806689 != nil)
        self._method_get_uv1_triplanar_blend_sharpness_1740695150 = StringName(from: "get_uv1_triplanar_blend_sharpness")
        assert(self._method_get_uv1_triplanar_blend_sharpness_1740695150 != nil)
        self._method_set_uv2_scale_3460891852 = StringName(from: "set_uv2_scale")
        assert(self._method_set_uv2_scale_3460891852 != nil)
        self._method_get_uv2_scale_3360562783 = StringName(from: "get_uv2_scale")
        assert(self._method_get_uv2_scale_3360562783 != nil)
        self._method_set_uv2_offset_3460891852 = StringName(from: "set_uv2_offset")
        assert(self._method_set_uv2_offset_3460891852 != nil)
        self._method_get_uv2_offset_3360562783 = StringName(from: "get_uv2_offset")
        assert(self._method_get_uv2_offset_3360562783 != nil)
        self._method_set_uv2_triplanar_blend_sharpness_373806689 = StringName(from: "set_uv2_triplanar_blend_sharpness")
        assert(self._method_set_uv2_triplanar_blend_sharpness_373806689 != nil)
        self._method_get_uv2_triplanar_blend_sharpness_1740695150 = StringName(from: "get_uv2_triplanar_blend_sharpness")
        assert(self._method_get_uv2_triplanar_blend_sharpness_1740695150 != nil)
        self._method_set_billboard_mode_4202036497 = StringName(from: "set_billboard_mode")
        assert(self._method_set_billboard_mode_4202036497 != nil)
        self._method_get_billboard_mode_1283840139 = StringName(from: "get_billboard_mode")
        assert(self._method_get_billboard_mode_1283840139 != nil)
        self._method_set_particles_anim_h_frames_1286410249 = StringName(from: "set_particles_anim_h_frames")
        assert(self._method_set_particles_anim_h_frames_1286410249 != nil)
        self._method_get_particles_anim_h_frames_3905245786 = StringName(from: "get_particles_anim_h_frames")
        assert(self._method_get_particles_anim_h_frames_3905245786 != nil)
        self._method_set_particles_anim_v_frames_1286410249 = StringName(from: "set_particles_anim_v_frames")
        assert(self._method_set_particles_anim_v_frames_1286410249 != nil)
        self._method_get_particles_anim_v_frames_3905245786 = StringName(from: "get_particles_anim_v_frames")
        assert(self._method_get_particles_anim_v_frames_3905245786 != nil)
        self._method_set_particles_anim_loop_2586408642 = StringName(from: "set_particles_anim_loop")
        assert(self._method_set_particles_anim_loop_2586408642 != nil)
        self._method_get_particles_anim_loop_36873697 = StringName(from: "get_particles_anim_loop")
        assert(self._method_get_particles_anim_loop_36873697 != nil)
        self._method_set_heightmap_deep_parallax_2586408642 = StringName(from: "set_heightmap_deep_parallax")
        assert(self._method_set_heightmap_deep_parallax_2586408642 != nil)
        self._method_is_heightmap_deep_parallax_enabled_36873697 = StringName(from: "is_heightmap_deep_parallax_enabled")
        assert(self._method_is_heightmap_deep_parallax_enabled_36873697 != nil)
        self._method_set_heightmap_deep_parallax_min_layers_1286410249 = StringName(from: "set_heightmap_deep_parallax_min_layers")
        assert(self._method_set_heightmap_deep_parallax_min_layers_1286410249 != nil)
        self._method_get_heightmap_deep_parallax_min_layers_3905245786 = StringName(from: "get_heightmap_deep_parallax_min_layers")
        assert(self._method_get_heightmap_deep_parallax_min_layers_3905245786 != nil)
        self._method_set_heightmap_deep_parallax_max_layers_1286410249 = StringName(from: "set_heightmap_deep_parallax_max_layers")
        assert(self._method_set_heightmap_deep_parallax_max_layers_1286410249 != nil)
        self._method_get_heightmap_deep_parallax_max_layers_3905245786 = StringName(from: "get_heightmap_deep_parallax_max_layers")
        assert(self._method_get_heightmap_deep_parallax_max_layers_3905245786 != nil)
        self._method_set_heightmap_deep_parallax_flip_tangent_2586408642 = StringName(from: "set_heightmap_deep_parallax_flip_tangent")
        assert(self._method_set_heightmap_deep_parallax_flip_tangent_2586408642 != nil)
        self._method_get_heightmap_deep_parallax_flip_tangent_36873697 = StringName(from: "get_heightmap_deep_parallax_flip_tangent")
        assert(self._method_get_heightmap_deep_parallax_flip_tangent_36873697 != nil)
        self._method_set_heightmap_deep_parallax_flip_binormal_2586408642 = StringName(from: "set_heightmap_deep_parallax_flip_binormal")
        assert(self._method_set_heightmap_deep_parallax_flip_binormal_2586408642 != nil)
        self._method_get_heightmap_deep_parallax_flip_binormal_36873697 = StringName(from: "get_heightmap_deep_parallax_flip_binormal")
        assert(self._method_get_heightmap_deep_parallax_flip_binormal_36873697 != nil)
        self._method_set_grow_373806689 = StringName(from: "set_grow")
        assert(self._method_set_grow_373806689 != nil)
        self._method_get_grow_1740695150 = StringName(from: "get_grow")
        assert(self._method_get_grow_1740695150 != nil)
        self._method_set_emission_operator_3825128922 = StringName(from: "set_emission_operator")
        assert(self._method_set_emission_operator_3825128922 != nil)
        self._method_get_emission_operator_974205018 = StringName(from: "get_emission_operator")
        assert(self._method_get_emission_operator_974205018 != nil)
        self._method_set_ao_light_affect_373806689 = StringName(from: "set_ao_light_affect")
        assert(self._method_set_ao_light_affect_373806689 != nil)
        self._method_get_ao_light_affect_1740695150 = StringName(from: "get_ao_light_affect")
        assert(self._method_get_ao_light_affect_1740695150 != nil)
        self._method_set_alpha_scissor_threshold_373806689 = StringName(from: "set_alpha_scissor_threshold")
        assert(self._method_set_alpha_scissor_threshold_373806689 != nil)
        self._method_get_alpha_scissor_threshold_1740695150 = StringName(from: "get_alpha_scissor_threshold")
        assert(self._method_get_alpha_scissor_threshold_1740695150 != nil)
        self._method_set_alpha_hash_scale_373806689 = StringName(from: "set_alpha_hash_scale")
        assert(self._method_set_alpha_hash_scale_373806689 != nil)
        self._method_get_alpha_hash_scale_1740695150 = StringName(from: "get_alpha_hash_scale")
        assert(self._method_get_alpha_hash_scale_1740695150 != nil)
        self._method_set_grow_enabled_2586408642 = StringName(from: "set_grow_enabled")
        assert(self._method_set_grow_enabled_2586408642 != nil)
        self._method_is_grow_enabled_36873697 = StringName(from: "is_grow_enabled")
        assert(self._method_is_grow_enabled_36873697 != nil)
        self._method_set_metallic_texture_channel_744167988 = StringName(from: "set_metallic_texture_channel")
        assert(self._method_set_metallic_texture_channel_744167988 != nil)
        self._method_get_metallic_texture_channel_568133867 = StringName(from: "get_metallic_texture_channel")
        assert(self._method_get_metallic_texture_channel_568133867 != nil)
        self._method_set_roughness_texture_channel_744167988 = StringName(from: "set_roughness_texture_channel")
        assert(self._method_set_roughness_texture_channel_744167988 != nil)
        self._method_get_roughness_texture_channel_568133867 = StringName(from: "get_roughness_texture_channel")
        assert(self._method_get_roughness_texture_channel_568133867 != nil)
        self._method_set_ao_texture_channel_744167988 = StringName(from: "set_ao_texture_channel")
        assert(self._method_set_ao_texture_channel_744167988 != nil)
        self._method_get_ao_texture_channel_568133867 = StringName(from: "get_ao_texture_channel")
        assert(self._method_get_ao_texture_channel_568133867 != nil)
        self._method_set_refraction_texture_channel_744167988 = StringName(from: "set_refraction_texture_channel")
        assert(self._method_set_refraction_texture_channel_744167988 != nil)
        self._method_get_refraction_texture_channel_568133867 = StringName(from: "get_refraction_texture_channel")
        assert(self._method_get_refraction_texture_channel_568133867 != nil)
        self._method_set_proximity_fade_enabled_2586408642 = StringName(from: "set_proximity_fade_enabled")
        assert(self._method_set_proximity_fade_enabled_2586408642 != nil)
        self._method_is_proximity_fade_enabled_36873697 = StringName(from: "is_proximity_fade_enabled")
        assert(self._method_is_proximity_fade_enabled_36873697 != nil)
        self._method_set_proximity_fade_distance_373806689 = StringName(from: "set_proximity_fade_distance")
        assert(self._method_set_proximity_fade_distance_373806689 != nil)
        self._method_get_proximity_fade_distance_1740695150 = StringName(from: "get_proximity_fade_distance")
        assert(self._method_get_proximity_fade_distance_1740695150 != nil)
        self._method_set_msdf_pixel_range_373806689 = StringName(from: "set_msdf_pixel_range")
        assert(self._method_set_msdf_pixel_range_373806689 != nil)
        self._method_get_msdf_pixel_range_1740695150 = StringName(from: "get_msdf_pixel_range")
        assert(self._method_get_msdf_pixel_range_1740695150 != nil)
        self._method_set_msdf_outline_size_373806689 = StringName(from: "set_msdf_outline_size")
        assert(self._method_set_msdf_outline_size_373806689 != nil)
        self._method_get_msdf_outline_size_1740695150 = StringName(from: "get_msdf_outline_size")
        assert(self._method_get_msdf_outline_size_1740695150 != nil)
        self._method_set_distance_fade_1379478617 = StringName(from: "set_distance_fade")
        assert(self._method_set_distance_fade_1379478617 != nil)
        self._method_get_distance_fade_2694575734 = StringName(from: "get_distance_fade")
        assert(self._method_get_distance_fade_2694575734 != nil)
        self._method_set_distance_fade_max_distance_373806689 = StringName(from: "set_distance_fade_max_distance")
        assert(self._method_set_distance_fade_max_distance_373806689 != nil)
        self._method_get_distance_fade_max_distance_1740695150 = StringName(from: "get_distance_fade_max_distance")
        assert(self._method_get_distance_fade_max_distance_1740695150 != nil)
        self._method_set_distance_fade_min_distance_373806689 = StringName(from: "set_distance_fade_min_distance")
        assert(self._method_set_distance_fade_min_distance_373806689 != nil)
        self._method_get_distance_fade_min_distance_1740695150 = StringName(from: "get_distance_fade_min_distance")
        assert(self._method_get_distance_fade_min_distance_1740695150 != nil)
    }

    public func set_albedo(albedo: Color)  {
        let albedo_native = albedo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(albedo_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_albedo_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_albedo() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_albedo_3444240500._native_ptr(),
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
    public func set_transparency(transparency: BaseMaterial3D.Transparency)  {
        withUnsafePointer(to: transparency.rawValue) { transparency_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transparency_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transparency_3435651667._native_ptr(),
                    3435651667)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_transparency() -> BaseMaterial3D.Transparency {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transparency_990903061._native_ptr(),
                    990903061)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.Transparency(godot: __resPtr.pointee)
    }
    public func set_alpha_antialiasing(alpha_aa: BaseMaterial3D.AlphaAntiAliasing)  {
        withUnsafePointer(to: alpha_aa.rawValue) { alpha_aa_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alpha_aa_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_antialiasing_3212649852._native_ptr(),
                    3212649852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_alpha_antialiasing() -> BaseMaterial3D.AlphaAntiAliasing {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_antialiasing_2889939400._native_ptr(),
                    2889939400)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.AlphaAntiAliasing(godot: __resPtr.pointee)
    }
    public func set_alpha_antialiasing_edge(edge: Float64)  {
        withUnsafePointer(to: edge) { edge_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_antialiasing_edge_373806689._native_ptr(),
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
    public func get_alpha_antialiasing_edge() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_antialiasing_edge_1740695150._native_ptr(),
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
    public func set_shading_mode(shading_mode: BaseMaterial3D.ShadingMode)  {
        withUnsafePointer(to: shading_mode.rawValue) { shading_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shading_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_shading_mode_3368750322._native_ptr(),
                    3368750322)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_shading_mode() -> BaseMaterial3D.ShadingMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_shading_mode_2132070559._native_ptr(),
                    2132070559)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.ShadingMode(godot: __resPtr.pointee)
    }
    public func set_specular(specular: Float64)  {
        withUnsafePointer(to: specular) { specular_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(specular_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_specular_373806689._native_ptr(),
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
    public func get_specular() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_specular_1740695150._native_ptr(),
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
    public func set_metallic(metallic: Float64)  {
        withUnsafePointer(to: metallic) { metallic_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(metallic_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_metallic_373806689._native_ptr(),
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
    public func get_metallic() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_metallic_1740695150._native_ptr(),
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
    public func set_roughness(roughness: Float64)  {
        withUnsafePointer(to: roughness) { roughness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(roughness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_roughness_373806689._native_ptr(),
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
    public func get_roughness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_roughness_1740695150._native_ptr(),
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
    public func set_emission(emission: Color)  {
        let emission_native = emission._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_emission() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_3444240500._native_ptr(),
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
    public func set_emission_energy_multiplier(emission_energy_multiplier: Float64)  {
        withUnsafePointer(to: emission_energy_multiplier) { emission_energy_multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_energy_multiplier_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_energy_multiplier_373806689._native_ptr(),
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
    public func get_emission_energy_multiplier() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_energy_multiplier_1740695150._native_ptr(),
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
    public func set_emission_intensity(emission_energy_multiplier: Float64)  {
        withUnsafePointer(to: emission_energy_multiplier) { emission_energy_multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_energy_multiplier_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_intensity_373806689._native_ptr(),
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
    public func get_emission_intensity() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_intensity_1740695150._native_ptr(),
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
    public func set_normal_scale(normal_scale: Float64)  {
        withUnsafePointer(to: normal_scale) { normal_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_normal_scale_373806689._native_ptr(),
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
    public func get_normal_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_normal_scale_1740695150._native_ptr(),
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
    public func set_rim(rim: Float64)  {
        withUnsafePointer(to: rim) { rim_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rim_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_rim_373806689._native_ptr(),
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
    public func get_rim() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rim_1740695150._native_ptr(),
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
    public func set_rim_tint(rim_tint: Float64)  {
        withUnsafePointer(to: rim_tint) { rim_tint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rim_tint_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_rim_tint_373806689._native_ptr(),
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
    public func get_rim_tint() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_rim_tint_1740695150._native_ptr(),
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
    public func set_clearcoat(clearcoat: Float64)  {
        withUnsafePointer(to: clearcoat) { clearcoat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clearcoat_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clearcoat_373806689._native_ptr(),
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
    public func get_clearcoat() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_clearcoat_1740695150._native_ptr(),
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
    public func set_clearcoat_roughness(clearcoat_roughness: Float64)  {
        withUnsafePointer(to: clearcoat_roughness) { clearcoat_roughness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clearcoat_roughness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_clearcoat_roughness_373806689._native_ptr(),
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
    public func get_clearcoat_roughness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_clearcoat_roughness_1740695150._native_ptr(),
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
    public func set_anisotropy(anisotropy: Float64)  {
        withUnsafePointer(to: anisotropy) { anisotropy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anisotropy_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_anisotropy_373806689._native_ptr(),
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
    public func get_anisotropy() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_anisotropy_1740695150._native_ptr(),
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
    public func set_heightmap_scale(heightmap_scale: Float64)  {
        withUnsafePointer(to: heightmap_scale) { heightmap_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(heightmap_scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_heightmap_scale_373806689._native_ptr(),
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
    public func get_heightmap_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_heightmap_scale_1740695150._native_ptr(),
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
    public func set_subsurface_scattering_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_subsurface_scattering_strength_373806689._native_ptr(),
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
    public func get_subsurface_scattering_strength() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_subsurface_scattering_strength_1740695150._native_ptr(),
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
    public func set_transmittance_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transmittance_color_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_transmittance_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transmittance_color_3444240500._native_ptr(),
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
    public func set_transmittance_depth(depth: Float64)  {
        withUnsafePointer(to: depth) { depth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transmittance_depth_373806689._native_ptr(),
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
    public func get_transmittance_depth() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transmittance_depth_1740695150._native_ptr(),
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
    public func set_transmittance_boost(boost: Float64)  {
        withUnsafePointer(to: boost) { boost_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(boost_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transmittance_boost_373806689._native_ptr(),
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
    public func get_transmittance_boost() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_transmittance_boost_1740695150._native_ptr(),
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
    public func set_backlight(backlight: Color)  {
        let backlight_native = backlight._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(backlight_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_backlight_2920490490._native_ptr(),
                    2920490490)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_backlight() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_backlight_3444240500._native_ptr(),
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
    public func set_refraction(refraction: Float64)  {
        withUnsafePointer(to: refraction) { refraction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(refraction_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_refraction_373806689._native_ptr(),
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
    public func get_refraction() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_refraction_1740695150._native_ptr(),
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
    public func set_point_size(point_size: Float64)  {
        withUnsafePointer(to: point_size) { point_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_point_size_373806689._native_ptr(),
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
    public func get_point_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_point_size_1740695150._native_ptr(),
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
    public func set_detail_uv(detail_uv: BaseMaterial3D.DetailUV)  {
        withUnsafePointer(to: detail_uv.rawValue) { detail_uv_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_uv_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_detail_uv_456801921._native_ptr(),
                    456801921)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_detail_uv() -> BaseMaterial3D.DetailUV {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_detail_uv_2306920512._native_ptr(),
                    2306920512)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DetailUV(godot: __resPtr.pointee)
    }
    public func set_blend_mode(blend_mode: BaseMaterial3D.BlendMode)  {
        withUnsafePointer(to: blend_mode.rawValue) { blend_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_blend_mode_2830186259._native_ptr(),
                    2830186259)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_blend_mode() -> BaseMaterial3D.BlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_blend_mode_4022690962._native_ptr(),
                    4022690962)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BlendMode(godot: __resPtr.pointee)
    }
    public func set_depth_draw_mode(depth_draw_mode: BaseMaterial3D.DepthDrawMode)  {
        withUnsafePointer(to: depth_draw_mode.rawValue) { depth_draw_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_draw_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_depth_draw_mode_1456584748._native_ptr(),
                    1456584748)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_depth_draw_mode() -> BaseMaterial3D.DepthDrawMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_depth_draw_mode_2578197639._native_ptr(),
                    2578197639)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DepthDrawMode(godot: __resPtr.pointee)
    }
    public func set_cull_mode(cull_mode: BaseMaterial3D.CullMode)  {
        withUnsafePointer(to: cull_mode.rawValue) { cull_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cull_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_cull_mode_2338909218._native_ptr(),
                    2338909218)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_cull_mode() -> BaseMaterial3D.CullMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_cull_mode_1941499586._native_ptr(),
                    1941499586)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.CullMode(godot: __resPtr.pointee)
    }
    public func set_diffuse_mode(diffuse_mode: BaseMaterial3D.DiffuseMode)  {
        withUnsafePointer(to: diffuse_mode.rawValue) { diffuse_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diffuse_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_diffuse_mode_1045299638._native_ptr(),
                    1045299638)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_diffuse_mode() -> BaseMaterial3D.DiffuseMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_diffuse_mode_3973617136._native_ptr(),
                    3973617136)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DiffuseMode(godot: __resPtr.pointee)
    }
    public func set_specular_mode(specular_mode: BaseMaterial3D.SpecularMode)  {
        withUnsafePointer(to: specular_mode.rawValue) { specular_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(specular_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_specular_mode_584737147._native_ptr(),
                    584737147)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_specular_mode() -> BaseMaterial3D.SpecularMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_specular_mode_2569953298._native_ptr(),
                    2569953298)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.SpecularMode(godot: __resPtr.pointee)
    }
    public func set_flag(flag: BaseMaterial3D.Flags, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_flag_3070159527._native_ptr(),
                    3070159527)
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
    public func get_flag(flag: BaseMaterial3D.Flags) -> UInt8 {
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flag_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_flag_1286410065._native_ptr(),
                    1286410065)
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
    public func set_texture_filter(mode: BaseMaterial3D.TextureFilter)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_filter_22904437._native_ptr(),
                    22904437)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture_filter() -> BaseMaterial3D.TextureFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_filter_3289213076._native_ptr(),
                    3289213076)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureFilter(godot: __resPtr.pointee)
    }
    public func set_feature(feature: BaseMaterial3D.Feature, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_feature_2819288693._native_ptr(),
                    2819288693)
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
    public func get_feature(feature: BaseMaterial3D.Feature) -> UInt8 {
        withUnsafePointer(to: feature.rawValue) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_feature_1965241794._native_ptr(),
                    1965241794)
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
    public func set_texture(param: BaseMaterial3D.TextureParam, texture: Texture2D)  {
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
                    Self._method_set_texture_464208135._native_ptr(),
                    464208135)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_texture(param: BaseMaterial3D.TextureParam) -> Texture2D {
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
                    Self._method_get_texture_329605813._native_ptr(),
                    329605813)
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
    public func set_detail_blend_mode(detail_blend_mode: BaseMaterial3D.BlendMode)  {
        withUnsafePointer(to: detail_blend_mode.rawValue) { detail_blend_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_blend_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_detail_blend_mode_2830186259._native_ptr(),
                    2830186259)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_detail_blend_mode() -> BaseMaterial3D.BlendMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_detail_blend_mode_4022690962._native_ptr(),
                    4022690962)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BlendMode(godot: __resPtr.pointee)
    }
    public func set_uv1_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv1_scale_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_uv1_scale() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_uv1_scale_3360562783._native_ptr(),
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
    public func set_uv1_offset(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv1_offset_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_uv1_offset() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_uv1_offset_3360562783._native_ptr(),
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
    public func set_uv1_triplanar_blend_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv1_triplanar_blend_sharpness_373806689._native_ptr(),
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
    public func get_uv1_triplanar_blend_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_uv1_triplanar_blend_sharpness_1740695150._native_ptr(),
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
    public func set_uv2_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv2_scale_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_uv2_scale() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_uv2_scale_3360562783._native_ptr(),
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
    public func set_uv2_offset(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv2_offset_3460891852._native_ptr(),
                    3460891852)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_uv2_offset() -> Vector3 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_uv2_offset_3360562783._native_ptr(),
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
    public func set_uv2_triplanar_blend_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_uv2_triplanar_blend_sharpness_373806689._native_ptr(),
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
    public func get_uv2_triplanar_blend_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_uv2_triplanar_blend_sharpness_1740695150._native_ptr(),
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
    public func set_billboard_mode(mode: BaseMaterial3D.BillboardMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_billboard_mode_4202036497._native_ptr(),
                    4202036497)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_billboard_mode() -> BaseMaterial3D.BillboardMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_billboard_mode_1283840139._native_ptr(),
                    1283840139)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BillboardMode(godot: __resPtr.pointee)
    }
    public func set_particles_anim_h_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_particles_anim_h_frames_1286410249._native_ptr(),
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
    public func get_particles_anim_h_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_particles_anim_h_frames_3905245786._native_ptr(),
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
    public func set_particles_anim_v_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_particles_anim_v_frames_1286410249._native_ptr(),
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
    public func get_particles_anim_v_frames() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_particles_anim_v_frames_3905245786._native_ptr(),
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
    public func set_particles_anim_loop(loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_particles_anim_loop_2586408642._native_ptr(),
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
    public func get_particles_anim_loop() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_particles_anim_loop_36873697._native_ptr(),
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
    public func set_heightmap_deep_parallax(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_heightmap_deep_parallax_2586408642._native_ptr(),
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
    public func is_heightmap_deep_parallax_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_heightmap_deep_parallax_enabled_36873697._native_ptr(),
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
    public func set_heightmap_deep_parallax_min_layers(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_heightmap_deep_parallax_min_layers_1286410249._native_ptr(),
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
    public func get_heightmap_deep_parallax_min_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_heightmap_deep_parallax_min_layers_3905245786._native_ptr(),
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
    public func set_heightmap_deep_parallax_max_layers(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_heightmap_deep_parallax_max_layers_1286410249._native_ptr(),
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
    public func get_heightmap_deep_parallax_max_layers() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_heightmap_deep_parallax_max_layers_3905245786._native_ptr(),
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
    public func set_heightmap_deep_parallax_flip_tangent(flip: UInt8)  {
        withUnsafePointer(to: flip) { flip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_heightmap_deep_parallax_flip_tangent_2586408642._native_ptr(),
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
    public func get_heightmap_deep_parallax_flip_tangent() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_heightmap_deep_parallax_flip_tangent_36873697._native_ptr(),
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
    public func set_heightmap_deep_parallax_flip_binormal(flip: UInt8)  {
        withUnsafePointer(to: flip) { flip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_heightmap_deep_parallax_flip_binormal_2586408642._native_ptr(),
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
    public func get_heightmap_deep_parallax_flip_binormal() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_heightmap_deep_parallax_flip_binormal_36873697._native_ptr(),
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
    public func set_grow(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_grow_373806689._native_ptr(),
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
    public func get_grow() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_grow_1740695150._native_ptr(),
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
    public func set_emission_operator(`operator`: BaseMaterial3D.EmissionOperator)  {
        withUnsafePointer(to: `operator`.rawValue) { operator_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(operator_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_emission_operator_3825128922._native_ptr(),
                    3825128922)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_emission_operator() -> BaseMaterial3D.EmissionOperator {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_emission_operator_974205018._native_ptr(),
                    974205018)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.EmissionOperator(godot: __resPtr.pointee)
    }
    public func set_ao_light_affect(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ao_light_affect_373806689._native_ptr(),
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
    public func get_ao_light_affect() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ao_light_affect_1740695150._native_ptr(),
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
    public func set_alpha_scissor_threshold(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_scissor_threshold_373806689._native_ptr(),
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
    public func get_alpha_scissor_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_scissor_threshold_1740695150._native_ptr(),
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
    public func set_alpha_hash_scale(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_alpha_hash_scale_373806689._native_ptr(),
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
    public func get_alpha_hash_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_alpha_hash_scale_1740695150._native_ptr(),
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
    public func set_grow_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_grow_enabled_2586408642._native_ptr(),
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
    public func is_grow_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_grow_enabled_36873697._native_ptr(),
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
    public func set_metallic_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_metallic_texture_channel_744167988._native_ptr(),
                    744167988)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_metallic_texture_channel() -> BaseMaterial3D.TextureChannel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_metallic_texture_channel_568133867._native_ptr(),
                    568133867)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(godot: __resPtr.pointee)
    }
    public func set_roughness_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_roughness_texture_channel_744167988._native_ptr(),
                    744167988)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_roughness_texture_channel() -> BaseMaterial3D.TextureChannel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_roughness_texture_channel_568133867._native_ptr(),
                    568133867)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(godot: __resPtr.pointee)
    }
    public func set_ao_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_ao_texture_channel_744167988._native_ptr(),
                    744167988)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_ao_texture_channel() -> BaseMaterial3D.TextureChannel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_ao_texture_channel_568133867._native_ptr(),
                    568133867)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(godot: __resPtr.pointee)
    }
    public func set_refraction_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_refraction_texture_channel_744167988._native_ptr(),
                    744167988)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_refraction_texture_channel() -> BaseMaterial3D.TextureChannel {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_refraction_texture_channel_568133867._native_ptr(),
                    568133867)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(godot: __resPtr.pointee)
    }
    public func set_proximity_fade_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_proximity_fade_enabled_2586408642._native_ptr(),
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
    public func is_proximity_fade_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_proximity_fade_enabled_36873697._native_ptr(),
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
    public func set_proximity_fade_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_proximity_fade_distance_373806689._native_ptr(),
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
    public func get_proximity_fade_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_proximity_fade_distance_1740695150._native_ptr(),
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
    public func set_msdf_pixel_range(range: Float64)  {
        withUnsafePointer(to: range) { range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(range_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_msdf_pixel_range_373806689._native_ptr(),
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
    public func get_msdf_pixel_range() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_msdf_pixel_range_1740695150._native_ptr(),
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
    public func set_msdf_outline_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_msdf_outline_size_373806689._native_ptr(),
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
    public func get_msdf_outline_size() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_msdf_outline_size_1740695150._native_ptr(),
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
    public func set_distance_fade(mode: BaseMaterial3D.DistanceFadeMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_distance_fade_1379478617._native_ptr(),
                    1379478617)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_distance_fade() -> BaseMaterial3D.DistanceFadeMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_distance_fade_2694575734._native_ptr(),
                    2694575734)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DistanceFadeMode(godot: __resPtr.pointee)
    }
    public func set_distance_fade_max_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_distance_fade_max_distance_373806689._native_ptr(),
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
    public func get_distance_fade_max_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_distance_fade_max_distance_1740695150._native_ptr(),
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
    public func set_distance_fade_min_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_distance_fade_min_distance_373806689._native_ptr(),
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
    public func get_distance_fade_min_distance() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_distance_fade_min_distance_1740695150._native_ptr(),
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