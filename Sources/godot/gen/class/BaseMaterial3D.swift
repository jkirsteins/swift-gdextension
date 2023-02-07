import godot_native

fileprivate var __godot_name_BaseMaterial3D: StringName! = nil

/// Default 3D rendering material.
/// 
/// This provides a default material with a wide variety of rendering features and properties without the need to write shader code. See the tutorial below for details.
public class BaseMaterial3D : Material {

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

    static var _method_set_albedo_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_albedo_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_transparency_3435651667: GDExtensionMethodBindPtr! = nil
    static var _method_get_transparency_990903061: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_antialiasing_3212649852: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_antialiasing_2889939400: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_antialiasing_edge_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_antialiasing_edge_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_shading_mode_3368750322: GDExtensionMethodBindPtr! = nil
    static var _method_get_shading_mode_2132070559: GDExtensionMethodBindPtr! = nil
    static var _method_set_specular_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_specular_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_metallic_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_metallic_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_roughness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_roughness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_energy_multiplier_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_energy_multiplier_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_intensity_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_intensity_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_normal_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_normal_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rim_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rim_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_rim_tint_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_rim_tint_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_clearcoat_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_clearcoat_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_clearcoat_roughness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_clearcoat_roughness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_anisotropy_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_anisotropy_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_heightmap_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_heightmap_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_subsurface_scattering_strength_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_subsurface_scattering_strength_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_transmittance_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_transmittance_color_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_transmittance_depth_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_transmittance_depth_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_transmittance_boost_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_transmittance_boost_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_backlight_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_get_backlight_3444240500: GDExtensionMethodBindPtr! = nil
    static var _method_set_refraction_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_refraction_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_point_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_point_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_detail_uv_456801921: GDExtensionMethodBindPtr! = nil
    static var _method_get_detail_uv_2306920512: GDExtensionMethodBindPtr! = nil
    static var _method_set_blend_mode_2830186259: GDExtensionMethodBindPtr! = nil
    static var _method_get_blend_mode_4022690962: GDExtensionMethodBindPtr! = nil
    static var _method_set_depth_draw_mode_1456584748: GDExtensionMethodBindPtr! = nil
    static var _method_get_depth_draw_mode_2578197639: GDExtensionMethodBindPtr! = nil
    static var _method_set_cull_mode_2338909218: GDExtensionMethodBindPtr! = nil
    static var _method_get_cull_mode_1941499586: GDExtensionMethodBindPtr! = nil
    static var _method_set_diffuse_mode_1045299638: GDExtensionMethodBindPtr! = nil
    static var _method_get_diffuse_mode_3973617136: GDExtensionMethodBindPtr! = nil
    static var _method_set_specular_mode_584737147: GDExtensionMethodBindPtr! = nil
    static var _method_get_specular_mode_2569953298: GDExtensionMethodBindPtr! = nil
    static var _method_set_flag_3070159527: GDExtensionMethodBindPtr! = nil
    static var _method_get_flag_1286410065: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_filter_22904437: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_filter_3289213076: GDExtensionMethodBindPtr! = nil
    static var _method_set_feature_2819288693: GDExtensionMethodBindPtr! = nil
    static var _method_get_feature_1965241794: GDExtensionMethodBindPtr! = nil
    static var _method_set_texture_464208135: GDExtensionMethodBindPtr! = nil
    static var _method_get_texture_329605813: GDExtensionMethodBindPtr! = nil
    static var _method_set_detail_blend_mode_2830186259: GDExtensionMethodBindPtr! = nil
    static var _method_get_detail_blend_mode_4022690962: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv1_scale_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv1_scale_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv1_offset_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv1_offset_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv1_triplanar_blend_sharpness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv1_triplanar_blend_sharpness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv2_scale_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv2_scale_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv2_offset_3460891852: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv2_offset_3360562783: GDExtensionMethodBindPtr! = nil
    static var _method_set_uv2_triplanar_blend_sharpness_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_uv2_triplanar_blend_sharpness_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_billboard_mode_4202036497: GDExtensionMethodBindPtr! = nil
    static var _method_get_billboard_mode_1283840139: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_anim_h_frames_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_anim_h_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_anim_v_frames_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_anim_v_frames_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_particles_anim_loop_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_particles_anim_loop_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_heightmap_deep_parallax_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_heightmap_deep_parallax_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_heightmap_deep_parallax_min_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_heightmap_deep_parallax_min_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_heightmap_deep_parallax_max_layers_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_get_heightmap_deep_parallax_max_layers_3905245786: GDExtensionMethodBindPtr! = nil
    static var _method_set_heightmap_deep_parallax_flip_tangent_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_heightmap_deep_parallax_flip_tangent_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_heightmap_deep_parallax_flip_binormal_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_heightmap_deep_parallax_flip_binormal_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_grow_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_grow_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_emission_operator_3825128922: GDExtensionMethodBindPtr! = nil
    static var _method_get_emission_operator_974205018: GDExtensionMethodBindPtr! = nil
    static var _method_set_ao_light_affect_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_ao_light_affect_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_scissor_threshold_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_scissor_threshold_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_alpha_hash_scale_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_alpha_hash_scale_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_grow_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_grow_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_metallic_texture_channel_744167988: GDExtensionMethodBindPtr! = nil
    static var _method_get_metallic_texture_channel_568133867: GDExtensionMethodBindPtr! = nil
    static var _method_set_roughness_texture_channel_744167988: GDExtensionMethodBindPtr! = nil
    static var _method_get_roughness_texture_channel_568133867: GDExtensionMethodBindPtr! = nil
    static var _method_set_ao_texture_channel_744167988: GDExtensionMethodBindPtr! = nil
    static var _method_get_ao_texture_channel_568133867: GDExtensionMethodBindPtr! = nil
    static var _method_set_refraction_texture_channel_744167988: GDExtensionMethodBindPtr! = nil
    static var _method_get_refraction_texture_channel_568133867: GDExtensionMethodBindPtr! = nil
    static var _method_set_proximity_fade_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_proximity_fade_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_proximity_fade_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_proximity_fade_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_msdf_pixel_range_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_msdf_pixel_range_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_msdf_outline_size_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_msdf_outline_size_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_1379478617: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_2694575734: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_max_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_max_distance_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_set_distance_fade_min_distance_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_get_distance_fade_min_distance_1740695150: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_BaseMaterial3D = StringName(from: "BaseMaterial3D")

        let _method_set_albedo_2920490490_name = StringName(from: "set_albedo")
        self._method_set_albedo_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_albedo_2920490490_name._native_ptr(), 2920490490)
        assert(BaseMaterial3D._method_set_albedo_2920490490 != nil)
        let _method_get_albedo_3444240500_name = StringName(from: "get_albedo")
        self._method_get_albedo_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_albedo_3444240500_name._native_ptr(), 3444240500)
        assert(BaseMaterial3D._method_get_albedo_3444240500 != nil)
        let _method_set_transparency_3435651667_name = StringName(from: "set_transparency")
        self._method_set_transparency_3435651667 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transparency_3435651667_name._native_ptr(), 3435651667)
        assert(BaseMaterial3D._method_set_transparency_3435651667 != nil)
        let _method_get_transparency_990903061_name = StringName(from: "get_transparency")
        self._method_get_transparency_990903061 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transparency_990903061_name._native_ptr(), 990903061)
        assert(BaseMaterial3D._method_get_transparency_990903061 != nil)
        let _method_set_alpha_antialiasing_3212649852_name = StringName(from: "set_alpha_antialiasing")
        self._method_set_alpha_antialiasing_3212649852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_antialiasing_3212649852_name._native_ptr(), 3212649852)
        assert(BaseMaterial3D._method_set_alpha_antialiasing_3212649852 != nil)
        let _method_get_alpha_antialiasing_2889939400_name = StringName(from: "get_alpha_antialiasing")
        self._method_get_alpha_antialiasing_2889939400 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_antialiasing_2889939400_name._native_ptr(), 2889939400)
        assert(BaseMaterial3D._method_get_alpha_antialiasing_2889939400 != nil)
        let _method_set_alpha_antialiasing_edge_373806689_name = StringName(from: "set_alpha_antialiasing_edge")
        self._method_set_alpha_antialiasing_edge_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_antialiasing_edge_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_alpha_antialiasing_edge_373806689 != nil)
        let _method_get_alpha_antialiasing_edge_1740695150_name = StringName(from: "get_alpha_antialiasing_edge")
        self._method_get_alpha_antialiasing_edge_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_antialiasing_edge_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_alpha_antialiasing_edge_1740695150 != nil)
        let _method_set_shading_mode_3368750322_name = StringName(from: "set_shading_mode")
        self._method_set_shading_mode_3368750322 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_shading_mode_3368750322_name._native_ptr(), 3368750322)
        assert(BaseMaterial3D._method_set_shading_mode_3368750322 != nil)
        let _method_get_shading_mode_2132070559_name = StringName(from: "get_shading_mode")
        self._method_get_shading_mode_2132070559 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shading_mode_2132070559_name._native_ptr(), 2132070559)
        assert(BaseMaterial3D._method_get_shading_mode_2132070559 != nil)
        let _method_set_specular_373806689_name = StringName(from: "set_specular")
        self._method_set_specular_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_specular_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_specular_373806689 != nil)
        let _method_get_specular_1740695150_name = StringName(from: "get_specular")
        self._method_get_specular_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_specular_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_specular_1740695150 != nil)
        let _method_set_metallic_373806689_name = StringName(from: "set_metallic")
        self._method_set_metallic_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_metallic_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_metallic_373806689 != nil)
        let _method_get_metallic_1740695150_name = StringName(from: "get_metallic")
        self._method_get_metallic_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_metallic_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_metallic_1740695150 != nil)
        let _method_set_roughness_373806689_name = StringName(from: "set_roughness")
        self._method_set_roughness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_roughness_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_roughness_373806689 != nil)
        let _method_get_roughness_1740695150_name = StringName(from: "get_roughness")
        self._method_get_roughness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_roughness_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_roughness_1740695150 != nil)
        let _method_set_emission_2920490490_name = StringName(from: "set_emission")
        self._method_set_emission_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_2920490490_name._native_ptr(), 2920490490)
        assert(BaseMaterial3D._method_set_emission_2920490490 != nil)
        let _method_get_emission_3444240500_name = StringName(from: "get_emission")
        self._method_get_emission_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_3444240500_name._native_ptr(), 3444240500)
        assert(BaseMaterial3D._method_get_emission_3444240500 != nil)
        let _method_set_emission_energy_multiplier_373806689_name = StringName(from: "set_emission_energy_multiplier")
        self._method_set_emission_energy_multiplier_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_energy_multiplier_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_emission_energy_multiplier_373806689 != nil)
        let _method_get_emission_energy_multiplier_1740695150_name = StringName(from: "get_emission_energy_multiplier")
        self._method_get_emission_energy_multiplier_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_energy_multiplier_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_emission_energy_multiplier_1740695150 != nil)
        let _method_set_emission_intensity_373806689_name = StringName(from: "set_emission_intensity")
        self._method_set_emission_intensity_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_intensity_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_emission_intensity_373806689 != nil)
        let _method_get_emission_intensity_1740695150_name = StringName(from: "get_emission_intensity")
        self._method_get_emission_intensity_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_intensity_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_emission_intensity_1740695150 != nil)
        let _method_set_normal_scale_373806689_name = StringName(from: "set_normal_scale")
        self._method_set_normal_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_normal_scale_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_normal_scale_373806689 != nil)
        let _method_get_normal_scale_1740695150_name = StringName(from: "get_normal_scale")
        self._method_get_normal_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_normal_scale_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_normal_scale_1740695150 != nil)
        let _method_set_rim_373806689_name = StringName(from: "set_rim")
        self._method_set_rim_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rim_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_rim_373806689 != nil)
        let _method_get_rim_1740695150_name = StringName(from: "get_rim")
        self._method_get_rim_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rim_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_rim_1740695150 != nil)
        let _method_set_rim_tint_373806689_name = StringName(from: "set_rim_tint")
        self._method_set_rim_tint_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_rim_tint_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_rim_tint_373806689 != nil)
        let _method_get_rim_tint_1740695150_name = StringName(from: "get_rim_tint")
        self._method_get_rim_tint_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rim_tint_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_rim_tint_1740695150 != nil)
        let _method_set_clearcoat_373806689_name = StringName(from: "set_clearcoat")
        self._method_set_clearcoat_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clearcoat_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_clearcoat_373806689 != nil)
        let _method_get_clearcoat_1740695150_name = StringName(from: "get_clearcoat")
        self._method_get_clearcoat_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_clearcoat_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_clearcoat_1740695150 != nil)
        let _method_set_clearcoat_roughness_373806689_name = StringName(from: "set_clearcoat_roughness")
        self._method_set_clearcoat_roughness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_clearcoat_roughness_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_clearcoat_roughness_373806689 != nil)
        let _method_get_clearcoat_roughness_1740695150_name = StringName(from: "get_clearcoat_roughness")
        self._method_get_clearcoat_roughness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_clearcoat_roughness_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_clearcoat_roughness_1740695150 != nil)
        let _method_set_anisotropy_373806689_name = StringName(from: "set_anisotropy")
        self._method_set_anisotropy_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_anisotropy_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_anisotropy_373806689 != nil)
        let _method_get_anisotropy_1740695150_name = StringName(from: "get_anisotropy")
        self._method_get_anisotropy_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_anisotropy_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_anisotropy_1740695150 != nil)
        let _method_set_heightmap_scale_373806689_name = StringName(from: "set_heightmap_scale")
        self._method_set_heightmap_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_heightmap_scale_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_heightmap_scale_373806689 != nil)
        let _method_get_heightmap_scale_1740695150_name = StringName(from: "get_heightmap_scale")
        self._method_get_heightmap_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_heightmap_scale_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_heightmap_scale_1740695150 != nil)
        let _method_set_subsurface_scattering_strength_373806689_name = StringName(from: "set_subsurface_scattering_strength")
        self._method_set_subsurface_scattering_strength_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_subsurface_scattering_strength_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_subsurface_scattering_strength_373806689 != nil)
        let _method_get_subsurface_scattering_strength_1740695150_name = StringName(from: "get_subsurface_scattering_strength")
        self._method_get_subsurface_scattering_strength_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_subsurface_scattering_strength_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_subsurface_scattering_strength_1740695150 != nil)
        let _method_set_transmittance_color_2920490490_name = StringName(from: "set_transmittance_color")
        self._method_set_transmittance_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transmittance_color_2920490490_name._native_ptr(), 2920490490)
        assert(BaseMaterial3D._method_set_transmittance_color_2920490490 != nil)
        let _method_get_transmittance_color_3444240500_name = StringName(from: "get_transmittance_color")
        self._method_get_transmittance_color_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transmittance_color_3444240500_name._native_ptr(), 3444240500)
        assert(BaseMaterial3D._method_get_transmittance_color_3444240500 != nil)
        let _method_set_transmittance_depth_373806689_name = StringName(from: "set_transmittance_depth")
        self._method_set_transmittance_depth_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transmittance_depth_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_transmittance_depth_373806689 != nil)
        let _method_get_transmittance_depth_1740695150_name = StringName(from: "get_transmittance_depth")
        self._method_get_transmittance_depth_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transmittance_depth_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_transmittance_depth_1740695150 != nil)
        let _method_set_transmittance_boost_373806689_name = StringName(from: "set_transmittance_boost")
        self._method_set_transmittance_boost_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_transmittance_boost_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_transmittance_boost_373806689 != nil)
        let _method_get_transmittance_boost_1740695150_name = StringName(from: "get_transmittance_boost")
        self._method_get_transmittance_boost_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_transmittance_boost_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_transmittance_boost_1740695150 != nil)
        let _method_set_backlight_2920490490_name = StringName(from: "set_backlight")
        self._method_set_backlight_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_backlight_2920490490_name._native_ptr(), 2920490490)
        assert(BaseMaterial3D._method_set_backlight_2920490490 != nil)
        let _method_get_backlight_3444240500_name = StringName(from: "get_backlight")
        self._method_get_backlight_3444240500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_backlight_3444240500_name._native_ptr(), 3444240500)
        assert(BaseMaterial3D._method_get_backlight_3444240500 != nil)
        let _method_set_refraction_373806689_name = StringName(from: "set_refraction")
        self._method_set_refraction_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_refraction_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_refraction_373806689 != nil)
        let _method_get_refraction_1740695150_name = StringName(from: "get_refraction")
        self._method_get_refraction_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_refraction_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_refraction_1740695150 != nil)
        let _method_set_point_size_373806689_name = StringName(from: "set_point_size")
        self._method_set_point_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_point_size_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_point_size_373806689 != nil)
        let _method_get_point_size_1740695150_name = StringName(from: "get_point_size")
        self._method_get_point_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_point_size_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_point_size_1740695150 != nil)
        let _method_set_detail_uv_456801921_name = StringName(from: "set_detail_uv")
        self._method_set_detail_uv_456801921 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_detail_uv_456801921_name._native_ptr(), 456801921)
        assert(BaseMaterial3D._method_set_detail_uv_456801921 != nil)
        let _method_get_detail_uv_2306920512_name = StringName(from: "get_detail_uv")
        self._method_get_detail_uv_2306920512 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_detail_uv_2306920512_name._native_ptr(), 2306920512)
        assert(BaseMaterial3D._method_get_detail_uv_2306920512 != nil)
        let _method_set_blend_mode_2830186259_name = StringName(from: "set_blend_mode")
        self._method_set_blend_mode_2830186259 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_blend_mode_2830186259_name._native_ptr(), 2830186259)
        assert(BaseMaterial3D._method_set_blend_mode_2830186259 != nil)
        let _method_get_blend_mode_4022690962_name = StringName(from: "get_blend_mode")
        self._method_get_blend_mode_4022690962 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_blend_mode_4022690962_name._native_ptr(), 4022690962)
        assert(BaseMaterial3D._method_get_blend_mode_4022690962 != nil)
        let _method_set_depth_draw_mode_1456584748_name = StringName(from: "set_depth_draw_mode")
        self._method_set_depth_draw_mode_1456584748 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_depth_draw_mode_1456584748_name._native_ptr(), 1456584748)
        assert(BaseMaterial3D._method_set_depth_draw_mode_1456584748 != nil)
        let _method_get_depth_draw_mode_2578197639_name = StringName(from: "get_depth_draw_mode")
        self._method_get_depth_draw_mode_2578197639 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_depth_draw_mode_2578197639_name._native_ptr(), 2578197639)
        assert(BaseMaterial3D._method_get_depth_draw_mode_2578197639 != nil)
        let _method_set_cull_mode_2338909218_name = StringName(from: "set_cull_mode")
        self._method_set_cull_mode_2338909218 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_cull_mode_2338909218_name._native_ptr(), 2338909218)
        assert(BaseMaterial3D._method_set_cull_mode_2338909218 != nil)
        let _method_get_cull_mode_1941499586_name = StringName(from: "get_cull_mode")
        self._method_get_cull_mode_1941499586 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_cull_mode_1941499586_name._native_ptr(), 1941499586)
        assert(BaseMaterial3D._method_get_cull_mode_1941499586 != nil)
        let _method_set_diffuse_mode_1045299638_name = StringName(from: "set_diffuse_mode")
        self._method_set_diffuse_mode_1045299638 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_diffuse_mode_1045299638_name._native_ptr(), 1045299638)
        assert(BaseMaterial3D._method_set_diffuse_mode_1045299638 != nil)
        let _method_get_diffuse_mode_3973617136_name = StringName(from: "get_diffuse_mode")
        self._method_get_diffuse_mode_3973617136 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_diffuse_mode_3973617136_name._native_ptr(), 3973617136)
        assert(BaseMaterial3D._method_get_diffuse_mode_3973617136 != nil)
        let _method_set_specular_mode_584737147_name = StringName(from: "set_specular_mode")
        self._method_set_specular_mode_584737147 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_specular_mode_584737147_name._native_ptr(), 584737147)
        assert(BaseMaterial3D._method_set_specular_mode_584737147 != nil)
        let _method_get_specular_mode_2569953298_name = StringName(from: "get_specular_mode")
        self._method_get_specular_mode_2569953298 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_specular_mode_2569953298_name._native_ptr(), 2569953298)
        assert(BaseMaterial3D._method_get_specular_mode_2569953298 != nil)
        let _method_set_flag_3070159527_name = StringName(from: "set_flag")
        self._method_set_flag_3070159527 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_flag_3070159527_name._native_ptr(), 3070159527)
        assert(BaseMaterial3D._method_set_flag_3070159527 != nil)
        let _method_get_flag_1286410065_name = StringName(from: "get_flag")
        self._method_get_flag_1286410065 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_flag_1286410065_name._native_ptr(), 1286410065)
        assert(BaseMaterial3D._method_get_flag_1286410065 != nil)
        let _method_set_texture_filter_22904437_name = StringName(from: "set_texture_filter")
        self._method_set_texture_filter_22904437 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_filter_22904437_name._native_ptr(), 22904437)
        assert(BaseMaterial3D._method_set_texture_filter_22904437 != nil)
        let _method_get_texture_filter_3289213076_name = StringName(from: "get_texture_filter")
        self._method_get_texture_filter_3289213076 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_filter_3289213076_name._native_ptr(), 3289213076)
        assert(BaseMaterial3D._method_get_texture_filter_3289213076 != nil)
        let _method_set_feature_2819288693_name = StringName(from: "set_feature")
        self._method_set_feature_2819288693 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_feature_2819288693_name._native_ptr(), 2819288693)
        assert(BaseMaterial3D._method_set_feature_2819288693 != nil)
        let _method_get_feature_1965241794_name = StringName(from: "get_feature")
        self._method_get_feature_1965241794 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_feature_1965241794_name._native_ptr(), 1965241794)
        assert(BaseMaterial3D._method_get_feature_1965241794 != nil)
        let _method_set_texture_464208135_name = StringName(from: "set_texture")
        self._method_set_texture_464208135 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_texture_464208135_name._native_ptr(), 464208135)
        assert(BaseMaterial3D._method_set_texture_464208135 != nil)
        let _method_get_texture_329605813_name = StringName(from: "get_texture")
        self._method_get_texture_329605813 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_texture_329605813_name._native_ptr(), 329605813)
        assert(BaseMaterial3D._method_get_texture_329605813 != nil)
        let _method_set_detail_blend_mode_2830186259_name = StringName(from: "set_detail_blend_mode")
        self._method_set_detail_blend_mode_2830186259 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_detail_blend_mode_2830186259_name._native_ptr(), 2830186259)
        assert(BaseMaterial3D._method_set_detail_blend_mode_2830186259 != nil)
        let _method_get_detail_blend_mode_4022690962_name = StringName(from: "get_detail_blend_mode")
        self._method_get_detail_blend_mode_4022690962 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_detail_blend_mode_4022690962_name._native_ptr(), 4022690962)
        assert(BaseMaterial3D._method_get_detail_blend_mode_4022690962 != nil)
        let _method_set_uv1_scale_3460891852_name = StringName(from: "set_uv1_scale")
        self._method_set_uv1_scale_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv1_scale_3460891852_name._native_ptr(), 3460891852)
        assert(BaseMaterial3D._method_set_uv1_scale_3460891852 != nil)
        let _method_get_uv1_scale_3360562783_name = StringName(from: "get_uv1_scale")
        self._method_get_uv1_scale_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv1_scale_3360562783_name._native_ptr(), 3360562783)
        assert(BaseMaterial3D._method_get_uv1_scale_3360562783 != nil)
        let _method_set_uv1_offset_3460891852_name = StringName(from: "set_uv1_offset")
        self._method_set_uv1_offset_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv1_offset_3460891852_name._native_ptr(), 3460891852)
        assert(BaseMaterial3D._method_set_uv1_offset_3460891852 != nil)
        let _method_get_uv1_offset_3360562783_name = StringName(from: "get_uv1_offset")
        self._method_get_uv1_offset_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv1_offset_3360562783_name._native_ptr(), 3360562783)
        assert(BaseMaterial3D._method_get_uv1_offset_3360562783 != nil)
        let _method_set_uv1_triplanar_blend_sharpness_373806689_name = StringName(from: "set_uv1_triplanar_blend_sharpness")
        self._method_set_uv1_triplanar_blend_sharpness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv1_triplanar_blend_sharpness_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_uv1_triplanar_blend_sharpness_373806689 != nil)
        let _method_get_uv1_triplanar_blend_sharpness_1740695150_name = StringName(from: "get_uv1_triplanar_blend_sharpness")
        self._method_get_uv1_triplanar_blend_sharpness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv1_triplanar_blend_sharpness_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_uv1_triplanar_blend_sharpness_1740695150 != nil)
        let _method_set_uv2_scale_3460891852_name = StringName(from: "set_uv2_scale")
        self._method_set_uv2_scale_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv2_scale_3460891852_name._native_ptr(), 3460891852)
        assert(BaseMaterial3D._method_set_uv2_scale_3460891852 != nil)
        let _method_get_uv2_scale_3360562783_name = StringName(from: "get_uv2_scale")
        self._method_get_uv2_scale_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv2_scale_3360562783_name._native_ptr(), 3360562783)
        assert(BaseMaterial3D._method_get_uv2_scale_3360562783 != nil)
        let _method_set_uv2_offset_3460891852_name = StringName(from: "set_uv2_offset")
        self._method_set_uv2_offset_3460891852 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv2_offset_3460891852_name._native_ptr(), 3460891852)
        assert(BaseMaterial3D._method_set_uv2_offset_3460891852 != nil)
        let _method_get_uv2_offset_3360562783_name = StringName(from: "get_uv2_offset")
        self._method_get_uv2_offset_3360562783 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv2_offset_3360562783_name._native_ptr(), 3360562783)
        assert(BaseMaterial3D._method_get_uv2_offset_3360562783 != nil)
        let _method_set_uv2_triplanar_blend_sharpness_373806689_name = StringName(from: "set_uv2_triplanar_blend_sharpness")
        self._method_set_uv2_triplanar_blend_sharpness_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_uv2_triplanar_blend_sharpness_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_uv2_triplanar_blend_sharpness_373806689 != nil)
        let _method_get_uv2_triplanar_blend_sharpness_1740695150_name = StringName(from: "get_uv2_triplanar_blend_sharpness")
        self._method_get_uv2_triplanar_blend_sharpness_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_uv2_triplanar_blend_sharpness_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_uv2_triplanar_blend_sharpness_1740695150 != nil)
        let _method_set_billboard_mode_4202036497_name = StringName(from: "set_billboard_mode")
        self._method_set_billboard_mode_4202036497 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_billboard_mode_4202036497_name._native_ptr(), 4202036497)
        assert(BaseMaterial3D._method_set_billboard_mode_4202036497 != nil)
        let _method_get_billboard_mode_1283840139_name = StringName(from: "get_billboard_mode")
        self._method_get_billboard_mode_1283840139 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_billboard_mode_1283840139_name._native_ptr(), 1283840139)
        assert(BaseMaterial3D._method_get_billboard_mode_1283840139 != nil)
        let _method_set_particles_anim_h_frames_1286410249_name = StringName(from: "set_particles_anim_h_frames")
        self._method_set_particles_anim_h_frames_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_particles_anim_h_frames_1286410249_name._native_ptr(), 1286410249)
        assert(BaseMaterial3D._method_set_particles_anim_h_frames_1286410249 != nil)
        let _method_get_particles_anim_h_frames_3905245786_name = StringName(from: "get_particles_anim_h_frames")
        self._method_get_particles_anim_h_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_particles_anim_h_frames_3905245786_name._native_ptr(), 3905245786)
        assert(BaseMaterial3D._method_get_particles_anim_h_frames_3905245786 != nil)
        let _method_set_particles_anim_v_frames_1286410249_name = StringName(from: "set_particles_anim_v_frames")
        self._method_set_particles_anim_v_frames_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_particles_anim_v_frames_1286410249_name._native_ptr(), 1286410249)
        assert(BaseMaterial3D._method_set_particles_anim_v_frames_1286410249 != nil)
        let _method_get_particles_anim_v_frames_3905245786_name = StringName(from: "get_particles_anim_v_frames")
        self._method_get_particles_anim_v_frames_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_particles_anim_v_frames_3905245786_name._native_ptr(), 3905245786)
        assert(BaseMaterial3D._method_get_particles_anim_v_frames_3905245786 != nil)
        let _method_set_particles_anim_loop_2586408642_name = StringName(from: "set_particles_anim_loop")
        self._method_set_particles_anim_loop_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_particles_anim_loop_2586408642_name._native_ptr(), 2586408642)
        assert(BaseMaterial3D._method_set_particles_anim_loop_2586408642 != nil)
        let _method_get_particles_anim_loop_36873697_name = StringName(from: "get_particles_anim_loop")
        self._method_get_particles_anim_loop_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_particles_anim_loop_36873697_name._native_ptr(), 36873697)
        assert(BaseMaterial3D._method_get_particles_anim_loop_36873697 != nil)
        let _method_set_heightmap_deep_parallax_2586408642_name = StringName(from: "set_heightmap_deep_parallax")
        self._method_set_heightmap_deep_parallax_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_heightmap_deep_parallax_2586408642_name._native_ptr(), 2586408642)
        assert(BaseMaterial3D._method_set_heightmap_deep_parallax_2586408642 != nil)
        let _method_is_heightmap_deep_parallax_enabled_36873697_name = StringName(from: "is_heightmap_deep_parallax_enabled")
        self._method_is_heightmap_deep_parallax_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_heightmap_deep_parallax_enabled_36873697_name._native_ptr(), 36873697)
        assert(BaseMaterial3D._method_is_heightmap_deep_parallax_enabled_36873697 != nil)
        let _method_set_heightmap_deep_parallax_min_layers_1286410249_name = StringName(from: "set_heightmap_deep_parallax_min_layers")
        self._method_set_heightmap_deep_parallax_min_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_heightmap_deep_parallax_min_layers_1286410249_name._native_ptr(), 1286410249)
        assert(BaseMaterial3D._method_set_heightmap_deep_parallax_min_layers_1286410249 != nil)
        let _method_get_heightmap_deep_parallax_min_layers_3905245786_name = StringName(from: "get_heightmap_deep_parallax_min_layers")
        self._method_get_heightmap_deep_parallax_min_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_heightmap_deep_parallax_min_layers_3905245786_name._native_ptr(), 3905245786)
        assert(BaseMaterial3D._method_get_heightmap_deep_parallax_min_layers_3905245786 != nil)
        let _method_set_heightmap_deep_parallax_max_layers_1286410249_name = StringName(from: "set_heightmap_deep_parallax_max_layers")
        self._method_set_heightmap_deep_parallax_max_layers_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_heightmap_deep_parallax_max_layers_1286410249_name._native_ptr(), 1286410249)
        assert(BaseMaterial3D._method_set_heightmap_deep_parallax_max_layers_1286410249 != nil)
        let _method_get_heightmap_deep_parallax_max_layers_3905245786_name = StringName(from: "get_heightmap_deep_parallax_max_layers")
        self._method_get_heightmap_deep_parallax_max_layers_3905245786 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_heightmap_deep_parallax_max_layers_3905245786_name._native_ptr(), 3905245786)
        assert(BaseMaterial3D._method_get_heightmap_deep_parallax_max_layers_3905245786 != nil)
        let _method_set_heightmap_deep_parallax_flip_tangent_2586408642_name = StringName(from: "set_heightmap_deep_parallax_flip_tangent")
        self._method_set_heightmap_deep_parallax_flip_tangent_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_heightmap_deep_parallax_flip_tangent_2586408642_name._native_ptr(), 2586408642)
        assert(BaseMaterial3D._method_set_heightmap_deep_parallax_flip_tangent_2586408642 != nil)
        let _method_get_heightmap_deep_parallax_flip_tangent_36873697_name = StringName(from: "get_heightmap_deep_parallax_flip_tangent")
        self._method_get_heightmap_deep_parallax_flip_tangent_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_heightmap_deep_parallax_flip_tangent_36873697_name._native_ptr(), 36873697)
        assert(BaseMaterial3D._method_get_heightmap_deep_parallax_flip_tangent_36873697 != nil)
        let _method_set_heightmap_deep_parallax_flip_binormal_2586408642_name = StringName(from: "set_heightmap_deep_parallax_flip_binormal")
        self._method_set_heightmap_deep_parallax_flip_binormal_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_heightmap_deep_parallax_flip_binormal_2586408642_name._native_ptr(), 2586408642)
        assert(BaseMaterial3D._method_set_heightmap_deep_parallax_flip_binormal_2586408642 != nil)
        let _method_get_heightmap_deep_parallax_flip_binormal_36873697_name = StringName(from: "get_heightmap_deep_parallax_flip_binormal")
        self._method_get_heightmap_deep_parallax_flip_binormal_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_heightmap_deep_parallax_flip_binormal_36873697_name._native_ptr(), 36873697)
        assert(BaseMaterial3D._method_get_heightmap_deep_parallax_flip_binormal_36873697 != nil)
        let _method_set_grow_373806689_name = StringName(from: "set_grow")
        self._method_set_grow_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_grow_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_grow_373806689 != nil)
        let _method_get_grow_1740695150_name = StringName(from: "get_grow")
        self._method_get_grow_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_grow_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_grow_1740695150 != nil)
        let _method_set_emission_operator_3825128922_name = StringName(from: "set_emission_operator")
        self._method_set_emission_operator_3825128922 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_emission_operator_3825128922_name._native_ptr(), 3825128922)
        assert(BaseMaterial3D._method_set_emission_operator_3825128922 != nil)
        let _method_get_emission_operator_974205018_name = StringName(from: "get_emission_operator")
        self._method_get_emission_operator_974205018 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_emission_operator_974205018_name._native_ptr(), 974205018)
        assert(BaseMaterial3D._method_get_emission_operator_974205018 != nil)
        let _method_set_ao_light_affect_373806689_name = StringName(from: "set_ao_light_affect")
        self._method_set_ao_light_affect_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ao_light_affect_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_ao_light_affect_373806689 != nil)
        let _method_get_ao_light_affect_1740695150_name = StringName(from: "get_ao_light_affect")
        self._method_get_ao_light_affect_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ao_light_affect_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_ao_light_affect_1740695150 != nil)
        let _method_set_alpha_scissor_threshold_373806689_name = StringName(from: "set_alpha_scissor_threshold")
        self._method_set_alpha_scissor_threshold_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_scissor_threshold_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_alpha_scissor_threshold_373806689 != nil)
        let _method_get_alpha_scissor_threshold_1740695150_name = StringName(from: "get_alpha_scissor_threshold")
        self._method_get_alpha_scissor_threshold_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_scissor_threshold_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_alpha_scissor_threshold_1740695150 != nil)
        let _method_set_alpha_hash_scale_373806689_name = StringName(from: "set_alpha_hash_scale")
        self._method_set_alpha_hash_scale_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_alpha_hash_scale_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_alpha_hash_scale_373806689 != nil)
        let _method_get_alpha_hash_scale_1740695150_name = StringName(from: "get_alpha_hash_scale")
        self._method_get_alpha_hash_scale_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_alpha_hash_scale_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_alpha_hash_scale_1740695150 != nil)
        let _method_set_grow_enabled_2586408642_name = StringName(from: "set_grow_enabled")
        self._method_set_grow_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_grow_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(BaseMaterial3D._method_set_grow_enabled_2586408642 != nil)
        let _method_is_grow_enabled_36873697_name = StringName(from: "is_grow_enabled")
        self._method_is_grow_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_grow_enabled_36873697_name._native_ptr(), 36873697)
        assert(BaseMaterial3D._method_is_grow_enabled_36873697 != nil)
        let _method_set_metallic_texture_channel_744167988_name = StringName(from: "set_metallic_texture_channel")
        self._method_set_metallic_texture_channel_744167988 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_metallic_texture_channel_744167988_name._native_ptr(), 744167988)
        assert(BaseMaterial3D._method_set_metallic_texture_channel_744167988 != nil)
        let _method_get_metallic_texture_channel_568133867_name = StringName(from: "get_metallic_texture_channel")
        self._method_get_metallic_texture_channel_568133867 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_metallic_texture_channel_568133867_name._native_ptr(), 568133867)
        assert(BaseMaterial3D._method_get_metallic_texture_channel_568133867 != nil)
        let _method_set_roughness_texture_channel_744167988_name = StringName(from: "set_roughness_texture_channel")
        self._method_set_roughness_texture_channel_744167988 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_roughness_texture_channel_744167988_name._native_ptr(), 744167988)
        assert(BaseMaterial3D._method_set_roughness_texture_channel_744167988 != nil)
        let _method_get_roughness_texture_channel_568133867_name = StringName(from: "get_roughness_texture_channel")
        self._method_get_roughness_texture_channel_568133867 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_roughness_texture_channel_568133867_name._native_ptr(), 568133867)
        assert(BaseMaterial3D._method_get_roughness_texture_channel_568133867 != nil)
        let _method_set_ao_texture_channel_744167988_name = StringName(from: "set_ao_texture_channel")
        self._method_set_ao_texture_channel_744167988 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_ao_texture_channel_744167988_name._native_ptr(), 744167988)
        assert(BaseMaterial3D._method_set_ao_texture_channel_744167988 != nil)
        let _method_get_ao_texture_channel_568133867_name = StringName(from: "get_ao_texture_channel")
        self._method_get_ao_texture_channel_568133867 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_ao_texture_channel_568133867_name._native_ptr(), 568133867)
        assert(BaseMaterial3D._method_get_ao_texture_channel_568133867 != nil)
        let _method_set_refraction_texture_channel_744167988_name = StringName(from: "set_refraction_texture_channel")
        self._method_set_refraction_texture_channel_744167988 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_refraction_texture_channel_744167988_name._native_ptr(), 744167988)
        assert(BaseMaterial3D._method_set_refraction_texture_channel_744167988 != nil)
        let _method_get_refraction_texture_channel_568133867_name = StringName(from: "get_refraction_texture_channel")
        self._method_get_refraction_texture_channel_568133867 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_refraction_texture_channel_568133867_name._native_ptr(), 568133867)
        assert(BaseMaterial3D._method_get_refraction_texture_channel_568133867 != nil)
        let _method_set_proximity_fade_enabled_2586408642_name = StringName(from: "set_proximity_fade_enabled")
        self._method_set_proximity_fade_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_proximity_fade_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(BaseMaterial3D._method_set_proximity_fade_enabled_2586408642 != nil)
        let _method_is_proximity_fade_enabled_36873697_name = StringName(from: "is_proximity_fade_enabled")
        self._method_is_proximity_fade_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_proximity_fade_enabled_36873697_name._native_ptr(), 36873697)
        assert(BaseMaterial3D._method_is_proximity_fade_enabled_36873697 != nil)
        let _method_set_proximity_fade_distance_373806689_name = StringName(from: "set_proximity_fade_distance")
        self._method_set_proximity_fade_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_proximity_fade_distance_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_proximity_fade_distance_373806689 != nil)
        let _method_get_proximity_fade_distance_1740695150_name = StringName(from: "get_proximity_fade_distance")
        self._method_get_proximity_fade_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_proximity_fade_distance_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_proximity_fade_distance_1740695150 != nil)
        let _method_set_msdf_pixel_range_373806689_name = StringName(from: "set_msdf_pixel_range")
        self._method_set_msdf_pixel_range_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_msdf_pixel_range_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_msdf_pixel_range_373806689 != nil)
        let _method_get_msdf_pixel_range_1740695150_name = StringName(from: "get_msdf_pixel_range")
        self._method_get_msdf_pixel_range_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_msdf_pixel_range_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_msdf_pixel_range_1740695150 != nil)
        let _method_set_msdf_outline_size_373806689_name = StringName(from: "set_msdf_outline_size")
        self._method_set_msdf_outline_size_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_msdf_outline_size_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_msdf_outline_size_373806689 != nil)
        let _method_get_msdf_outline_size_1740695150_name = StringName(from: "get_msdf_outline_size")
        self._method_get_msdf_outline_size_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_msdf_outline_size_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_msdf_outline_size_1740695150 != nil)
        let _method_set_distance_fade_1379478617_name = StringName(from: "set_distance_fade")
        self._method_set_distance_fade_1379478617 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_fade_1379478617_name._native_ptr(), 1379478617)
        assert(BaseMaterial3D._method_set_distance_fade_1379478617 != nil)
        let _method_get_distance_fade_2694575734_name = StringName(from: "get_distance_fade")
        self._method_get_distance_fade_2694575734 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_fade_2694575734_name._native_ptr(), 2694575734)
        assert(BaseMaterial3D._method_get_distance_fade_2694575734 != nil)
        let _method_set_distance_fade_max_distance_373806689_name = StringName(from: "set_distance_fade_max_distance")
        self._method_set_distance_fade_max_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_fade_max_distance_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_distance_fade_max_distance_373806689 != nil)
        let _method_get_distance_fade_max_distance_1740695150_name = StringName(from: "get_distance_fade_max_distance")
        self._method_get_distance_fade_max_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_fade_max_distance_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_distance_fade_max_distance_1740695150 != nil)
        let _method_set_distance_fade_min_distance_373806689_name = StringName(from: "set_distance_fade_min_distance")
        self._method_set_distance_fade_min_distance_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_distance_fade_min_distance_373806689_name._native_ptr(), 373806689)
        assert(BaseMaterial3D._method_set_distance_fade_min_distance_373806689 != nil)
        let _method_get_distance_fade_min_distance_1740695150_name = StringName(from: "get_distance_fade_min_distance")
        self._method_get_distance_fade_min_distance_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_distance_fade_min_distance_1740695150_name._native_ptr(), 1740695150)
        assert(BaseMaterial3D._method_get_distance_fade_min_distance_1740695150 != nil)
    }

    public func set_albedo(albedo: Color)  {
        let albedo_native = albedo._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(albedo_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_albedo_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_albedo_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_transparency(transparency: BaseMaterial3D.Transparency)  {
        withUnsafePointer(to: transparency.rawValue) { transparency_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(transparency_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transparency_3435651667,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transparency_990903061,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.Transparency(from: __resPtr.pointee)
    }
    public func set_alpha_antialiasing(alpha_aa: BaseMaterial3D.AlphaAntiAliasing)  {
        withUnsafePointer(to: alpha_aa.rawValue) { alpha_aa_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(alpha_aa_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_antialiasing_3212649852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_antialiasing_2889939400,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.AlphaAntiAliasing(from: __resPtr.pointee)
    }
    public func set_alpha_antialiasing_edge(edge: Float64)  {
        withUnsafePointer(to: edge) { edge_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(edge_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_antialiasing_edge_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_antialiasing_edge_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_shading_mode(shading_mode: BaseMaterial3D.ShadingMode)  {
        withUnsafePointer(to: shading_mode.rawValue) { shading_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shading_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_shading_mode_3368750322,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shading_mode_2132070559,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.ShadingMode(from: __resPtr.pointee)
    }
    public func set_specular(specular: Float64)  {
        withUnsafePointer(to: specular) { specular_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(specular_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_specular_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_specular_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_metallic(metallic: Float64)  {
        withUnsafePointer(to: metallic) { metallic_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(metallic_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_metallic_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_metallic_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_roughness(roughness: Float64)  {
        withUnsafePointer(to: roughness) { roughness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(roughness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_roughness_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_roughness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_emission(emission: Color)  {
        let emission_native = emission._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_emission_energy_multiplier(emission_energy_multiplier: Float64)  {
        withUnsafePointer(to: emission_energy_multiplier) { emission_energy_multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_energy_multiplier_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_energy_multiplier_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_energy_multiplier_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_emission_intensity(emission_energy_multiplier: Float64)  {
        withUnsafePointer(to: emission_energy_multiplier) { emission_energy_multiplier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(emission_energy_multiplier_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_intensity_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_intensity_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_normal_scale(normal_scale: Float64)  {
        withUnsafePointer(to: normal_scale) { normal_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(normal_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_normal_scale_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_normal_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_rim(rim: Float64)  {
        withUnsafePointer(to: rim) { rim_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rim_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rim_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rim_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_rim_tint(rim_tint: Float64)  {
        withUnsafePointer(to: rim_tint) { rim_tint_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rim_tint_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_rim_tint_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rim_tint_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_clearcoat(clearcoat: Float64)  {
        withUnsafePointer(to: clearcoat) { clearcoat_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clearcoat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clearcoat_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_clearcoat_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_clearcoat_roughness(clearcoat_roughness: Float64)  {
        withUnsafePointer(to: clearcoat_roughness) { clearcoat_roughness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(clearcoat_roughness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_clearcoat_roughness_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_clearcoat_roughness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_anisotropy(anisotropy: Float64)  {
        withUnsafePointer(to: anisotropy) { anisotropy_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(anisotropy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_anisotropy_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_anisotropy_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_heightmap_scale(heightmap_scale: Float64)  {
        withUnsafePointer(to: heightmap_scale) { heightmap_scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(heightmap_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_heightmap_scale_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_heightmap_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_subsurface_scattering_strength(strength: Float64)  {
        withUnsafePointer(to: strength) { strength_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(strength_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_subsurface_scattering_strength_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_subsurface_scattering_strength_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_transmittance_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transmittance_color_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transmittance_color_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_transmittance_depth(depth: Float64)  {
        withUnsafePointer(to: depth) { depth_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transmittance_depth_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transmittance_depth_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_transmittance_boost(boost: Float64)  {
        withUnsafePointer(to: boost) { boost_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(boost_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_transmittance_boost_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_transmittance_boost_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_backlight(backlight: Color)  {
        let backlight_native = backlight._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(backlight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_backlight_2920490490,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_backlight_3444240500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_refraction(refraction: Float64)  {
        withUnsafePointer(to: refraction) { refraction_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(refraction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_refraction_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_refraction_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_point_size(point_size: Float64)  {
        withUnsafePointer(to: point_size) { point_size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(point_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_point_size_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_point_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_detail_uv(detail_uv: BaseMaterial3D.DetailUV)  {
        withUnsafePointer(to: detail_uv.rawValue) { detail_uv_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(detail_uv_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_detail_uv_456801921,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_detail_uv_2306920512,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DetailUV(from: __resPtr.pointee)
    }
    public func set_blend_mode(blend_mode: BaseMaterial3D.BlendMode)  {
        withUnsafePointer(to: blend_mode.rawValue) { blend_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(blend_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_blend_mode_2830186259,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_blend_mode_4022690962,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BlendMode(from: __resPtr.pointee)
    }
    public func set_depth_draw_mode(depth_draw_mode: BaseMaterial3D.DepthDrawMode)  {
        withUnsafePointer(to: depth_draw_mode.rawValue) { depth_draw_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(depth_draw_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_depth_draw_mode_1456584748,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_depth_draw_mode_2578197639,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DepthDrawMode(from: __resPtr.pointee)
    }
    public func set_cull_mode(cull_mode: BaseMaterial3D.CullMode)  {
        withUnsafePointer(to: cull_mode.rawValue) { cull_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(cull_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_cull_mode_2338909218,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_cull_mode_1941499586,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.CullMode(from: __resPtr.pointee)
    }
    public func set_diffuse_mode(diffuse_mode: BaseMaterial3D.DiffuseMode)  {
        withUnsafePointer(to: diffuse_mode.rawValue) { diffuse_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(diffuse_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_diffuse_mode_1045299638,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_diffuse_mode_3973617136,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DiffuseMode(from: __resPtr.pointee)
    }
    public func set_specular_mode(specular_mode: BaseMaterial3D.SpecularMode)  {
        withUnsafePointer(to: specular_mode.rawValue) { specular_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(specular_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_specular_mode_584737147,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_specular_mode_2569953298,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.SpecularMode(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_flag_3070159527,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_flag_1286410065,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_filter_22904437,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_filter_3289213076,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureFilter(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_feature_2819288693,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_feature_1965241794,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_texture_464208135,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_texture_329605813,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Texture2D(from: __resPtr.pointee)
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_detail_blend_mode_2830186259,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_detail_blend_mode_4022690962,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BlendMode(from: __resPtr.pointee)
    }
    public func set_uv1_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv1_scale_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv1_scale_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_uv1_offset(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv1_offset_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv1_offset_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_uv1_triplanar_blend_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv1_triplanar_blend_sharpness_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv1_triplanar_blend_sharpness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_uv2_scale(scale: Vector3)  {
        let scale_native = scale._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv2_scale_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv2_scale_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_uv2_offset(offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv2_offset_3460891852,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv2_offset_3360562783,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3(from: __resPtr.pointee)
    }
    public func set_uv2_triplanar_blend_sharpness(sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sharpness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_uv2_triplanar_blend_sharpness_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_uv2_triplanar_blend_sharpness_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_billboard_mode(mode: BaseMaterial3D.BillboardMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_billboard_mode_4202036497,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_billboard_mode_1283840139,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.BillboardMode(from: __resPtr.pointee)
    }
    public func set_particles_anim_h_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_anim_h_frames_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_anim_h_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_particles_anim_v_frames(frames: Int64)  {
        withUnsafePointer(to: frames) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_anim_v_frames_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_anim_v_frames_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_particles_anim_loop(loop: UInt8)  {
        withUnsafePointer(to: loop) { loop_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(loop_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_particles_anim_loop_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_particles_anim_loop_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_heightmap_deep_parallax(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_heightmap_deep_parallax_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_heightmap_deep_parallax_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_heightmap_deep_parallax_min_layers(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_heightmap_deep_parallax_min_layers_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_heightmap_deep_parallax_min_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_heightmap_deep_parallax_max_layers(layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_heightmap_deep_parallax_max_layers_1286410249,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_heightmap_deep_parallax_max_layers_3905245786,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func set_heightmap_deep_parallax_flip_tangent(flip: UInt8)  {
        withUnsafePointer(to: flip) { flip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_heightmap_deep_parallax_flip_tangent_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_heightmap_deep_parallax_flip_tangent_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_heightmap_deep_parallax_flip_binormal(flip: UInt8)  {
        withUnsafePointer(to: flip) { flip_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(flip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_heightmap_deep_parallax_flip_binormal_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_heightmap_deep_parallax_flip_binormal_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_grow(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_grow_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_grow_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_emission_operator(`operator`: BaseMaterial3D.EmissionOperator)  {
        withUnsafePointer(to: `operator`.rawValue) { operator_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(operator_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_emission_operator_3825128922,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_emission_operator_974205018,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.EmissionOperator(from: __resPtr.pointee)
    }
    public func set_ao_light_affect(amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ao_light_affect_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ao_light_affect_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_alpha_scissor_threshold(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_scissor_threshold_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_scissor_threshold_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_alpha_hash_scale(threshold: Float64)  {
        withUnsafePointer(to: threshold) { threshold_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(threshold_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_alpha_hash_scale_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_alpha_hash_scale_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_grow_enabled(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_grow_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_grow_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_metallic_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_metallic_texture_channel_744167988,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_metallic_texture_channel_568133867,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(from: __resPtr.pointee)
    }
    public func set_roughness_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_roughness_texture_channel_744167988,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_roughness_texture_channel_568133867,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(from: __resPtr.pointee)
    }
    public func set_ao_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_ao_texture_channel_744167988,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_ao_texture_channel_568133867,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(from: __resPtr.pointee)
    }
    public func set_refraction_texture_channel(channel: BaseMaterial3D.TextureChannel)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(channel_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_refraction_texture_channel_744167988,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_refraction_texture_channel_568133867,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.TextureChannel(from: __resPtr.pointee)
    }
    public func set_proximity_fade_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_proximity_fade_enabled_2586408642,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_proximity_fade_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_proximity_fade_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_proximity_fade_distance_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_proximity_fade_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_msdf_pixel_range(range: Float64)  {
        withUnsafePointer(to: range) { range_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_msdf_pixel_range_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_msdf_pixel_range_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_msdf_outline_size(size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_msdf_outline_size_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_msdf_outline_size_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_distance_fade(mode: BaseMaterial3D.DistanceFadeMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_1379478617,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_2694575734,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return BaseMaterial3D.DistanceFadeMode(from: __resPtr.pointee)
    }
    public func set_distance_fade_max_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_max_distance_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_max_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func set_distance_fade_min_distance(distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_distance_fade_min_distance_373806689,
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
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_distance_fade_min_distance_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
}