import godot_native

fileprivate var __godot_name_Viewport: StringName! = nil

/// Base class for viewports.
/// 
/// A Viewport creates a different view into the screen, or a sub-view inside another viewport. Children 2D Nodes will display on it, and children Camera3D 3D nodes will render on it too.
///  
/// Optionally, a viewport can have its own 2D or 3D world, so they don't share what they draw with other viewports.
///  
/// Viewports can also choose to be audio listeners, so they generate positional audio depending on a 2D or 3D camera child of it.
///  
/// Also, viewports can be assigned to different screens in case the devices have multiple screens.
///  
/// Finally, viewports can also behave as render targets, in which case they will not be visible unless the associated texture is used to draw.
open class Viewport : Node {

    public enum PositionalShadowAtlasQuadrantSubdiv : Int32 {
        case SHADOW_ATLAS_QUADRANT_SUBDIV_DISABLED = 0
        case SHADOW_ATLAS_QUADRANT_SUBDIV_1 = 1
        case SHADOW_ATLAS_QUADRANT_SUBDIV_4 = 2
        case SHADOW_ATLAS_QUADRANT_SUBDIV_16 = 3
        case SHADOW_ATLAS_QUADRANT_SUBDIV_64 = 4
        case SHADOW_ATLAS_QUADRANT_SUBDIV_256 = 5
        case SHADOW_ATLAS_QUADRANT_SUBDIV_1024 = 6
        case SHADOW_ATLAS_QUADRANT_SUBDIV_MAX = 7
    }
    public enum Scaling3DMode : Int32 {
        case SCALING_3D_MODE_BILINEAR = 0
        case SCALING_3D_MODE_FSR = 1
        case SCALING_3D_MODE_MAX = 2
    }
    public enum MSAA : Int32 {
        case MSAA_DISABLED = 0
        case MSAA_2X = 1
        case MSAA_4X = 2
        case MSAA_8X = 3
        case MSAA_MAX = 4
    }
    public enum ScreenSpaceAA : Int32 {
        case SCREEN_SPACE_AA_DISABLED = 0
        case SCREEN_SPACE_AA_FXAA = 1
        case SCREEN_SPACE_AA_MAX = 2
    }
    public enum RenderInfo : Int32 {
        case RENDER_INFO_OBJECTS_IN_FRAME = 0
        case RENDER_INFO_PRIMITIVES_IN_FRAME = 1
        case RENDER_INFO_DRAW_CALLS_IN_FRAME = 2
        case RENDER_INFO_MAX = 3
    }
    public enum RenderInfoType : Int32 {
        case RENDER_INFO_TYPE_VISIBLE = 0
        case RENDER_INFO_TYPE_SHADOW = 1
        case RENDER_INFO_TYPE_MAX = 2
    }
    public enum DebugDraw : Int32 {
        case DEBUG_DRAW_DISABLED = 0
        case DEBUG_DRAW_UNSHADED = 1
        case DEBUG_DRAW_LIGHTING = 2
        case DEBUG_DRAW_OVERDRAW = 3
        case DEBUG_DRAW_WIREFRAME = 4
        case DEBUG_DRAW_NORMAL_BUFFER = 5
        case DEBUG_DRAW_VOXEL_GI_ALBEDO = 6
        case DEBUG_DRAW_VOXEL_GI_LIGHTING = 7
        case DEBUG_DRAW_VOXEL_GI_EMISSION = 8
        case DEBUG_DRAW_SHADOW_ATLAS = 9
        case DEBUG_DRAW_DIRECTIONAL_SHADOW_ATLAS = 10
        case DEBUG_DRAW_SCENE_LUMINANCE = 11
        case DEBUG_DRAW_SSAO = 12
        case DEBUG_DRAW_SSIL = 13
        case DEBUG_DRAW_PSSM_SPLITS = 14
        case DEBUG_DRAW_DECAL_ATLAS = 15
        case DEBUG_DRAW_SDFGI = 16
        case DEBUG_DRAW_SDFGI_PROBES = 17
        case DEBUG_DRAW_GI_BUFFER = 18
        case DEBUG_DRAW_DISABLE_LOD = 19
        case DEBUG_DRAW_CLUSTER_OMNI_LIGHTS = 20
        case DEBUG_DRAW_CLUSTER_SPOT_LIGHTS = 21
        case DEBUG_DRAW_CLUSTER_DECALS = 22
        case DEBUG_DRAW_CLUSTER_REFLECTION_PROBES = 23
        case DEBUG_DRAW_OCCLUDERS = 24
        case DEBUG_DRAW_MOTION_VECTORS = 25
    }
    public enum DefaultCanvasItemTextureFilter : Int32 {
        case DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST = 0
        case DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR = 1
        case DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS = 2
        case DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS = 3
        case DEFAULT_CANVAS_ITEM_TEXTURE_FILTER_MAX = 4
    }
    public enum DefaultCanvasItemTextureRepeat : Int32 {
        case DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_DISABLED = 0
        case DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_ENABLED = 1
        case DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_MIRROR = 2
        case DEFAULT_CANVAS_ITEM_TEXTURE_REPEAT_MAX = 3
    }
    public enum SDFOversize : Int32 {
        case SDF_OVERSIZE_100_PERCENT = 0
        case SDF_OVERSIZE_120_PERCENT = 1
        case SDF_OVERSIZE_150_PERCENT = 2
        case SDF_OVERSIZE_200_PERCENT = 3
        case SDF_OVERSIZE_MAX = 4
    }
    public enum SDFScale : Int32 {
        case SDF_SCALE_100_PERCENT = 0
        case SDF_SCALE_50_PERCENT = 1
        case SDF_SCALE_25_PERCENT = 2
        case SDF_SCALE_MAX = 3
    }
    public enum VRSMode : Int32 {
        case VRS_DISABLED = 0
        case VRS_TEXTURE = 1
        case VRS_XR = 2
        case VRS_MAX = 3
    }

    public override class var __godot_name: StringName { __godot_name_Viewport }

    static var _method_set_world_2d_2736080068: StringName! = nil
    static var _method_get_world_2d_2339128592: StringName! = nil
    static var _method_find_world_2d_2339128592: StringName! = nil
    static var _method_set_canvas_transform_2761652528: StringName! = nil
    static var _method_get_canvas_transform_3814499831: StringName! = nil
    static var _method_set_global_canvas_transform_2761652528: StringName! = nil
    static var _method_get_global_canvas_transform_3814499831: StringName! = nil
    static var _method_get_final_transform_3814499831: StringName! = nil
    static var _method_get_screen_transform_3814499831: StringName! = nil
    static var _method_get_visible_rect_1639390495: StringName! = nil
    static var _method_set_transparent_background_2586408642: StringName! = nil
    static var _method_has_transparent_background_36873697: StringName! = nil
    static var _method_set_msaa_2d_3330258708: StringName! = nil
    static var _method_get_msaa_2d_2542055527: StringName! = nil
    static var _method_set_msaa_3d_3330258708: StringName! = nil
    static var _method_get_msaa_3d_2542055527: StringName! = nil
    static var _method_set_screen_space_aa_3544169389: StringName! = nil
    static var _method_get_screen_space_aa_1390814124: StringName! = nil
    static var _method_set_use_taa_2586408642: StringName! = nil
    static var _method_is_using_taa_36873697: StringName! = nil
    static var _method_set_use_debanding_2586408642: StringName! = nil
    static var _method_is_using_debanding_36873697: StringName! = nil
    static var _method_set_use_occlusion_culling_2586408642: StringName! = nil
    static var _method_is_using_occlusion_culling_36873697: StringName! = nil
    static var _method_set_debug_draw_1970246205: StringName! = nil
    static var _method_get_debug_draw_579191299: StringName! = nil
    static var _method_get_render_info_481977019: StringName! = nil
    static var _method_get_texture_1746695840: StringName! = nil
    static var _method_set_physics_object_picking_2586408642: StringName! = nil
    static var _method_get_physics_object_picking_2240911060: StringName! = nil
    static var _method_get_viewport_rid_2944877500: StringName! = nil
    static var _method_push_text_input_83702148: StringName! = nil
    static var _method_push_input_3644664830: StringName! = nil
    static var _method_push_unhandled_input_3644664830: StringName! = nil
    static var _method_get_camera_2d_3551466917: StringName! = nil
    static var _method_set_as_audio_listener_2d_2586408642: StringName! = nil
    static var _method_is_audio_listener_2d_36873697: StringName! = nil
    static var _method_get_mouse_position_3341600327: StringName! = nil
    static var _method_warp_mouse_743155724: StringName! = nil
    static var _method_gui_get_drag_data_1214101251: StringName! = nil
    static var _method_gui_is_dragging_36873697: StringName! = nil
    static var _method_gui_is_drag_successful_36873697: StringName! = nil
    static var _method_gui_release_focus_3218959716: StringName! = nil
    static var _method_gui_get_focus_owner_829782337: StringName! = nil
    static var _method_set_disable_input_2586408642: StringName! = nil
    static var _method_is_input_disabled_36873697: StringName! = nil
    static var _method_set_positional_shadow_atlas_size_1286410249: StringName! = nil
    static var _method_get_positional_shadow_atlas_size_3905245786: StringName! = nil
    static var _method_set_positional_shadow_atlas_16_bits_2586408642: StringName! = nil
    static var _method_get_positional_shadow_atlas_16_bits_36873697: StringName! = nil
    static var _method_set_snap_controls_to_pixels_2586408642: StringName! = nil
    static var _method_is_snap_controls_to_pixels_enabled_36873697: StringName! = nil
    static var _method_set_snap_2d_transforms_to_pixel_2586408642: StringName! = nil
    static var _method_is_snap_2d_transforms_to_pixel_enabled_36873697: StringName! = nil
    static var _method_set_snap_2d_vertices_to_pixel_2586408642: StringName! = nil
    static var _method_is_snap_2d_vertices_to_pixel_enabled_36873697: StringName! = nil
    static var _method_set_positional_shadow_atlas_quadrant_subdiv_2596956071: StringName! = nil
    static var _method_get_positional_shadow_atlas_quadrant_subdiv_2676778355: StringName! = nil
    static var _method_set_input_as_handled_3218959716: StringName! = nil
    static var _method_is_input_handled_36873697: StringName! = nil
    static var _method_set_handle_input_locally_2586408642: StringName! = nil
    static var _method_is_handling_input_locally_36873697: StringName! = nil
    static var _method_set_default_canvas_item_texture_filter_2815160100: StringName! = nil
    static var _method_get_default_canvas_item_texture_filter_896601198: StringName! = nil
    static var _method_set_embedding_subwindows_2586408642: StringName! = nil
    static var _method_is_embedding_subwindows_36873697: StringName! = nil
    static var _method_set_canvas_cull_mask_1286410249: StringName! = nil
    static var _method_get_canvas_cull_mask_3905245786: StringName! = nil
    static var _method_set_canvas_cull_mask_bit_300928843: StringName! = nil
    static var _method_get_canvas_cull_mask_bit_1116898809: StringName! = nil
    static var _method_set_default_canvas_item_texture_repeat_1658513413: StringName! = nil
    static var _method_get_default_canvas_item_texture_repeat_4049774160: StringName! = nil
    static var _method_set_sdf_oversize_2574159017: StringName! = nil
    static var _method_get_sdf_oversize_2631427510: StringName! = nil
    static var _method_set_sdf_scale_1402773951: StringName! = nil
    static var _method_get_sdf_scale_3162688184: StringName! = nil
    static var _method_set_mesh_lod_threshold_373806689: StringName! = nil
    static var _method_get_mesh_lod_threshold_1740695150: StringName! = nil
    static var _method_set_world_3d_1400875337: StringName! = nil
    static var _method_get_world_3d_317588385: StringName! = nil
    static var _method_find_world_3d_317588385: StringName! = nil
    static var _method_set_use_own_world_3d_2586408642: StringName! = nil
    static var _method_is_using_own_world_3d_36873697: StringName! = nil
    static var _method_get_camera_3d_2285090890: StringName! = nil
    static var _method_set_as_audio_listener_3d_2586408642: StringName! = nil
    static var _method_is_audio_listener_3d_36873697: StringName! = nil
    static var _method_set_disable_3d_2586408642: StringName! = nil
    static var _method_is_3d_disabled_36873697: StringName! = nil
    static var _method_set_use_xr_2586408642: StringName! = nil
    static var _method_is_using_xr_2240911060: StringName! = nil
    static var _method_set_scaling_3d_mode_1531597597: StringName! = nil
    static var _method_get_scaling_3d_mode_2597660574: StringName! = nil
    static var _method_set_scaling_3d_scale_373806689: StringName! = nil
    static var _method_get_scaling_3d_scale_1740695150: StringName! = nil
    static var _method_set_fsr_sharpness_373806689: StringName! = nil
    static var _method_get_fsr_sharpness_1740695150: StringName! = nil
    static var _method_set_texture_mipmap_bias_373806689: StringName! = nil
    static var _method_get_texture_mipmap_bias_1740695150: StringName! = nil
    static var _method_set_vrs_mode_2749867817: StringName! = nil
    static var _method_get_vrs_mode_349660525: StringName! = nil
    static var _method_set_vrs_texture_4051416890: StringName! = nil
    static var _method_get_vrs_texture_3635182373: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_Viewport == nil)
        __godot_name_Viewport = StringName(from: "Viewport")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_set_world_2d_2736080068 = StringName(from: "set_world_2d")
        assert(self._method_set_world_2d_2736080068 != nil)
        self._method_get_world_2d_2339128592 = StringName(from: "get_world_2d")
        assert(self._method_get_world_2d_2339128592 != nil)
        self._method_find_world_2d_2339128592 = StringName(from: "find_world_2d")
        assert(self._method_find_world_2d_2339128592 != nil)
        self._method_set_canvas_transform_2761652528 = StringName(from: "set_canvas_transform")
        assert(self._method_set_canvas_transform_2761652528 != nil)
        self._method_get_canvas_transform_3814499831 = StringName(from: "get_canvas_transform")
        assert(self._method_get_canvas_transform_3814499831 != nil)
        self._method_set_global_canvas_transform_2761652528 = StringName(from: "set_global_canvas_transform")
        assert(self._method_set_global_canvas_transform_2761652528 != nil)
        self._method_get_global_canvas_transform_3814499831 = StringName(from: "get_global_canvas_transform")
        assert(self._method_get_global_canvas_transform_3814499831 != nil)
        self._method_get_final_transform_3814499831 = StringName(from: "get_final_transform")
        assert(self._method_get_final_transform_3814499831 != nil)
        self._method_get_screen_transform_3814499831 = StringName(from: "get_screen_transform")
        assert(self._method_get_screen_transform_3814499831 != nil)
        self._method_get_visible_rect_1639390495 = StringName(from: "get_visible_rect")
        assert(self._method_get_visible_rect_1639390495 != nil)
        self._method_set_transparent_background_2586408642 = StringName(from: "set_transparent_background")
        assert(self._method_set_transparent_background_2586408642 != nil)
        self._method_has_transparent_background_36873697 = StringName(from: "has_transparent_background")
        assert(self._method_has_transparent_background_36873697 != nil)
        self._method_set_msaa_2d_3330258708 = StringName(from: "set_msaa_2d")
        assert(self._method_set_msaa_2d_3330258708 != nil)
        self._method_get_msaa_2d_2542055527 = StringName(from: "get_msaa_2d")
        assert(self._method_get_msaa_2d_2542055527 != nil)
        self._method_set_msaa_3d_3330258708 = StringName(from: "set_msaa_3d")
        assert(self._method_set_msaa_3d_3330258708 != nil)
        self._method_get_msaa_3d_2542055527 = StringName(from: "get_msaa_3d")
        assert(self._method_get_msaa_3d_2542055527 != nil)
        self._method_set_screen_space_aa_3544169389 = StringName(from: "set_screen_space_aa")
        assert(self._method_set_screen_space_aa_3544169389 != nil)
        self._method_get_screen_space_aa_1390814124 = StringName(from: "get_screen_space_aa")
        assert(self._method_get_screen_space_aa_1390814124 != nil)
        self._method_set_use_taa_2586408642 = StringName(from: "set_use_taa")
        assert(self._method_set_use_taa_2586408642 != nil)
        self._method_is_using_taa_36873697 = StringName(from: "is_using_taa")
        assert(self._method_is_using_taa_36873697 != nil)
        self._method_set_use_debanding_2586408642 = StringName(from: "set_use_debanding")
        assert(self._method_set_use_debanding_2586408642 != nil)
        self._method_is_using_debanding_36873697 = StringName(from: "is_using_debanding")
        assert(self._method_is_using_debanding_36873697 != nil)
        self._method_set_use_occlusion_culling_2586408642 = StringName(from: "set_use_occlusion_culling")
        assert(self._method_set_use_occlusion_culling_2586408642 != nil)
        self._method_is_using_occlusion_culling_36873697 = StringName(from: "is_using_occlusion_culling")
        assert(self._method_is_using_occlusion_culling_36873697 != nil)
        self._method_set_debug_draw_1970246205 = StringName(from: "set_debug_draw")
        assert(self._method_set_debug_draw_1970246205 != nil)
        self._method_get_debug_draw_579191299 = StringName(from: "get_debug_draw")
        assert(self._method_get_debug_draw_579191299 != nil)
        self._method_get_render_info_481977019 = StringName(from: "get_render_info")
        assert(self._method_get_render_info_481977019 != nil)
        self._method_get_texture_1746695840 = StringName(from: "get_texture")
        assert(self._method_get_texture_1746695840 != nil)
        self._method_set_physics_object_picking_2586408642 = StringName(from: "set_physics_object_picking")
        assert(self._method_set_physics_object_picking_2586408642 != nil)
        self._method_get_physics_object_picking_2240911060 = StringName(from: "get_physics_object_picking")
        assert(self._method_get_physics_object_picking_2240911060 != nil)
        self._method_get_viewport_rid_2944877500 = StringName(from: "get_viewport_rid")
        assert(self._method_get_viewport_rid_2944877500 != nil)
        self._method_push_text_input_83702148 = StringName(from: "push_text_input")
        assert(self._method_push_text_input_83702148 != nil)
        self._method_push_input_3644664830 = StringName(from: "push_input")
        assert(self._method_push_input_3644664830 != nil)
        self._method_push_unhandled_input_3644664830 = StringName(from: "push_unhandled_input")
        assert(self._method_push_unhandled_input_3644664830 != nil)
        self._method_get_camera_2d_3551466917 = StringName(from: "get_camera_2d")
        assert(self._method_get_camera_2d_3551466917 != nil)
        self._method_set_as_audio_listener_2d_2586408642 = StringName(from: "set_as_audio_listener_2d")
        assert(self._method_set_as_audio_listener_2d_2586408642 != nil)
        self._method_is_audio_listener_2d_36873697 = StringName(from: "is_audio_listener_2d")
        assert(self._method_is_audio_listener_2d_36873697 != nil)
        self._method_get_mouse_position_3341600327 = StringName(from: "get_mouse_position")
        assert(self._method_get_mouse_position_3341600327 != nil)
        self._method_warp_mouse_743155724 = StringName(from: "warp_mouse")
        assert(self._method_warp_mouse_743155724 != nil)
        self._method_gui_get_drag_data_1214101251 = StringName(from: "gui_get_drag_data")
        assert(self._method_gui_get_drag_data_1214101251 != nil)
        self._method_gui_is_dragging_36873697 = StringName(from: "gui_is_dragging")
        assert(self._method_gui_is_dragging_36873697 != nil)
        self._method_gui_is_drag_successful_36873697 = StringName(from: "gui_is_drag_successful")
        assert(self._method_gui_is_drag_successful_36873697 != nil)
        self._method_gui_release_focus_3218959716 = StringName(from: "gui_release_focus")
        assert(self._method_gui_release_focus_3218959716 != nil)
        self._method_gui_get_focus_owner_829782337 = StringName(from: "gui_get_focus_owner")
        assert(self._method_gui_get_focus_owner_829782337 != nil)
        self._method_set_disable_input_2586408642 = StringName(from: "set_disable_input")
        assert(self._method_set_disable_input_2586408642 != nil)
        self._method_is_input_disabled_36873697 = StringName(from: "is_input_disabled")
        assert(self._method_is_input_disabled_36873697 != nil)
        self._method_set_positional_shadow_atlas_size_1286410249 = StringName(from: "set_positional_shadow_atlas_size")
        assert(self._method_set_positional_shadow_atlas_size_1286410249 != nil)
        self._method_get_positional_shadow_atlas_size_3905245786 = StringName(from: "get_positional_shadow_atlas_size")
        assert(self._method_get_positional_shadow_atlas_size_3905245786 != nil)
        self._method_set_positional_shadow_atlas_16_bits_2586408642 = StringName(from: "set_positional_shadow_atlas_16_bits")
        assert(self._method_set_positional_shadow_atlas_16_bits_2586408642 != nil)
        self._method_get_positional_shadow_atlas_16_bits_36873697 = StringName(from: "get_positional_shadow_atlas_16_bits")
        assert(self._method_get_positional_shadow_atlas_16_bits_36873697 != nil)
        self._method_set_snap_controls_to_pixels_2586408642 = StringName(from: "set_snap_controls_to_pixels")
        assert(self._method_set_snap_controls_to_pixels_2586408642 != nil)
        self._method_is_snap_controls_to_pixels_enabled_36873697 = StringName(from: "is_snap_controls_to_pixels_enabled")
        assert(self._method_is_snap_controls_to_pixels_enabled_36873697 != nil)
        self._method_set_snap_2d_transforms_to_pixel_2586408642 = StringName(from: "set_snap_2d_transforms_to_pixel")
        assert(self._method_set_snap_2d_transforms_to_pixel_2586408642 != nil)
        self._method_is_snap_2d_transforms_to_pixel_enabled_36873697 = StringName(from: "is_snap_2d_transforms_to_pixel_enabled")
        assert(self._method_is_snap_2d_transforms_to_pixel_enabled_36873697 != nil)
        self._method_set_snap_2d_vertices_to_pixel_2586408642 = StringName(from: "set_snap_2d_vertices_to_pixel")
        assert(self._method_set_snap_2d_vertices_to_pixel_2586408642 != nil)
        self._method_is_snap_2d_vertices_to_pixel_enabled_36873697 = StringName(from: "is_snap_2d_vertices_to_pixel_enabled")
        assert(self._method_is_snap_2d_vertices_to_pixel_enabled_36873697 != nil)
        self._method_set_positional_shadow_atlas_quadrant_subdiv_2596956071 = StringName(from: "set_positional_shadow_atlas_quadrant_subdiv")
        assert(self._method_set_positional_shadow_atlas_quadrant_subdiv_2596956071 != nil)
        self._method_get_positional_shadow_atlas_quadrant_subdiv_2676778355 = StringName(from: "get_positional_shadow_atlas_quadrant_subdiv")
        assert(self._method_get_positional_shadow_atlas_quadrant_subdiv_2676778355 != nil)
        self._method_set_input_as_handled_3218959716 = StringName(from: "set_input_as_handled")
        assert(self._method_set_input_as_handled_3218959716 != nil)
        self._method_is_input_handled_36873697 = StringName(from: "is_input_handled")
        assert(self._method_is_input_handled_36873697 != nil)
        self._method_set_handle_input_locally_2586408642 = StringName(from: "set_handle_input_locally")
        assert(self._method_set_handle_input_locally_2586408642 != nil)
        self._method_is_handling_input_locally_36873697 = StringName(from: "is_handling_input_locally")
        assert(self._method_is_handling_input_locally_36873697 != nil)
        self._method_set_default_canvas_item_texture_filter_2815160100 = StringName(from: "set_default_canvas_item_texture_filter")
        assert(self._method_set_default_canvas_item_texture_filter_2815160100 != nil)
        self._method_get_default_canvas_item_texture_filter_896601198 = StringName(from: "get_default_canvas_item_texture_filter")
        assert(self._method_get_default_canvas_item_texture_filter_896601198 != nil)
        self._method_set_embedding_subwindows_2586408642 = StringName(from: "set_embedding_subwindows")
        assert(self._method_set_embedding_subwindows_2586408642 != nil)
        self._method_is_embedding_subwindows_36873697 = StringName(from: "is_embedding_subwindows")
        assert(self._method_is_embedding_subwindows_36873697 != nil)
        self._method_set_canvas_cull_mask_1286410249 = StringName(from: "set_canvas_cull_mask")
        assert(self._method_set_canvas_cull_mask_1286410249 != nil)
        self._method_get_canvas_cull_mask_3905245786 = StringName(from: "get_canvas_cull_mask")
        assert(self._method_get_canvas_cull_mask_3905245786 != nil)
        self._method_set_canvas_cull_mask_bit_300928843 = StringName(from: "set_canvas_cull_mask_bit")
        assert(self._method_set_canvas_cull_mask_bit_300928843 != nil)
        self._method_get_canvas_cull_mask_bit_1116898809 = StringName(from: "get_canvas_cull_mask_bit")
        assert(self._method_get_canvas_cull_mask_bit_1116898809 != nil)
        self._method_set_default_canvas_item_texture_repeat_1658513413 = StringName(from: "set_default_canvas_item_texture_repeat")
        assert(self._method_set_default_canvas_item_texture_repeat_1658513413 != nil)
        self._method_get_default_canvas_item_texture_repeat_4049774160 = StringName(from: "get_default_canvas_item_texture_repeat")
        assert(self._method_get_default_canvas_item_texture_repeat_4049774160 != nil)
        self._method_set_sdf_oversize_2574159017 = StringName(from: "set_sdf_oversize")
        assert(self._method_set_sdf_oversize_2574159017 != nil)
        self._method_get_sdf_oversize_2631427510 = StringName(from: "get_sdf_oversize")
        assert(self._method_get_sdf_oversize_2631427510 != nil)
        self._method_set_sdf_scale_1402773951 = StringName(from: "set_sdf_scale")
        assert(self._method_set_sdf_scale_1402773951 != nil)
        self._method_get_sdf_scale_3162688184 = StringName(from: "get_sdf_scale")
        assert(self._method_get_sdf_scale_3162688184 != nil)
        self._method_set_mesh_lod_threshold_373806689 = StringName(from: "set_mesh_lod_threshold")
        assert(self._method_set_mesh_lod_threshold_373806689 != nil)
        self._method_get_mesh_lod_threshold_1740695150 = StringName(from: "get_mesh_lod_threshold")
        assert(self._method_get_mesh_lod_threshold_1740695150 != nil)
        self._method_set_world_3d_1400875337 = StringName(from: "set_world_3d")
        assert(self._method_set_world_3d_1400875337 != nil)
        self._method_get_world_3d_317588385 = StringName(from: "get_world_3d")
        assert(self._method_get_world_3d_317588385 != nil)
        self._method_find_world_3d_317588385 = StringName(from: "find_world_3d")
        assert(self._method_find_world_3d_317588385 != nil)
        self._method_set_use_own_world_3d_2586408642 = StringName(from: "set_use_own_world_3d")
        assert(self._method_set_use_own_world_3d_2586408642 != nil)
        self._method_is_using_own_world_3d_36873697 = StringName(from: "is_using_own_world_3d")
        assert(self._method_is_using_own_world_3d_36873697 != nil)
        self._method_get_camera_3d_2285090890 = StringName(from: "get_camera_3d")
        assert(self._method_get_camera_3d_2285090890 != nil)
        self._method_set_as_audio_listener_3d_2586408642 = StringName(from: "set_as_audio_listener_3d")
        assert(self._method_set_as_audio_listener_3d_2586408642 != nil)
        self._method_is_audio_listener_3d_36873697 = StringName(from: "is_audio_listener_3d")
        assert(self._method_is_audio_listener_3d_36873697 != nil)
        self._method_set_disable_3d_2586408642 = StringName(from: "set_disable_3d")
        assert(self._method_set_disable_3d_2586408642 != nil)
        self._method_is_3d_disabled_36873697 = StringName(from: "is_3d_disabled")
        assert(self._method_is_3d_disabled_36873697 != nil)
        self._method_set_use_xr_2586408642 = StringName(from: "set_use_xr")
        assert(self._method_set_use_xr_2586408642 != nil)
        self._method_is_using_xr_2240911060 = StringName(from: "is_using_xr")
        assert(self._method_is_using_xr_2240911060 != nil)
        self._method_set_scaling_3d_mode_1531597597 = StringName(from: "set_scaling_3d_mode")
        assert(self._method_set_scaling_3d_mode_1531597597 != nil)
        self._method_get_scaling_3d_mode_2597660574 = StringName(from: "get_scaling_3d_mode")
        assert(self._method_get_scaling_3d_mode_2597660574 != nil)
        self._method_set_scaling_3d_scale_373806689 = StringName(from: "set_scaling_3d_scale")
        assert(self._method_set_scaling_3d_scale_373806689 != nil)
        self._method_get_scaling_3d_scale_1740695150 = StringName(from: "get_scaling_3d_scale")
        assert(self._method_get_scaling_3d_scale_1740695150 != nil)
        self._method_set_fsr_sharpness_373806689 = StringName(from: "set_fsr_sharpness")
        assert(self._method_set_fsr_sharpness_373806689 != nil)
        self._method_get_fsr_sharpness_1740695150 = StringName(from: "get_fsr_sharpness")
        assert(self._method_get_fsr_sharpness_1740695150 != nil)
        self._method_set_texture_mipmap_bias_373806689 = StringName(from: "set_texture_mipmap_bias")
        assert(self._method_set_texture_mipmap_bias_373806689 != nil)
        self._method_get_texture_mipmap_bias_1740695150 = StringName(from: "get_texture_mipmap_bias")
        assert(self._method_get_texture_mipmap_bias_1740695150 != nil)
        self._method_set_vrs_mode_2749867817 = StringName(from: "set_vrs_mode")
        assert(self._method_set_vrs_mode_2749867817 != nil)
        self._method_get_vrs_mode_349660525 = StringName(from: "get_vrs_mode")
        assert(self._method_get_vrs_mode_349660525 != nil)
        self._method_set_vrs_texture_4051416890 = StringName(from: "set_vrs_texture")
        assert(self._method_set_vrs_texture_4051416890 != nil)
        self._method_get_vrs_texture_3635182373 = StringName(from: "get_vrs_texture")
        assert(self._method_get_vrs_texture_3635182373 != nil)
    }

    public func set_world_2d(world_2d: World2D)  {
        let world_2d_native = world_2d._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(world_2d_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_world_2d_2736080068._native_ptr(),
                    2736080068)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_world_2d() -> World2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_world_2d_2339128592._native_ptr(),
                    2339128592)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return World2D(godot: __resPtr.pointee)
    }
    public func find_world_2d() -> World2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_world_2d_2339128592._native_ptr(),
                    2339128592)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return World2D(godot: __resPtr.pointee)
    }
    public func set_canvas_transform(xform: Transform2D)  {
        let xform_native = xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(xform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_canvas_transform_2761652528._native_ptr(),
                    2761652528)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_canvas_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func set_global_canvas_transform(xform: Transform2D)  {
        let xform_native = xform._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(xform_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_global_canvas_transform_2761652528._native_ptr(),
                    2761652528)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_global_canvas_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_global_canvas_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_final_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_final_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_screen_transform() -> Transform2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_screen_transform_3814499831._native_ptr(),
                    3814499831)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(godot: __resPtr.pointee)
    }
    public func get_visible_rect() -> Rect2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_visible_rect_1639390495._native_ptr(),
                    1639390495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Rect2(godot: __resPtr.pointee)
    }
    public func set_transparent_background(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_transparent_background_2586408642._native_ptr(),
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
    public func has_transparent_background() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_has_transparent_background_36873697._native_ptr(),
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
    public func set_msaa_2d(msaa: Viewport.MSAA)  {
        withUnsafePointer(to: msaa.rawValue) { msaa_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msaa_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_msaa_2d_3330258708._native_ptr(),
                    3330258708)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_msaa_2d() -> Viewport.MSAA {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_msaa_2d_2542055527._native_ptr(),
                    2542055527)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.MSAA(godot: __resPtr.pointee)
    }
    public func set_msaa_3d(msaa: Viewport.MSAA)  {
        withUnsafePointer(to: msaa.rawValue) { msaa_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(msaa_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_msaa_3d_3330258708._native_ptr(),
                    3330258708)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_msaa_3d() -> Viewport.MSAA {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_msaa_3d_2542055527._native_ptr(),
                    2542055527)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.MSAA(godot: __resPtr.pointee)
    }
    public func set_screen_space_aa(screen_space_aa: Viewport.ScreenSpaceAA)  {
        withUnsafePointer(to: screen_space_aa.rawValue) { screen_space_aa_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_space_aa_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_screen_space_aa_3544169389._native_ptr(),
                    3544169389)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_screen_space_aa() -> Viewport.ScreenSpaceAA {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_screen_space_aa_1390814124._native_ptr(),
                    1390814124)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.ScreenSpaceAA(godot: __resPtr.pointee)
    }
    public func set_use_taa(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_taa_2586408642._native_ptr(),
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
    public func is_using_taa() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_taa_36873697._native_ptr(),
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
    public func set_use_debanding(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_debanding_2586408642._native_ptr(),
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
    public func is_using_debanding() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_debanding_36873697._native_ptr(),
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
    public func set_use_occlusion_culling(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_occlusion_culling_2586408642._native_ptr(),
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
    public func is_using_occlusion_culling() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_occlusion_culling_36873697._native_ptr(),
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
    public func set_debug_draw(debug_draw: Viewport.DebugDraw)  {
        withUnsafePointer(to: debug_draw.rawValue) { debug_draw_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(debug_draw_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_debug_draw_1970246205._native_ptr(),
                    1970246205)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_debug_draw() -> Viewport.DebugDraw {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_debug_draw_579191299._native_ptr(),
                    579191299)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.DebugDraw(godot: __resPtr.pointee)
    }
    public func get_render_info(`type`: Viewport.RenderInfoType, info: Viewport.RenderInfo) -> Int64 {
        withUnsafePointer(to: info.rawValue) { info_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native), .init(info_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_render_info_481977019._native_ptr(),
                    481977019)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
        }
        }
    }
    public func get_texture() -> ViewportTexture {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_1746695840._native_ptr(),
                    1746695840)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return ViewportTexture(godot: __resPtr.pointee)
    }
    public func set_physics_object_picking(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_physics_object_picking_2586408642._native_ptr(),
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
    public func get_physics_object_picking() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_physics_object_picking_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func get_viewport_rid() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_viewport_rid_2944877500._native_ptr(),
                    2944877500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func push_text_input(text: godot.String)  {
        let text_native = text._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(text_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_push_text_input_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func push_input(event: InputEvent, in_local_coords: UInt8)  {
        withUnsafePointer(to: in_local_coords) { in_local_coords_native in
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native), .init(in_local_coords_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_push_input_3644664830._native_ptr(),
                    3644664830)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func push_unhandled_input(event: InputEvent, in_local_coords: UInt8)  {
        withUnsafePointer(to: in_local_coords) { in_local_coords_native in
        let event_native = event._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(event_native), .init(in_local_coords_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_push_unhandled_input_3644664830._native_ptr(),
                    3644664830)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_camera_2d() -> Camera2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_2d_3551466917._native_ptr(),
                    3551466917)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera2D(godot: __resPtr.pointee)
    }
    public func set_as_audio_listener_2d(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_as_audio_listener_2d_2586408642._native_ptr(),
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
    public func is_audio_listener_2d() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_audio_listener_2d_36873697._native_ptr(),
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
    public func get_mouse_position() -> Vector2 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mouse_position_3341600327._native_ptr(),
                    3341600327)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector2(godot: __resPtr.pointee)
    }
    public func warp_mouse(position: Vector2)  {
        let position_native = position._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(position_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_warp_mouse_743155724._native_ptr(),
                    743155724)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func gui_get_drag_data() -> Variant {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_gui_get_drag_data_1214101251._native_ptr(),
                    1214101251)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(godot: __resPtr.pointee)
    }
    public func gui_is_dragging() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_gui_is_dragging_36873697._native_ptr(),
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
    public func gui_is_drag_successful() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_gui_is_drag_successful_36873697._native_ptr(),
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
    public func gui_release_focus()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_gui_release_focus_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func gui_get_focus_owner() -> Control {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_gui_get_focus_owner_829782337._native_ptr(),
                    829782337)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Control(godot: __resPtr.pointee)
    }
    public func set_disable_input(disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_input_2586408642._native_ptr(),
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
    public func is_input_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_input_disabled_36873697._native_ptr(),
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
    public func set_positional_shadow_atlas_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_positional_shadow_atlas_size_1286410249._native_ptr(),
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
    public func get_positional_shadow_atlas_size() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_positional_shadow_atlas_size_3905245786._native_ptr(),
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
    public func set_positional_shadow_atlas_16_bits(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_positional_shadow_atlas_16_bits_2586408642._native_ptr(),
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
    public func get_positional_shadow_atlas_16_bits() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_positional_shadow_atlas_16_bits_36873697._native_ptr(),
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
    public func set_snap_controls_to_pixels(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_snap_controls_to_pixels_2586408642._native_ptr(),
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
    public func is_snap_controls_to_pixels_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_snap_controls_to_pixels_enabled_36873697._native_ptr(),
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
    public func set_snap_2d_transforms_to_pixel(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_snap_2d_transforms_to_pixel_2586408642._native_ptr(),
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
    public func is_snap_2d_transforms_to_pixel_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_snap_2d_transforms_to_pixel_enabled_36873697._native_ptr(),
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
    public func set_snap_2d_vertices_to_pixel(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_snap_2d_vertices_to_pixel_2586408642._native_ptr(),
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
    public func is_snap_2d_vertices_to_pixel_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_snap_2d_vertices_to_pixel_enabled_36873697._native_ptr(),
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
    public func set_positional_shadow_atlas_quadrant_subdiv(quadrant: Int64, subdiv: Viewport.PositionalShadowAtlasQuadrantSubdiv)  {
        withUnsafePointer(to: quadrant) { quadrant_native in
        withUnsafePointer(to: subdiv.rawValue) { subdiv_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quadrant_native), .init(subdiv_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_positional_shadow_atlas_quadrant_subdiv_2596956071._native_ptr(),
                    2596956071)
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
    public func get_positional_shadow_atlas_quadrant_subdiv(quadrant: Int64) -> Viewport.PositionalShadowAtlasQuadrantSubdiv {
        withUnsafePointer(to: quadrant) { quadrant_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quadrant_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_positional_shadow_atlas_quadrant_subdiv_2676778355._native_ptr(),
                    2676778355)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.PositionalShadowAtlasQuadrantSubdiv(godot: __resPtr.pointee)
        }
    }
    public func set_input_as_handled()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_input_as_handled_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func is_input_handled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_input_handled_36873697._native_ptr(),
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
    public func set_handle_input_locally(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_handle_input_locally_2586408642._native_ptr(),
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
    public func is_handling_input_locally() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_handling_input_locally_36873697._native_ptr(),
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
    public func set_default_canvas_item_texture_filter(mode: Viewport.DefaultCanvasItemTextureFilter)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_canvas_item_texture_filter_2815160100._native_ptr(),
                    2815160100)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_canvas_item_texture_filter() -> Viewport.DefaultCanvasItemTextureFilter {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_canvas_item_texture_filter_896601198._native_ptr(),
                    896601198)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.DefaultCanvasItemTextureFilter(godot: __resPtr.pointee)
    }
    public func set_embedding_subwindows(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_embedding_subwindows_2586408642._native_ptr(),
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
    public func is_embedding_subwindows() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_embedding_subwindows_36873697._native_ptr(),
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
    public func set_canvas_cull_mask(mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mask_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_canvas_cull_mask_1286410249._native_ptr(),
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
    public func get_canvas_cull_mask() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_cull_mask_3905245786._native_ptr(),
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
    public func set_canvas_cull_mask_bit(layer: Int64, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native), .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_canvas_cull_mask_bit_300928843._native_ptr(),
                    300928843)
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
    public func get_canvas_cull_mask_bit(layer: Int64) -> UInt8 {
        withUnsafePointer(to: layer) { layer_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_canvas_cull_mask_bit_1116898809._native_ptr(),
                    1116898809)
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
    public func set_default_canvas_item_texture_repeat(mode: Viewport.DefaultCanvasItemTextureRepeat)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_default_canvas_item_texture_repeat_1658513413._native_ptr(),
                    1658513413)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_default_canvas_item_texture_repeat() -> Viewport.DefaultCanvasItemTextureRepeat {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_default_canvas_item_texture_repeat_4049774160._native_ptr(),
                    4049774160)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.DefaultCanvasItemTextureRepeat(godot: __resPtr.pointee)
    }
    public func set_sdf_oversize(oversize: Viewport.SDFOversize)  {
        withUnsafePointer(to: oversize.rawValue) { oversize_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(oversize_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdf_oversize_2574159017._native_ptr(),
                    2574159017)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdf_oversize() -> Viewport.SDFOversize {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdf_oversize_2631427510._native_ptr(),
                    2631427510)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.SDFOversize(godot: __resPtr.pointee)
    }
    public func set_sdf_scale(scale: Viewport.SDFScale)  {
        withUnsafePointer(to: scale.rawValue) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_sdf_scale_1402773951._native_ptr(),
                    1402773951)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_sdf_scale() -> Viewport.SDFScale {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_sdf_scale_3162688184._native_ptr(),
                    3162688184)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.SDFScale(godot: __resPtr.pointee)
    }
    public func set_mesh_lod_threshold(pixels: Float64)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(pixels_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_mesh_lod_threshold_373806689._native_ptr(),
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
    public func get_mesh_lod_threshold() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_mesh_lod_threshold_1740695150._native_ptr(),
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
    public func set_world_3d(world_3d: World3D)  {
        let world_3d_native = world_3d._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(world_3d_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_world_3d_1400875337._native_ptr(),
                    1400875337)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_world_3d() -> World3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_world_3d_317588385._native_ptr(),
                    317588385)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return World3D(godot: __resPtr.pointee)
    }
    public func find_world_3d() -> World3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_find_world_3d_317588385._native_ptr(),
                    317588385)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return World3D(godot: __resPtr.pointee)
    }
    public func set_use_own_world_3d(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_own_world_3d_2586408642._native_ptr(),
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
    public func is_using_own_world_3d() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_own_world_3d_36873697._native_ptr(),
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
    public func get_camera_3d() -> Camera3D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_camera_3d_2285090890._native_ptr(),
                    2285090890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Camera3D(godot: __resPtr.pointee)
    }
    public func set_as_audio_listener_3d(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_as_audio_listener_3d_2586408642._native_ptr(),
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
    public func is_audio_listener_3d() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_audio_listener_3d_36873697._native_ptr(),
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
    public func set_disable_3d(disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disable_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_disable_3d_2586408642._native_ptr(),
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
    public func is_3d_disabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_3d_disabled_36873697._native_ptr(),
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
    public func set_use_xr(use: UInt8)  {
        withUnsafePointer(to: use) { use_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(use_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_use_xr_2586408642._native_ptr(),
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
    public func is_using_xr() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_is_using_xr_2240911060._native_ptr(),
                    2240911060)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func set_scaling_3d_mode(scaling_3d_mode: Viewport.Scaling3DMode)  {
        withUnsafePointer(to: scaling_3d_mode.rawValue) { scaling_3d_mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scaling_3d_mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scaling_3d_mode_1531597597._native_ptr(),
                    1531597597)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_scaling_3d_mode() -> Viewport.Scaling3DMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scaling_3d_mode_2597660574._native_ptr(),
                    2597660574)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.Scaling3DMode(godot: __resPtr.pointee)
    }
    public func set_scaling_3d_scale(scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_scaling_3d_scale_373806689._native_ptr(),
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
    public func get_scaling_3d_scale() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_scaling_3d_scale_1740695150._native_ptr(),
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
    public func set_fsr_sharpness(fsr_sharpness: Float64)  {
        withUnsafePointer(to: fsr_sharpness) { fsr_sharpness_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fsr_sharpness_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_fsr_sharpness_373806689._native_ptr(),
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
    public func get_fsr_sharpness() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_fsr_sharpness_1740695150._native_ptr(),
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
    public func set_texture_mipmap_bias(texture_mipmap_bias: Float64)  {
        withUnsafePointer(to: texture_mipmap_bias) { texture_mipmap_bias_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_mipmap_bias_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_texture_mipmap_bias_373806689._native_ptr(),
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
    public func get_texture_mipmap_bias() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_texture_mipmap_bias_1740695150._native_ptr(),
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
    public func set_vrs_mode(mode: Viewport.VRSMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mode_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vrs_mode_2749867817._native_ptr(),
                    2749867817)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_vrs_mode() -> Viewport.VRSMode {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vrs_mode_349660525._native_ptr(),
                    349660525)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Viewport.VRSMode(godot: __resPtr.pointee)
    }
    public func set_vrs_texture(texture: Texture2D)  {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_vrs_texture_4051416890._native_ptr(),
                    4051416890)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_vrs_texture() -> Texture2D {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_vrs_texture_3635182373._native_ptr(),
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
}