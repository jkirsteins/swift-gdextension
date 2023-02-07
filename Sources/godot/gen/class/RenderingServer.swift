import godot_native

fileprivate var __godot_name_RenderingServer: StringName! = nil

/// Server for anything visible.
/// 
/// The rendering server is the API backend for everything visible. The whole scene system mounts on it to display.
///  
/// The rendering server is completely opaque, the internals are entirely implementation specific and cannot be accessed.
///  
/// The rendering server can be used to bypass the scene/[Node] system entirely.
///  
/// Resources are created using the [code]*_create[/code] functions. These functions return [RID]s which are not references to the objects themselves, but opaque [i]pointers[/i] towards these objects.
///  
/// All objects are drawn to a viewport. You can use the [Viewport] attached to the [SceneTree] or you can create one yourself with [method viewport_create]. When using a custom scenario or canvas, the scenario or canvas needs to be attached to the viewport using [method viewport_set_scenario] or [method viewport_attach_canvas].
///  
/// In 3D, all visual objects must be associated with a scenario. The scenario is a visual representation of the world. If accessing the rendering server from a running game, the scenario can be accessed from the scene tree from any [Node3D] node with [method Node3D.get_world_3d]. Otherwise, a scenario can be created with [method scenario_create].
///  
/// Similarly, in 2D, a canvas is needed to draw all canvas items.
///  
/// In 3D, all visible objects are comprised of a resource and an instance. A resource can be a mesh, a particle system, a light, or any other 3D object. In order to be visible resources must be attached to an instance using [method instance_set_base]. The instance must also be attached to the scenario using [method instance_set_scenario] in order to be visible.
///  
/// In 2D, all visible objects are some form of canvas item. In order to be visible, a canvas item needs to be the child of a canvas attached to a viewport, or it needs to be the child of another canvas item that is eventually attached to the canvas.
///  
/// [b]Headless mode:[/b] Starting the engine with the [code]--headless[/code] [url=$DOCS_URL/tutorials/editor/command_line_tutorial.html]command line argument[/url] disables all rendering and window management functions. Most functions from [RenderingServer] will return dummy values in this case.
public class RenderingServer : Object {

    public enum TextureLayeredType : Int32 {
        case TEXTURE_LAYERED_2D_ARRAY = 0
        case TEXTURE_LAYERED_CUBEMAP = 1
        case TEXTURE_LAYERED_CUBEMAP_ARRAY = 2
    }
    public enum CubeMapLayer : Int32 {
        case CUBEMAP_LAYER_LEFT = 0
        case CUBEMAP_LAYER_RIGHT = 1
        case CUBEMAP_LAYER_BOTTOM = 2
        case CUBEMAP_LAYER_TOP = 3
        case CUBEMAP_LAYER_FRONT = 4
        case CUBEMAP_LAYER_BACK = 5
    }
    public enum ShaderMode : Int32 {
        case SHADER_SPATIAL = 0
        case SHADER_CANVAS_ITEM = 1
        case SHADER_PARTICLES = 2
        case SHADER_SKY = 3
        case SHADER_FOG = 4
        case SHADER_MAX = 5
    }
    public enum ArrayType : Int32 {
        case ARRAY_VERTEX = 0
        case ARRAY_NORMAL = 1
        case ARRAY_TANGENT = 2
        case ARRAY_COLOR = 3
        case ARRAY_TEX_UV = 4
        case ARRAY_TEX_UV2 = 5
        case ARRAY_CUSTOM0 = 6
        case ARRAY_CUSTOM1 = 7
        case ARRAY_CUSTOM2 = 8
        case ARRAY_CUSTOM3 = 9
        case ARRAY_BONES = 10
        case ARRAY_WEIGHTS = 11
        case ARRAY_INDEX = 12
        case ARRAY_MAX = 13
    }
    public enum ArrayCustomFormat : Int32 {
        case ARRAY_CUSTOM_RGBA8_UNORM = 0
        case ARRAY_CUSTOM_RGBA8_SNORM = 1
        case ARRAY_CUSTOM_RG_HALF = 2
        case ARRAY_CUSTOM_RGBA_HALF = 3
        case ARRAY_CUSTOM_R_FLOAT = 4
        case ARRAY_CUSTOM_RG_FLOAT = 5
        case ARRAY_CUSTOM_RGB_FLOAT = 6
        case ARRAY_CUSTOM_RGBA_FLOAT = 7
        case ARRAY_CUSTOM_MAX = 8
    }
    public struct ArrayFormat: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let ARRAY_FORMAT_VERTEX = ArrayFormat(rawValue: 1)
        static let ARRAY_FORMAT_NORMAL = ArrayFormat(rawValue: 2)
        static let ARRAY_FORMAT_TANGENT = ArrayFormat(rawValue: 4)
        static let ARRAY_FORMAT_COLOR = ArrayFormat(rawValue: 8)
        static let ARRAY_FORMAT_TEX_UV = ArrayFormat(rawValue: 16)
        static let ARRAY_FORMAT_TEX_UV2 = ArrayFormat(rawValue: 32)
        static let ARRAY_FORMAT_CUSTOM0 = ArrayFormat(rawValue: 64)
        static let ARRAY_FORMAT_CUSTOM1 = ArrayFormat(rawValue: 128)
        static let ARRAY_FORMAT_CUSTOM2 = ArrayFormat(rawValue: 256)
        static let ARRAY_FORMAT_CUSTOM3 = ArrayFormat(rawValue: 512)
        static let ARRAY_FORMAT_BONES = ArrayFormat(rawValue: 1024)
        static let ARRAY_FORMAT_WEIGHTS = ArrayFormat(rawValue: 2048)
        static let ARRAY_FORMAT_INDEX = ArrayFormat(rawValue: 4096)
        static let ARRAY_FORMAT_BLEND_SHAPE_MASK = ArrayFormat(rawValue: 7)
        static let ARRAY_FORMAT_CUSTOM_BASE = ArrayFormat(rawValue: 13)
        static let ARRAY_FORMAT_CUSTOM_BITS = ArrayFormat(rawValue: 3)
        static let ARRAY_FORMAT_CUSTOM0_SHIFT = ArrayFormat(rawValue: 13)
        static let ARRAY_FORMAT_CUSTOM1_SHIFT = ArrayFormat(rawValue: 16)
        static let ARRAY_FORMAT_CUSTOM2_SHIFT = ArrayFormat(rawValue: 19)
        static let ARRAY_FORMAT_CUSTOM3_SHIFT = ArrayFormat(rawValue: 22)
        static let ARRAY_FORMAT_CUSTOM_MASK = ArrayFormat(rawValue: 7)
        static let ARRAY_COMPRESS_FLAGS_BASE = ArrayFormat(rawValue: 25)
        static let ARRAY_FLAG_USE_2D_VERTICES = ArrayFormat(rawValue: 33554432)
        static let ARRAY_FLAG_USE_DYNAMIC_UPDATE = ArrayFormat(rawValue: 67108864)
        static let ARRAY_FLAG_USE_8_BONE_WEIGHTS = ArrayFormat(rawValue: 134217728)
        static let ARRAY_FLAG_USES_EMPTY_VERTEX_ARRAY = ArrayFormat(rawValue: 268435456)
    }
    public enum PrimitiveType : Int32 {
        case PRIMITIVE_POINTS = 0
        case PRIMITIVE_LINES = 1
        case PRIMITIVE_LINE_STRIP = 2
        case PRIMITIVE_TRIANGLES = 3
        case PRIMITIVE_TRIANGLE_STRIP = 4
        case PRIMITIVE_MAX = 5
    }
    public enum BlendShapeMode : Int32 {
        case BLEND_SHAPE_MODE_NORMALIZED = 0
        case BLEND_SHAPE_MODE_RELATIVE = 1
    }
    public enum MultimeshTransformFormat : Int32 {
        case MULTIMESH_TRANSFORM_2D = 0
        case MULTIMESH_TRANSFORM_3D = 1
    }
    public enum LightProjectorFilter : Int32 {
        case LIGHT_PROJECTOR_FILTER_NEAREST = 0
        case LIGHT_PROJECTOR_FILTER_LINEAR = 1
        case LIGHT_PROJECTOR_FILTER_NEAREST_MIPMAPS = 2
        case LIGHT_PROJECTOR_FILTER_LINEAR_MIPMAPS = 3
        case LIGHT_PROJECTOR_FILTER_NEAREST_MIPMAPS_ANISOTROPIC = 4
        case LIGHT_PROJECTOR_FILTER_LINEAR_MIPMAPS_ANISOTROPIC = 5
    }
    public enum LightType : Int32 {
        case LIGHT_DIRECTIONAL = 0
        case LIGHT_OMNI = 1
        case LIGHT_SPOT = 2
    }
    public enum LightParam : Int32 {
        case LIGHT_PARAM_ENERGY = 0
        case LIGHT_PARAM_INDIRECT_ENERGY = 1
        case LIGHT_PARAM_VOLUMETRIC_FOG_ENERGY = 2
        case LIGHT_PARAM_SPECULAR = 3
        case LIGHT_PARAM_RANGE = 4
        case LIGHT_PARAM_SIZE = 5
        case LIGHT_PARAM_ATTENUATION = 6
        case LIGHT_PARAM_SPOT_ANGLE = 7
        case LIGHT_PARAM_SPOT_ATTENUATION = 8
        case LIGHT_PARAM_SHADOW_MAX_DISTANCE = 9
        case LIGHT_PARAM_SHADOW_SPLIT_1_OFFSET = 10
        case LIGHT_PARAM_SHADOW_SPLIT_2_OFFSET = 11
        case LIGHT_PARAM_SHADOW_SPLIT_3_OFFSET = 12
        case LIGHT_PARAM_SHADOW_FADE_START = 13
        case LIGHT_PARAM_SHADOW_NORMAL_BIAS = 14
        case LIGHT_PARAM_SHADOW_BIAS = 15
        case LIGHT_PARAM_SHADOW_PANCAKE_SIZE = 16
        case LIGHT_PARAM_SHADOW_OPACITY = 17
        case LIGHT_PARAM_SHADOW_BLUR = 18
        case LIGHT_PARAM_TRANSMITTANCE_BIAS = 19
        case LIGHT_PARAM_MAX = 21
    }
    public enum LightBakeMode : Int32 {
        case LIGHT_BAKE_DISABLED = 0
        case LIGHT_BAKE_STATIC = 1
        case LIGHT_BAKE_DYNAMIC = 2
    }
    public enum LightOmniShadowMode : Int32 {
        case LIGHT_OMNI_SHADOW_DUAL_PARABOLOID = 0
        case LIGHT_OMNI_SHADOW_CUBE = 1
    }
    public enum LightDirectionalShadowMode : Int32 {
        case LIGHT_DIRECTIONAL_SHADOW_ORTHOGONAL = 0
        case LIGHT_DIRECTIONAL_SHADOW_PARALLEL_2_SPLITS = 1
        case LIGHT_DIRECTIONAL_SHADOW_PARALLEL_4_SPLITS = 2
    }
    public enum LightDirectionalSkyMode : Int32 {
        case LIGHT_DIRECTIONAL_SKY_MODE_LIGHT_AND_SKY = 0
        case LIGHT_DIRECTIONAL_SKY_MODE_LIGHT_ONLY = 1
        case LIGHT_DIRECTIONAL_SKY_MODE_SKY_ONLY = 2
    }
    public enum ShadowQuality : Int32 {
        case SHADOW_QUALITY_HARD = 0
        case SHADOW_QUALITY_SOFT_VERY_LOW = 1
        case SHADOW_QUALITY_SOFT_LOW = 2
        case SHADOW_QUALITY_SOFT_MEDIUM = 3
        case SHADOW_QUALITY_SOFT_HIGH = 4
        case SHADOW_QUALITY_SOFT_ULTRA = 5
        case SHADOW_QUALITY_MAX = 6
    }
    public enum ReflectionProbeUpdateMode : Int32 {
        case REFLECTION_PROBE_UPDATE_ONCE = 0
        case REFLECTION_PROBE_UPDATE_ALWAYS = 1
    }
    public enum ReflectionProbeAmbientMode : Int32 {
        case REFLECTION_PROBE_AMBIENT_DISABLED = 0
        case REFLECTION_PROBE_AMBIENT_ENVIRONMENT = 1
        case REFLECTION_PROBE_AMBIENT_COLOR = 2
    }
    public enum DecalTexture : Int32 {
        case DECAL_TEXTURE_ALBEDO = 0
        case DECAL_TEXTURE_NORMAL = 1
        case DECAL_TEXTURE_ORM = 2
        case DECAL_TEXTURE_EMISSION = 3
        case DECAL_TEXTURE_MAX = 4
    }
    public enum DecalFilter : Int32 {
        case DECAL_FILTER_NEAREST = 0
        case DECAL_FILTER_LINEAR = 1
        case DECAL_FILTER_NEAREST_MIPMAPS = 2
        case DECAL_FILTER_LINEAR_MIPMAPS = 3
        case DECAL_FILTER_NEAREST_MIPMAPS_ANISOTROPIC = 4
        case DECAL_FILTER_LINEAR_MIPMAPS_ANISOTROPIC = 5
    }
    public enum VoxelGIQuality : Int32 {
        case VOXEL_GI_QUALITY_LOW = 0
        case VOXEL_GI_QUALITY_HIGH = 1
    }
    public enum ParticlesMode : Int32 {
        case PARTICLES_MODE_2D = 0
        case PARTICLES_MODE_3D = 1
    }
    public enum ParticlesTransformAlign : Int32 {
        case PARTICLES_TRANSFORM_ALIGN_DISABLED = 0
        case PARTICLES_TRANSFORM_ALIGN_Z_BILLBOARD = 1
        case PARTICLES_TRANSFORM_ALIGN_Y_TO_VELOCITY = 2
        case PARTICLES_TRANSFORM_ALIGN_Z_BILLBOARD_Y_TO_VELOCITY = 3
    }
    public enum ParticlesDrawOrder : Int32 {
        case PARTICLES_DRAW_ORDER_INDEX = 0
        case PARTICLES_DRAW_ORDER_LIFETIME = 1
        case PARTICLES_DRAW_ORDER_REVERSE_LIFETIME = 2
        case PARTICLES_DRAW_ORDER_VIEW_DEPTH = 3
    }
    public enum ParticlesCollisionType : Int32 {
        case PARTICLES_COLLISION_TYPE_SPHERE_ATTRACT = 0
        case PARTICLES_COLLISION_TYPE_BOX_ATTRACT = 1
        case PARTICLES_COLLISION_TYPE_VECTOR_FIELD_ATTRACT = 2
        case PARTICLES_COLLISION_TYPE_SPHERE_COLLIDE = 3
        case PARTICLES_COLLISION_TYPE_BOX_COLLIDE = 4
        case PARTICLES_COLLISION_TYPE_SDF_COLLIDE = 5
        case PARTICLES_COLLISION_TYPE_HEIGHTFIELD_COLLIDE = 6
    }
    public enum ParticlesCollisionHeightfieldResolution : Int32 {
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_256 = 0
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_512 = 1
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_1024 = 2
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_2048 = 3
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_4096 = 4
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_8192 = 5
        case PARTICLES_COLLISION_HEIGHTFIELD_RESOLUTION_MAX = 6
    }
    public enum FogVolumeShape : Int32 {
        case FOG_VOLUME_SHAPE_ELLIPSOID = 0
        case FOG_VOLUME_SHAPE_CONE = 1
        case FOG_VOLUME_SHAPE_CYLINDER = 2
        case FOG_VOLUME_SHAPE_BOX = 3
        case FOG_VOLUME_SHAPE_WORLD = 4
        case FOG_VOLUME_SHAPE_MAX = 5
    }
    public enum ViewportScaling3DMode : Int32 {
        case VIEWPORT_SCALING_3D_MODE_BILINEAR = 0
        case VIEWPORT_SCALING_3D_MODE_FSR = 1
        case VIEWPORT_SCALING_3D_MODE_MAX = 2
    }
    public enum ViewportUpdateMode : Int32 {
        case VIEWPORT_UPDATE_DISABLED = 0
        case VIEWPORT_UPDATE_ONCE = 1
        case VIEWPORT_UPDATE_WHEN_VISIBLE = 2
        case VIEWPORT_UPDATE_WHEN_PARENT_VISIBLE = 3
        case VIEWPORT_UPDATE_ALWAYS = 4
    }
    public enum ViewportClearMode : Int32 {
        case VIEWPORT_CLEAR_ALWAYS = 0
        case VIEWPORT_CLEAR_NEVER = 1
        case VIEWPORT_CLEAR_ONLY_NEXT_FRAME = 2
    }
    public enum ViewportEnvironmentMode : Int32 {
        case VIEWPORT_ENVIRONMENT_DISABLED = 0
        case VIEWPORT_ENVIRONMENT_ENABLED = 1
        case VIEWPORT_ENVIRONMENT_INHERIT = 2
        case VIEWPORT_ENVIRONMENT_MAX = 3
    }
    public enum ViewportSDFOversize : Int32 {
        case VIEWPORT_SDF_OVERSIZE_100_PERCENT = 0
        case VIEWPORT_SDF_OVERSIZE_120_PERCENT = 1
        case VIEWPORT_SDF_OVERSIZE_150_PERCENT = 2
        case VIEWPORT_SDF_OVERSIZE_200_PERCENT = 3
        case VIEWPORT_SDF_OVERSIZE_MAX = 4
    }
    public enum ViewportSDFScale : Int32 {
        case VIEWPORT_SDF_SCALE_100_PERCENT = 0
        case VIEWPORT_SDF_SCALE_50_PERCENT = 1
        case VIEWPORT_SDF_SCALE_25_PERCENT = 2
        case VIEWPORT_SDF_SCALE_MAX = 3
    }
    public enum ViewportMSAA : Int32 {
        case VIEWPORT_MSAA_DISABLED = 0
        case VIEWPORT_MSAA_2X = 1
        case VIEWPORT_MSAA_4X = 2
        case VIEWPORT_MSAA_8X = 3
        case VIEWPORT_MSAA_MAX = 4
    }
    public enum ViewportScreenSpaceAA : Int32 {
        case VIEWPORT_SCREEN_SPACE_AA_DISABLED = 0
        case VIEWPORT_SCREEN_SPACE_AA_FXAA = 1
        case VIEWPORT_SCREEN_SPACE_AA_MAX = 2
    }
    public enum ViewportOcclusionCullingBuildQuality : Int32 {
        case VIEWPORT_OCCLUSION_BUILD_QUALITY_LOW = 0
        case VIEWPORT_OCCLUSION_BUILD_QUALITY_MEDIUM = 1
        case VIEWPORT_OCCLUSION_BUILD_QUALITY_HIGH = 2
    }
    public enum ViewportRenderInfo : Int32 {
        case VIEWPORT_RENDER_INFO_OBJECTS_IN_FRAME = 0
        case VIEWPORT_RENDER_INFO_PRIMITIVES_IN_FRAME = 1
        case VIEWPORT_RENDER_INFO_DRAW_CALLS_IN_FRAME = 2
        case VIEWPORT_RENDER_INFO_MAX = 3
    }
    public enum ViewportRenderInfoType : Int32 {
        case VIEWPORT_RENDER_INFO_TYPE_VISIBLE = 0
        case VIEWPORT_RENDER_INFO_TYPE_SHADOW = 1
        case VIEWPORT_RENDER_INFO_TYPE_MAX = 2
    }
    public enum ViewportDebugDraw : Int32 {
        case VIEWPORT_DEBUG_DRAW_DISABLED = 0
        case VIEWPORT_DEBUG_DRAW_UNSHADED = 1
        case VIEWPORT_DEBUG_DRAW_LIGHTING = 2
        case VIEWPORT_DEBUG_DRAW_OVERDRAW = 3
        case VIEWPORT_DEBUG_DRAW_WIREFRAME = 4
        case VIEWPORT_DEBUG_DRAW_NORMAL_BUFFER = 5
        case VIEWPORT_DEBUG_DRAW_VOXEL_GI_ALBEDO = 6
        case VIEWPORT_DEBUG_DRAW_VOXEL_GI_LIGHTING = 7
        case VIEWPORT_DEBUG_DRAW_VOXEL_GI_EMISSION = 8
        case VIEWPORT_DEBUG_DRAW_SHADOW_ATLAS = 9
        case VIEWPORT_DEBUG_DRAW_DIRECTIONAL_SHADOW_ATLAS = 10
        case VIEWPORT_DEBUG_DRAW_SCENE_LUMINANCE = 11
        case VIEWPORT_DEBUG_DRAW_SSAO = 12
        case VIEWPORT_DEBUG_DRAW_SSIL = 13
        case VIEWPORT_DEBUG_DRAW_PSSM_SPLITS = 14
        case VIEWPORT_DEBUG_DRAW_DECAL_ATLAS = 15
        case VIEWPORT_DEBUG_DRAW_SDFGI = 16
        case VIEWPORT_DEBUG_DRAW_SDFGI_PROBES = 17
        case VIEWPORT_DEBUG_DRAW_GI_BUFFER = 18
        case VIEWPORT_DEBUG_DRAW_DISABLE_LOD = 19
        case VIEWPORT_DEBUG_DRAW_CLUSTER_OMNI_LIGHTS = 20
        case VIEWPORT_DEBUG_DRAW_CLUSTER_SPOT_LIGHTS = 21
        case VIEWPORT_DEBUG_DRAW_CLUSTER_DECALS = 22
        case VIEWPORT_DEBUG_DRAW_CLUSTER_REFLECTION_PROBES = 23
        case VIEWPORT_DEBUG_DRAW_OCCLUDERS = 24
        case VIEWPORT_DEBUG_DRAW_MOTION_VECTORS = 25
    }
    public enum ViewportVRSMode : Int32 {
        case VIEWPORT_VRS_DISABLED = 0
        case VIEWPORT_VRS_TEXTURE = 1
        case VIEWPORT_VRS_XR = 2
        case VIEWPORT_VRS_MAX = 3
    }
    public enum SkyMode : Int32 {
        case SKY_MODE_AUTOMATIC = 0
        case SKY_MODE_QUALITY = 1
        case SKY_MODE_INCREMENTAL = 2
        case SKY_MODE_REALTIME = 3
    }
    public enum EnvironmentBG : Int32 {
        case ENV_BG_CLEAR_COLOR = 0
        case ENV_BG_COLOR = 1
        case ENV_BG_SKY = 2
        case ENV_BG_CANVAS = 3
        case ENV_BG_KEEP = 4
        case ENV_BG_CAMERA_FEED = 5
        case ENV_BG_MAX = 6
    }
    public enum EnvironmentAmbientSource : Int32 {
        case ENV_AMBIENT_SOURCE_BG = 0
        case ENV_AMBIENT_SOURCE_DISABLED = 1
        case ENV_AMBIENT_SOURCE_COLOR = 2
        case ENV_AMBIENT_SOURCE_SKY = 3
    }
    public enum EnvironmentReflectionSource : Int32 {
        case ENV_REFLECTION_SOURCE_BG = 0
        case ENV_REFLECTION_SOURCE_DISABLED = 1
        case ENV_REFLECTION_SOURCE_SKY = 2
    }
    public enum EnvironmentGlowBlendMode : Int32 {
        case ENV_GLOW_BLEND_MODE_ADDITIVE = 0
        case ENV_GLOW_BLEND_MODE_SCREEN = 1
        case ENV_GLOW_BLEND_MODE_SOFTLIGHT = 2
        case ENV_GLOW_BLEND_MODE_REPLACE = 3
        case ENV_GLOW_BLEND_MODE_MIX = 4
    }
    public enum EnvironmentToneMapper : Int32 {
        case ENV_TONE_MAPPER_LINEAR = 0
        case ENV_TONE_MAPPER_REINHARD = 1
        case ENV_TONE_MAPPER_FILMIC = 2
        case ENV_TONE_MAPPER_ACES = 3
    }
    public enum EnvironmentSSRRoughnessQuality : Int32 {
        case ENV_SSR_ROUGHNESS_QUALITY_DISABLED = 0
        case ENV_SSR_ROUGHNESS_QUALITY_LOW = 1
        case ENV_SSR_ROUGHNESS_QUALITY_MEDIUM = 2
        case ENV_SSR_ROUGHNESS_QUALITY_HIGH = 3
    }
    public enum EnvironmentSSAOQuality : Int32 {
        case ENV_SSAO_QUALITY_VERY_LOW = 0
        case ENV_SSAO_QUALITY_LOW = 1
        case ENV_SSAO_QUALITY_MEDIUM = 2
        case ENV_SSAO_QUALITY_HIGH = 3
        case ENV_SSAO_QUALITY_ULTRA = 4
    }
    public enum EnvironmentSSILQuality : Int32 {
        case ENV_SSIL_QUALITY_VERY_LOW = 0
        case ENV_SSIL_QUALITY_LOW = 1
        case ENV_SSIL_QUALITY_MEDIUM = 2
        case ENV_SSIL_QUALITY_HIGH = 3
        case ENV_SSIL_QUALITY_ULTRA = 4
    }
    public enum EnvironmentSDFGIYScale : Int32 {
        case ENV_SDFGI_Y_SCALE_50_PERCENT = 0
        case ENV_SDFGI_Y_SCALE_75_PERCENT = 1
        case ENV_SDFGI_Y_SCALE_100_PERCENT = 2
    }
    public enum EnvironmentSDFGIRayCount : Int32 {
        case ENV_SDFGI_RAY_COUNT_4 = 0
        case ENV_SDFGI_RAY_COUNT_8 = 1
        case ENV_SDFGI_RAY_COUNT_16 = 2
        case ENV_SDFGI_RAY_COUNT_32 = 3
        case ENV_SDFGI_RAY_COUNT_64 = 4
        case ENV_SDFGI_RAY_COUNT_96 = 5
        case ENV_SDFGI_RAY_COUNT_128 = 6
        case ENV_SDFGI_RAY_COUNT_MAX = 7
    }
    public enum EnvironmentSDFGIFramesToConverge : Int32 {
        case ENV_SDFGI_CONVERGE_IN_5_FRAMES = 0
        case ENV_SDFGI_CONVERGE_IN_10_FRAMES = 1
        case ENV_SDFGI_CONVERGE_IN_15_FRAMES = 2
        case ENV_SDFGI_CONVERGE_IN_20_FRAMES = 3
        case ENV_SDFGI_CONVERGE_IN_25_FRAMES = 4
        case ENV_SDFGI_CONVERGE_IN_30_FRAMES = 5
        case ENV_SDFGI_CONVERGE_MAX = 6
    }
    public enum EnvironmentSDFGIFramesToUpdateLight : Int32 {
        case ENV_SDFGI_UPDATE_LIGHT_IN_1_FRAME = 0
        case ENV_SDFGI_UPDATE_LIGHT_IN_2_FRAMES = 1
        case ENV_SDFGI_UPDATE_LIGHT_IN_4_FRAMES = 2
        case ENV_SDFGI_UPDATE_LIGHT_IN_8_FRAMES = 3
        case ENV_SDFGI_UPDATE_LIGHT_IN_16_FRAMES = 4
        case ENV_SDFGI_UPDATE_LIGHT_MAX = 5
    }
    public enum SubSurfaceScatteringQuality : Int32 {
        case SUB_SURFACE_SCATTERING_QUALITY_DISABLED = 0
        case SUB_SURFACE_SCATTERING_QUALITY_LOW = 1
        case SUB_SURFACE_SCATTERING_QUALITY_MEDIUM = 2
        case SUB_SURFACE_SCATTERING_QUALITY_HIGH = 3
    }
    public enum DOFBokehShape : Int32 {
        case DOF_BOKEH_BOX = 0
        case DOF_BOKEH_HEXAGON = 1
        case DOF_BOKEH_CIRCLE = 2
    }
    public enum DOFBlurQuality : Int32 {
        case DOF_BLUR_QUALITY_VERY_LOW = 0
        case DOF_BLUR_QUALITY_LOW = 1
        case DOF_BLUR_QUALITY_MEDIUM = 2
        case DOF_BLUR_QUALITY_HIGH = 3
    }
    public enum InstanceType : Int32 {
        case INSTANCE_NONE = 0
        case INSTANCE_MESH = 1
        case INSTANCE_MULTIMESH = 2
        case INSTANCE_PARTICLES = 3
        case INSTANCE_PARTICLES_COLLISION = 4
        case INSTANCE_LIGHT = 5
        case INSTANCE_REFLECTION_PROBE = 6
        case INSTANCE_DECAL = 7
        case INSTANCE_VOXEL_GI = 8
        case INSTANCE_LIGHTMAP = 9
        case INSTANCE_OCCLUDER = 10
        case INSTANCE_VISIBLITY_NOTIFIER = 11
        case INSTANCE_FOG_VOLUME = 12
        case INSTANCE_MAX = 13
        case INSTANCE_GEOMETRY_MASK = 14
    }
    public enum InstanceFlags : Int32 {
        case INSTANCE_FLAG_USE_BAKED_LIGHT = 0
        case INSTANCE_FLAG_USE_DYNAMIC_GI = 1
        case INSTANCE_FLAG_DRAW_NEXT_FRAME_IF_VISIBLE = 2
        case INSTANCE_FLAG_IGNORE_OCCLUSION_CULLING = 3
        case INSTANCE_FLAG_MAX = 4
    }
    public enum ShadowCastingSetting : Int32 {
        case SHADOW_CASTING_SETTING_OFF = 0
        case SHADOW_CASTING_SETTING_ON = 1
        case SHADOW_CASTING_SETTING_DOUBLE_SIDED = 2
        case SHADOW_CASTING_SETTING_SHADOWS_ONLY = 3
    }
    public enum VisibilityRangeFadeMode : Int32 {
        case VISIBILITY_RANGE_FADE_DISABLED = 0
        case VISIBILITY_RANGE_FADE_SELF = 1
        case VISIBILITY_RANGE_FADE_DEPENDENCIES = 2
    }
    public enum BakeChannels : Int32 {
        case BAKE_CHANNEL_ALBEDO_ALPHA = 0
        case BAKE_CHANNEL_NORMAL = 1
        case BAKE_CHANNEL_ORM = 2
        case BAKE_CHANNEL_EMISSION = 3
    }
    public enum CanvasTextureChannel : Int32 {
        case CANVAS_TEXTURE_CHANNEL_DIFFUSE = 0
        case CANVAS_TEXTURE_CHANNEL_NORMAL = 1
        case CANVAS_TEXTURE_CHANNEL_SPECULAR = 2
    }
    public enum NinePatchAxisMode : Int32 {
        case NINE_PATCH_STRETCH = 0
        case NINE_PATCH_TILE = 1
        case NINE_PATCH_TILE_FIT = 2
    }
    public enum CanvasItemTextureFilter : Int32 {
        case CANVAS_ITEM_TEXTURE_FILTER_DEFAULT = 0
        case CANVAS_ITEM_TEXTURE_FILTER_NEAREST = 1
        case CANVAS_ITEM_TEXTURE_FILTER_LINEAR = 2
        case CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS = 3
        case CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS = 4
        case CANVAS_ITEM_TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC = 5
        case CANVAS_ITEM_TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC = 6
        case CANVAS_ITEM_TEXTURE_FILTER_MAX = 7
    }
    public enum CanvasItemTextureRepeat : Int32 {
        case CANVAS_ITEM_TEXTURE_REPEAT_DEFAULT = 0
        case CANVAS_ITEM_TEXTURE_REPEAT_DISABLED = 1
        case CANVAS_ITEM_TEXTURE_REPEAT_ENABLED = 2
        case CANVAS_ITEM_TEXTURE_REPEAT_MIRROR = 3
        case CANVAS_ITEM_TEXTURE_REPEAT_MAX = 4
    }
    public enum CanvasGroupMode : Int32 {
        case CANVAS_GROUP_MODE_DISABLED = 0
        case CANVAS_GROUP_MODE_CLIP_ONLY = 1
        case CANVAS_GROUP_MODE_CLIP_AND_DRAW = 2
        case CANVAS_GROUP_MODE_TRANSPARENT = 3
    }
    public enum CanvasLightMode : Int32 {
        case CANVAS_LIGHT_MODE_POINT = 0
        case CANVAS_LIGHT_MODE_DIRECTIONAL = 1
    }
    public enum CanvasLightBlendMode : Int32 {
        case CANVAS_LIGHT_BLEND_MODE_ADD = 0
        case CANVAS_LIGHT_BLEND_MODE_SUB = 1
        case CANVAS_LIGHT_BLEND_MODE_MIX = 2
    }
    public enum CanvasLightShadowFilter : Int32 {
        case CANVAS_LIGHT_FILTER_NONE = 0
        case CANVAS_LIGHT_FILTER_PCF5 = 1
        case CANVAS_LIGHT_FILTER_PCF13 = 2
        case CANVAS_LIGHT_FILTER_MAX = 3
    }
    public enum CanvasOccluderPolygonCullMode : Int32 {
        case CANVAS_OCCLUDER_POLYGON_CULL_DISABLED = 0
        case CANVAS_OCCLUDER_POLYGON_CULL_CLOCKWISE = 1
        case CANVAS_OCCLUDER_POLYGON_CULL_COUNTER_CLOCKWISE = 2
    }
    public enum GlobalShaderParameterType : Int32 {
        case GLOBAL_VAR_TYPE_BOOL = 0
        case GLOBAL_VAR_TYPE_BVEC2 = 1
        case GLOBAL_VAR_TYPE_BVEC3 = 2
        case GLOBAL_VAR_TYPE_BVEC4 = 3
        case GLOBAL_VAR_TYPE_INT = 4
        case GLOBAL_VAR_TYPE_IVEC2 = 5
        case GLOBAL_VAR_TYPE_IVEC3 = 6
        case GLOBAL_VAR_TYPE_IVEC4 = 7
        case GLOBAL_VAR_TYPE_RECT2I = 8
        case GLOBAL_VAR_TYPE_UINT = 9
        case GLOBAL_VAR_TYPE_UVEC2 = 10
        case GLOBAL_VAR_TYPE_UVEC3 = 11
        case GLOBAL_VAR_TYPE_UVEC4 = 12
        case GLOBAL_VAR_TYPE_FLOAT = 13
        case GLOBAL_VAR_TYPE_VEC2 = 14
        case GLOBAL_VAR_TYPE_VEC3 = 15
        case GLOBAL_VAR_TYPE_VEC4 = 16
        case GLOBAL_VAR_TYPE_COLOR = 17
        case GLOBAL_VAR_TYPE_RECT2 = 18
        case GLOBAL_VAR_TYPE_MAT2 = 19
        case GLOBAL_VAR_TYPE_MAT3 = 20
        case GLOBAL_VAR_TYPE_MAT4 = 21
        case GLOBAL_VAR_TYPE_TRANSFORM_2D = 22
        case GLOBAL_VAR_TYPE_TRANSFORM = 23
        case GLOBAL_VAR_TYPE_SAMPLER2D = 24
        case GLOBAL_VAR_TYPE_SAMPLER2DARRAY = 25
        case GLOBAL_VAR_TYPE_SAMPLER3D = 26
        case GLOBAL_VAR_TYPE_SAMPLERCUBE = 27
        case GLOBAL_VAR_TYPE_MAX = 28
    }
    public enum RenderingInfo : Int32 {
        case RENDERING_INFO_TOTAL_OBJECTS_IN_FRAME = 0
        case RENDERING_INFO_TOTAL_PRIMITIVES_IN_FRAME = 1
        case RENDERING_INFO_TOTAL_DRAW_CALLS_IN_FRAME = 2
        case RENDERING_INFO_TEXTURE_MEM_USED = 3
        case RENDERING_INFO_BUFFER_MEM_USED = 4
        case RENDERING_INFO_VIDEO_MEM_USED = 5
    }
    public enum Features : Int32 {
        case FEATURE_SHADERS = 0
        case FEATURE_MULTITHREADED = 1
    }

    public override class var __godot_name: StringName { __godot_name_RenderingServer }

    static var _method_texture_2d_create_2010018390: GDExtensionMethodBindPtr! = nil
    static var _method_texture_2d_layered_create_913689023: GDExtensionMethodBindPtr! = nil
    static var _method_texture_3d_create_4036838706: GDExtensionMethodBindPtr! = nil
    static var _method_texture_proxy_create_41030802: GDExtensionMethodBindPtr! = nil
    static var _method_texture_2d_update_999539803: GDExtensionMethodBindPtr! = nil
    static var _method_texture_3d_update_684822712: GDExtensionMethodBindPtr! = nil
    static var _method_texture_proxy_update_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_texture_2d_placeholder_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_texture_2d_layered_placeholder_create_1394585590: GDExtensionMethodBindPtr! = nil
    static var _method_texture_3d_placeholder_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_texture_2d_get_4206205781: GDExtensionMethodBindPtr! = nil
    static var _method_texture_2d_layer_get_2705440895: GDExtensionMethodBindPtr! = nil
    static var _method_texture_3d_get_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_texture_replace_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_texture_set_size_override_4288446313: GDExtensionMethodBindPtr! = nil
    static var _method_texture_set_path_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_texture_get_path_642473191: GDExtensionMethodBindPtr! = nil
    static var _method_texture_set_force_redraw_if_visible_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_texture_get_rd_texture_2790148051: GDExtensionMethodBindPtr! = nil
    static var _method_shader_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_shader_set_code_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_shader_set_path_hint_2726140452: GDExtensionMethodBindPtr! = nil
    static var _method_shader_get_code_642473191: GDExtensionMethodBindPtr! = nil
    static var _method_get_shader_parameter_list_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_shader_get_parameter_default_2621281810: GDExtensionMethodBindPtr! = nil
    static var _method_shader_set_default_texture_parameter_3864903085: GDExtensionMethodBindPtr! = nil
    static var _method_shader_get_default_texture_parameter_2523186822: GDExtensionMethodBindPtr! = nil
    static var _method_material_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_material_set_shader_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_material_set_param_3477296213: GDExtensionMethodBindPtr! = nil
    static var _method_material_get_param_2621281810: GDExtensionMethodBindPtr! = nil
    static var _method_material_set_render_priority_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_material_set_next_pass_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_create_from_surfaces_4007581507: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_format_offset_2981368685: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_format_vertex_stride_3188363337: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_format_attribute_stride_3188363337: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_format_skin_stride_3188363337: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_add_surface_1217542888: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_add_surface_from_arrays_1247008646: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_get_blend_shape_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_set_blend_shape_mode_1294662092: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_get_blend_shape_mode_4282291819: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_set_material_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_material_1066463050: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_get_surface_186674697: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_arrays_1778388067: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_get_blend_shape_arrays_1778388067: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_get_surface_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_set_custom_aabb_3696536120: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_get_custom_aabb_974181306: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_clear_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_update_vertex_region_2900195149: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_update_attribute_region_2900195149: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_surface_update_skin_region_2900195149: GDExtensionMethodBindPtr! = nil
    static var _method_mesh_set_shadow_mesh_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_allocate_data_283685892: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_get_instance_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_set_mesh_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_set_transform_675327471: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_set_transform_2d_736082694: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_set_color_176975443: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_set_custom_data_176975443: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_get_mesh_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_get_aabb_974181306: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_get_transform_1050775521: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_get_transform_2d_1324854622: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_get_color_2946315076: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_instance_get_custom_data_2946315076: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_set_visible_instances_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_get_visible_instances_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_set_buffer_2960552364: GDExtensionMethodBindPtr! = nil
    static var _method_multimesh_get_buffer_3964669176: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_allocate_data_1904426712: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_get_bone_count_2198884583: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_bone_set_transform_675327471: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_bone_get_transform_1050775521: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_bone_set_transform_2d_736082694: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_bone_get_transform_2d_1324854622: GDExtensionMethodBindPtr! = nil
    static var _method_skeleton_set_base_transform_2d_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_directional_light_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_omni_light_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_spot_light_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_color_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_param_501936875: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_shadow_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_projector_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_negative_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_distance_fade_1622292572: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_reverse_cull_face_mode_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_bake_mode_1048525260: GDExtensionMethodBindPtr! = nil
    static var _method_light_set_max_sdfgi_cascade_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_light_omni_set_shadow_mode_2552677200: GDExtensionMethodBindPtr! = nil
    static var _method_light_directional_set_shadow_mode_380462970: GDExtensionMethodBindPtr! = nil
    static var _method_light_directional_set_blend_splits_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_light_directional_set_sky_mode_2559740754: GDExtensionMethodBindPtr! = nil
    static var _method_light_projectors_set_filter_43944325: GDExtensionMethodBindPtr! = nil
    static var _method_positional_soft_shadow_filter_set_quality_3613045266: GDExtensionMethodBindPtr! = nil
    static var _method_directional_soft_shadow_filter_set_quality_3613045266: GDExtensionMethodBindPtr! = nil
    static var _method_directional_shadow_atlas_set_size_300928843: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_update_mode_3853670147: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_intensity_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_ambient_mode_184163074: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_ambient_color_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_ambient_energy_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_max_distance_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_size_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_origin_offset_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_as_interior_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_enable_box_projection_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_enable_shadows_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_resolution_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_reflection_probe_set_mesh_lod_threshold_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_decal_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_size_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_texture_3953344054: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_emission_energy_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_albedo_mix_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_modulate_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_distance_fade_2972769666: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_fade_2513314492: GDExtensionMethodBindPtr! = nil
    static var _method_decal_set_normal_fade_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_decals_set_filter_3519875702: GDExtensionMethodBindPtr! = nil
    static var _method_gi_set_use_half_resolution_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_allocate_data_4108223027: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_get_octree_size_2607699645: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_get_octree_cells_3348040486: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_get_data_cells_3348040486: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_get_distance_field_3348040486: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_get_level_counts_788230395: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_get_to_cell_xform_1128465797: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_dynamic_range_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_propagation_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_energy_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_baked_exposure_normalization_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_bias_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_normal_bias_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_interior_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_use_two_bounces_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_voxel_gi_set_quality_1538689978: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_set_textures_2646464759: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_set_probe_bounds_3696536120: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_set_probe_interior_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_set_probe_capture_data_3217845880: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_get_probe_capture_points_808965560: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_get_probe_capture_sh_1569415609: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_get_probe_capture_tetrahedra_788230395: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_get_probe_capture_bsp_tree_788230395: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_set_baked_exposure_normalization_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_lightmap_set_probe_capture_update_speed_373806689: GDExtensionMethodBindPtr! = nil
    static var _method_particles_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_mode_3492270028: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_emitting_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_particles_get_emitting_3521089500: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_amount_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_lifetime_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_one_shot_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_pre_process_time_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_explosiveness_ratio_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_randomness_ratio_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_custom_aabb_3696536120: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_speed_scale_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_use_local_coordinates_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_process_material_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_fixed_fps_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_interpolate_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_fractional_delta_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_collision_base_size_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_transform_align_3264971368: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_trails_2010054925: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_trail_bind_poses_684822712: GDExtensionMethodBindPtr! = nil
    static var _method_particles_is_inactive_3521089500: GDExtensionMethodBindPtr! = nil
    static var _method_particles_request_process_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_particles_restart_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_subemitter_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_particles_emit_4043136117: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_draw_order_935028487: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_draw_passes_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_draw_pass_mesh_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_particles_get_current_aabb_3952830260: GDExtensionMethodBindPtr! = nil
    static var _method_particles_set_emission_transform_3935195649: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_collision_type_1497044930: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_sphere_radius_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_box_extents_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_attractor_strength_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_attractor_directionality_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_attractor_attenuation_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_field_texture_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_height_field_update_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_particles_collision_set_height_field_resolution_962977297: GDExtensionMethodBindPtr! = nil
    static var _method_fog_volume_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_fog_volume_set_shape_3818703106: GDExtensionMethodBindPtr! = nil
    static var _method_fog_volume_set_size_3227306858: GDExtensionMethodBindPtr! = nil
    static var _method_fog_volume_set_material_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_visibility_notifier_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_visibility_notifier_set_aabb_3696536120: GDExtensionMethodBindPtr! = nil
    static var _method_visibility_notifier_set_callbacks_2689735388: GDExtensionMethodBindPtr! = nil
    static var _method_occluder_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_occluder_set_mesh_3854404263: GDExtensionMethodBindPtr! = nil
    static var _method_camera_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_perspective_157498339: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_orthogonal_157498339: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_frustum_1889878953: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_transform_3935195649: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_environment_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_camera_attributes_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_camera_set_use_vertical_aspect_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_use_xr_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_size_4288446313: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_active_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_parent_viewport_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_attach_to_screen_1278520651: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_render_direct_to_screen_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_canvas_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_scaling_3d_mode_2386524376: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_scaling_3d_scale_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_fsr_sharpness_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_texture_mipmap_bias_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_update_mode_3161116010: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_clear_mode_3628367896: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_get_texture_3814569979: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_disable_3d_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_disable_2d_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_environment_mode_2196892182: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_attach_camera_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_scenario_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_attach_canvas_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_remove_canvas_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_snap_2d_transforms_to_pixel_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_snap_2d_vertices_to_pixel_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_default_canvas_item_texture_filter_1155129294: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_default_canvas_item_texture_repeat_1652956681: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_canvas_transform_3608606053: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_canvas_stacking_3713930247: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_transparent_background_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_global_canvas_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_sdf_oversize_and_scale_1329198632: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_positional_shadow_atlas_size_1904426712: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_positional_shadow_atlas_quadrant_subdivision_4288446313: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_msaa_3d_3764433340: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_msaa_2d_3764433340: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_screen_space_aa_1447279591: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_use_taa_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_use_debanding_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_use_occlusion_culling_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_occlusion_rays_per_thread_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_occlusion_culling_build_quality_2069725696: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_get_render_info_2041262392: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_debug_draw_2089420930: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_measure_render_time_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_get_measured_render_time_cpu_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_get_measured_render_time_gpu_866169185: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_vrs_mode_398809874: GDExtensionMethodBindPtr! = nil
    static var _method_viewport_set_vrs_texture_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_sky_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_sky_set_radiance_size_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_sky_set_mode_3279019937: GDExtensionMethodBindPtr! = nil
    static var _method_sky_set_material_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_sky_bake_panorama_3875285818: GDExtensionMethodBindPtr! = nil
    static var _method_environment_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_background_3937328877: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sky_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sky_custom_fov_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sky_orientation_1735850857: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_bg_color_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_bg_energy_2513314492: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_canvas_max_layer_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_ambient_light_362573166: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_glow_2421724940: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_tonemap_2914312638: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_adjustment_876799838: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_ssr_3607294374: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_ssao_3994732740: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_fog_2793577733: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sdfgi_3519144388: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_volumetric_fog_1553633833: GDExtensionMethodBindPtr! = nil
    static var _method_environment_glow_set_use_bicubic_upscale_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_ssr_roughness_quality_1190026788: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_ssao_quality_189753569: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_ssil_quality_1713836683: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sdfgi_ray_count_340137951: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sdfgi_frames_to_converge_2182444374: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_sdfgi_frames_to_update_light_1251144068: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_volumetric_fog_volume_size_3937882851: GDExtensionMethodBindPtr! = nil
    static var _method_environment_set_volumetric_fog_filter_active_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_environment_bake_panorama_2452908646: GDExtensionMethodBindPtr! = nil
    static var _method_screen_space_roughness_limiter_set_active_916716790: GDExtensionMethodBindPtr! = nil
    static var _method_sub_surface_scattering_set_quality_64571803: GDExtensionMethodBindPtr! = nil
    static var _method_sub_surface_scattering_set_scale_1017552074: GDExtensionMethodBindPtr! = nil
    static var _method_camera_attributes_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_camera_attributes_set_dof_blur_quality_2220136795: GDExtensionMethodBindPtr! = nil
    static var _method_camera_attributes_set_dof_blur_bokeh_shape_1205058394: GDExtensionMethodBindPtr! = nil
    static var _method_camera_attributes_set_dof_blur_316272616: GDExtensionMethodBindPtr! = nil
    static var _method_camera_attributes_set_exposure_2513314492: GDExtensionMethodBindPtr! = nil
    static var _method_camera_attributes_set_auto_exposure_4266986332: GDExtensionMethodBindPtr! = nil
    static var _method_scenario_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_scenario_set_environment_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_scenario_set_fallback_environment_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_scenario_set_camera_attributes_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_create2_746547085: GDExtensionMethodBindPtr! = nil
    static var _method_instance_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_base_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_scenario_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_layer_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_pivot_data_1280615259: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_transform_3935195649: GDExtensionMethodBindPtr! = nil
    static var _method_instance_attach_object_instance_id_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_blend_shape_weight_1892459533: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_surface_override_material_2310537182: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_visible_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_transparency_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_custom_aabb_3696536120: GDExtensionMethodBindPtr! = nil
    static var _method_instance_attach_skeleton_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_extra_visibility_margin_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_visibility_parent_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_set_ignore_culling_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_flag_1014989537: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_cast_shadows_setting_3768836020: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_material_override_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_material_overlay_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_visibility_range_4263925858: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_lightmap_536974962: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_lod_bias_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_set_shader_parameter_3477296213: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_get_shader_parameter_2621281810: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_get_shader_parameter_default_value_2621281810: GDExtensionMethodBindPtr! = nil
    static var _method_instance_geometry_get_shader_parameter_list_2684255073: GDExtensionMethodBindPtr! = nil
    static var _method_instances_cull_aabb_2031554939: GDExtensionMethodBindPtr! = nil
    static var _method_instances_cull_ray_3388524336: GDExtensionMethodBindPtr! = nil
    static var _method_instances_cull_convex_3690700105: GDExtensionMethodBindPtr! = nil
    static var _method_bake_render_uv2_1904608558: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_set_item_mirroring_2343975398: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_set_modulate_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_set_disable_scale_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_texture_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_texture_set_channel_3822119138: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_texture_set_shading_parameters_2124967469: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_texture_set_texture_filter_1155129294: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_texture_set_texture_repeat_1652956681: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_parent_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_default_texture_filter_1155129294: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_default_texture_repeat_1652956681: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_visible_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_light_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_visibility_layer_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_clip_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_distance_field_mode_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_custom_rect_2180266943: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_modulate_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_self_modulate_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_draw_behind_parent_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_line_2843922985: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_polyline_3438017257: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_rect_934531857: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_circle_2439351960: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_texture_rect_3205360868: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_msdf_texture_rect_region_349157222: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_lcd_texture_rect_region_359793297: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_texture_rect_region_2782979504: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_nine_patch_904428547: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_primitive_3731601077: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_polygon_2907936855: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_triangle_array_749685193: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_mesh_3548053052: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_multimesh_1541595251: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_particles_2575754278: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_clip_ignore_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_add_animation_slice_4107531031: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_sort_children_by_y_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_z_index_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_z_as_relative_to_parent_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_copy_to_backbuffer_2429202503: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_clear_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_draw_index_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_material_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_use_parent_material_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_visibility_notifier_3568945579: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_item_set_canvas_group_mode_1568036344: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_attach_to_canvas_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_enabled_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_texture_scale_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_texture_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_texture_offset_3201125042: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_color_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_height_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_energy_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_z_range_4288446313: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_layer_range_4288446313: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_item_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_item_shadow_cull_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_mode_2957564891: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_shadow_enabled_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_shadow_filter_393119659: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_shadow_color_2948539648: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_set_shadow_smooth_1794382983: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_attach_to_canvas_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_set_enabled_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_set_polygon_395945892: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_set_as_sdf_collision_1265174801: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_set_transform_1246044741: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_light_occluder_set_light_mask_3411492887: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_occluder_polygon_create_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_occluder_polygon_set_shape_2103882027: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_occluder_polygon_set_cull_mode_1839404663: GDExtensionMethodBindPtr! = nil
    static var _method_canvas_set_shadow_texture_size_1286410249: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_add_463390080: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_remove_3304788590: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_get_list_1139954409: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_set_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_set_override_3776071444: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_get_2760726917: GDExtensionMethodBindPtr! = nil
    static var _method_global_shader_parameter_get_type_1601414142: GDExtensionMethodBindPtr! = nil
    static var _method_free_rid_2722037293: GDExtensionMethodBindPtr! = nil
    static var _method_request_frame_drawn_callback_1611583062: GDExtensionMethodBindPtr! = nil
    static var _method_has_changed_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_get_rendering_info_3763192241: GDExtensionMethodBindPtr! = nil
    static var _method_get_video_adapter_name_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_video_adapter_vendor_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_get_video_adapter_type_3099547011: GDExtensionMethodBindPtr! = nil
    static var _method_get_video_adapter_api_version_201670096: GDExtensionMethodBindPtr! = nil
    static var _method_make_sphere_mesh_2251015897: GDExtensionMethodBindPtr! = nil
    static var _method_get_test_cube_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_get_test_texture_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_get_white_texture_529393457: GDExtensionMethodBindPtr! = nil
    static var _method_set_boot_image_2244367877: GDExtensionMethodBindPtr! = nil
    static var _method_get_default_clear_color_3200896285: GDExtensionMethodBindPtr! = nil
    static var _method_set_default_clear_color_2920490490: GDExtensionMethodBindPtr! = nil
    static var _method_has_feature_598462696: GDExtensionMethodBindPtr! = nil
    static var _method_has_os_feature_3927539163: GDExtensionMethodBindPtr! = nil
    static var _method_set_debug_generate_wireframes_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_is_render_loop_enabled_36873697: GDExtensionMethodBindPtr! = nil
    static var _method_set_render_loop_enabled_2586408642: GDExtensionMethodBindPtr! = nil
    static var _method_get_frame_setup_time_cpu_1740695150: GDExtensionMethodBindPtr! = nil
    static var _method_force_sync_3218959716: GDExtensionMethodBindPtr! = nil
    static var _method_force_draw_899045543: GDExtensionMethodBindPtr! = nil
    static var _method_get_rendering_device_1405107940: GDExtensionMethodBindPtr! = nil
    static var _method_create_local_rendering_device_1405107940: GDExtensionMethodBindPtr! = nil
    
    public override class func initialize_class() {
        __godot_name_RenderingServer = StringName(from: "RenderingServer")

        let _method_texture_2d_create_2010018390_name = StringName(from: "texture_2d_create")
        self._method_texture_2d_create_2010018390 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_create_2010018390_name._native_ptr(), 2010018390)
        assert(RenderingServer._method_texture_2d_create_2010018390 != nil)
        let _method_texture_2d_layered_create_913689023_name = StringName(from: "texture_2d_layered_create")
        self._method_texture_2d_layered_create_913689023 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_layered_create_913689023_name._native_ptr(), 913689023)
        assert(RenderingServer._method_texture_2d_layered_create_913689023 != nil)
        let _method_texture_3d_create_4036838706_name = StringName(from: "texture_3d_create")
        self._method_texture_3d_create_4036838706 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_3d_create_4036838706_name._native_ptr(), 4036838706)
        assert(RenderingServer._method_texture_3d_create_4036838706 != nil)
        let _method_texture_proxy_create_41030802_name = StringName(from: "texture_proxy_create")
        self._method_texture_proxy_create_41030802 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_proxy_create_41030802_name._native_ptr(), 41030802)
        assert(RenderingServer._method_texture_proxy_create_41030802 != nil)
        let _method_texture_2d_update_999539803_name = StringName(from: "texture_2d_update")
        self._method_texture_2d_update_999539803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_update_999539803_name._native_ptr(), 999539803)
        assert(RenderingServer._method_texture_2d_update_999539803 != nil)
        let _method_texture_3d_update_684822712_name = StringName(from: "texture_3d_update")
        self._method_texture_3d_update_684822712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_3d_update_684822712_name._native_ptr(), 684822712)
        assert(RenderingServer._method_texture_3d_update_684822712 != nil)
        let _method_texture_proxy_update_395945892_name = StringName(from: "texture_proxy_update")
        self._method_texture_proxy_update_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_proxy_update_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_texture_proxy_update_395945892 != nil)
        let _method_texture_2d_placeholder_create_529393457_name = StringName(from: "texture_2d_placeholder_create")
        self._method_texture_2d_placeholder_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_placeholder_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_texture_2d_placeholder_create_529393457 != nil)
        let _method_texture_2d_layered_placeholder_create_1394585590_name = StringName(from: "texture_2d_layered_placeholder_create")
        self._method_texture_2d_layered_placeholder_create_1394585590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_layered_placeholder_create_1394585590_name._native_ptr(), 1394585590)
        assert(RenderingServer._method_texture_2d_layered_placeholder_create_1394585590 != nil)
        let _method_texture_3d_placeholder_create_529393457_name = StringName(from: "texture_3d_placeholder_create")
        self._method_texture_3d_placeholder_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_3d_placeholder_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_texture_3d_placeholder_create_529393457 != nil)
        let _method_texture_2d_get_4206205781_name = StringName(from: "texture_2d_get")
        self._method_texture_2d_get_4206205781 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_get_4206205781_name._native_ptr(), 4206205781)
        assert(RenderingServer._method_texture_2d_get_4206205781 != nil)
        let _method_texture_2d_layer_get_2705440895_name = StringName(from: "texture_2d_layer_get")
        self._method_texture_2d_layer_get_2705440895 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_2d_layer_get_2705440895_name._native_ptr(), 2705440895)
        assert(RenderingServer._method_texture_2d_layer_get_2705440895 != nil)
        let _method_texture_3d_get_2684255073_name = StringName(from: "texture_3d_get")
        self._method_texture_3d_get_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_3d_get_2684255073_name._native_ptr(), 2684255073)
        assert(RenderingServer._method_texture_3d_get_2684255073 != nil)
        let _method_texture_replace_395945892_name = StringName(from: "texture_replace")
        self._method_texture_replace_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_replace_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_texture_replace_395945892 != nil)
        let _method_texture_set_size_override_4288446313_name = StringName(from: "texture_set_size_override")
        self._method_texture_set_size_override_4288446313 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_set_size_override_4288446313_name._native_ptr(), 4288446313)
        assert(RenderingServer._method_texture_set_size_override_4288446313 != nil)
        let _method_texture_set_path_2726140452_name = StringName(from: "texture_set_path")
        self._method_texture_set_path_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_set_path_2726140452_name._native_ptr(), 2726140452)
        assert(RenderingServer._method_texture_set_path_2726140452 != nil)
        let _method_texture_get_path_642473191_name = StringName(from: "texture_get_path")
        self._method_texture_get_path_642473191 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_get_path_642473191_name._native_ptr(), 642473191)
        assert(RenderingServer._method_texture_get_path_642473191 != nil)
        let _method_texture_set_force_redraw_if_visible_1265174801_name = StringName(from: "texture_set_force_redraw_if_visible")
        self._method_texture_set_force_redraw_if_visible_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_set_force_redraw_if_visible_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_texture_set_force_redraw_if_visible_1265174801 != nil)
        let _method_texture_get_rd_texture_2790148051_name = StringName(from: "texture_get_rd_texture")
        self._method_texture_get_rd_texture_2790148051 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_texture_get_rd_texture_2790148051_name._native_ptr(), 2790148051)
        assert(RenderingServer._method_texture_get_rd_texture_2790148051 != nil)
        let _method_shader_create_529393457_name = StringName(from: "shader_create")
        self._method_shader_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_shader_create_529393457 != nil)
        let _method_shader_set_code_2726140452_name = StringName(from: "shader_set_code")
        self._method_shader_set_code_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_set_code_2726140452_name._native_ptr(), 2726140452)
        assert(RenderingServer._method_shader_set_code_2726140452 != nil)
        let _method_shader_set_path_hint_2726140452_name = StringName(from: "shader_set_path_hint")
        self._method_shader_set_path_hint_2726140452 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_set_path_hint_2726140452_name._native_ptr(), 2726140452)
        assert(RenderingServer._method_shader_set_path_hint_2726140452 != nil)
        let _method_shader_get_code_642473191_name = StringName(from: "shader_get_code")
        self._method_shader_get_code_642473191 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_get_code_642473191_name._native_ptr(), 642473191)
        assert(RenderingServer._method_shader_get_code_642473191 != nil)
        let _method_get_shader_parameter_list_2684255073_name = StringName(from: "get_shader_parameter_list")
        self._method_get_shader_parameter_list_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_shader_parameter_list_2684255073_name._native_ptr(), 2684255073)
        assert(RenderingServer._method_get_shader_parameter_list_2684255073 != nil)
        let _method_shader_get_parameter_default_2621281810_name = StringName(from: "shader_get_parameter_default")
        self._method_shader_get_parameter_default_2621281810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_get_parameter_default_2621281810_name._native_ptr(), 2621281810)
        assert(RenderingServer._method_shader_get_parameter_default_2621281810 != nil)
        let _method_shader_set_default_texture_parameter_3864903085_name = StringName(from: "shader_set_default_texture_parameter")
        self._method_shader_set_default_texture_parameter_3864903085 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_set_default_texture_parameter_3864903085_name._native_ptr(), 3864903085)
        assert(RenderingServer._method_shader_set_default_texture_parameter_3864903085 != nil)
        let _method_shader_get_default_texture_parameter_2523186822_name = StringName(from: "shader_get_default_texture_parameter")
        self._method_shader_get_default_texture_parameter_2523186822 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_shader_get_default_texture_parameter_2523186822_name._native_ptr(), 2523186822)
        assert(RenderingServer._method_shader_get_default_texture_parameter_2523186822 != nil)
        let _method_material_create_529393457_name = StringName(from: "material_create")
        self._method_material_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_material_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_material_create_529393457 != nil)
        let _method_material_set_shader_395945892_name = StringName(from: "material_set_shader")
        self._method_material_set_shader_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_material_set_shader_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_material_set_shader_395945892 != nil)
        let _method_material_set_param_3477296213_name = StringName(from: "material_set_param")
        self._method_material_set_param_3477296213 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_material_set_param_3477296213_name._native_ptr(), 3477296213)
        assert(RenderingServer._method_material_set_param_3477296213 != nil)
        let _method_material_get_param_2621281810_name = StringName(from: "material_get_param")
        self._method_material_get_param_2621281810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_material_get_param_2621281810_name._native_ptr(), 2621281810)
        assert(RenderingServer._method_material_get_param_2621281810 != nil)
        let _method_material_set_render_priority_3411492887_name = StringName(from: "material_set_render_priority")
        self._method_material_set_render_priority_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_material_set_render_priority_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_material_set_render_priority_3411492887 != nil)
        let _method_material_set_next_pass_395945892_name = StringName(from: "material_set_next_pass")
        self._method_material_set_next_pass_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_material_set_next_pass_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_material_set_next_pass_395945892 != nil)
        let _method_mesh_create_from_surfaces_4007581507_name = StringName(from: "mesh_create_from_surfaces")
        self._method_mesh_create_from_surfaces_4007581507 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_create_from_surfaces_4007581507_name._native_ptr(), 4007581507)
        assert(RenderingServer._method_mesh_create_from_surfaces_4007581507 != nil)
        let _method_mesh_create_529393457_name = StringName(from: "mesh_create")
        self._method_mesh_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_mesh_create_529393457 != nil)
        let _method_mesh_surface_get_format_offset_2981368685_name = StringName(from: "mesh_surface_get_format_offset")
        self._method_mesh_surface_get_format_offset_2981368685 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_format_offset_2981368685_name._native_ptr(), 2981368685)
        assert(RenderingServer._method_mesh_surface_get_format_offset_2981368685 != nil)
        let _method_mesh_surface_get_format_vertex_stride_3188363337_name = StringName(from: "mesh_surface_get_format_vertex_stride")
        self._method_mesh_surface_get_format_vertex_stride_3188363337 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_format_vertex_stride_3188363337_name._native_ptr(), 3188363337)
        assert(RenderingServer._method_mesh_surface_get_format_vertex_stride_3188363337 != nil)
        let _method_mesh_surface_get_format_attribute_stride_3188363337_name = StringName(from: "mesh_surface_get_format_attribute_stride")
        self._method_mesh_surface_get_format_attribute_stride_3188363337 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_format_attribute_stride_3188363337_name._native_ptr(), 3188363337)
        assert(RenderingServer._method_mesh_surface_get_format_attribute_stride_3188363337 != nil)
        let _method_mesh_surface_get_format_skin_stride_3188363337_name = StringName(from: "mesh_surface_get_format_skin_stride")
        self._method_mesh_surface_get_format_skin_stride_3188363337 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_format_skin_stride_3188363337_name._native_ptr(), 3188363337)
        assert(RenderingServer._method_mesh_surface_get_format_skin_stride_3188363337 != nil)
        let _method_mesh_add_surface_1217542888_name = StringName(from: "mesh_add_surface")
        self._method_mesh_add_surface_1217542888 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_add_surface_1217542888_name._native_ptr(), 1217542888)
        assert(RenderingServer._method_mesh_add_surface_1217542888 != nil)
        let _method_mesh_add_surface_from_arrays_1247008646_name = StringName(from: "mesh_add_surface_from_arrays")
        self._method_mesh_add_surface_from_arrays_1247008646 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_add_surface_from_arrays_1247008646_name._native_ptr(), 1247008646)
        assert(RenderingServer._method_mesh_add_surface_from_arrays_1247008646 != nil)
        let _method_mesh_get_blend_shape_count_2198884583_name = StringName(from: "mesh_get_blend_shape_count")
        self._method_mesh_get_blend_shape_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_get_blend_shape_count_2198884583_name._native_ptr(), 2198884583)
        assert(RenderingServer._method_mesh_get_blend_shape_count_2198884583 != nil)
        let _method_mesh_set_blend_shape_mode_1294662092_name = StringName(from: "mesh_set_blend_shape_mode")
        self._method_mesh_set_blend_shape_mode_1294662092 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_set_blend_shape_mode_1294662092_name._native_ptr(), 1294662092)
        assert(RenderingServer._method_mesh_set_blend_shape_mode_1294662092 != nil)
        let _method_mesh_get_blend_shape_mode_4282291819_name = StringName(from: "mesh_get_blend_shape_mode")
        self._method_mesh_get_blend_shape_mode_4282291819 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_get_blend_shape_mode_4282291819_name._native_ptr(), 4282291819)
        assert(RenderingServer._method_mesh_get_blend_shape_mode_4282291819 != nil)
        let _method_mesh_surface_set_material_2310537182_name = StringName(from: "mesh_surface_set_material")
        self._method_mesh_surface_set_material_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_set_material_2310537182_name._native_ptr(), 2310537182)
        assert(RenderingServer._method_mesh_surface_set_material_2310537182 != nil)
        let _method_mesh_surface_get_material_1066463050_name = StringName(from: "mesh_surface_get_material")
        self._method_mesh_surface_get_material_1066463050 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_material_1066463050_name._native_ptr(), 1066463050)
        assert(RenderingServer._method_mesh_surface_get_material_1066463050 != nil)
        let _method_mesh_get_surface_186674697_name = StringName(from: "mesh_get_surface")
        self._method_mesh_get_surface_186674697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_get_surface_186674697_name._native_ptr(), 186674697)
        assert(RenderingServer._method_mesh_get_surface_186674697 != nil)
        let _method_mesh_surface_get_arrays_1778388067_name = StringName(from: "mesh_surface_get_arrays")
        self._method_mesh_surface_get_arrays_1778388067 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_arrays_1778388067_name._native_ptr(), 1778388067)
        assert(RenderingServer._method_mesh_surface_get_arrays_1778388067 != nil)
        let _method_mesh_surface_get_blend_shape_arrays_1778388067_name = StringName(from: "mesh_surface_get_blend_shape_arrays")
        self._method_mesh_surface_get_blend_shape_arrays_1778388067 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_get_blend_shape_arrays_1778388067_name._native_ptr(), 1778388067)
        assert(RenderingServer._method_mesh_surface_get_blend_shape_arrays_1778388067 != nil)
        let _method_mesh_get_surface_count_2198884583_name = StringName(from: "mesh_get_surface_count")
        self._method_mesh_get_surface_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_get_surface_count_2198884583_name._native_ptr(), 2198884583)
        assert(RenderingServer._method_mesh_get_surface_count_2198884583 != nil)
        let _method_mesh_set_custom_aabb_3696536120_name = StringName(from: "mesh_set_custom_aabb")
        self._method_mesh_set_custom_aabb_3696536120 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_set_custom_aabb_3696536120_name._native_ptr(), 3696536120)
        assert(RenderingServer._method_mesh_set_custom_aabb_3696536120 != nil)
        let _method_mesh_get_custom_aabb_974181306_name = StringName(from: "mesh_get_custom_aabb")
        self._method_mesh_get_custom_aabb_974181306 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_get_custom_aabb_974181306_name._native_ptr(), 974181306)
        assert(RenderingServer._method_mesh_get_custom_aabb_974181306 != nil)
        let _method_mesh_clear_2722037293_name = StringName(from: "mesh_clear")
        self._method_mesh_clear_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_clear_2722037293_name._native_ptr(), 2722037293)
        assert(RenderingServer._method_mesh_clear_2722037293 != nil)
        let _method_mesh_surface_update_vertex_region_2900195149_name = StringName(from: "mesh_surface_update_vertex_region")
        self._method_mesh_surface_update_vertex_region_2900195149 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_update_vertex_region_2900195149_name._native_ptr(), 2900195149)
        assert(RenderingServer._method_mesh_surface_update_vertex_region_2900195149 != nil)
        let _method_mesh_surface_update_attribute_region_2900195149_name = StringName(from: "mesh_surface_update_attribute_region")
        self._method_mesh_surface_update_attribute_region_2900195149 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_update_attribute_region_2900195149_name._native_ptr(), 2900195149)
        assert(RenderingServer._method_mesh_surface_update_attribute_region_2900195149 != nil)
        let _method_mesh_surface_update_skin_region_2900195149_name = StringName(from: "mesh_surface_update_skin_region")
        self._method_mesh_surface_update_skin_region_2900195149 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_surface_update_skin_region_2900195149_name._native_ptr(), 2900195149)
        assert(RenderingServer._method_mesh_surface_update_skin_region_2900195149 != nil)
        let _method_mesh_set_shadow_mesh_395945892_name = StringName(from: "mesh_set_shadow_mesh")
        self._method_mesh_set_shadow_mesh_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_mesh_set_shadow_mesh_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_mesh_set_shadow_mesh_395945892 != nil)
        let _method_multimesh_create_529393457_name = StringName(from: "multimesh_create")
        self._method_multimesh_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_multimesh_create_529393457 != nil)
        let _method_multimesh_allocate_data_283685892_name = StringName(from: "multimesh_allocate_data")
        self._method_multimesh_allocate_data_283685892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_allocate_data_283685892_name._native_ptr(), 283685892)
        assert(RenderingServer._method_multimesh_allocate_data_283685892 != nil)
        let _method_multimesh_get_instance_count_2198884583_name = StringName(from: "multimesh_get_instance_count")
        self._method_multimesh_get_instance_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_get_instance_count_2198884583_name._native_ptr(), 2198884583)
        assert(RenderingServer._method_multimesh_get_instance_count_2198884583 != nil)
        let _method_multimesh_set_mesh_395945892_name = StringName(from: "multimesh_set_mesh")
        self._method_multimesh_set_mesh_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_set_mesh_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_multimesh_set_mesh_395945892 != nil)
        let _method_multimesh_instance_set_transform_675327471_name = StringName(from: "multimesh_instance_set_transform")
        self._method_multimesh_instance_set_transform_675327471 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_set_transform_675327471_name._native_ptr(), 675327471)
        assert(RenderingServer._method_multimesh_instance_set_transform_675327471 != nil)
        let _method_multimesh_instance_set_transform_2d_736082694_name = StringName(from: "multimesh_instance_set_transform_2d")
        self._method_multimesh_instance_set_transform_2d_736082694 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_set_transform_2d_736082694_name._native_ptr(), 736082694)
        assert(RenderingServer._method_multimesh_instance_set_transform_2d_736082694 != nil)
        let _method_multimesh_instance_set_color_176975443_name = StringName(from: "multimesh_instance_set_color")
        self._method_multimesh_instance_set_color_176975443 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_set_color_176975443_name._native_ptr(), 176975443)
        assert(RenderingServer._method_multimesh_instance_set_color_176975443 != nil)
        let _method_multimesh_instance_set_custom_data_176975443_name = StringName(from: "multimesh_instance_set_custom_data")
        self._method_multimesh_instance_set_custom_data_176975443 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_set_custom_data_176975443_name._native_ptr(), 176975443)
        assert(RenderingServer._method_multimesh_instance_set_custom_data_176975443 != nil)
        let _method_multimesh_get_mesh_3814569979_name = StringName(from: "multimesh_get_mesh")
        self._method_multimesh_get_mesh_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_get_mesh_3814569979_name._native_ptr(), 3814569979)
        assert(RenderingServer._method_multimesh_get_mesh_3814569979 != nil)
        let _method_multimesh_get_aabb_974181306_name = StringName(from: "multimesh_get_aabb")
        self._method_multimesh_get_aabb_974181306 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_get_aabb_974181306_name._native_ptr(), 974181306)
        assert(RenderingServer._method_multimesh_get_aabb_974181306 != nil)
        let _method_multimesh_instance_get_transform_1050775521_name = StringName(from: "multimesh_instance_get_transform")
        self._method_multimesh_instance_get_transform_1050775521 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_get_transform_1050775521_name._native_ptr(), 1050775521)
        assert(RenderingServer._method_multimesh_instance_get_transform_1050775521 != nil)
        let _method_multimesh_instance_get_transform_2d_1324854622_name = StringName(from: "multimesh_instance_get_transform_2d")
        self._method_multimesh_instance_get_transform_2d_1324854622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_get_transform_2d_1324854622_name._native_ptr(), 1324854622)
        assert(RenderingServer._method_multimesh_instance_get_transform_2d_1324854622 != nil)
        let _method_multimesh_instance_get_color_2946315076_name = StringName(from: "multimesh_instance_get_color")
        self._method_multimesh_instance_get_color_2946315076 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_get_color_2946315076_name._native_ptr(), 2946315076)
        assert(RenderingServer._method_multimesh_instance_get_color_2946315076 != nil)
        let _method_multimesh_instance_get_custom_data_2946315076_name = StringName(from: "multimesh_instance_get_custom_data")
        self._method_multimesh_instance_get_custom_data_2946315076 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_instance_get_custom_data_2946315076_name._native_ptr(), 2946315076)
        assert(RenderingServer._method_multimesh_instance_get_custom_data_2946315076 != nil)
        let _method_multimesh_set_visible_instances_3411492887_name = StringName(from: "multimesh_set_visible_instances")
        self._method_multimesh_set_visible_instances_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_set_visible_instances_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_multimesh_set_visible_instances_3411492887 != nil)
        let _method_multimesh_get_visible_instances_2198884583_name = StringName(from: "multimesh_get_visible_instances")
        self._method_multimesh_get_visible_instances_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_get_visible_instances_2198884583_name._native_ptr(), 2198884583)
        assert(RenderingServer._method_multimesh_get_visible_instances_2198884583 != nil)
        let _method_multimesh_set_buffer_2960552364_name = StringName(from: "multimesh_set_buffer")
        self._method_multimesh_set_buffer_2960552364 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_set_buffer_2960552364_name._native_ptr(), 2960552364)
        assert(RenderingServer._method_multimesh_set_buffer_2960552364 != nil)
        let _method_multimesh_get_buffer_3964669176_name = StringName(from: "multimesh_get_buffer")
        self._method_multimesh_get_buffer_3964669176 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_multimesh_get_buffer_3964669176_name._native_ptr(), 3964669176)
        assert(RenderingServer._method_multimesh_get_buffer_3964669176 != nil)
        let _method_skeleton_create_529393457_name = StringName(from: "skeleton_create")
        self._method_skeleton_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_skeleton_create_529393457 != nil)
        let _method_skeleton_allocate_data_1904426712_name = StringName(from: "skeleton_allocate_data")
        self._method_skeleton_allocate_data_1904426712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_allocate_data_1904426712_name._native_ptr(), 1904426712)
        assert(RenderingServer._method_skeleton_allocate_data_1904426712 != nil)
        let _method_skeleton_get_bone_count_2198884583_name = StringName(from: "skeleton_get_bone_count")
        self._method_skeleton_get_bone_count_2198884583 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_get_bone_count_2198884583_name._native_ptr(), 2198884583)
        assert(RenderingServer._method_skeleton_get_bone_count_2198884583 != nil)
        let _method_skeleton_bone_set_transform_675327471_name = StringName(from: "skeleton_bone_set_transform")
        self._method_skeleton_bone_set_transform_675327471 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_bone_set_transform_675327471_name._native_ptr(), 675327471)
        assert(RenderingServer._method_skeleton_bone_set_transform_675327471 != nil)
        let _method_skeleton_bone_get_transform_1050775521_name = StringName(from: "skeleton_bone_get_transform")
        self._method_skeleton_bone_get_transform_1050775521 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_bone_get_transform_1050775521_name._native_ptr(), 1050775521)
        assert(RenderingServer._method_skeleton_bone_get_transform_1050775521 != nil)
        let _method_skeleton_bone_set_transform_2d_736082694_name = StringName(from: "skeleton_bone_set_transform_2d")
        self._method_skeleton_bone_set_transform_2d_736082694 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_bone_set_transform_2d_736082694_name._native_ptr(), 736082694)
        assert(RenderingServer._method_skeleton_bone_set_transform_2d_736082694 != nil)
        let _method_skeleton_bone_get_transform_2d_1324854622_name = StringName(from: "skeleton_bone_get_transform_2d")
        self._method_skeleton_bone_get_transform_2d_1324854622 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_bone_get_transform_2d_1324854622_name._native_ptr(), 1324854622)
        assert(RenderingServer._method_skeleton_bone_get_transform_2d_1324854622 != nil)
        let _method_skeleton_set_base_transform_2d_1246044741_name = StringName(from: "skeleton_set_base_transform_2d")
        self._method_skeleton_set_base_transform_2d_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_skeleton_set_base_transform_2d_1246044741_name._native_ptr(), 1246044741)
        assert(RenderingServer._method_skeleton_set_base_transform_2d_1246044741 != nil)
        let _method_directional_light_create_529393457_name = StringName(from: "directional_light_create")
        self._method_directional_light_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_directional_light_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_directional_light_create_529393457 != nil)
        let _method_omni_light_create_529393457_name = StringName(from: "omni_light_create")
        self._method_omni_light_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_omni_light_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_omni_light_create_529393457 != nil)
        let _method_spot_light_create_529393457_name = StringName(from: "spot_light_create")
        self._method_spot_light_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_spot_light_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_spot_light_create_529393457 != nil)
        let _method_light_set_color_2948539648_name = StringName(from: "light_set_color")
        self._method_light_set_color_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_color_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_light_set_color_2948539648 != nil)
        let _method_light_set_param_501936875_name = StringName(from: "light_set_param")
        self._method_light_set_param_501936875 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_param_501936875_name._native_ptr(), 501936875)
        assert(RenderingServer._method_light_set_param_501936875 != nil)
        let _method_light_set_shadow_1265174801_name = StringName(from: "light_set_shadow")
        self._method_light_set_shadow_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_shadow_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_light_set_shadow_1265174801 != nil)
        let _method_light_set_projector_395945892_name = StringName(from: "light_set_projector")
        self._method_light_set_projector_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_projector_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_light_set_projector_395945892 != nil)
        let _method_light_set_negative_1265174801_name = StringName(from: "light_set_negative")
        self._method_light_set_negative_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_negative_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_light_set_negative_1265174801 != nil)
        let _method_light_set_cull_mask_3411492887_name = StringName(from: "light_set_cull_mask")
        self._method_light_set_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_light_set_cull_mask_3411492887 != nil)
        let _method_light_set_distance_fade_1622292572_name = StringName(from: "light_set_distance_fade")
        self._method_light_set_distance_fade_1622292572 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_distance_fade_1622292572_name._native_ptr(), 1622292572)
        assert(RenderingServer._method_light_set_distance_fade_1622292572 != nil)
        let _method_light_set_reverse_cull_face_mode_1265174801_name = StringName(from: "light_set_reverse_cull_face_mode")
        self._method_light_set_reverse_cull_face_mode_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_reverse_cull_face_mode_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_light_set_reverse_cull_face_mode_1265174801 != nil)
        let _method_light_set_bake_mode_1048525260_name = StringName(from: "light_set_bake_mode")
        self._method_light_set_bake_mode_1048525260 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_bake_mode_1048525260_name._native_ptr(), 1048525260)
        assert(RenderingServer._method_light_set_bake_mode_1048525260 != nil)
        let _method_light_set_max_sdfgi_cascade_3411492887_name = StringName(from: "light_set_max_sdfgi_cascade")
        self._method_light_set_max_sdfgi_cascade_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_set_max_sdfgi_cascade_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_light_set_max_sdfgi_cascade_3411492887 != nil)
        let _method_light_omni_set_shadow_mode_2552677200_name = StringName(from: "light_omni_set_shadow_mode")
        self._method_light_omni_set_shadow_mode_2552677200 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_omni_set_shadow_mode_2552677200_name._native_ptr(), 2552677200)
        assert(RenderingServer._method_light_omni_set_shadow_mode_2552677200 != nil)
        let _method_light_directional_set_shadow_mode_380462970_name = StringName(from: "light_directional_set_shadow_mode")
        self._method_light_directional_set_shadow_mode_380462970 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_directional_set_shadow_mode_380462970_name._native_ptr(), 380462970)
        assert(RenderingServer._method_light_directional_set_shadow_mode_380462970 != nil)
        let _method_light_directional_set_blend_splits_1265174801_name = StringName(from: "light_directional_set_blend_splits")
        self._method_light_directional_set_blend_splits_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_directional_set_blend_splits_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_light_directional_set_blend_splits_1265174801 != nil)
        let _method_light_directional_set_sky_mode_2559740754_name = StringName(from: "light_directional_set_sky_mode")
        self._method_light_directional_set_sky_mode_2559740754 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_directional_set_sky_mode_2559740754_name._native_ptr(), 2559740754)
        assert(RenderingServer._method_light_directional_set_sky_mode_2559740754 != nil)
        let _method_light_projectors_set_filter_43944325_name = StringName(from: "light_projectors_set_filter")
        self._method_light_projectors_set_filter_43944325 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_light_projectors_set_filter_43944325_name._native_ptr(), 43944325)
        assert(RenderingServer._method_light_projectors_set_filter_43944325 != nil)
        let _method_positional_soft_shadow_filter_set_quality_3613045266_name = StringName(from: "positional_soft_shadow_filter_set_quality")
        self._method_positional_soft_shadow_filter_set_quality_3613045266 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_positional_soft_shadow_filter_set_quality_3613045266_name._native_ptr(), 3613045266)
        assert(RenderingServer._method_positional_soft_shadow_filter_set_quality_3613045266 != nil)
        let _method_directional_soft_shadow_filter_set_quality_3613045266_name = StringName(from: "directional_soft_shadow_filter_set_quality")
        self._method_directional_soft_shadow_filter_set_quality_3613045266 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_directional_soft_shadow_filter_set_quality_3613045266_name._native_ptr(), 3613045266)
        assert(RenderingServer._method_directional_soft_shadow_filter_set_quality_3613045266 != nil)
        let _method_directional_shadow_atlas_set_size_300928843_name = StringName(from: "directional_shadow_atlas_set_size")
        self._method_directional_shadow_atlas_set_size_300928843 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_directional_shadow_atlas_set_size_300928843_name._native_ptr(), 300928843)
        assert(RenderingServer._method_directional_shadow_atlas_set_size_300928843 != nil)
        let _method_reflection_probe_create_529393457_name = StringName(from: "reflection_probe_create")
        self._method_reflection_probe_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_reflection_probe_create_529393457 != nil)
        let _method_reflection_probe_set_update_mode_3853670147_name = StringName(from: "reflection_probe_set_update_mode")
        self._method_reflection_probe_set_update_mode_3853670147 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_update_mode_3853670147_name._native_ptr(), 3853670147)
        assert(RenderingServer._method_reflection_probe_set_update_mode_3853670147 != nil)
        let _method_reflection_probe_set_intensity_1794382983_name = StringName(from: "reflection_probe_set_intensity")
        self._method_reflection_probe_set_intensity_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_intensity_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_reflection_probe_set_intensity_1794382983 != nil)
        let _method_reflection_probe_set_ambient_mode_184163074_name = StringName(from: "reflection_probe_set_ambient_mode")
        self._method_reflection_probe_set_ambient_mode_184163074 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_ambient_mode_184163074_name._native_ptr(), 184163074)
        assert(RenderingServer._method_reflection_probe_set_ambient_mode_184163074 != nil)
        let _method_reflection_probe_set_ambient_color_2948539648_name = StringName(from: "reflection_probe_set_ambient_color")
        self._method_reflection_probe_set_ambient_color_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_ambient_color_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_reflection_probe_set_ambient_color_2948539648 != nil)
        let _method_reflection_probe_set_ambient_energy_1794382983_name = StringName(from: "reflection_probe_set_ambient_energy")
        self._method_reflection_probe_set_ambient_energy_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_ambient_energy_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_reflection_probe_set_ambient_energy_1794382983 != nil)
        let _method_reflection_probe_set_max_distance_1794382983_name = StringName(from: "reflection_probe_set_max_distance")
        self._method_reflection_probe_set_max_distance_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_max_distance_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_reflection_probe_set_max_distance_1794382983 != nil)
        let _method_reflection_probe_set_size_3227306858_name = StringName(from: "reflection_probe_set_size")
        self._method_reflection_probe_set_size_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_size_3227306858_name._native_ptr(), 3227306858)
        assert(RenderingServer._method_reflection_probe_set_size_3227306858 != nil)
        let _method_reflection_probe_set_origin_offset_3227306858_name = StringName(from: "reflection_probe_set_origin_offset")
        self._method_reflection_probe_set_origin_offset_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_origin_offset_3227306858_name._native_ptr(), 3227306858)
        assert(RenderingServer._method_reflection_probe_set_origin_offset_3227306858 != nil)
        let _method_reflection_probe_set_as_interior_1265174801_name = StringName(from: "reflection_probe_set_as_interior")
        self._method_reflection_probe_set_as_interior_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_as_interior_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_reflection_probe_set_as_interior_1265174801 != nil)
        let _method_reflection_probe_set_enable_box_projection_1265174801_name = StringName(from: "reflection_probe_set_enable_box_projection")
        self._method_reflection_probe_set_enable_box_projection_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_enable_box_projection_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_reflection_probe_set_enable_box_projection_1265174801 != nil)
        let _method_reflection_probe_set_enable_shadows_1265174801_name = StringName(from: "reflection_probe_set_enable_shadows")
        self._method_reflection_probe_set_enable_shadows_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_enable_shadows_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_reflection_probe_set_enable_shadows_1265174801 != nil)
        let _method_reflection_probe_set_cull_mask_3411492887_name = StringName(from: "reflection_probe_set_cull_mask")
        self._method_reflection_probe_set_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_reflection_probe_set_cull_mask_3411492887 != nil)
        let _method_reflection_probe_set_resolution_3411492887_name = StringName(from: "reflection_probe_set_resolution")
        self._method_reflection_probe_set_resolution_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_resolution_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_reflection_probe_set_resolution_3411492887 != nil)
        let _method_reflection_probe_set_mesh_lod_threshold_1794382983_name = StringName(from: "reflection_probe_set_mesh_lod_threshold")
        self._method_reflection_probe_set_mesh_lod_threshold_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_reflection_probe_set_mesh_lod_threshold_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_reflection_probe_set_mesh_lod_threshold_1794382983 != nil)
        let _method_decal_create_529393457_name = StringName(from: "decal_create")
        self._method_decal_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_decal_create_529393457 != nil)
        let _method_decal_set_size_3227306858_name = StringName(from: "decal_set_size")
        self._method_decal_set_size_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_size_3227306858_name._native_ptr(), 3227306858)
        assert(RenderingServer._method_decal_set_size_3227306858 != nil)
        let _method_decal_set_texture_3953344054_name = StringName(from: "decal_set_texture")
        self._method_decal_set_texture_3953344054 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_texture_3953344054_name._native_ptr(), 3953344054)
        assert(RenderingServer._method_decal_set_texture_3953344054 != nil)
        let _method_decal_set_emission_energy_1794382983_name = StringName(from: "decal_set_emission_energy")
        self._method_decal_set_emission_energy_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_emission_energy_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_decal_set_emission_energy_1794382983 != nil)
        let _method_decal_set_albedo_mix_1794382983_name = StringName(from: "decal_set_albedo_mix")
        self._method_decal_set_albedo_mix_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_albedo_mix_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_decal_set_albedo_mix_1794382983 != nil)
        let _method_decal_set_modulate_2948539648_name = StringName(from: "decal_set_modulate")
        self._method_decal_set_modulate_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_modulate_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_decal_set_modulate_2948539648 != nil)
        let _method_decal_set_cull_mask_3411492887_name = StringName(from: "decal_set_cull_mask")
        self._method_decal_set_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_decal_set_cull_mask_3411492887 != nil)
        let _method_decal_set_distance_fade_2972769666_name = StringName(from: "decal_set_distance_fade")
        self._method_decal_set_distance_fade_2972769666 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_distance_fade_2972769666_name._native_ptr(), 2972769666)
        assert(RenderingServer._method_decal_set_distance_fade_2972769666 != nil)
        let _method_decal_set_fade_2513314492_name = StringName(from: "decal_set_fade")
        self._method_decal_set_fade_2513314492 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_fade_2513314492_name._native_ptr(), 2513314492)
        assert(RenderingServer._method_decal_set_fade_2513314492 != nil)
        let _method_decal_set_normal_fade_1794382983_name = StringName(from: "decal_set_normal_fade")
        self._method_decal_set_normal_fade_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decal_set_normal_fade_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_decal_set_normal_fade_1794382983 != nil)
        let _method_decals_set_filter_3519875702_name = StringName(from: "decals_set_filter")
        self._method_decals_set_filter_3519875702 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_decals_set_filter_3519875702_name._native_ptr(), 3519875702)
        assert(RenderingServer._method_decals_set_filter_3519875702 != nil)
        let _method_gi_set_use_half_resolution_2586408642_name = StringName(from: "gi_set_use_half_resolution")
        self._method_gi_set_use_half_resolution_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_gi_set_use_half_resolution_2586408642_name._native_ptr(), 2586408642)
        assert(RenderingServer._method_gi_set_use_half_resolution_2586408642 != nil)
        let _method_voxel_gi_create_529393457_name = StringName(from: "voxel_gi_create")
        self._method_voxel_gi_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_voxel_gi_create_529393457 != nil)
        let _method_voxel_gi_allocate_data_4108223027_name = StringName(from: "voxel_gi_allocate_data")
        self._method_voxel_gi_allocate_data_4108223027 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_allocate_data_4108223027_name._native_ptr(), 4108223027)
        assert(RenderingServer._method_voxel_gi_allocate_data_4108223027 != nil)
        let _method_voxel_gi_get_octree_size_2607699645_name = StringName(from: "voxel_gi_get_octree_size")
        self._method_voxel_gi_get_octree_size_2607699645 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_get_octree_size_2607699645_name._native_ptr(), 2607699645)
        assert(RenderingServer._method_voxel_gi_get_octree_size_2607699645 != nil)
        let _method_voxel_gi_get_octree_cells_3348040486_name = StringName(from: "voxel_gi_get_octree_cells")
        self._method_voxel_gi_get_octree_cells_3348040486 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_get_octree_cells_3348040486_name._native_ptr(), 3348040486)
        assert(RenderingServer._method_voxel_gi_get_octree_cells_3348040486 != nil)
        let _method_voxel_gi_get_data_cells_3348040486_name = StringName(from: "voxel_gi_get_data_cells")
        self._method_voxel_gi_get_data_cells_3348040486 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_get_data_cells_3348040486_name._native_ptr(), 3348040486)
        assert(RenderingServer._method_voxel_gi_get_data_cells_3348040486 != nil)
        let _method_voxel_gi_get_distance_field_3348040486_name = StringName(from: "voxel_gi_get_distance_field")
        self._method_voxel_gi_get_distance_field_3348040486 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_get_distance_field_3348040486_name._native_ptr(), 3348040486)
        assert(RenderingServer._method_voxel_gi_get_distance_field_3348040486 != nil)
        let _method_voxel_gi_get_level_counts_788230395_name = StringName(from: "voxel_gi_get_level_counts")
        self._method_voxel_gi_get_level_counts_788230395 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_get_level_counts_788230395_name._native_ptr(), 788230395)
        assert(RenderingServer._method_voxel_gi_get_level_counts_788230395 != nil)
        let _method_voxel_gi_get_to_cell_xform_1128465797_name = StringName(from: "voxel_gi_get_to_cell_xform")
        self._method_voxel_gi_get_to_cell_xform_1128465797 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_get_to_cell_xform_1128465797_name._native_ptr(), 1128465797)
        assert(RenderingServer._method_voxel_gi_get_to_cell_xform_1128465797 != nil)
        let _method_voxel_gi_set_dynamic_range_1794382983_name = StringName(from: "voxel_gi_set_dynamic_range")
        self._method_voxel_gi_set_dynamic_range_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_dynamic_range_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_voxel_gi_set_dynamic_range_1794382983 != nil)
        let _method_voxel_gi_set_propagation_1794382983_name = StringName(from: "voxel_gi_set_propagation")
        self._method_voxel_gi_set_propagation_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_propagation_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_voxel_gi_set_propagation_1794382983 != nil)
        let _method_voxel_gi_set_energy_1794382983_name = StringName(from: "voxel_gi_set_energy")
        self._method_voxel_gi_set_energy_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_energy_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_voxel_gi_set_energy_1794382983 != nil)
        let _method_voxel_gi_set_baked_exposure_normalization_1794382983_name = StringName(from: "voxel_gi_set_baked_exposure_normalization")
        self._method_voxel_gi_set_baked_exposure_normalization_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_baked_exposure_normalization_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_voxel_gi_set_baked_exposure_normalization_1794382983 != nil)
        let _method_voxel_gi_set_bias_1794382983_name = StringName(from: "voxel_gi_set_bias")
        self._method_voxel_gi_set_bias_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_bias_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_voxel_gi_set_bias_1794382983 != nil)
        let _method_voxel_gi_set_normal_bias_1794382983_name = StringName(from: "voxel_gi_set_normal_bias")
        self._method_voxel_gi_set_normal_bias_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_normal_bias_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_voxel_gi_set_normal_bias_1794382983 != nil)
        let _method_voxel_gi_set_interior_1265174801_name = StringName(from: "voxel_gi_set_interior")
        self._method_voxel_gi_set_interior_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_interior_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_voxel_gi_set_interior_1265174801 != nil)
        let _method_voxel_gi_set_use_two_bounces_1265174801_name = StringName(from: "voxel_gi_set_use_two_bounces")
        self._method_voxel_gi_set_use_two_bounces_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_use_two_bounces_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_voxel_gi_set_use_two_bounces_1265174801 != nil)
        let _method_voxel_gi_set_quality_1538689978_name = StringName(from: "voxel_gi_set_quality")
        self._method_voxel_gi_set_quality_1538689978 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_voxel_gi_set_quality_1538689978_name._native_ptr(), 1538689978)
        assert(RenderingServer._method_voxel_gi_set_quality_1538689978 != nil)
        let _method_lightmap_create_529393457_name = StringName(from: "lightmap_create")
        self._method_lightmap_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_lightmap_create_529393457 != nil)
        let _method_lightmap_set_textures_2646464759_name = StringName(from: "lightmap_set_textures")
        self._method_lightmap_set_textures_2646464759 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_set_textures_2646464759_name._native_ptr(), 2646464759)
        assert(RenderingServer._method_lightmap_set_textures_2646464759 != nil)
        let _method_lightmap_set_probe_bounds_3696536120_name = StringName(from: "lightmap_set_probe_bounds")
        self._method_lightmap_set_probe_bounds_3696536120 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_set_probe_bounds_3696536120_name._native_ptr(), 3696536120)
        assert(RenderingServer._method_lightmap_set_probe_bounds_3696536120 != nil)
        let _method_lightmap_set_probe_interior_1265174801_name = StringName(from: "lightmap_set_probe_interior")
        self._method_lightmap_set_probe_interior_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_set_probe_interior_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_lightmap_set_probe_interior_1265174801 != nil)
        let _method_lightmap_set_probe_capture_data_3217845880_name = StringName(from: "lightmap_set_probe_capture_data")
        self._method_lightmap_set_probe_capture_data_3217845880 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_set_probe_capture_data_3217845880_name._native_ptr(), 3217845880)
        assert(RenderingServer._method_lightmap_set_probe_capture_data_3217845880 != nil)
        let _method_lightmap_get_probe_capture_points_808965560_name = StringName(from: "lightmap_get_probe_capture_points")
        self._method_lightmap_get_probe_capture_points_808965560 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_get_probe_capture_points_808965560_name._native_ptr(), 808965560)
        assert(RenderingServer._method_lightmap_get_probe_capture_points_808965560 != nil)
        let _method_lightmap_get_probe_capture_sh_1569415609_name = StringName(from: "lightmap_get_probe_capture_sh")
        self._method_lightmap_get_probe_capture_sh_1569415609 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_get_probe_capture_sh_1569415609_name._native_ptr(), 1569415609)
        assert(RenderingServer._method_lightmap_get_probe_capture_sh_1569415609 != nil)
        let _method_lightmap_get_probe_capture_tetrahedra_788230395_name = StringName(from: "lightmap_get_probe_capture_tetrahedra")
        self._method_lightmap_get_probe_capture_tetrahedra_788230395 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_get_probe_capture_tetrahedra_788230395_name._native_ptr(), 788230395)
        assert(RenderingServer._method_lightmap_get_probe_capture_tetrahedra_788230395 != nil)
        let _method_lightmap_get_probe_capture_bsp_tree_788230395_name = StringName(from: "lightmap_get_probe_capture_bsp_tree")
        self._method_lightmap_get_probe_capture_bsp_tree_788230395 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_get_probe_capture_bsp_tree_788230395_name._native_ptr(), 788230395)
        assert(RenderingServer._method_lightmap_get_probe_capture_bsp_tree_788230395 != nil)
        let _method_lightmap_set_baked_exposure_normalization_1794382983_name = StringName(from: "lightmap_set_baked_exposure_normalization")
        self._method_lightmap_set_baked_exposure_normalization_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_set_baked_exposure_normalization_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_lightmap_set_baked_exposure_normalization_1794382983 != nil)
        let _method_lightmap_set_probe_capture_update_speed_373806689_name = StringName(from: "lightmap_set_probe_capture_update_speed")
        self._method_lightmap_set_probe_capture_update_speed_373806689 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_lightmap_set_probe_capture_update_speed_373806689_name._native_ptr(), 373806689)
        assert(RenderingServer._method_lightmap_set_probe_capture_update_speed_373806689 != nil)
        let _method_particles_create_529393457_name = StringName(from: "particles_create")
        self._method_particles_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_particles_create_529393457 != nil)
        let _method_particles_set_mode_3492270028_name = StringName(from: "particles_set_mode")
        self._method_particles_set_mode_3492270028 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_mode_3492270028_name._native_ptr(), 3492270028)
        assert(RenderingServer._method_particles_set_mode_3492270028 != nil)
        let _method_particles_set_emitting_1265174801_name = StringName(from: "particles_set_emitting")
        self._method_particles_set_emitting_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_emitting_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_particles_set_emitting_1265174801 != nil)
        let _method_particles_get_emitting_3521089500_name = StringName(from: "particles_get_emitting")
        self._method_particles_get_emitting_3521089500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_get_emitting_3521089500_name._native_ptr(), 3521089500)
        assert(RenderingServer._method_particles_get_emitting_3521089500 != nil)
        let _method_particles_set_amount_3411492887_name = StringName(from: "particles_set_amount")
        self._method_particles_set_amount_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_amount_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_particles_set_amount_3411492887 != nil)
        let _method_particles_set_lifetime_1794382983_name = StringName(from: "particles_set_lifetime")
        self._method_particles_set_lifetime_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_lifetime_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_set_lifetime_1794382983 != nil)
        let _method_particles_set_one_shot_1265174801_name = StringName(from: "particles_set_one_shot")
        self._method_particles_set_one_shot_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_one_shot_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_particles_set_one_shot_1265174801 != nil)
        let _method_particles_set_pre_process_time_1794382983_name = StringName(from: "particles_set_pre_process_time")
        self._method_particles_set_pre_process_time_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_pre_process_time_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_set_pre_process_time_1794382983 != nil)
        let _method_particles_set_explosiveness_ratio_1794382983_name = StringName(from: "particles_set_explosiveness_ratio")
        self._method_particles_set_explosiveness_ratio_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_explosiveness_ratio_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_set_explosiveness_ratio_1794382983 != nil)
        let _method_particles_set_randomness_ratio_1794382983_name = StringName(from: "particles_set_randomness_ratio")
        self._method_particles_set_randomness_ratio_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_randomness_ratio_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_set_randomness_ratio_1794382983 != nil)
        let _method_particles_set_custom_aabb_3696536120_name = StringName(from: "particles_set_custom_aabb")
        self._method_particles_set_custom_aabb_3696536120 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_custom_aabb_3696536120_name._native_ptr(), 3696536120)
        assert(RenderingServer._method_particles_set_custom_aabb_3696536120 != nil)
        let _method_particles_set_speed_scale_1794382983_name = StringName(from: "particles_set_speed_scale")
        self._method_particles_set_speed_scale_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_speed_scale_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_set_speed_scale_1794382983 != nil)
        let _method_particles_set_use_local_coordinates_1265174801_name = StringName(from: "particles_set_use_local_coordinates")
        self._method_particles_set_use_local_coordinates_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_use_local_coordinates_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_particles_set_use_local_coordinates_1265174801 != nil)
        let _method_particles_set_process_material_395945892_name = StringName(from: "particles_set_process_material")
        self._method_particles_set_process_material_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_process_material_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_particles_set_process_material_395945892 != nil)
        let _method_particles_set_fixed_fps_3411492887_name = StringName(from: "particles_set_fixed_fps")
        self._method_particles_set_fixed_fps_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_fixed_fps_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_particles_set_fixed_fps_3411492887 != nil)
        let _method_particles_set_interpolate_1265174801_name = StringName(from: "particles_set_interpolate")
        self._method_particles_set_interpolate_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_interpolate_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_particles_set_interpolate_1265174801 != nil)
        let _method_particles_set_fractional_delta_1265174801_name = StringName(from: "particles_set_fractional_delta")
        self._method_particles_set_fractional_delta_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_fractional_delta_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_particles_set_fractional_delta_1265174801 != nil)
        let _method_particles_set_collision_base_size_1794382983_name = StringName(from: "particles_set_collision_base_size")
        self._method_particles_set_collision_base_size_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_collision_base_size_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_set_collision_base_size_1794382983 != nil)
        let _method_particles_set_transform_align_3264971368_name = StringName(from: "particles_set_transform_align")
        self._method_particles_set_transform_align_3264971368 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_transform_align_3264971368_name._native_ptr(), 3264971368)
        assert(RenderingServer._method_particles_set_transform_align_3264971368 != nil)
        let _method_particles_set_trails_2010054925_name = StringName(from: "particles_set_trails")
        self._method_particles_set_trails_2010054925 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_trails_2010054925_name._native_ptr(), 2010054925)
        assert(RenderingServer._method_particles_set_trails_2010054925 != nil)
        let _method_particles_set_trail_bind_poses_684822712_name = StringName(from: "particles_set_trail_bind_poses")
        self._method_particles_set_trail_bind_poses_684822712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_trail_bind_poses_684822712_name._native_ptr(), 684822712)
        assert(RenderingServer._method_particles_set_trail_bind_poses_684822712 != nil)
        let _method_particles_is_inactive_3521089500_name = StringName(from: "particles_is_inactive")
        self._method_particles_is_inactive_3521089500 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_is_inactive_3521089500_name._native_ptr(), 3521089500)
        assert(RenderingServer._method_particles_is_inactive_3521089500 != nil)
        let _method_particles_request_process_2722037293_name = StringName(from: "particles_request_process")
        self._method_particles_request_process_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_request_process_2722037293_name._native_ptr(), 2722037293)
        assert(RenderingServer._method_particles_request_process_2722037293 != nil)
        let _method_particles_restart_2722037293_name = StringName(from: "particles_restart")
        self._method_particles_restart_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_restart_2722037293_name._native_ptr(), 2722037293)
        assert(RenderingServer._method_particles_restart_2722037293 != nil)
        let _method_particles_set_subemitter_395945892_name = StringName(from: "particles_set_subemitter")
        self._method_particles_set_subemitter_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_subemitter_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_particles_set_subemitter_395945892 != nil)
        let _method_particles_emit_4043136117_name = StringName(from: "particles_emit")
        self._method_particles_emit_4043136117 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_emit_4043136117_name._native_ptr(), 4043136117)
        assert(RenderingServer._method_particles_emit_4043136117 != nil)
        let _method_particles_set_draw_order_935028487_name = StringName(from: "particles_set_draw_order")
        self._method_particles_set_draw_order_935028487 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_draw_order_935028487_name._native_ptr(), 935028487)
        assert(RenderingServer._method_particles_set_draw_order_935028487 != nil)
        let _method_particles_set_draw_passes_3411492887_name = StringName(from: "particles_set_draw_passes")
        self._method_particles_set_draw_passes_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_draw_passes_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_particles_set_draw_passes_3411492887 != nil)
        let _method_particles_set_draw_pass_mesh_2310537182_name = StringName(from: "particles_set_draw_pass_mesh")
        self._method_particles_set_draw_pass_mesh_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_draw_pass_mesh_2310537182_name._native_ptr(), 2310537182)
        assert(RenderingServer._method_particles_set_draw_pass_mesh_2310537182 != nil)
        let _method_particles_get_current_aabb_3952830260_name = StringName(from: "particles_get_current_aabb")
        self._method_particles_get_current_aabb_3952830260 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_get_current_aabb_3952830260_name._native_ptr(), 3952830260)
        assert(RenderingServer._method_particles_get_current_aabb_3952830260 != nil)
        let _method_particles_set_emission_transform_3935195649_name = StringName(from: "particles_set_emission_transform")
        self._method_particles_set_emission_transform_3935195649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_set_emission_transform_3935195649_name._native_ptr(), 3935195649)
        assert(RenderingServer._method_particles_set_emission_transform_3935195649 != nil)
        let _method_particles_collision_create_529393457_name = StringName(from: "particles_collision_create")
        self._method_particles_collision_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_particles_collision_create_529393457 != nil)
        let _method_particles_collision_set_collision_type_1497044930_name = StringName(from: "particles_collision_set_collision_type")
        self._method_particles_collision_set_collision_type_1497044930 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_collision_type_1497044930_name._native_ptr(), 1497044930)
        assert(RenderingServer._method_particles_collision_set_collision_type_1497044930 != nil)
        let _method_particles_collision_set_cull_mask_3411492887_name = StringName(from: "particles_collision_set_cull_mask")
        self._method_particles_collision_set_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_particles_collision_set_cull_mask_3411492887 != nil)
        let _method_particles_collision_set_sphere_radius_1794382983_name = StringName(from: "particles_collision_set_sphere_radius")
        self._method_particles_collision_set_sphere_radius_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_sphere_radius_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_collision_set_sphere_radius_1794382983 != nil)
        let _method_particles_collision_set_box_extents_3227306858_name = StringName(from: "particles_collision_set_box_extents")
        self._method_particles_collision_set_box_extents_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_box_extents_3227306858_name._native_ptr(), 3227306858)
        assert(RenderingServer._method_particles_collision_set_box_extents_3227306858 != nil)
        let _method_particles_collision_set_attractor_strength_1794382983_name = StringName(from: "particles_collision_set_attractor_strength")
        self._method_particles_collision_set_attractor_strength_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_attractor_strength_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_collision_set_attractor_strength_1794382983 != nil)
        let _method_particles_collision_set_attractor_directionality_1794382983_name = StringName(from: "particles_collision_set_attractor_directionality")
        self._method_particles_collision_set_attractor_directionality_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_attractor_directionality_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_collision_set_attractor_directionality_1794382983 != nil)
        let _method_particles_collision_set_attractor_attenuation_1794382983_name = StringName(from: "particles_collision_set_attractor_attenuation")
        self._method_particles_collision_set_attractor_attenuation_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_attractor_attenuation_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_particles_collision_set_attractor_attenuation_1794382983 != nil)
        let _method_particles_collision_set_field_texture_395945892_name = StringName(from: "particles_collision_set_field_texture")
        self._method_particles_collision_set_field_texture_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_field_texture_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_particles_collision_set_field_texture_395945892 != nil)
        let _method_particles_collision_height_field_update_2722037293_name = StringName(from: "particles_collision_height_field_update")
        self._method_particles_collision_height_field_update_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_height_field_update_2722037293_name._native_ptr(), 2722037293)
        assert(RenderingServer._method_particles_collision_height_field_update_2722037293 != nil)
        let _method_particles_collision_set_height_field_resolution_962977297_name = StringName(from: "particles_collision_set_height_field_resolution")
        self._method_particles_collision_set_height_field_resolution_962977297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_particles_collision_set_height_field_resolution_962977297_name._native_ptr(), 962977297)
        assert(RenderingServer._method_particles_collision_set_height_field_resolution_962977297 != nil)
        let _method_fog_volume_create_529393457_name = StringName(from: "fog_volume_create")
        self._method_fog_volume_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_fog_volume_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_fog_volume_create_529393457 != nil)
        let _method_fog_volume_set_shape_3818703106_name = StringName(from: "fog_volume_set_shape")
        self._method_fog_volume_set_shape_3818703106 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_fog_volume_set_shape_3818703106_name._native_ptr(), 3818703106)
        assert(RenderingServer._method_fog_volume_set_shape_3818703106 != nil)
        let _method_fog_volume_set_size_3227306858_name = StringName(from: "fog_volume_set_size")
        self._method_fog_volume_set_size_3227306858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_fog_volume_set_size_3227306858_name._native_ptr(), 3227306858)
        assert(RenderingServer._method_fog_volume_set_size_3227306858 != nil)
        let _method_fog_volume_set_material_395945892_name = StringName(from: "fog_volume_set_material")
        self._method_fog_volume_set_material_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_fog_volume_set_material_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_fog_volume_set_material_395945892 != nil)
        let _method_visibility_notifier_create_529393457_name = StringName(from: "visibility_notifier_create")
        self._method_visibility_notifier_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_visibility_notifier_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_visibility_notifier_create_529393457 != nil)
        let _method_visibility_notifier_set_aabb_3696536120_name = StringName(from: "visibility_notifier_set_aabb")
        self._method_visibility_notifier_set_aabb_3696536120 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_visibility_notifier_set_aabb_3696536120_name._native_ptr(), 3696536120)
        assert(RenderingServer._method_visibility_notifier_set_aabb_3696536120 != nil)
        let _method_visibility_notifier_set_callbacks_2689735388_name = StringName(from: "visibility_notifier_set_callbacks")
        self._method_visibility_notifier_set_callbacks_2689735388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_visibility_notifier_set_callbacks_2689735388_name._native_ptr(), 2689735388)
        assert(RenderingServer._method_visibility_notifier_set_callbacks_2689735388 != nil)
        let _method_occluder_create_529393457_name = StringName(from: "occluder_create")
        self._method_occluder_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_occluder_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_occluder_create_529393457 != nil)
        let _method_occluder_set_mesh_3854404263_name = StringName(from: "occluder_set_mesh")
        self._method_occluder_set_mesh_3854404263 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_occluder_set_mesh_3854404263_name._native_ptr(), 3854404263)
        assert(RenderingServer._method_occluder_set_mesh_3854404263 != nil)
        let _method_camera_create_529393457_name = StringName(from: "camera_create")
        self._method_camera_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_camera_create_529393457 != nil)
        let _method_camera_set_perspective_157498339_name = StringName(from: "camera_set_perspective")
        self._method_camera_set_perspective_157498339 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_perspective_157498339_name._native_ptr(), 157498339)
        assert(RenderingServer._method_camera_set_perspective_157498339 != nil)
        let _method_camera_set_orthogonal_157498339_name = StringName(from: "camera_set_orthogonal")
        self._method_camera_set_orthogonal_157498339 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_orthogonal_157498339_name._native_ptr(), 157498339)
        assert(RenderingServer._method_camera_set_orthogonal_157498339 != nil)
        let _method_camera_set_frustum_1889878953_name = StringName(from: "camera_set_frustum")
        self._method_camera_set_frustum_1889878953 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_frustum_1889878953_name._native_ptr(), 1889878953)
        assert(RenderingServer._method_camera_set_frustum_1889878953 != nil)
        let _method_camera_set_transform_3935195649_name = StringName(from: "camera_set_transform")
        self._method_camera_set_transform_3935195649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_transform_3935195649_name._native_ptr(), 3935195649)
        assert(RenderingServer._method_camera_set_transform_3935195649 != nil)
        let _method_camera_set_cull_mask_3411492887_name = StringName(from: "camera_set_cull_mask")
        self._method_camera_set_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_camera_set_cull_mask_3411492887 != nil)
        let _method_camera_set_environment_395945892_name = StringName(from: "camera_set_environment")
        self._method_camera_set_environment_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_environment_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_camera_set_environment_395945892 != nil)
        let _method_camera_set_camera_attributes_395945892_name = StringName(from: "camera_set_camera_attributes")
        self._method_camera_set_camera_attributes_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_camera_attributes_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_camera_set_camera_attributes_395945892 != nil)
        let _method_camera_set_use_vertical_aspect_1265174801_name = StringName(from: "camera_set_use_vertical_aspect")
        self._method_camera_set_use_vertical_aspect_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_set_use_vertical_aspect_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_camera_set_use_vertical_aspect_1265174801 != nil)
        let _method_viewport_create_529393457_name = StringName(from: "viewport_create")
        self._method_viewport_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_viewport_create_529393457 != nil)
        let _method_viewport_set_use_xr_1265174801_name = StringName(from: "viewport_set_use_xr")
        self._method_viewport_set_use_xr_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_use_xr_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_use_xr_1265174801 != nil)
        let _method_viewport_set_size_4288446313_name = StringName(from: "viewport_set_size")
        self._method_viewport_set_size_4288446313 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_size_4288446313_name._native_ptr(), 4288446313)
        assert(RenderingServer._method_viewport_set_size_4288446313 != nil)
        let _method_viewport_set_active_1265174801_name = StringName(from: "viewport_set_active")
        self._method_viewport_set_active_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_active_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_active_1265174801 != nil)
        let _method_viewport_set_parent_viewport_395945892_name = StringName(from: "viewport_set_parent_viewport")
        self._method_viewport_set_parent_viewport_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_parent_viewport_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_viewport_set_parent_viewport_395945892 != nil)
        let _method_viewport_attach_to_screen_1278520651_name = StringName(from: "viewport_attach_to_screen")
        self._method_viewport_attach_to_screen_1278520651 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_attach_to_screen_1278520651_name._native_ptr(), 1278520651)
        assert(RenderingServer._method_viewport_attach_to_screen_1278520651 != nil)
        let _method_viewport_set_render_direct_to_screen_1265174801_name = StringName(from: "viewport_set_render_direct_to_screen")
        self._method_viewport_set_render_direct_to_screen_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_render_direct_to_screen_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_render_direct_to_screen_1265174801 != nil)
        let _method_viewport_set_canvas_cull_mask_3411492887_name = StringName(from: "viewport_set_canvas_cull_mask")
        self._method_viewport_set_canvas_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_canvas_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_viewport_set_canvas_cull_mask_3411492887 != nil)
        let _method_viewport_set_scaling_3d_mode_2386524376_name = StringName(from: "viewport_set_scaling_3d_mode")
        self._method_viewport_set_scaling_3d_mode_2386524376 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_scaling_3d_mode_2386524376_name._native_ptr(), 2386524376)
        assert(RenderingServer._method_viewport_set_scaling_3d_mode_2386524376 != nil)
        let _method_viewport_set_scaling_3d_scale_1794382983_name = StringName(from: "viewport_set_scaling_3d_scale")
        self._method_viewport_set_scaling_3d_scale_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_scaling_3d_scale_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_viewport_set_scaling_3d_scale_1794382983 != nil)
        let _method_viewport_set_fsr_sharpness_1794382983_name = StringName(from: "viewport_set_fsr_sharpness")
        self._method_viewport_set_fsr_sharpness_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_fsr_sharpness_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_viewport_set_fsr_sharpness_1794382983 != nil)
        let _method_viewport_set_texture_mipmap_bias_1794382983_name = StringName(from: "viewport_set_texture_mipmap_bias")
        self._method_viewport_set_texture_mipmap_bias_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_texture_mipmap_bias_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_viewport_set_texture_mipmap_bias_1794382983 != nil)
        let _method_viewport_set_update_mode_3161116010_name = StringName(from: "viewport_set_update_mode")
        self._method_viewport_set_update_mode_3161116010 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_update_mode_3161116010_name._native_ptr(), 3161116010)
        assert(RenderingServer._method_viewport_set_update_mode_3161116010 != nil)
        let _method_viewport_set_clear_mode_3628367896_name = StringName(from: "viewport_set_clear_mode")
        self._method_viewport_set_clear_mode_3628367896 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_clear_mode_3628367896_name._native_ptr(), 3628367896)
        assert(RenderingServer._method_viewport_set_clear_mode_3628367896 != nil)
        let _method_viewport_get_texture_3814569979_name = StringName(from: "viewport_get_texture")
        self._method_viewport_get_texture_3814569979 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_get_texture_3814569979_name._native_ptr(), 3814569979)
        assert(RenderingServer._method_viewport_get_texture_3814569979 != nil)
        let _method_viewport_set_disable_3d_1265174801_name = StringName(from: "viewport_set_disable_3d")
        self._method_viewport_set_disable_3d_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_disable_3d_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_disable_3d_1265174801 != nil)
        let _method_viewport_set_disable_2d_1265174801_name = StringName(from: "viewport_set_disable_2d")
        self._method_viewport_set_disable_2d_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_disable_2d_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_disable_2d_1265174801 != nil)
        let _method_viewport_set_environment_mode_2196892182_name = StringName(from: "viewport_set_environment_mode")
        self._method_viewport_set_environment_mode_2196892182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_environment_mode_2196892182_name._native_ptr(), 2196892182)
        assert(RenderingServer._method_viewport_set_environment_mode_2196892182 != nil)
        let _method_viewport_attach_camera_395945892_name = StringName(from: "viewport_attach_camera")
        self._method_viewport_attach_camera_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_attach_camera_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_viewport_attach_camera_395945892 != nil)
        let _method_viewport_set_scenario_395945892_name = StringName(from: "viewport_set_scenario")
        self._method_viewport_set_scenario_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_scenario_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_viewport_set_scenario_395945892 != nil)
        let _method_viewport_attach_canvas_395945892_name = StringName(from: "viewport_attach_canvas")
        self._method_viewport_attach_canvas_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_attach_canvas_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_viewport_attach_canvas_395945892 != nil)
        let _method_viewport_remove_canvas_395945892_name = StringName(from: "viewport_remove_canvas")
        self._method_viewport_remove_canvas_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_remove_canvas_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_viewport_remove_canvas_395945892 != nil)
        let _method_viewport_set_snap_2d_transforms_to_pixel_1265174801_name = StringName(from: "viewport_set_snap_2d_transforms_to_pixel")
        self._method_viewport_set_snap_2d_transforms_to_pixel_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_snap_2d_transforms_to_pixel_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_snap_2d_transforms_to_pixel_1265174801 != nil)
        let _method_viewport_set_snap_2d_vertices_to_pixel_1265174801_name = StringName(from: "viewport_set_snap_2d_vertices_to_pixel")
        self._method_viewport_set_snap_2d_vertices_to_pixel_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_snap_2d_vertices_to_pixel_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_snap_2d_vertices_to_pixel_1265174801 != nil)
        let _method_viewport_set_default_canvas_item_texture_filter_1155129294_name = StringName(from: "viewport_set_default_canvas_item_texture_filter")
        self._method_viewport_set_default_canvas_item_texture_filter_1155129294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_default_canvas_item_texture_filter_1155129294_name._native_ptr(), 1155129294)
        assert(RenderingServer._method_viewport_set_default_canvas_item_texture_filter_1155129294 != nil)
        let _method_viewport_set_default_canvas_item_texture_repeat_1652956681_name = StringName(from: "viewport_set_default_canvas_item_texture_repeat")
        self._method_viewport_set_default_canvas_item_texture_repeat_1652956681 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_default_canvas_item_texture_repeat_1652956681_name._native_ptr(), 1652956681)
        assert(RenderingServer._method_viewport_set_default_canvas_item_texture_repeat_1652956681 != nil)
        let _method_viewport_set_canvas_transform_3608606053_name = StringName(from: "viewport_set_canvas_transform")
        self._method_viewport_set_canvas_transform_3608606053 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_canvas_transform_3608606053_name._native_ptr(), 3608606053)
        assert(RenderingServer._method_viewport_set_canvas_transform_3608606053 != nil)
        let _method_viewport_set_canvas_stacking_3713930247_name = StringName(from: "viewport_set_canvas_stacking")
        self._method_viewport_set_canvas_stacking_3713930247 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_canvas_stacking_3713930247_name._native_ptr(), 3713930247)
        assert(RenderingServer._method_viewport_set_canvas_stacking_3713930247 != nil)
        let _method_viewport_set_transparent_background_1265174801_name = StringName(from: "viewport_set_transparent_background")
        self._method_viewport_set_transparent_background_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_transparent_background_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_transparent_background_1265174801 != nil)
        let _method_viewport_set_global_canvas_transform_1246044741_name = StringName(from: "viewport_set_global_canvas_transform")
        self._method_viewport_set_global_canvas_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_global_canvas_transform_1246044741_name._native_ptr(), 1246044741)
        assert(RenderingServer._method_viewport_set_global_canvas_transform_1246044741 != nil)
        let _method_viewport_set_sdf_oversize_and_scale_1329198632_name = StringName(from: "viewport_set_sdf_oversize_and_scale")
        self._method_viewport_set_sdf_oversize_and_scale_1329198632 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_sdf_oversize_and_scale_1329198632_name._native_ptr(), 1329198632)
        assert(RenderingServer._method_viewport_set_sdf_oversize_and_scale_1329198632 != nil)
        let _method_viewport_set_positional_shadow_atlas_size_1904426712_name = StringName(from: "viewport_set_positional_shadow_atlas_size")
        self._method_viewport_set_positional_shadow_atlas_size_1904426712 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_positional_shadow_atlas_size_1904426712_name._native_ptr(), 1904426712)
        assert(RenderingServer._method_viewport_set_positional_shadow_atlas_size_1904426712 != nil)
        let _method_viewport_set_positional_shadow_atlas_quadrant_subdivision_4288446313_name = StringName(from: "viewport_set_positional_shadow_atlas_quadrant_subdivision")
        self._method_viewport_set_positional_shadow_atlas_quadrant_subdivision_4288446313 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_positional_shadow_atlas_quadrant_subdivision_4288446313_name._native_ptr(), 4288446313)
        assert(RenderingServer._method_viewport_set_positional_shadow_atlas_quadrant_subdivision_4288446313 != nil)
        let _method_viewport_set_msaa_3d_3764433340_name = StringName(from: "viewport_set_msaa_3d")
        self._method_viewport_set_msaa_3d_3764433340 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_msaa_3d_3764433340_name._native_ptr(), 3764433340)
        assert(RenderingServer._method_viewport_set_msaa_3d_3764433340 != nil)
        let _method_viewport_set_msaa_2d_3764433340_name = StringName(from: "viewport_set_msaa_2d")
        self._method_viewport_set_msaa_2d_3764433340 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_msaa_2d_3764433340_name._native_ptr(), 3764433340)
        assert(RenderingServer._method_viewport_set_msaa_2d_3764433340 != nil)
        let _method_viewport_set_screen_space_aa_1447279591_name = StringName(from: "viewport_set_screen_space_aa")
        self._method_viewport_set_screen_space_aa_1447279591 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_screen_space_aa_1447279591_name._native_ptr(), 1447279591)
        assert(RenderingServer._method_viewport_set_screen_space_aa_1447279591 != nil)
        let _method_viewport_set_use_taa_1265174801_name = StringName(from: "viewport_set_use_taa")
        self._method_viewport_set_use_taa_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_use_taa_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_use_taa_1265174801 != nil)
        let _method_viewport_set_use_debanding_1265174801_name = StringName(from: "viewport_set_use_debanding")
        self._method_viewport_set_use_debanding_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_use_debanding_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_use_debanding_1265174801 != nil)
        let _method_viewport_set_use_occlusion_culling_1265174801_name = StringName(from: "viewport_set_use_occlusion_culling")
        self._method_viewport_set_use_occlusion_culling_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_use_occlusion_culling_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_use_occlusion_culling_1265174801 != nil)
        let _method_viewport_set_occlusion_rays_per_thread_1286410249_name = StringName(from: "viewport_set_occlusion_rays_per_thread")
        self._method_viewport_set_occlusion_rays_per_thread_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_occlusion_rays_per_thread_1286410249_name._native_ptr(), 1286410249)
        assert(RenderingServer._method_viewport_set_occlusion_rays_per_thread_1286410249 != nil)
        let _method_viewport_set_occlusion_culling_build_quality_2069725696_name = StringName(from: "viewport_set_occlusion_culling_build_quality")
        self._method_viewport_set_occlusion_culling_build_quality_2069725696 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_occlusion_culling_build_quality_2069725696_name._native_ptr(), 2069725696)
        assert(RenderingServer._method_viewport_set_occlusion_culling_build_quality_2069725696 != nil)
        let _method_viewport_get_render_info_2041262392_name = StringName(from: "viewport_get_render_info")
        self._method_viewport_get_render_info_2041262392 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_get_render_info_2041262392_name._native_ptr(), 2041262392)
        assert(RenderingServer._method_viewport_get_render_info_2041262392 != nil)
        let _method_viewport_set_debug_draw_2089420930_name = StringName(from: "viewport_set_debug_draw")
        self._method_viewport_set_debug_draw_2089420930 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_debug_draw_2089420930_name._native_ptr(), 2089420930)
        assert(RenderingServer._method_viewport_set_debug_draw_2089420930 != nil)
        let _method_viewport_set_measure_render_time_1265174801_name = StringName(from: "viewport_set_measure_render_time")
        self._method_viewport_set_measure_render_time_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_measure_render_time_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_viewport_set_measure_render_time_1265174801 != nil)
        let _method_viewport_get_measured_render_time_cpu_866169185_name = StringName(from: "viewport_get_measured_render_time_cpu")
        self._method_viewport_get_measured_render_time_cpu_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_get_measured_render_time_cpu_866169185_name._native_ptr(), 866169185)
        assert(RenderingServer._method_viewport_get_measured_render_time_cpu_866169185 != nil)
        let _method_viewport_get_measured_render_time_gpu_866169185_name = StringName(from: "viewport_get_measured_render_time_gpu")
        self._method_viewport_get_measured_render_time_gpu_866169185 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_get_measured_render_time_gpu_866169185_name._native_ptr(), 866169185)
        assert(RenderingServer._method_viewport_get_measured_render_time_gpu_866169185 != nil)
        let _method_viewport_set_vrs_mode_398809874_name = StringName(from: "viewport_set_vrs_mode")
        self._method_viewport_set_vrs_mode_398809874 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_vrs_mode_398809874_name._native_ptr(), 398809874)
        assert(RenderingServer._method_viewport_set_vrs_mode_398809874 != nil)
        let _method_viewport_set_vrs_texture_395945892_name = StringName(from: "viewport_set_vrs_texture")
        self._method_viewport_set_vrs_texture_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_viewport_set_vrs_texture_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_viewport_set_vrs_texture_395945892 != nil)
        let _method_sky_create_529393457_name = StringName(from: "sky_create")
        self._method_sky_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sky_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_sky_create_529393457 != nil)
        let _method_sky_set_radiance_size_3411492887_name = StringName(from: "sky_set_radiance_size")
        self._method_sky_set_radiance_size_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sky_set_radiance_size_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_sky_set_radiance_size_3411492887 != nil)
        let _method_sky_set_mode_3279019937_name = StringName(from: "sky_set_mode")
        self._method_sky_set_mode_3279019937 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sky_set_mode_3279019937_name._native_ptr(), 3279019937)
        assert(RenderingServer._method_sky_set_mode_3279019937 != nil)
        let _method_sky_set_material_395945892_name = StringName(from: "sky_set_material")
        self._method_sky_set_material_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sky_set_material_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_sky_set_material_395945892 != nil)
        let _method_sky_bake_panorama_3875285818_name = StringName(from: "sky_bake_panorama")
        self._method_sky_bake_panorama_3875285818 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sky_bake_panorama_3875285818_name._native_ptr(), 3875285818)
        assert(RenderingServer._method_sky_bake_panorama_3875285818 != nil)
        let _method_environment_create_529393457_name = StringName(from: "environment_create")
        self._method_environment_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_environment_create_529393457 != nil)
        let _method_environment_set_background_3937328877_name = StringName(from: "environment_set_background")
        self._method_environment_set_background_3937328877 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_background_3937328877_name._native_ptr(), 3937328877)
        assert(RenderingServer._method_environment_set_background_3937328877 != nil)
        let _method_environment_set_sky_395945892_name = StringName(from: "environment_set_sky")
        self._method_environment_set_sky_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sky_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_environment_set_sky_395945892 != nil)
        let _method_environment_set_sky_custom_fov_1794382983_name = StringName(from: "environment_set_sky_custom_fov")
        self._method_environment_set_sky_custom_fov_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sky_custom_fov_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_environment_set_sky_custom_fov_1794382983 != nil)
        let _method_environment_set_sky_orientation_1735850857_name = StringName(from: "environment_set_sky_orientation")
        self._method_environment_set_sky_orientation_1735850857 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sky_orientation_1735850857_name._native_ptr(), 1735850857)
        assert(RenderingServer._method_environment_set_sky_orientation_1735850857 != nil)
        let _method_environment_set_bg_color_2948539648_name = StringName(from: "environment_set_bg_color")
        self._method_environment_set_bg_color_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_bg_color_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_environment_set_bg_color_2948539648 != nil)
        let _method_environment_set_bg_energy_2513314492_name = StringName(from: "environment_set_bg_energy")
        self._method_environment_set_bg_energy_2513314492 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_bg_energy_2513314492_name._native_ptr(), 2513314492)
        assert(RenderingServer._method_environment_set_bg_energy_2513314492 != nil)
        let _method_environment_set_canvas_max_layer_3411492887_name = StringName(from: "environment_set_canvas_max_layer")
        self._method_environment_set_canvas_max_layer_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_canvas_max_layer_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_environment_set_canvas_max_layer_3411492887 != nil)
        let _method_environment_set_ambient_light_362573166_name = StringName(from: "environment_set_ambient_light")
        self._method_environment_set_ambient_light_362573166 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_ambient_light_362573166_name._native_ptr(), 362573166)
        assert(RenderingServer._method_environment_set_ambient_light_362573166 != nil)
        let _method_environment_set_glow_2421724940_name = StringName(from: "environment_set_glow")
        self._method_environment_set_glow_2421724940 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_glow_2421724940_name._native_ptr(), 2421724940)
        assert(RenderingServer._method_environment_set_glow_2421724940 != nil)
        let _method_environment_set_tonemap_2914312638_name = StringName(from: "environment_set_tonemap")
        self._method_environment_set_tonemap_2914312638 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_tonemap_2914312638_name._native_ptr(), 2914312638)
        assert(RenderingServer._method_environment_set_tonemap_2914312638 != nil)
        let _method_environment_set_adjustment_876799838_name = StringName(from: "environment_set_adjustment")
        self._method_environment_set_adjustment_876799838 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_adjustment_876799838_name._native_ptr(), 876799838)
        assert(RenderingServer._method_environment_set_adjustment_876799838 != nil)
        let _method_environment_set_ssr_3607294374_name = StringName(from: "environment_set_ssr")
        self._method_environment_set_ssr_3607294374 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_ssr_3607294374_name._native_ptr(), 3607294374)
        assert(RenderingServer._method_environment_set_ssr_3607294374 != nil)
        let _method_environment_set_ssao_3994732740_name = StringName(from: "environment_set_ssao")
        self._method_environment_set_ssao_3994732740 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_ssao_3994732740_name._native_ptr(), 3994732740)
        assert(RenderingServer._method_environment_set_ssao_3994732740 != nil)
        let _method_environment_set_fog_2793577733_name = StringName(from: "environment_set_fog")
        self._method_environment_set_fog_2793577733 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_fog_2793577733_name._native_ptr(), 2793577733)
        assert(RenderingServer._method_environment_set_fog_2793577733 != nil)
        let _method_environment_set_sdfgi_3519144388_name = StringName(from: "environment_set_sdfgi")
        self._method_environment_set_sdfgi_3519144388 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sdfgi_3519144388_name._native_ptr(), 3519144388)
        assert(RenderingServer._method_environment_set_sdfgi_3519144388 != nil)
        let _method_environment_set_volumetric_fog_1553633833_name = StringName(from: "environment_set_volumetric_fog")
        self._method_environment_set_volumetric_fog_1553633833 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_volumetric_fog_1553633833_name._native_ptr(), 1553633833)
        assert(RenderingServer._method_environment_set_volumetric_fog_1553633833 != nil)
        let _method_environment_glow_set_use_bicubic_upscale_2586408642_name = StringName(from: "environment_glow_set_use_bicubic_upscale")
        self._method_environment_glow_set_use_bicubic_upscale_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_glow_set_use_bicubic_upscale_2586408642_name._native_ptr(), 2586408642)
        assert(RenderingServer._method_environment_glow_set_use_bicubic_upscale_2586408642 != nil)
        let _method_environment_set_ssr_roughness_quality_1190026788_name = StringName(from: "environment_set_ssr_roughness_quality")
        self._method_environment_set_ssr_roughness_quality_1190026788 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_ssr_roughness_quality_1190026788_name._native_ptr(), 1190026788)
        assert(RenderingServer._method_environment_set_ssr_roughness_quality_1190026788 != nil)
        let _method_environment_set_ssao_quality_189753569_name = StringName(from: "environment_set_ssao_quality")
        self._method_environment_set_ssao_quality_189753569 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_ssao_quality_189753569_name._native_ptr(), 189753569)
        assert(RenderingServer._method_environment_set_ssao_quality_189753569 != nil)
        let _method_environment_set_ssil_quality_1713836683_name = StringName(from: "environment_set_ssil_quality")
        self._method_environment_set_ssil_quality_1713836683 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_ssil_quality_1713836683_name._native_ptr(), 1713836683)
        assert(RenderingServer._method_environment_set_ssil_quality_1713836683 != nil)
        let _method_environment_set_sdfgi_ray_count_340137951_name = StringName(from: "environment_set_sdfgi_ray_count")
        self._method_environment_set_sdfgi_ray_count_340137951 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sdfgi_ray_count_340137951_name._native_ptr(), 340137951)
        assert(RenderingServer._method_environment_set_sdfgi_ray_count_340137951 != nil)
        let _method_environment_set_sdfgi_frames_to_converge_2182444374_name = StringName(from: "environment_set_sdfgi_frames_to_converge")
        self._method_environment_set_sdfgi_frames_to_converge_2182444374 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sdfgi_frames_to_converge_2182444374_name._native_ptr(), 2182444374)
        assert(RenderingServer._method_environment_set_sdfgi_frames_to_converge_2182444374 != nil)
        let _method_environment_set_sdfgi_frames_to_update_light_1251144068_name = StringName(from: "environment_set_sdfgi_frames_to_update_light")
        self._method_environment_set_sdfgi_frames_to_update_light_1251144068 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_sdfgi_frames_to_update_light_1251144068_name._native_ptr(), 1251144068)
        assert(RenderingServer._method_environment_set_sdfgi_frames_to_update_light_1251144068 != nil)
        let _method_environment_set_volumetric_fog_volume_size_3937882851_name = StringName(from: "environment_set_volumetric_fog_volume_size")
        self._method_environment_set_volumetric_fog_volume_size_3937882851 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_volumetric_fog_volume_size_3937882851_name._native_ptr(), 3937882851)
        assert(RenderingServer._method_environment_set_volumetric_fog_volume_size_3937882851 != nil)
        let _method_environment_set_volumetric_fog_filter_active_2586408642_name = StringName(from: "environment_set_volumetric_fog_filter_active")
        self._method_environment_set_volumetric_fog_filter_active_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_set_volumetric_fog_filter_active_2586408642_name._native_ptr(), 2586408642)
        assert(RenderingServer._method_environment_set_volumetric_fog_filter_active_2586408642 != nil)
        let _method_environment_bake_panorama_2452908646_name = StringName(from: "environment_bake_panorama")
        self._method_environment_bake_panorama_2452908646 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_environment_bake_panorama_2452908646_name._native_ptr(), 2452908646)
        assert(RenderingServer._method_environment_bake_panorama_2452908646 != nil)
        let _method_screen_space_roughness_limiter_set_active_916716790_name = StringName(from: "screen_space_roughness_limiter_set_active")
        self._method_screen_space_roughness_limiter_set_active_916716790 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_screen_space_roughness_limiter_set_active_916716790_name._native_ptr(), 916716790)
        assert(RenderingServer._method_screen_space_roughness_limiter_set_active_916716790 != nil)
        let _method_sub_surface_scattering_set_quality_64571803_name = StringName(from: "sub_surface_scattering_set_quality")
        self._method_sub_surface_scattering_set_quality_64571803 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sub_surface_scattering_set_quality_64571803_name._native_ptr(), 64571803)
        assert(RenderingServer._method_sub_surface_scattering_set_quality_64571803 != nil)
        let _method_sub_surface_scattering_set_scale_1017552074_name = StringName(from: "sub_surface_scattering_set_scale")
        self._method_sub_surface_scattering_set_scale_1017552074 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_sub_surface_scattering_set_scale_1017552074_name._native_ptr(), 1017552074)
        assert(RenderingServer._method_sub_surface_scattering_set_scale_1017552074 != nil)
        let _method_camera_attributes_create_529393457_name = StringName(from: "camera_attributes_create")
        self._method_camera_attributes_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_attributes_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_camera_attributes_create_529393457 != nil)
        let _method_camera_attributes_set_dof_blur_quality_2220136795_name = StringName(from: "camera_attributes_set_dof_blur_quality")
        self._method_camera_attributes_set_dof_blur_quality_2220136795 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_attributes_set_dof_blur_quality_2220136795_name._native_ptr(), 2220136795)
        assert(RenderingServer._method_camera_attributes_set_dof_blur_quality_2220136795 != nil)
        let _method_camera_attributes_set_dof_blur_bokeh_shape_1205058394_name = StringName(from: "camera_attributes_set_dof_blur_bokeh_shape")
        self._method_camera_attributes_set_dof_blur_bokeh_shape_1205058394 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_attributes_set_dof_blur_bokeh_shape_1205058394_name._native_ptr(), 1205058394)
        assert(RenderingServer._method_camera_attributes_set_dof_blur_bokeh_shape_1205058394 != nil)
        let _method_camera_attributes_set_dof_blur_316272616_name = StringName(from: "camera_attributes_set_dof_blur")
        self._method_camera_attributes_set_dof_blur_316272616 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_attributes_set_dof_blur_316272616_name._native_ptr(), 316272616)
        assert(RenderingServer._method_camera_attributes_set_dof_blur_316272616 != nil)
        let _method_camera_attributes_set_exposure_2513314492_name = StringName(from: "camera_attributes_set_exposure")
        self._method_camera_attributes_set_exposure_2513314492 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_attributes_set_exposure_2513314492_name._native_ptr(), 2513314492)
        assert(RenderingServer._method_camera_attributes_set_exposure_2513314492 != nil)
        let _method_camera_attributes_set_auto_exposure_4266986332_name = StringName(from: "camera_attributes_set_auto_exposure")
        self._method_camera_attributes_set_auto_exposure_4266986332 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_camera_attributes_set_auto_exposure_4266986332_name._native_ptr(), 4266986332)
        assert(RenderingServer._method_camera_attributes_set_auto_exposure_4266986332 != nil)
        let _method_scenario_create_529393457_name = StringName(from: "scenario_create")
        self._method_scenario_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scenario_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_scenario_create_529393457 != nil)
        let _method_scenario_set_environment_395945892_name = StringName(from: "scenario_set_environment")
        self._method_scenario_set_environment_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scenario_set_environment_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_scenario_set_environment_395945892 != nil)
        let _method_scenario_set_fallback_environment_395945892_name = StringName(from: "scenario_set_fallback_environment")
        self._method_scenario_set_fallback_environment_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scenario_set_fallback_environment_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_scenario_set_fallback_environment_395945892 != nil)
        let _method_scenario_set_camera_attributes_395945892_name = StringName(from: "scenario_set_camera_attributes")
        self._method_scenario_set_camera_attributes_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_scenario_set_camera_attributes_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_scenario_set_camera_attributes_395945892 != nil)
        let _method_instance_create2_746547085_name = StringName(from: "instance_create2")
        self._method_instance_create2_746547085 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_create2_746547085_name._native_ptr(), 746547085)
        assert(RenderingServer._method_instance_create2_746547085 != nil)
        let _method_instance_create_529393457_name = StringName(from: "instance_create")
        self._method_instance_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_instance_create_529393457 != nil)
        let _method_instance_set_base_395945892_name = StringName(from: "instance_set_base")
        self._method_instance_set_base_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_base_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_instance_set_base_395945892 != nil)
        let _method_instance_set_scenario_395945892_name = StringName(from: "instance_set_scenario")
        self._method_instance_set_scenario_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_scenario_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_instance_set_scenario_395945892 != nil)
        let _method_instance_set_layer_mask_3411492887_name = StringName(from: "instance_set_layer_mask")
        self._method_instance_set_layer_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_layer_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_instance_set_layer_mask_3411492887 != nil)
        let _method_instance_set_pivot_data_1280615259_name = StringName(from: "instance_set_pivot_data")
        self._method_instance_set_pivot_data_1280615259 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_pivot_data_1280615259_name._native_ptr(), 1280615259)
        assert(RenderingServer._method_instance_set_pivot_data_1280615259 != nil)
        let _method_instance_set_transform_3935195649_name = StringName(from: "instance_set_transform")
        self._method_instance_set_transform_3935195649 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_transform_3935195649_name._native_ptr(), 3935195649)
        assert(RenderingServer._method_instance_set_transform_3935195649 != nil)
        let _method_instance_attach_object_instance_id_3411492887_name = StringName(from: "instance_attach_object_instance_id")
        self._method_instance_attach_object_instance_id_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_attach_object_instance_id_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_instance_attach_object_instance_id_3411492887 != nil)
        let _method_instance_set_blend_shape_weight_1892459533_name = StringName(from: "instance_set_blend_shape_weight")
        self._method_instance_set_blend_shape_weight_1892459533 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_blend_shape_weight_1892459533_name._native_ptr(), 1892459533)
        assert(RenderingServer._method_instance_set_blend_shape_weight_1892459533 != nil)
        let _method_instance_set_surface_override_material_2310537182_name = StringName(from: "instance_set_surface_override_material")
        self._method_instance_set_surface_override_material_2310537182 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_surface_override_material_2310537182_name._native_ptr(), 2310537182)
        assert(RenderingServer._method_instance_set_surface_override_material_2310537182 != nil)
        let _method_instance_set_visible_1265174801_name = StringName(from: "instance_set_visible")
        self._method_instance_set_visible_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_visible_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_instance_set_visible_1265174801 != nil)
        let _method_instance_geometry_set_transparency_1794382983_name = StringName(from: "instance_geometry_set_transparency")
        self._method_instance_geometry_set_transparency_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_transparency_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_instance_geometry_set_transparency_1794382983 != nil)
        let _method_instance_set_custom_aabb_3696536120_name = StringName(from: "instance_set_custom_aabb")
        self._method_instance_set_custom_aabb_3696536120 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_custom_aabb_3696536120_name._native_ptr(), 3696536120)
        assert(RenderingServer._method_instance_set_custom_aabb_3696536120 != nil)
        let _method_instance_attach_skeleton_395945892_name = StringName(from: "instance_attach_skeleton")
        self._method_instance_attach_skeleton_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_attach_skeleton_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_instance_attach_skeleton_395945892 != nil)
        let _method_instance_set_extra_visibility_margin_1794382983_name = StringName(from: "instance_set_extra_visibility_margin")
        self._method_instance_set_extra_visibility_margin_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_extra_visibility_margin_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_instance_set_extra_visibility_margin_1794382983 != nil)
        let _method_instance_set_visibility_parent_395945892_name = StringName(from: "instance_set_visibility_parent")
        self._method_instance_set_visibility_parent_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_visibility_parent_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_instance_set_visibility_parent_395945892 != nil)
        let _method_instance_set_ignore_culling_1265174801_name = StringName(from: "instance_set_ignore_culling")
        self._method_instance_set_ignore_culling_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_set_ignore_culling_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_instance_set_ignore_culling_1265174801 != nil)
        let _method_instance_geometry_set_flag_1014989537_name = StringName(from: "instance_geometry_set_flag")
        self._method_instance_geometry_set_flag_1014989537 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_flag_1014989537_name._native_ptr(), 1014989537)
        assert(RenderingServer._method_instance_geometry_set_flag_1014989537 != nil)
        let _method_instance_geometry_set_cast_shadows_setting_3768836020_name = StringName(from: "instance_geometry_set_cast_shadows_setting")
        self._method_instance_geometry_set_cast_shadows_setting_3768836020 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_cast_shadows_setting_3768836020_name._native_ptr(), 3768836020)
        assert(RenderingServer._method_instance_geometry_set_cast_shadows_setting_3768836020 != nil)
        let _method_instance_geometry_set_material_override_395945892_name = StringName(from: "instance_geometry_set_material_override")
        self._method_instance_geometry_set_material_override_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_material_override_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_instance_geometry_set_material_override_395945892 != nil)
        let _method_instance_geometry_set_material_overlay_395945892_name = StringName(from: "instance_geometry_set_material_overlay")
        self._method_instance_geometry_set_material_overlay_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_material_overlay_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_instance_geometry_set_material_overlay_395945892 != nil)
        let _method_instance_geometry_set_visibility_range_4263925858_name = StringName(from: "instance_geometry_set_visibility_range")
        self._method_instance_geometry_set_visibility_range_4263925858 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_visibility_range_4263925858_name._native_ptr(), 4263925858)
        assert(RenderingServer._method_instance_geometry_set_visibility_range_4263925858 != nil)
        let _method_instance_geometry_set_lightmap_536974962_name = StringName(from: "instance_geometry_set_lightmap")
        self._method_instance_geometry_set_lightmap_536974962 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_lightmap_536974962_name._native_ptr(), 536974962)
        assert(RenderingServer._method_instance_geometry_set_lightmap_536974962 != nil)
        let _method_instance_geometry_set_lod_bias_1794382983_name = StringName(from: "instance_geometry_set_lod_bias")
        self._method_instance_geometry_set_lod_bias_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_lod_bias_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_instance_geometry_set_lod_bias_1794382983 != nil)
        let _method_instance_geometry_set_shader_parameter_3477296213_name = StringName(from: "instance_geometry_set_shader_parameter")
        self._method_instance_geometry_set_shader_parameter_3477296213 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_set_shader_parameter_3477296213_name._native_ptr(), 3477296213)
        assert(RenderingServer._method_instance_geometry_set_shader_parameter_3477296213 != nil)
        let _method_instance_geometry_get_shader_parameter_2621281810_name = StringName(from: "instance_geometry_get_shader_parameter")
        self._method_instance_geometry_get_shader_parameter_2621281810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_get_shader_parameter_2621281810_name._native_ptr(), 2621281810)
        assert(RenderingServer._method_instance_geometry_get_shader_parameter_2621281810 != nil)
        let _method_instance_geometry_get_shader_parameter_default_value_2621281810_name = StringName(from: "instance_geometry_get_shader_parameter_default_value")
        self._method_instance_geometry_get_shader_parameter_default_value_2621281810 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_get_shader_parameter_default_value_2621281810_name._native_ptr(), 2621281810)
        assert(RenderingServer._method_instance_geometry_get_shader_parameter_default_value_2621281810 != nil)
        let _method_instance_geometry_get_shader_parameter_list_2684255073_name = StringName(from: "instance_geometry_get_shader_parameter_list")
        self._method_instance_geometry_get_shader_parameter_list_2684255073 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instance_geometry_get_shader_parameter_list_2684255073_name._native_ptr(), 2684255073)
        assert(RenderingServer._method_instance_geometry_get_shader_parameter_list_2684255073 != nil)
        let _method_instances_cull_aabb_2031554939_name = StringName(from: "instances_cull_aabb")
        self._method_instances_cull_aabb_2031554939 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instances_cull_aabb_2031554939_name._native_ptr(), 2031554939)
        assert(RenderingServer._method_instances_cull_aabb_2031554939 != nil)
        let _method_instances_cull_ray_3388524336_name = StringName(from: "instances_cull_ray")
        self._method_instances_cull_ray_3388524336 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instances_cull_ray_3388524336_name._native_ptr(), 3388524336)
        assert(RenderingServer._method_instances_cull_ray_3388524336 != nil)
        let _method_instances_cull_convex_3690700105_name = StringName(from: "instances_cull_convex")
        self._method_instances_cull_convex_3690700105 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_instances_cull_convex_3690700105_name._native_ptr(), 3690700105)
        assert(RenderingServer._method_instances_cull_convex_3690700105 != nil)
        let _method_bake_render_uv2_1904608558_name = StringName(from: "bake_render_uv2")
        self._method_bake_render_uv2_1904608558 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_bake_render_uv2_1904608558_name._native_ptr(), 1904608558)
        assert(RenderingServer._method_bake_render_uv2_1904608558 != nil)
        let _method_canvas_create_529393457_name = StringName(from: "canvas_create")
        self._method_canvas_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_canvas_create_529393457 != nil)
        let _method_canvas_set_item_mirroring_2343975398_name = StringName(from: "canvas_set_item_mirroring")
        self._method_canvas_set_item_mirroring_2343975398 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_set_item_mirroring_2343975398_name._native_ptr(), 2343975398)
        assert(RenderingServer._method_canvas_set_item_mirroring_2343975398 != nil)
        let _method_canvas_set_modulate_2948539648_name = StringName(from: "canvas_set_modulate")
        self._method_canvas_set_modulate_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_set_modulate_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_canvas_set_modulate_2948539648 != nil)
        let _method_canvas_set_disable_scale_2586408642_name = StringName(from: "canvas_set_disable_scale")
        self._method_canvas_set_disable_scale_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_set_disable_scale_2586408642_name._native_ptr(), 2586408642)
        assert(RenderingServer._method_canvas_set_disable_scale_2586408642 != nil)
        let _method_canvas_texture_create_529393457_name = StringName(from: "canvas_texture_create")
        self._method_canvas_texture_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_texture_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_canvas_texture_create_529393457 != nil)
        let _method_canvas_texture_set_channel_3822119138_name = StringName(from: "canvas_texture_set_channel")
        self._method_canvas_texture_set_channel_3822119138 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_texture_set_channel_3822119138_name._native_ptr(), 3822119138)
        assert(RenderingServer._method_canvas_texture_set_channel_3822119138 != nil)
        let _method_canvas_texture_set_shading_parameters_2124967469_name = StringName(from: "canvas_texture_set_shading_parameters")
        self._method_canvas_texture_set_shading_parameters_2124967469 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_texture_set_shading_parameters_2124967469_name._native_ptr(), 2124967469)
        assert(RenderingServer._method_canvas_texture_set_shading_parameters_2124967469 != nil)
        let _method_canvas_texture_set_texture_filter_1155129294_name = StringName(from: "canvas_texture_set_texture_filter")
        self._method_canvas_texture_set_texture_filter_1155129294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_texture_set_texture_filter_1155129294_name._native_ptr(), 1155129294)
        assert(RenderingServer._method_canvas_texture_set_texture_filter_1155129294 != nil)
        let _method_canvas_texture_set_texture_repeat_1652956681_name = StringName(from: "canvas_texture_set_texture_repeat")
        self._method_canvas_texture_set_texture_repeat_1652956681 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_texture_set_texture_repeat_1652956681_name._native_ptr(), 1652956681)
        assert(RenderingServer._method_canvas_texture_set_texture_repeat_1652956681 != nil)
        let _method_canvas_item_create_529393457_name = StringName(from: "canvas_item_create")
        self._method_canvas_item_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_canvas_item_create_529393457 != nil)
        let _method_canvas_item_set_parent_395945892_name = StringName(from: "canvas_item_set_parent")
        self._method_canvas_item_set_parent_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_parent_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_canvas_item_set_parent_395945892 != nil)
        let _method_canvas_item_set_default_texture_filter_1155129294_name = StringName(from: "canvas_item_set_default_texture_filter")
        self._method_canvas_item_set_default_texture_filter_1155129294 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_default_texture_filter_1155129294_name._native_ptr(), 1155129294)
        assert(RenderingServer._method_canvas_item_set_default_texture_filter_1155129294 != nil)
        let _method_canvas_item_set_default_texture_repeat_1652956681_name = StringName(from: "canvas_item_set_default_texture_repeat")
        self._method_canvas_item_set_default_texture_repeat_1652956681 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_default_texture_repeat_1652956681_name._native_ptr(), 1652956681)
        assert(RenderingServer._method_canvas_item_set_default_texture_repeat_1652956681 != nil)
        let _method_canvas_item_set_visible_1265174801_name = StringName(from: "canvas_item_set_visible")
        self._method_canvas_item_set_visible_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_visible_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_visible_1265174801 != nil)
        let _method_canvas_item_set_light_mask_3411492887_name = StringName(from: "canvas_item_set_light_mask")
        self._method_canvas_item_set_light_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_light_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_item_set_light_mask_3411492887 != nil)
        let _method_canvas_item_set_visibility_layer_3411492887_name = StringName(from: "canvas_item_set_visibility_layer")
        self._method_canvas_item_set_visibility_layer_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_visibility_layer_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_item_set_visibility_layer_3411492887 != nil)
        let _method_canvas_item_set_transform_1246044741_name = StringName(from: "canvas_item_set_transform")
        self._method_canvas_item_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(RenderingServer._method_canvas_item_set_transform_1246044741 != nil)
        let _method_canvas_item_set_clip_1265174801_name = StringName(from: "canvas_item_set_clip")
        self._method_canvas_item_set_clip_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_clip_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_clip_1265174801 != nil)
        let _method_canvas_item_set_distance_field_mode_1265174801_name = StringName(from: "canvas_item_set_distance_field_mode")
        self._method_canvas_item_set_distance_field_mode_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_distance_field_mode_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_distance_field_mode_1265174801 != nil)
        let _method_canvas_item_set_custom_rect_2180266943_name = StringName(from: "canvas_item_set_custom_rect")
        self._method_canvas_item_set_custom_rect_2180266943 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_custom_rect_2180266943_name._native_ptr(), 2180266943)
        assert(RenderingServer._method_canvas_item_set_custom_rect_2180266943 != nil)
        let _method_canvas_item_set_modulate_2948539648_name = StringName(from: "canvas_item_set_modulate")
        self._method_canvas_item_set_modulate_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_modulate_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_canvas_item_set_modulate_2948539648 != nil)
        let _method_canvas_item_set_self_modulate_2948539648_name = StringName(from: "canvas_item_set_self_modulate")
        self._method_canvas_item_set_self_modulate_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_self_modulate_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_canvas_item_set_self_modulate_2948539648 != nil)
        let _method_canvas_item_set_draw_behind_parent_1265174801_name = StringName(from: "canvas_item_set_draw_behind_parent")
        self._method_canvas_item_set_draw_behind_parent_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_draw_behind_parent_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_draw_behind_parent_1265174801 != nil)
        let _method_canvas_item_add_line_2843922985_name = StringName(from: "canvas_item_add_line")
        self._method_canvas_item_add_line_2843922985 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_line_2843922985_name._native_ptr(), 2843922985)
        assert(RenderingServer._method_canvas_item_add_line_2843922985 != nil)
        let _method_canvas_item_add_polyline_3438017257_name = StringName(from: "canvas_item_add_polyline")
        self._method_canvas_item_add_polyline_3438017257 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_polyline_3438017257_name._native_ptr(), 3438017257)
        assert(RenderingServer._method_canvas_item_add_polyline_3438017257 != nil)
        let _method_canvas_item_add_rect_934531857_name = StringName(from: "canvas_item_add_rect")
        self._method_canvas_item_add_rect_934531857 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_rect_934531857_name._native_ptr(), 934531857)
        assert(RenderingServer._method_canvas_item_add_rect_934531857 != nil)
        let _method_canvas_item_add_circle_2439351960_name = StringName(from: "canvas_item_add_circle")
        self._method_canvas_item_add_circle_2439351960 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_circle_2439351960_name._native_ptr(), 2439351960)
        assert(RenderingServer._method_canvas_item_add_circle_2439351960 != nil)
        let _method_canvas_item_add_texture_rect_3205360868_name = StringName(from: "canvas_item_add_texture_rect")
        self._method_canvas_item_add_texture_rect_3205360868 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_texture_rect_3205360868_name._native_ptr(), 3205360868)
        assert(RenderingServer._method_canvas_item_add_texture_rect_3205360868 != nil)
        let _method_canvas_item_add_msdf_texture_rect_region_349157222_name = StringName(from: "canvas_item_add_msdf_texture_rect_region")
        self._method_canvas_item_add_msdf_texture_rect_region_349157222 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_msdf_texture_rect_region_349157222_name._native_ptr(), 349157222)
        assert(RenderingServer._method_canvas_item_add_msdf_texture_rect_region_349157222 != nil)
        let _method_canvas_item_add_lcd_texture_rect_region_359793297_name = StringName(from: "canvas_item_add_lcd_texture_rect_region")
        self._method_canvas_item_add_lcd_texture_rect_region_359793297 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_lcd_texture_rect_region_359793297_name._native_ptr(), 359793297)
        assert(RenderingServer._method_canvas_item_add_lcd_texture_rect_region_359793297 != nil)
        let _method_canvas_item_add_texture_rect_region_2782979504_name = StringName(from: "canvas_item_add_texture_rect_region")
        self._method_canvas_item_add_texture_rect_region_2782979504 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_texture_rect_region_2782979504_name._native_ptr(), 2782979504)
        assert(RenderingServer._method_canvas_item_add_texture_rect_region_2782979504 != nil)
        let _method_canvas_item_add_nine_patch_904428547_name = StringName(from: "canvas_item_add_nine_patch")
        self._method_canvas_item_add_nine_patch_904428547 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_nine_patch_904428547_name._native_ptr(), 904428547)
        assert(RenderingServer._method_canvas_item_add_nine_patch_904428547 != nil)
        let _method_canvas_item_add_primitive_3731601077_name = StringName(from: "canvas_item_add_primitive")
        self._method_canvas_item_add_primitive_3731601077 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_primitive_3731601077_name._native_ptr(), 3731601077)
        assert(RenderingServer._method_canvas_item_add_primitive_3731601077 != nil)
        let _method_canvas_item_add_polygon_2907936855_name = StringName(from: "canvas_item_add_polygon")
        self._method_canvas_item_add_polygon_2907936855 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_polygon_2907936855_name._native_ptr(), 2907936855)
        assert(RenderingServer._method_canvas_item_add_polygon_2907936855 != nil)
        let _method_canvas_item_add_triangle_array_749685193_name = StringName(from: "canvas_item_add_triangle_array")
        self._method_canvas_item_add_triangle_array_749685193 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_triangle_array_749685193_name._native_ptr(), 749685193)
        assert(RenderingServer._method_canvas_item_add_triangle_array_749685193 != nil)
        let _method_canvas_item_add_mesh_3548053052_name = StringName(from: "canvas_item_add_mesh")
        self._method_canvas_item_add_mesh_3548053052 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_mesh_3548053052_name._native_ptr(), 3548053052)
        assert(RenderingServer._method_canvas_item_add_mesh_3548053052 != nil)
        let _method_canvas_item_add_multimesh_1541595251_name = StringName(from: "canvas_item_add_multimesh")
        self._method_canvas_item_add_multimesh_1541595251 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_multimesh_1541595251_name._native_ptr(), 1541595251)
        assert(RenderingServer._method_canvas_item_add_multimesh_1541595251 != nil)
        let _method_canvas_item_add_particles_2575754278_name = StringName(from: "canvas_item_add_particles")
        self._method_canvas_item_add_particles_2575754278 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_particles_2575754278_name._native_ptr(), 2575754278)
        assert(RenderingServer._method_canvas_item_add_particles_2575754278 != nil)
        let _method_canvas_item_add_set_transform_1246044741_name = StringName(from: "canvas_item_add_set_transform")
        self._method_canvas_item_add_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(RenderingServer._method_canvas_item_add_set_transform_1246044741 != nil)
        let _method_canvas_item_add_clip_ignore_1265174801_name = StringName(from: "canvas_item_add_clip_ignore")
        self._method_canvas_item_add_clip_ignore_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_clip_ignore_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_add_clip_ignore_1265174801 != nil)
        let _method_canvas_item_add_animation_slice_4107531031_name = StringName(from: "canvas_item_add_animation_slice")
        self._method_canvas_item_add_animation_slice_4107531031 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_add_animation_slice_4107531031_name._native_ptr(), 4107531031)
        assert(RenderingServer._method_canvas_item_add_animation_slice_4107531031 != nil)
        let _method_canvas_item_set_sort_children_by_y_1265174801_name = StringName(from: "canvas_item_set_sort_children_by_y")
        self._method_canvas_item_set_sort_children_by_y_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_sort_children_by_y_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_sort_children_by_y_1265174801 != nil)
        let _method_canvas_item_set_z_index_3411492887_name = StringName(from: "canvas_item_set_z_index")
        self._method_canvas_item_set_z_index_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_z_index_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_item_set_z_index_3411492887 != nil)
        let _method_canvas_item_set_z_as_relative_to_parent_1265174801_name = StringName(from: "canvas_item_set_z_as_relative_to_parent")
        self._method_canvas_item_set_z_as_relative_to_parent_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_z_as_relative_to_parent_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_z_as_relative_to_parent_1265174801 != nil)
        let _method_canvas_item_set_copy_to_backbuffer_2429202503_name = StringName(from: "canvas_item_set_copy_to_backbuffer")
        self._method_canvas_item_set_copy_to_backbuffer_2429202503 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_copy_to_backbuffer_2429202503_name._native_ptr(), 2429202503)
        assert(RenderingServer._method_canvas_item_set_copy_to_backbuffer_2429202503 != nil)
        let _method_canvas_item_clear_2722037293_name = StringName(from: "canvas_item_clear")
        self._method_canvas_item_clear_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_clear_2722037293_name._native_ptr(), 2722037293)
        assert(RenderingServer._method_canvas_item_clear_2722037293 != nil)
        let _method_canvas_item_set_draw_index_3411492887_name = StringName(from: "canvas_item_set_draw_index")
        self._method_canvas_item_set_draw_index_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_draw_index_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_item_set_draw_index_3411492887 != nil)
        let _method_canvas_item_set_material_395945892_name = StringName(from: "canvas_item_set_material")
        self._method_canvas_item_set_material_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_material_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_canvas_item_set_material_395945892 != nil)
        let _method_canvas_item_set_use_parent_material_1265174801_name = StringName(from: "canvas_item_set_use_parent_material")
        self._method_canvas_item_set_use_parent_material_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_use_parent_material_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_item_set_use_parent_material_1265174801 != nil)
        let _method_canvas_item_set_visibility_notifier_3568945579_name = StringName(from: "canvas_item_set_visibility_notifier")
        self._method_canvas_item_set_visibility_notifier_3568945579 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_visibility_notifier_3568945579_name._native_ptr(), 3568945579)
        assert(RenderingServer._method_canvas_item_set_visibility_notifier_3568945579 != nil)
        let _method_canvas_item_set_canvas_group_mode_1568036344_name = StringName(from: "canvas_item_set_canvas_group_mode")
        self._method_canvas_item_set_canvas_group_mode_1568036344 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_item_set_canvas_group_mode_1568036344_name._native_ptr(), 1568036344)
        assert(RenderingServer._method_canvas_item_set_canvas_group_mode_1568036344 != nil)
        let _method_canvas_light_create_529393457_name = StringName(from: "canvas_light_create")
        self._method_canvas_light_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_canvas_light_create_529393457 != nil)
        let _method_canvas_light_attach_to_canvas_395945892_name = StringName(from: "canvas_light_attach_to_canvas")
        self._method_canvas_light_attach_to_canvas_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_attach_to_canvas_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_canvas_light_attach_to_canvas_395945892 != nil)
        let _method_canvas_light_set_enabled_1265174801_name = StringName(from: "canvas_light_set_enabled")
        self._method_canvas_light_set_enabled_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_enabled_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_light_set_enabled_1265174801 != nil)
        let _method_canvas_light_set_texture_scale_1794382983_name = StringName(from: "canvas_light_set_texture_scale")
        self._method_canvas_light_set_texture_scale_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_texture_scale_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_canvas_light_set_texture_scale_1794382983 != nil)
        let _method_canvas_light_set_transform_1246044741_name = StringName(from: "canvas_light_set_transform")
        self._method_canvas_light_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(RenderingServer._method_canvas_light_set_transform_1246044741 != nil)
        let _method_canvas_light_set_texture_395945892_name = StringName(from: "canvas_light_set_texture")
        self._method_canvas_light_set_texture_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_texture_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_canvas_light_set_texture_395945892 != nil)
        let _method_canvas_light_set_texture_offset_3201125042_name = StringName(from: "canvas_light_set_texture_offset")
        self._method_canvas_light_set_texture_offset_3201125042 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_texture_offset_3201125042_name._native_ptr(), 3201125042)
        assert(RenderingServer._method_canvas_light_set_texture_offset_3201125042 != nil)
        let _method_canvas_light_set_color_2948539648_name = StringName(from: "canvas_light_set_color")
        self._method_canvas_light_set_color_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_color_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_canvas_light_set_color_2948539648 != nil)
        let _method_canvas_light_set_height_1794382983_name = StringName(from: "canvas_light_set_height")
        self._method_canvas_light_set_height_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_height_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_canvas_light_set_height_1794382983 != nil)
        let _method_canvas_light_set_energy_1794382983_name = StringName(from: "canvas_light_set_energy")
        self._method_canvas_light_set_energy_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_energy_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_canvas_light_set_energy_1794382983 != nil)
        let _method_canvas_light_set_z_range_4288446313_name = StringName(from: "canvas_light_set_z_range")
        self._method_canvas_light_set_z_range_4288446313 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_z_range_4288446313_name._native_ptr(), 4288446313)
        assert(RenderingServer._method_canvas_light_set_z_range_4288446313 != nil)
        let _method_canvas_light_set_layer_range_4288446313_name = StringName(from: "canvas_light_set_layer_range")
        self._method_canvas_light_set_layer_range_4288446313 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_layer_range_4288446313_name._native_ptr(), 4288446313)
        assert(RenderingServer._method_canvas_light_set_layer_range_4288446313 != nil)
        let _method_canvas_light_set_item_cull_mask_3411492887_name = StringName(from: "canvas_light_set_item_cull_mask")
        self._method_canvas_light_set_item_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_item_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_light_set_item_cull_mask_3411492887 != nil)
        let _method_canvas_light_set_item_shadow_cull_mask_3411492887_name = StringName(from: "canvas_light_set_item_shadow_cull_mask")
        self._method_canvas_light_set_item_shadow_cull_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_item_shadow_cull_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_light_set_item_shadow_cull_mask_3411492887 != nil)
        let _method_canvas_light_set_mode_2957564891_name = StringName(from: "canvas_light_set_mode")
        self._method_canvas_light_set_mode_2957564891 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_mode_2957564891_name._native_ptr(), 2957564891)
        assert(RenderingServer._method_canvas_light_set_mode_2957564891 != nil)
        let _method_canvas_light_set_shadow_enabled_1265174801_name = StringName(from: "canvas_light_set_shadow_enabled")
        self._method_canvas_light_set_shadow_enabled_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_shadow_enabled_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_light_set_shadow_enabled_1265174801 != nil)
        let _method_canvas_light_set_shadow_filter_393119659_name = StringName(from: "canvas_light_set_shadow_filter")
        self._method_canvas_light_set_shadow_filter_393119659 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_shadow_filter_393119659_name._native_ptr(), 393119659)
        assert(RenderingServer._method_canvas_light_set_shadow_filter_393119659 != nil)
        let _method_canvas_light_set_shadow_color_2948539648_name = StringName(from: "canvas_light_set_shadow_color")
        self._method_canvas_light_set_shadow_color_2948539648 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_shadow_color_2948539648_name._native_ptr(), 2948539648)
        assert(RenderingServer._method_canvas_light_set_shadow_color_2948539648 != nil)
        let _method_canvas_light_set_shadow_smooth_1794382983_name = StringName(from: "canvas_light_set_shadow_smooth")
        self._method_canvas_light_set_shadow_smooth_1794382983 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_set_shadow_smooth_1794382983_name._native_ptr(), 1794382983)
        assert(RenderingServer._method_canvas_light_set_shadow_smooth_1794382983 != nil)
        let _method_canvas_light_occluder_create_529393457_name = StringName(from: "canvas_light_occluder_create")
        self._method_canvas_light_occluder_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_canvas_light_occluder_create_529393457 != nil)
        let _method_canvas_light_occluder_attach_to_canvas_395945892_name = StringName(from: "canvas_light_occluder_attach_to_canvas")
        self._method_canvas_light_occluder_attach_to_canvas_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_attach_to_canvas_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_canvas_light_occluder_attach_to_canvas_395945892 != nil)
        let _method_canvas_light_occluder_set_enabled_1265174801_name = StringName(from: "canvas_light_occluder_set_enabled")
        self._method_canvas_light_occluder_set_enabled_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_set_enabled_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_light_occluder_set_enabled_1265174801 != nil)
        let _method_canvas_light_occluder_set_polygon_395945892_name = StringName(from: "canvas_light_occluder_set_polygon")
        self._method_canvas_light_occluder_set_polygon_395945892 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_set_polygon_395945892_name._native_ptr(), 395945892)
        assert(RenderingServer._method_canvas_light_occluder_set_polygon_395945892 != nil)
        let _method_canvas_light_occluder_set_as_sdf_collision_1265174801_name = StringName(from: "canvas_light_occluder_set_as_sdf_collision")
        self._method_canvas_light_occluder_set_as_sdf_collision_1265174801 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_set_as_sdf_collision_1265174801_name._native_ptr(), 1265174801)
        assert(RenderingServer._method_canvas_light_occluder_set_as_sdf_collision_1265174801 != nil)
        let _method_canvas_light_occluder_set_transform_1246044741_name = StringName(from: "canvas_light_occluder_set_transform")
        self._method_canvas_light_occluder_set_transform_1246044741 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_set_transform_1246044741_name._native_ptr(), 1246044741)
        assert(RenderingServer._method_canvas_light_occluder_set_transform_1246044741 != nil)
        let _method_canvas_light_occluder_set_light_mask_3411492887_name = StringName(from: "canvas_light_occluder_set_light_mask")
        self._method_canvas_light_occluder_set_light_mask_3411492887 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_light_occluder_set_light_mask_3411492887_name._native_ptr(), 3411492887)
        assert(RenderingServer._method_canvas_light_occluder_set_light_mask_3411492887 != nil)
        let _method_canvas_occluder_polygon_create_529393457_name = StringName(from: "canvas_occluder_polygon_create")
        self._method_canvas_occluder_polygon_create_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_occluder_polygon_create_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_canvas_occluder_polygon_create_529393457 != nil)
        let _method_canvas_occluder_polygon_set_shape_2103882027_name = StringName(from: "canvas_occluder_polygon_set_shape")
        self._method_canvas_occluder_polygon_set_shape_2103882027 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_occluder_polygon_set_shape_2103882027_name._native_ptr(), 2103882027)
        assert(RenderingServer._method_canvas_occluder_polygon_set_shape_2103882027 != nil)
        let _method_canvas_occluder_polygon_set_cull_mode_1839404663_name = StringName(from: "canvas_occluder_polygon_set_cull_mode")
        self._method_canvas_occluder_polygon_set_cull_mode_1839404663 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_occluder_polygon_set_cull_mode_1839404663_name._native_ptr(), 1839404663)
        assert(RenderingServer._method_canvas_occluder_polygon_set_cull_mode_1839404663 != nil)
        let _method_canvas_set_shadow_texture_size_1286410249_name = StringName(from: "canvas_set_shadow_texture_size")
        self._method_canvas_set_shadow_texture_size_1286410249 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_canvas_set_shadow_texture_size_1286410249_name._native_ptr(), 1286410249)
        assert(RenderingServer._method_canvas_set_shadow_texture_size_1286410249 != nil)
        let _method_global_shader_parameter_add_463390080_name = StringName(from: "global_shader_parameter_add")
        self._method_global_shader_parameter_add_463390080 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_add_463390080_name._native_ptr(), 463390080)
        assert(RenderingServer._method_global_shader_parameter_add_463390080 != nil)
        let _method_global_shader_parameter_remove_3304788590_name = StringName(from: "global_shader_parameter_remove")
        self._method_global_shader_parameter_remove_3304788590 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_remove_3304788590_name._native_ptr(), 3304788590)
        assert(RenderingServer._method_global_shader_parameter_remove_3304788590 != nil)
        let _method_global_shader_parameter_get_list_1139954409_name = StringName(from: "global_shader_parameter_get_list")
        self._method_global_shader_parameter_get_list_1139954409 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_get_list_1139954409_name._native_ptr(), 1139954409)
        assert(RenderingServer._method_global_shader_parameter_get_list_1139954409 != nil)
        let _method_global_shader_parameter_set_3776071444_name = StringName(from: "global_shader_parameter_set")
        self._method_global_shader_parameter_set_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_set_3776071444_name._native_ptr(), 3776071444)
        assert(RenderingServer._method_global_shader_parameter_set_3776071444 != nil)
        let _method_global_shader_parameter_set_override_3776071444_name = StringName(from: "global_shader_parameter_set_override")
        self._method_global_shader_parameter_set_override_3776071444 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_set_override_3776071444_name._native_ptr(), 3776071444)
        assert(RenderingServer._method_global_shader_parameter_set_override_3776071444 != nil)
        let _method_global_shader_parameter_get_2760726917_name = StringName(from: "global_shader_parameter_get")
        self._method_global_shader_parameter_get_2760726917 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_get_2760726917_name._native_ptr(), 2760726917)
        assert(RenderingServer._method_global_shader_parameter_get_2760726917 != nil)
        let _method_global_shader_parameter_get_type_1601414142_name = StringName(from: "global_shader_parameter_get_type")
        self._method_global_shader_parameter_get_type_1601414142 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_global_shader_parameter_get_type_1601414142_name._native_ptr(), 1601414142)
        assert(RenderingServer._method_global_shader_parameter_get_type_1601414142 != nil)
        let _method_free_rid_2722037293_name = StringName(from: "free_rid")
        self._method_free_rid_2722037293 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_free_rid_2722037293_name._native_ptr(), 2722037293)
        assert(RenderingServer._method_free_rid_2722037293 != nil)
        let _method_request_frame_drawn_callback_1611583062_name = StringName(from: "request_frame_drawn_callback")
        self._method_request_frame_drawn_callback_1611583062 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_request_frame_drawn_callback_1611583062_name._native_ptr(), 1611583062)
        assert(RenderingServer._method_request_frame_drawn_callback_1611583062 != nil)
        let _method_has_changed_36873697_name = StringName(from: "has_changed")
        self._method_has_changed_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_changed_36873697_name._native_ptr(), 36873697)
        assert(RenderingServer._method_has_changed_36873697 != nil)
        let _method_get_rendering_info_3763192241_name = StringName(from: "get_rendering_info")
        self._method_get_rendering_info_3763192241 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rendering_info_3763192241_name._native_ptr(), 3763192241)
        assert(RenderingServer._method_get_rendering_info_3763192241 != nil)
        let _method_get_video_adapter_name_201670096_name = StringName(from: "get_video_adapter_name")
        self._method_get_video_adapter_name_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_video_adapter_name_201670096_name._native_ptr(), 201670096)
        assert(RenderingServer._method_get_video_adapter_name_201670096 != nil)
        let _method_get_video_adapter_vendor_201670096_name = StringName(from: "get_video_adapter_vendor")
        self._method_get_video_adapter_vendor_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_video_adapter_vendor_201670096_name._native_ptr(), 201670096)
        assert(RenderingServer._method_get_video_adapter_vendor_201670096 != nil)
        let _method_get_video_adapter_type_3099547011_name = StringName(from: "get_video_adapter_type")
        self._method_get_video_adapter_type_3099547011 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_video_adapter_type_3099547011_name._native_ptr(), 3099547011)
        assert(RenderingServer._method_get_video_adapter_type_3099547011 != nil)
        let _method_get_video_adapter_api_version_201670096_name = StringName(from: "get_video_adapter_api_version")
        self._method_get_video_adapter_api_version_201670096 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_video_adapter_api_version_201670096_name._native_ptr(), 201670096)
        assert(RenderingServer._method_get_video_adapter_api_version_201670096 != nil)
        let _method_make_sphere_mesh_2251015897_name = StringName(from: "make_sphere_mesh")
        self._method_make_sphere_mesh_2251015897 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_make_sphere_mesh_2251015897_name._native_ptr(), 2251015897)
        assert(RenderingServer._method_make_sphere_mesh_2251015897 != nil)
        let _method_get_test_cube_529393457_name = StringName(from: "get_test_cube")
        self._method_get_test_cube_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_test_cube_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_get_test_cube_529393457 != nil)
        let _method_get_test_texture_529393457_name = StringName(from: "get_test_texture")
        self._method_get_test_texture_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_test_texture_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_get_test_texture_529393457 != nil)
        let _method_get_white_texture_529393457_name = StringName(from: "get_white_texture")
        self._method_get_white_texture_529393457 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_white_texture_529393457_name._native_ptr(), 529393457)
        assert(RenderingServer._method_get_white_texture_529393457 != nil)
        let _method_set_boot_image_2244367877_name = StringName(from: "set_boot_image")
        self._method_set_boot_image_2244367877 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_boot_image_2244367877_name._native_ptr(), 2244367877)
        assert(RenderingServer._method_set_boot_image_2244367877 != nil)
        let _method_get_default_clear_color_3200896285_name = StringName(from: "get_default_clear_color")
        self._method_get_default_clear_color_3200896285 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_default_clear_color_3200896285_name._native_ptr(), 3200896285)
        assert(RenderingServer._method_get_default_clear_color_3200896285 != nil)
        let _method_set_default_clear_color_2920490490_name = StringName(from: "set_default_clear_color")
        self._method_set_default_clear_color_2920490490 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_default_clear_color_2920490490_name._native_ptr(), 2920490490)
        assert(RenderingServer._method_set_default_clear_color_2920490490 != nil)
        let _method_has_feature_598462696_name = StringName(from: "has_feature")
        self._method_has_feature_598462696 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_feature_598462696_name._native_ptr(), 598462696)
        assert(RenderingServer._method_has_feature_598462696 != nil)
        let _method_has_os_feature_3927539163_name = StringName(from: "has_os_feature")
        self._method_has_os_feature_3927539163 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_has_os_feature_3927539163_name._native_ptr(), 3927539163)
        assert(RenderingServer._method_has_os_feature_3927539163 != nil)
        let _method_set_debug_generate_wireframes_2586408642_name = StringName(from: "set_debug_generate_wireframes")
        self._method_set_debug_generate_wireframes_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_debug_generate_wireframes_2586408642_name._native_ptr(), 2586408642)
        assert(RenderingServer._method_set_debug_generate_wireframes_2586408642 != nil)
        let _method_is_render_loop_enabled_36873697_name = StringName(from: "is_render_loop_enabled")
        self._method_is_render_loop_enabled_36873697 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_is_render_loop_enabled_36873697_name._native_ptr(), 36873697)
        assert(RenderingServer._method_is_render_loop_enabled_36873697 != nil)
        let _method_set_render_loop_enabled_2586408642_name = StringName(from: "set_render_loop_enabled")
        self._method_set_render_loop_enabled_2586408642 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_set_render_loop_enabled_2586408642_name._native_ptr(), 2586408642)
        assert(RenderingServer._method_set_render_loop_enabled_2586408642 != nil)
        let _method_get_frame_setup_time_cpu_1740695150_name = StringName(from: "get_frame_setup_time_cpu")
        self._method_get_frame_setup_time_cpu_1740695150 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_frame_setup_time_cpu_1740695150_name._native_ptr(), 1740695150)
        assert(RenderingServer._method_get_frame_setup_time_cpu_1740695150 != nil)
        let _method_force_sync_3218959716_name = StringName(from: "force_sync")
        self._method_force_sync_3218959716 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_sync_3218959716_name._native_ptr(), 3218959716)
        assert(RenderingServer._method_force_sync_3218959716 != nil)
        let _method_force_draw_899045543_name = StringName(from: "force_draw")
        self._method_force_draw_899045543 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_force_draw_899045543_name._native_ptr(), 899045543)
        assert(RenderingServer._method_force_draw_899045543 != nil)
        let _method_get_rendering_device_1405107940_name = StringName(from: "get_rendering_device")
        self._method_get_rendering_device_1405107940 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_get_rendering_device_1405107940_name._native_ptr(), 1405107940)
        assert(RenderingServer._method_get_rendering_device_1405107940 != nil)
        let _method_create_local_rendering_device_1405107940_name = StringName(from: "create_local_rendering_device")
        self._method_create_local_rendering_device_1405107940 = self.interface.pointee.classdb_get_method_bind(__godot_name._native_ptr(), _method_create_local_rendering_device_1405107940_name._native_ptr(), 1405107940)
        assert(RenderingServer._method_create_local_rendering_device_1405107940 != nil)
    }

    public func texture_2d_create(image: Image) -> RID {
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_create_2010018390,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func texture_2d_layered_create(layers: [Image], layered_type: RenderingServer.TextureLayeredType) -> RID {
        withUnsafePointer(to: layered_type.rawValue) { layered_type_native in
        let layers_native = layers._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layers_native), .init(layered_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_layered_create_913689023,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func texture_3d_create(format: Image.Format, width: Int64, height: Int64, depth: Int64, mipmaps: UInt8, data: [Image]) -> RID {
        withUnsafePointer(to: mipmaps) { mipmaps_native in
        withUnsafePointer(to: depth) { depth_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(width_native), .init(height_native), .init(depth_native), .init(mipmaps_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_3d_create_4036838706,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func texture_proxy_create(base: RID) -> RID {
        let base_native = base._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_proxy_create_41030802,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func texture_2d_update(texture: RID, image: Image, layer: Int64)  {
        withUnsafePointer(to: layer) { layer_native in
        let image_native = image._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(image_native), .init(layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_update_999539803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func texture_3d_update(texture: RID, data: [Image])  {
        let data_native = data._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_3d_update_684822712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func texture_proxy_update(texture: RID, proxy_to: RID)  {
        let proxy_to_native = proxy_to._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(proxy_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_proxy_update_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func texture_2d_placeholder_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_placeholder_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func texture_2d_layered_placeholder_create(layered_type: RenderingServer.TextureLayeredType) -> RID {
        withUnsafePointer(to: layered_type.rawValue) { layered_type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(layered_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_layered_placeholder_create_1394585590,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func texture_3d_placeholder_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_3d_placeholder_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func texture_2d_get(texture: RID) -> Image {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_get_4206205781,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
    }
    public func texture_2d_layer_get(texture: RID, layer: Int64) -> Image {
        withUnsafePointer(to: layer) { layer_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_2d_layer_get_2705440895,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
        }
    }
    public func texture_3d_get(texture: RID) -> [Image] {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_3d_get_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Image](from: __resPtr.pointee)
    }
    public func texture_replace(texture: RID, by_texture: RID)  {
        let by_texture_native = by_texture._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(by_texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_replace_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func texture_set_size_override(texture: RID, width: Int64, height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(width_native), .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_set_size_override_4288446313,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func texture_set_path(texture: RID, path: String)  {
        withUnsafePointer(to: path) { path_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_set_path_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func texture_get_path(texture: RID) -> String {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_get_path_642473191,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func texture_set_force_redraw_if_visible(texture: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_set_force_redraw_if_visible_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func texture_get_rd_texture(texture: RID, srgb: UInt8) -> RID {
        withUnsafePointer(to: srgb) { srgb_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(srgb_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_texture_get_rd_texture_2790148051,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func shader_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func shader_set_code(shader: RID, code: String)  {
        withUnsafePointer(to: code) { code_native in
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(code_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_set_code_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shader_set_path_hint(shader: RID, path: String)  {
        withUnsafePointer(to: path) { path_native in
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(path_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_set_path_hint_2726140452,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shader_get_code(shader: RID) -> String {
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_get_code_642473191,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_shader_parameter_list(shader: RID) -> [Dictionary] {
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_shader_parameter_list_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func shader_get_parameter_default(shader: RID, name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_get_parameter_default_2621281810,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func shader_set_default_texture_parameter(shader: RID, name: StringName, texture: RID, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let texture_native = texture._native_ptr()
        let name_native = name._native_ptr()
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(name_native), .init(texture_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_set_default_texture_parameter_3864903085,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func shader_get_default_texture_parameter(shader: RID, name: StringName, index: Int64) -> RID {
        withUnsafePointer(to: index) { index_native in
        let name_native = name._native_ptr()
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(name_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_shader_get_default_texture_parameter_2523186822,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func material_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_material_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func material_set_shader(shader_material: RID, shader: RID)  {
        let shader_native = shader._native_ptr()
        let shader_material_native = shader_material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_material_native), .init(shader_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_material_set_shader_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func material_set_param(material: RID, parameter: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let parameter_native = parameter._native_ptr()
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native), .init(parameter_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_material_set_param_3477296213,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func material_get_param(material: RID, parameter: StringName) -> Variant {
        let parameter_native = parameter._native_ptr()
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native), .init(parameter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_material_get_param_2621281810,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func material_set_render_priority(material: RID, priority: Int64)  {
        withUnsafePointer(to: priority) { priority_native in
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native), .init(priority_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_material_set_render_priority_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func material_set_next_pass(material: RID, next_material: RID)  {
        let next_material_native = next_material._native_ptr()
        let material_native = material._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(material_native), .init(next_material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_material_set_next_pass_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func mesh_create_from_surfaces(surfaces: [Dictionary], blend_shape_count: Int64) -> RID {
        withUnsafePointer(to: blend_shape_count) { blend_shape_count_native in
        let surfaces_native = surfaces._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(surfaces_native), .init(blend_shape_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_create_from_surfaces_4007581507,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func mesh_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func mesh_surface_get_format_offset(format: RenderingServer.ArrayFormat, vertex_count: Int64, array_index: Int64) -> Int64 {
        withUnsafePointer(to: array_index) { array_index_native in
        withUnsafePointer(to: vertex_count) { vertex_count_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(vertex_count_native), .init(array_index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_format_offset_2981368685,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
        }
    }
    public func mesh_surface_get_format_vertex_stride(format: RenderingServer.ArrayFormat, vertex_count: Int64) -> Int64 {
        withUnsafePointer(to: vertex_count) { vertex_count_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(vertex_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_format_vertex_stride_3188363337,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func mesh_surface_get_format_attribute_stride(format: RenderingServer.ArrayFormat, vertex_count: Int64) -> Int64 {
        withUnsafePointer(to: vertex_count) { vertex_count_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(vertex_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_format_attribute_stride_3188363337,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func mesh_surface_get_format_skin_stride(format: RenderingServer.ArrayFormat, vertex_count: Int64) -> Int64 {
        withUnsafePointer(to: vertex_count) { vertex_count_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(vertex_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_format_skin_stride_3188363337,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func mesh_add_surface(mesh: RID, surface: Dictionary)  {
        let surface_native = surface._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_add_surface_1217542888,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func mesh_add_surface_from_arrays(mesh: RID, primitive: RenderingServer.PrimitiveType, arrays: Array, blend_shapes: Array, lods: Dictionary, compress_format: RenderingServer.ArrayFormat)  {
        withUnsafePointer(to: compress_format.rawValue) { compress_format_native in
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
        let lods_native = lods._native_ptr()
        let blend_shapes_native = blend_shapes._native_ptr()
        let arrays_native = arrays._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(primitive_native), .init(arrays_native), .init(blend_shapes_native), .init(lods_native), .init(compress_format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_add_surface_from_arrays_1247008646,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func mesh_get_blend_shape_count(mesh: RID) -> Int64 {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_get_blend_shape_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func mesh_set_blend_shape_mode(mesh: RID, mode: RenderingServer.BlendShapeMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_set_blend_shape_mode_1294662092,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func mesh_get_blend_shape_mode(mesh: RID) -> RenderingServer.BlendShapeMode {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_get_blend_shape_mode_4282291819,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingServer.BlendShapeMode(from: __resPtr.pointee)
    }
    public func mesh_surface_set_material(mesh: RID, surface: Int64, material: RID)  {
        withUnsafePointer(to: surface) { surface_native in
        let material_native = material._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_set_material_2310537182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func mesh_surface_get_material(mesh: RID, surface: Int64) -> RID {
        withUnsafePointer(to: surface) { surface_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_material_1066463050,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
    }
    public func mesh_get_surface(mesh: RID, surface: Int64) -> Dictionary {
        withUnsafePointer(to: surface) { surface_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_get_surface_186674697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Dictionary(from: __resPtr.pointee)
        }
    }
    public func mesh_surface_get_arrays(mesh: RID, surface: Int64) -> Array {
        withUnsafePointer(to: surface) { surface_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_arrays_1778388067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Array(from: __resPtr.pointee)
        }
    }
    public func mesh_surface_get_blend_shape_arrays(mesh: RID, surface: Int64) -> [Array] {
        withUnsafePointer(to: surface) { surface_native in
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_get_blend_shape_arrays_1778388067,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Array](from: __resPtr.pointee)
        }
    }
    public func mesh_get_surface_count(mesh: RID) -> Int64 {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_get_surface_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func mesh_set_custom_aabb(mesh: RID, aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_set_custom_aabb_3696536120,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func mesh_get_custom_aabb(mesh: RID) -> AABB {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_get_custom_aabb_974181306,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func mesh_clear(mesh: RID)  {
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_clear_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func mesh_surface_update_vertex_region(mesh: RID, surface: Int64, offset: Int64, data: PackedByteArray)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: surface) { surface_native in
        let data_native = data._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native), .init(offset_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_update_vertex_region_2900195149,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func mesh_surface_update_attribute_region(mesh: RID, surface: Int64, offset: Int64, data: PackedByteArray)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: surface) { surface_native in
        let data_native = data._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native), .init(offset_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_update_attribute_region_2900195149,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func mesh_surface_update_skin_region(mesh: RID, surface: Int64, offset: Int64, data: PackedByteArray)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: surface) { surface_native in
        let data_native = data._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(surface_native), .init(offset_native), .init(data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_surface_update_skin_region_2900195149,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func mesh_set_shadow_mesh(mesh: RID, shadow_mesh: RID)  {
        let shadow_mesh_native = shadow_mesh._native_ptr()
        let mesh_native = mesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(mesh_native), .init(shadow_mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_mesh_set_shadow_mesh_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func multimesh_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func multimesh_allocate_data(multimesh: RID, instances: Int64, transform_format: RenderingServer.MultimeshTransformFormat, color_format: UInt8, custom_data_format: UInt8)  {
        withUnsafePointer(to: custom_data_format) { custom_data_format_native in
        withUnsafePointer(to: color_format) { color_format_native in
        withUnsafePointer(to: instances) { instances_native in
        withUnsafePointer(to: transform_format.rawValue) { transform_format_native in
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(instances_native), .init(transform_format_native), .init(color_format_native), .init(custom_data_format_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_allocate_data_283685892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func multimesh_get_instance_count(multimesh: RID) -> Int64 {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_get_instance_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func multimesh_set_mesh(multimesh: RID, mesh: RID)  {
        let mesh_native = mesh._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_set_mesh_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func multimesh_instance_set_transform(multimesh: RID, index: Int64, transform: Transform3D)  {
        withUnsafePointer(to: index) { index_native in
        let transform_native = transform._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_set_transform_675327471,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func multimesh_instance_set_transform_2d(multimesh: RID, index: Int64, transform: Transform2D)  {
        withUnsafePointer(to: index) { index_native in
        let transform_native = transform._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_set_transform_2d_736082694,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func multimesh_instance_set_color(multimesh: RID, index: Int64, color: Color)  {
        withUnsafePointer(to: index) { index_native in
        let color_native = color._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_set_color_176975443,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func multimesh_instance_set_custom_data(multimesh: RID, index: Int64, custom_data: Color)  {
        withUnsafePointer(to: index) { index_native in
        let custom_data_native = custom_data._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native), .init(custom_data_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_set_custom_data_176975443,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func multimesh_get_mesh(multimesh: RID) -> RID {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_get_mesh_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func multimesh_get_aabb(multimesh: RID) -> AABB {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_get_aabb_974181306,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func multimesh_instance_get_transform(multimesh: RID, index: Int64) -> Transform3D {
        withUnsafePointer(to: index) { index_native in
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_get_transform_1050775521,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func multimesh_instance_get_transform_2d(multimesh: RID, index: Int64) -> Transform2D {
        withUnsafePointer(to: index) { index_native in
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_get_transform_2d_1324854622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
        }
    }
    public func multimesh_instance_get_color(multimesh: RID, index: Int64) -> Color {
        withUnsafePointer(to: index) { index_native in
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_get_color_2946315076,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func multimesh_instance_get_custom_data(multimesh: RID, index: Int64) -> Color {
        withUnsafePointer(to: index) { index_native in
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_instance_get_custom_data_2946315076,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
        }
    }
    public func multimesh_set_visible_instances(multimesh: RID, visible: Int64)  {
        withUnsafePointer(to: visible) { visible_native in
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_set_visible_instances_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func multimesh_get_visible_instances(multimesh: RID) -> Int64 {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_get_visible_instances_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func multimesh_set_buffer(multimesh: RID, buffer: PackedFloat32Array)  {
        let buffer_native = buffer._native_ptr()
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native), .init(buffer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_set_buffer_2960552364,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func multimesh_get_buffer(multimesh: RID) -> PackedFloat32Array {
        let multimesh_native = multimesh._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(multimesh_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_multimesh_get_buffer_3964669176,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedFloat32Array(from: __resPtr.pointee)
    }
    public func skeleton_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func skeleton_allocate_data(skeleton: RID, bones: Int64, is_2d_skeleton: UInt8)  {
        withUnsafePointer(to: is_2d_skeleton) { is_2d_skeleton_native in
        withUnsafePointer(to: bones) { bones_native in
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native), .init(bones_native), .init(is_2d_skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_allocate_data_1904426712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func skeleton_get_bone_count(skeleton: RID) -> Int64 {
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_get_bone_count_2198884583,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
    }
    public func skeleton_bone_set_transform(skeleton: RID, bone: Int64, transform: Transform3D)  {
        withUnsafePointer(to: bone) { bone_native in
        let transform_native = transform._native_ptr()
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native), .init(bone_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_bone_set_transform_675327471,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func skeleton_bone_get_transform(skeleton: RID, bone: Int64) -> Transform3D {
        withUnsafePointer(to: bone) { bone_native in
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native), .init(bone_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_bone_get_transform_1050775521,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
        }
    }
    public func skeleton_bone_set_transform_2d(skeleton: RID, bone: Int64, transform: Transform2D)  {
        withUnsafePointer(to: bone) { bone_native in
        let transform_native = transform._native_ptr()
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native), .init(bone_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_bone_set_transform_2d_736082694,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func skeleton_bone_get_transform_2d(skeleton: RID, bone: Int64) -> Transform2D {
        withUnsafePointer(to: bone) { bone_native in
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native), .init(bone_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_bone_get_transform_2d_1324854622,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform2D(from: __resPtr.pointee)
        }
    }
    public func skeleton_set_base_transform_2d(skeleton: RID, base_transform: Transform2D)  {
        let base_transform_native = base_transform._native_ptr()
        let skeleton_native = skeleton._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(skeleton_native), .init(base_transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_skeleton_set_base_transform_2d_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func directional_light_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_directional_light_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func omni_light_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_omni_light_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func spot_light_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_spot_light_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func light_set_color(light: RID, color: Color)  {
        let color_native = color._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_color_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func light_set_param(light: RID, param: RenderingServer.LightParam, value: Float64)  {
        withUnsafePointer(to: value) { value_native in
        withUnsafePointer(to: param.rawValue) { param_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(param_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_param_501936875,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func light_set_shadow(light: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_shadow_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_set_projector(light: RID, texture: RID)  {
        let texture_native = texture._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_projector_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func light_set_negative(light: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_negative_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_set_cull_mask(light: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_set_distance_fade(decal: RID, enabled: UInt8, begin: Float64, shadow: Float64, length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        withUnsafePointer(to: shadow) { shadow_native in
        withUnsafePointer(to: begin) { begin_native in
        withUnsafePointer(to: enabled) { enabled_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(enabled_native), .init(begin_native), .init(shadow_native), .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_distance_fade_1622292572,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func light_set_reverse_cull_face_mode(light: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_reverse_cull_face_mode_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_set_bake_mode(light: RID, bake_mode: RenderingServer.LightBakeMode)  {
        withUnsafePointer(to: bake_mode.rawValue) { bake_mode_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(bake_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_bake_mode_1048525260,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_set_max_sdfgi_cascade(light: RID, cascade: Int64)  {
        withUnsafePointer(to: cascade) { cascade_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(cascade_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_set_max_sdfgi_cascade_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_omni_set_shadow_mode(light: RID, mode: RenderingServer.LightOmniShadowMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_omni_set_shadow_mode_2552677200,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_directional_set_shadow_mode(light: RID, mode: RenderingServer.LightDirectionalShadowMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_directional_set_shadow_mode_380462970,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_directional_set_blend_splits(light: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_directional_set_blend_splits_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_directional_set_sky_mode(light: RID, mode: RenderingServer.LightDirectionalSkyMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_directional_set_sky_mode_2559740754,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func light_projectors_set_filter(filter: RenderingServer.LightProjectorFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_light_projectors_set_filter_43944325,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func positional_soft_shadow_filter_set_quality(quality: RenderingServer.ShadowQuality)  {
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_positional_soft_shadow_filter_set_quality_3613045266,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func directional_soft_shadow_filter_set_quality(quality: RenderingServer.ShadowQuality)  {
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_directional_soft_shadow_filter_set_quality_3613045266,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func directional_shadow_atlas_set_size(size: Int64, is_16bits: UInt8)  {
        withUnsafePointer(to: is_16bits) { is_16bits_native in
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(is_16bits_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_directional_shadow_atlas_set_size_300928843,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func reflection_probe_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func reflection_probe_set_update_mode(probe: RID, mode: RenderingServer.ReflectionProbeUpdateMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_update_mode_3853670147,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_intensity(probe: RID, intensity: Float64)  {
        withUnsafePointer(to: intensity) { intensity_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(intensity_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_intensity_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_ambient_mode(probe: RID, mode: RenderingServer.ReflectionProbeAmbientMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_ambient_mode_184163074,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_ambient_color(probe: RID, color: Color)  {
        let color_native = color._native_ptr()
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_ambient_color_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func reflection_probe_set_ambient_energy(probe: RID, energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_ambient_energy_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_max_distance(probe: RID, distance: Float64)  {
        withUnsafePointer(to: distance) { distance_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(distance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_max_distance_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_size(probe: RID, size: Vector3)  {
        let size_native = size._native_ptr()
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_size_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func reflection_probe_set_origin_offset(probe: RID, offset: Vector3)  {
        let offset_native = offset._native_ptr()
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_origin_offset_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func reflection_probe_set_as_interior(probe: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_as_interior_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_enable_box_projection(probe: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_enable_box_projection_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_enable_shadows(probe: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_enable_shadows_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_cull_mask(probe: RID, layers: Int64)  {
        withUnsafePointer(to: layers) { layers_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_resolution(probe: RID, resolution: Int64)  {
        withUnsafePointer(to: resolution) { resolution_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(resolution_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_resolution_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func reflection_probe_set_mesh_lod_threshold(probe: RID, pixels: Float64)  {
        withUnsafePointer(to: pixels) { pixels_native in
        let probe_native = probe._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(probe_native), .init(pixels_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_reflection_probe_set_mesh_lod_threshold_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func decal_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func decal_set_size(decal: RID, size: Vector3)  {
        let size_native = size._native_ptr()
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_size_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func decal_set_texture(decal: RID, `type`: RenderingServer.DecalTexture, texture: RID)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let texture_native = texture._native_ptr()
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(type_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_texture_3953344054,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func decal_set_emission_energy(decal: RID, energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_emission_energy_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func decal_set_albedo_mix(decal: RID, albedo_mix: Float64)  {
        withUnsafePointer(to: albedo_mix) { albedo_mix_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(albedo_mix_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_albedo_mix_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func decal_set_modulate(decal: RID, color: Color)  {
        let color_native = color._native_ptr()
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_modulate_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func decal_set_cull_mask(decal: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func decal_set_distance_fade(decal: RID, enabled: UInt8, begin: Float64, length: Float64)  {
        withUnsafePointer(to: length) { length_native in
        withUnsafePointer(to: begin) { begin_native in
        withUnsafePointer(to: enabled) { enabled_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(enabled_native), .init(begin_native), .init(length_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_distance_fade_2972769666,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func decal_set_fade(decal: RID, above: Float64, below: Float64)  {
        withUnsafePointer(to: below) { below_native in
        withUnsafePointer(to: above) { above_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(above_native), .init(below_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_fade_2513314492,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func decal_set_normal_fade(decal: RID, fade: Float64)  {
        withUnsafePointer(to: fade) { fade_native in
        let decal_native = decal._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(decal_native), .init(fade_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decal_set_normal_fade_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func decals_set_filter(filter: RenderingServer.DecalFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_decals_set_filter_3519875702,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func gi_set_use_half_resolution(half_resolution: UInt8)  {
        withUnsafePointer(to: half_resolution) { half_resolution_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(half_resolution_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_gi_set_use_half_resolution_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func voxel_gi_allocate_data(voxel_gi: RID, to_cell_xform: Transform3D, aabb: AABB, octree_size: Vector3i, octree_cells: PackedByteArray, data_cells: PackedByteArray, distance_field: PackedByteArray, level_counts: PackedInt32Array)  {
        let level_counts_native = level_counts._native_ptr()
        let distance_field_native = distance_field._native_ptr()
        let data_cells_native = data_cells._native_ptr()
        let octree_cells_native = octree_cells._native_ptr()
        let octree_size_native = octree_size._native_ptr()
        let aabb_native = aabb._native_ptr()
        let to_cell_xform_native = to_cell_xform._native_ptr()
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(to_cell_xform_native), .init(aabb_native), .init(octree_size_native), .init(octree_cells_native), .init(data_cells_native), .init(distance_field_native), .init(level_counts_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_allocate_data_4108223027,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func voxel_gi_get_octree_size(voxel_gi: RID) -> Vector3i {
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_get_octree_size_2607699645,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Vector3i(from: __resPtr.pointee)
    }
    public func voxel_gi_get_octree_cells(voxel_gi: RID) -> PackedByteArray {
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_get_octree_cells_3348040486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func voxel_gi_get_data_cells(voxel_gi: RID) -> PackedByteArray {
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_get_data_cells_3348040486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func voxel_gi_get_distance_field(voxel_gi: RID) -> PackedByteArray {
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_get_distance_field_3348040486,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(from: __resPtr.pointee)
    }
    public func voxel_gi_get_level_counts(voxel_gi: RID) -> PackedInt32Array {
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_get_level_counts_788230395,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func voxel_gi_get_to_cell_xform(voxel_gi: RID) -> Transform3D {
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_get_to_cell_xform_1128465797,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Transform3D(from: __resPtr.pointee)
    }
    public func voxel_gi_set_dynamic_range(voxel_gi: RID, range: Float64)  {
        withUnsafePointer(to: range) { range_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(range_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_dynamic_range_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_propagation(voxel_gi: RID, amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_propagation_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_energy(voxel_gi: RID, energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_energy_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_baked_exposure_normalization(voxel_gi: RID, baked_exposure: Float64)  {
        withUnsafePointer(to: baked_exposure) { baked_exposure_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(baked_exposure_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_baked_exposure_normalization_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_bias(voxel_gi: RID, bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_bias_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_normal_bias(voxel_gi: RID, bias: Float64)  {
        withUnsafePointer(to: bias) { bias_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_normal_bias_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_interior(voxel_gi: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_interior_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_use_two_bounces(voxel_gi: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let voxel_gi_native = voxel_gi._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(voxel_gi_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_use_two_bounces_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func voxel_gi_set_quality(quality: RenderingServer.VoxelGIQuality)  {
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_voxel_gi_set_quality_1538689978,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func lightmap_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func lightmap_set_textures(lightmap: RID, light: RID, uses_sh: UInt8)  {
        withUnsafePointer(to: uses_sh) { uses_sh_native in
        let light_native = light._native_ptr()
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native), .init(light_native), .init(uses_sh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_set_textures_2646464759,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func lightmap_set_probe_bounds(lightmap: RID, bounds: AABB)  {
        let bounds_native = bounds._native_ptr()
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native), .init(bounds_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_set_probe_bounds_3696536120,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func lightmap_set_probe_interior(lightmap: RID, interior: UInt8)  {
        withUnsafePointer(to: interior) { interior_native in
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native), .init(interior_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_set_probe_interior_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func lightmap_set_probe_capture_data(lightmap: RID, points: PackedVector3Array, point_sh: PackedColorArray, tetrahedra: PackedInt32Array, bsp_tree: PackedInt32Array)  {
        let bsp_tree_native = bsp_tree._native_ptr()
        let tetrahedra_native = tetrahedra._native_ptr()
        let point_sh_native = point_sh._native_ptr()
        let points_native = points._native_ptr()
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native), .init(points_native), .init(point_sh_native), .init(tetrahedra_native), .init(bsp_tree_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_set_probe_capture_data_3217845880,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func lightmap_get_probe_capture_points(lightmap: RID) -> PackedVector3Array {
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_get_probe_capture_points_808965560,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedVector3Array(from: __resPtr.pointee)
    }
    public func lightmap_get_probe_capture_sh(lightmap: RID) -> PackedColorArray {
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_get_probe_capture_sh_1569415609,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedColorArray(from: __resPtr.pointee)
    }
    public func lightmap_get_probe_capture_tetrahedra(lightmap: RID) -> PackedInt32Array {
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_get_probe_capture_tetrahedra_788230395,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func lightmap_get_probe_capture_bsp_tree(lightmap: RID) -> PackedInt32Array {
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_get_probe_capture_bsp_tree_788230395,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt32Array(from: __resPtr.pointee)
    }
    public func lightmap_set_baked_exposure_normalization(lightmap: RID, baked_exposure: Float64)  {
        withUnsafePointer(to: baked_exposure) { baked_exposure_native in
        let lightmap_native = lightmap._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(lightmap_native), .init(baked_exposure_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_set_baked_exposure_normalization_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func lightmap_set_probe_capture_update_speed(speed: Float64)  {
        withUnsafePointer(to: speed) { speed_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(speed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_lightmap_set_probe_capture_update_speed_373806689,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func particles_set_mode(particles: RID, mode: RenderingServer.ParticlesMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_mode_3492270028,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_emitting(particles: RID, emitting: UInt8)  {
        withUnsafePointer(to: emitting) { emitting_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(emitting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_emitting_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_get_emitting(particles: RID) -> UInt8 {
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_get_emitting_3521089500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func particles_set_amount(particles: RID, amount: Int64)  {
        withUnsafePointer(to: amount) { amount_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_amount_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_lifetime(particles: RID, lifetime: Float64)  {
        withUnsafePointer(to: lifetime) { lifetime_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(lifetime_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_lifetime_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_one_shot(particles: RID, one_shot: UInt8)  {
        withUnsafePointer(to: one_shot) { one_shot_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(one_shot_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_one_shot_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_pre_process_time(particles: RID, time: Float64)  {
        withUnsafePointer(to: time) { time_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(time_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_pre_process_time_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_explosiveness_ratio(particles: RID, ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_explosiveness_ratio_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_randomness_ratio(particles: RID, ratio: Float64)  {
        withUnsafePointer(to: ratio) { ratio_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(ratio_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_randomness_ratio_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_custom_aabb(particles: RID, aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_custom_aabb_3696536120,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_set_speed_scale(particles: RID, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_speed_scale_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_use_local_coordinates(particles: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_use_local_coordinates_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_process_material(particles: RID, material: RID)  {
        let material_native = material._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_process_material_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_set_fixed_fps(particles: RID, fps: Int64)  {
        withUnsafePointer(to: fps) { fps_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(fps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_fixed_fps_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_interpolate(particles: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_interpolate_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_fractional_delta(particles: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_fractional_delta_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_collision_base_size(particles: RID, size: Float64)  {
        withUnsafePointer(to: size) { size_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_collision_base_size_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_transform_align(particles: RID, align: RenderingServer.ParticlesTransformAlign)  {
        withUnsafePointer(to: align.rawValue) { align_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(align_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_transform_align_3264971368,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_trails(particles: RID, enable: UInt8, length_sec: Float64)  {
        withUnsafePointer(to: length_sec) { length_sec_native in
        withUnsafePointer(to: enable) { enable_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(enable_native), .init(length_sec_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_trails_2010054925,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func particles_set_trail_bind_poses(particles: RID, bind_poses: [Transform3D])  {
        let bind_poses_native = bind_poses._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(bind_poses_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_trail_bind_poses_684822712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_is_inactive(particles: RID) -> UInt8 {
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_is_inactive_3521089500,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func particles_request_process(particles: RID)  {
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_request_process_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_restart(particles: RID)  {
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_restart_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_set_subemitter(particles: RID, subemitter_particles: RID)  {
        let subemitter_particles_native = subemitter_particles._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(subemitter_particles_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_subemitter_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_emit(particles: RID, transform: Transform3D, velocity: Vector3, color: Color, custom: Color, emit_flags: Int64)  {
        withUnsafePointer(to: emit_flags) { emit_flags_native in
        let custom_native = custom._native_ptr()
        let color_native = color._native_ptr()
        let velocity_native = velocity._native_ptr()
        let transform_native = transform._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(transform_native), .init(velocity_native), .init(color_native), .init(custom_native), .init(emit_flags_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_emit_4043136117,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_draw_order(particles: RID, order: RenderingServer.ParticlesDrawOrder)  {
        withUnsafePointer(to: order.rawValue) { order_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(order_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_draw_order_935028487,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_draw_passes(particles: RID, count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_draw_passes_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_set_draw_pass_mesh(particles: RID, pass: Int64, mesh: RID)  {
        withUnsafePointer(to: pass) { pass_native in
        let mesh_native = mesh._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(pass_native), .init(mesh_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_draw_pass_mesh_2310537182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_get_current_aabb(particles: RID) -> AABB {
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_get_current_aabb_3952830260,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return AABB(from: __resPtr.pointee)
    }
    public func particles_set_emission_transform(particles: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let particles_native = particles._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_set_emission_transform_3935195649,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_collision_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func particles_collision_set_collision_type(particles_collision: RID, `type`: RenderingServer.ParticlesCollisionType)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(type_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_collision_type_1497044930,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_collision_set_cull_mask(particles_collision: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_collision_set_sphere_radius(particles_collision: RID, radius: Float64)  {
        withUnsafePointer(to: radius) { radius_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(radius_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_sphere_radius_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_collision_set_box_extents(particles_collision: RID, extents: Vector3)  {
        let extents_native = extents._native_ptr()
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(extents_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_box_extents_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_collision_set_attractor_strength(particles_collision: RID, setrngth: Float64)  {
        withUnsafePointer(to: setrngth) { setrngth_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(setrngth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_attractor_strength_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_collision_set_attractor_directionality(particles_collision: RID, amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_attractor_directionality_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_collision_set_attractor_attenuation(particles_collision: RID, curve: Float64)  {
        withUnsafePointer(to: curve) { curve_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(curve_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_attractor_attenuation_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func particles_collision_set_field_texture(particles_collision: RID, texture: RID)  {
        let texture_native = texture._native_ptr()
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_field_texture_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_collision_height_field_update(particles_collision: RID)  {
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_height_field_update_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func particles_collision_set_height_field_resolution(particles_collision: RID, resolution: RenderingServer.ParticlesCollisionHeightfieldResolution)  {
        withUnsafePointer(to: resolution.rawValue) { resolution_native in
        let particles_collision_native = particles_collision._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(particles_collision_native), .init(resolution_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_particles_collision_set_height_field_resolution_962977297,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func fog_volume_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fog_volume_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func fog_volume_set_shape(fog_volume: RID, shape: RenderingServer.FogVolumeShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let fog_volume_native = fog_volume._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fog_volume_native), .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fog_volume_set_shape_3818703106,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func fog_volume_set_size(fog_volume: RID, size: Vector3)  {
        let size_native = size._native_ptr()
        let fog_volume_native = fog_volume._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fog_volume_native), .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fog_volume_set_size_3227306858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func fog_volume_set_material(fog_volume: RID, material: RID)  {
        let material_native = material._native_ptr()
        let fog_volume_native = fog_volume._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(fog_volume_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_fog_volume_set_material_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func visibility_notifier_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_visibility_notifier_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func visibility_notifier_set_aabb(notifier: RID, aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let notifier_native = notifier._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(notifier_native), .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_visibility_notifier_set_aabb_3696536120,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func visibility_notifier_set_callbacks(notifier: RID, enter_callable: Callable, exit_callable: Callable)  {
        let exit_callable_native = exit_callable._native_ptr()
        let enter_callable_native = enter_callable._native_ptr()
        let notifier_native = notifier._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(notifier_native), .init(enter_callable_native), .init(exit_callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_visibility_notifier_set_callbacks_2689735388,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func occluder_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_occluder_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func occluder_set_mesh(occluder: RID, vertices: PackedVector3Array, indices: PackedInt32Array)  {
        let indices_native = indices._native_ptr()
        let vertices_native = vertices._native_ptr()
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(vertices_native), .init(indices_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_occluder_set_mesh_3854404263,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func camera_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func camera_set_perspective(camera: RID, fovy_degrees: Float64, z_near: Float64, z_far: Float64)  {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: fovy_degrees) { fovy_degrees_native in
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(fovy_degrees_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_perspective_157498339,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func camera_set_orthogonal(camera: RID, size: Float64, z_near: Float64, z_far: Float64)  {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: size) { size_native in
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(size_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_orthogonal_157498339,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func camera_set_frustum(camera: RID, size: Float64, offset: Vector2, z_near: Float64, z_far: Float64)  {
        withUnsafePointer(to: z_far) { z_far_native in
        withUnsafePointer(to: z_near) { z_near_native in
        withUnsafePointer(to: size) { size_native in
        let offset_native = offset._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(size_native), .init(offset_native), .init(z_near_native), .init(z_far_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_frustum_1889878953,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func camera_set_transform(camera: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_transform_3935195649,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func camera_set_cull_mask(camera: RID, layers: Int64)  {
        withUnsafePointer(to: layers) { layers_native in
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(layers_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func camera_set_environment(camera: RID, env: RID)  {
        let env_native = env._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(env_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_environment_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func camera_set_camera_attributes(camera: RID, effects: RID)  {
        let effects_native = effects._native_ptr()
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(effects_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_camera_attributes_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func camera_set_use_vertical_aspect(camera: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let camera_native = camera._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_set_use_vertical_aspect_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func viewport_set_use_xr(viewport: RID, use_xr: UInt8)  {
        withUnsafePointer(to: use_xr) { use_xr_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(use_xr_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_use_xr_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_size(viewport: RID, width: Int64, height: Int64)  {
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: width) { width_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(width_native), .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_size_4288446313,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func viewport_set_active(viewport: RID, active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_active_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_parent_viewport(viewport: RID, parent_viewport: RID)  {
        let parent_viewport_native = parent_viewport._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(parent_viewport_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_parent_viewport_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_attach_to_screen(viewport: RID, rect: Rect2, screen: Int64)  {
        withUnsafePointer(to: screen) { screen_native in
        let rect_native = rect._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(rect_native), .init(screen_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_attach_to_screen_1278520651,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_render_direct_to_screen(viewport: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_render_direct_to_screen_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_canvas_cull_mask(viewport: RID, canvas_cull_mask: Int64)  {
        withUnsafePointer(to: canvas_cull_mask) { canvas_cull_mask_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(canvas_cull_mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_canvas_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_scaling_3d_mode(viewport: RID, scaling_3d_mode: RenderingServer.ViewportScaling3DMode)  {
        withUnsafePointer(to: scaling_3d_mode.rawValue) { scaling_3d_mode_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(scaling_3d_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_scaling_3d_mode_2386524376,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_scaling_3d_scale(viewport: RID, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_scaling_3d_scale_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_fsr_sharpness(viewport: RID, sharpness: Float64)  {
        withUnsafePointer(to: sharpness) { sharpness_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(sharpness_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_fsr_sharpness_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_texture_mipmap_bias(viewport: RID, mipmap_bias: Float64)  {
        withUnsafePointer(to: mipmap_bias) { mipmap_bias_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(mipmap_bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_texture_mipmap_bias_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_update_mode(viewport: RID, update_mode: RenderingServer.ViewportUpdateMode)  {
        withUnsafePointer(to: update_mode.rawValue) { update_mode_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(update_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_update_mode_3161116010,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_clear_mode(viewport: RID, clear_mode: RenderingServer.ViewportClearMode)  {
        withUnsafePointer(to: clear_mode.rawValue) { clear_mode_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(clear_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_clear_mode_3628367896,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_get_texture(viewport: RID) -> RID {
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_get_texture_3814569979,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func viewport_set_disable_3d(viewport: RID, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_disable_3d_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_disable_2d(viewport: RID, disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_disable_2d_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_environment_mode(viewport: RID, mode: RenderingServer.ViewportEnvironmentMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_environment_mode_2196892182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_attach_camera(viewport: RID, camera: RID)  {
        let camera_native = camera._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(camera_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_attach_camera_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_set_scenario(viewport: RID, scenario: RID)  {
        let scenario_native = scenario._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(scenario_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_scenario_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_attach_canvas(viewport: RID, canvas: RID)  {
        let canvas_native = canvas._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(canvas_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_attach_canvas_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_remove_canvas(viewport: RID, canvas: RID)  {
        let canvas_native = canvas._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(canvas_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_remove_canvas_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_set_snap_2d_transforms_to_pixel(viewport: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_snap_2d_transforms_to_pixel_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_snap_2d_vertices_to_pixel(viewport: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_snap_2d_vertices_to_pixel_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_default_canvas_item_texture_filter(viewport: RID, filter: RenderingServer.CanvasItemTextureFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_default_canvas_item_texture_filter_1155129294,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_default_canvas_item_texture_repeat(viewport: RID, `repeat`: RenderingServer.CanvasItemTextureRepeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(repeat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_default_canvas_item_texture_repeat_1652956681,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_canvas_transform(viewport: RID, canvas: RID, offset: Transform2D)  {
        let offset_native = offset._native_ptr()
        let canvas_native = canvas._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(canvas_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_canvas_transform_3608606053,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_set_canvas_stacking(viewport: RID, canvas: RID, layer: Int64, sublayer: Int64)  {
        withUnsafePointer(to: sublayer) { sublayer_native in
        withUnsafePointer(to: layer) { layer_native in
        let canvas_native = canvas._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(canvas_native), .init(layer_native), .init(sublayer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_canvas_stacking_3713930247,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func viewport_set_transparent_background(viewport: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_transparent_background_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_global_canvas_transform(viewport: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_global_canvas_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func viewport_set_sdf_oversize_and_scale(viewport: RID, oversize: RenderingServer.ViewportSDFOversize, scale: RenderingServer.ViewportSDFScale)  {
        withUnsafePointer(to: scale.rawValue) { scale_native in
        withUnsafePointer(to: oversize.rawValue) { oversize_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(oversize_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_sdf_oversize_and_scale_1329198632,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func viewport_set_positional_shadow_atlas_size(viewport: RID, size: Int64, use_16_bits: UInt8)  {
        withUnsafePointer(to: use_16_bits) { use_16_bits_native in
        withUnsafePointer(to: size) { size_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(size_native), .init(use_16_bits_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_positional_shadow_atlas_size_1904426712,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func viewport_set_positional_shadow_atlas_quadrant_subdivision(viewport: RID, quadrant: Int64, subdivision: Int64)  {
        withUnsafePointer(to: subdivision) { subdivision_native in
        withUnsafePointer(to: quadrant) { quadrant_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(quadrant_native), .init(subdivision_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_positional_shadow_atlas_quadrant_subdivision_4288446313,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func viewport_set_msaa_3d(viewport: RID, msaa: RenderingServer.ViewportMSAA)  {
        withUnsafePointer(to: msaa.rawValue) { msaa_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(msaa_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_msaa_3d_3764433340,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_msaa_2d(viewport: RID, msaa: RenderingServer.ViewportMSAA)  {
        withUnsafePointer(to: msaa.rawValue) { msaa_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(msaa_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_msaa_2d_3764433340,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_screen_space_aa(viewport: RID, mode: RenderingServer.ViewportScreenSpaceAA)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_screen_space_aa_1447279591,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_use_taa(viewport: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_use_taa_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_use_debanding(viewport: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_use_debanding_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_use_occlusion_culling(viewport: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_use_occlusion_culling_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_occlusion_rays_per_thread(rays_per_thread: Int64)  {
        withUnsafePointer(to: rays_per_thread) { rays_per_thread_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rays_per_thread_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_occlusion_rays_per_thread_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_occlusion_culling_build_quality(quality: RenderingServer.ViewportOcclusionCullingBuildQuality)  {
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_occlusion_culling_build_quality_2069725696,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_get_render_info(viewport: RID, `type`: RenderingServer.ViewportRenderInfoType, info: RenderingServer.ViewportRenderInfo) -> Int64 {
        withUnsafePointer(to: info.rawValue) { info_native in
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(type_native), .init(info_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_get_render_info_2041262392,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
        }
    }
    public func viewport_set_debug_draw(viewport: RID, draw: RenderingServer.ViewportDebugDraw)  {
        withUnsafePointer(to: draw.rawValue) { draw_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(draw_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_debug_draw_2089420930,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_measure_render_time(viewport: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_measure_render_time_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_get_measured_render_time_cpu(viewport: RID) -> Float64 {
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_get_measured_render_time_cpu_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func viewport_get_measured_render_time_gpu(viewport: RID) -> Float64 {
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_get_measured_render_time_gpu_866169185,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func viewport_set_vrs_mode(viewport: RID, mode: RenderingServer.ViewportVRSMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_vrs_mode_398809874,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func viewport_set_vrs_texture(viewport: RID, texture: RID)  {
        let texture_native = texture._native_ptr()
        let viewport_native = viewport._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(viewport_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_viewport_set_vrs_texture_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func sky_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sky_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func sky_set_radiance_size(sky: RID, radiance_size: Int64)  {
        withUnsafePointer(to: radiance_size) { radiance_size_native in
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native), .init(radiance_size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sky_set_radiance_size_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func sky_set_mode(sky: RID, mode: RenderingServer.SkyMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sky_set_mode_3279019937,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func sky_set_material(sky: RID, material: RID)  {
        let material_native = material._native_ptr()
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sky_set_material_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func sky_bake_panorama(sky: RID, energy: Float64, bake_irradiance: UInt8, size: Vector2i) -> Image {
        withUnsafePointer(to: bake_irradiance) { bake_irradiance_native in
        withUnsafePointer(to: energy) { energy_native in
        let size_native = size._native_ptr()
        let sky_native = sky._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(sky_native), .init(energy_native), .init(bake_irradiance_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sky_bake_panorama_3875285818,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
        }
        }
    }
    public func environment_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func environment_set_background(env: RID, bg: RenderingServer.EnvironmentBG)  {
        withUnsafePointer(to: bg.rawValue) { bg_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(bg_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_background_3937328877,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_sky(env: RID, sky: RID)  {
        let sky_native = sky._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(sky_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sky_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func environment_set_sky_custom_fov(env: RID, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sky_custom_fov_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_sky_orientation(env: RID, orientation: Basis)  {
        let orientation_native = orientation._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(orientation_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sky_orientation_1735850857,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func environment_set_bg_color(env: RID, color: Color)  {
        let color_native = color._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_bg_color_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func environment_set_bg_energy(env: RID, multiplier: Float64, exposure_value: Float64)  {
        withUnsafePointer(to: exposure_value) { exposure_value_native in
        withUnsafePointer(to: multiplier) { multiplier_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(multiplier_native), .init(exposure_value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_bg_energy_2513314492,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func environment_set_canvas_max_layer(env: RID, max_layer: Int64)  {
        withUnsafePointer(to: max_layer) { max_layer_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(max_layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_canvas_max_layer_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_ambient_light(env: RID, color: Color, ambient: RenderingServer.EnvironmentAmbientSource, energy: Float64, sky_contibution: Float64, reflection_source: RenderingServer.EnvironmentReflectionSource)  {
        withUnsafePointer(to: sky_contibution) { sky_contibution_native in
        withUnsafePointer(to: energy) { energy_native in
        withUnsafePointer(to: reflection_source.rawValue) { reflection_source_native in
        withUnsafePointer(to: ambient.rawValue) { ambient_native in
        let color_native = color._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(color_native), .init(ambient_native), .init(energy_native), .init(sky_contibution_native), .init(reflection_source_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_ambient_light_362573166,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func environment_set_glow(env: RID, enable: UInt8, levels: PackedFloat32Array, intensity: Float64, strength: Float64, mix: Float64, bloom_threshold: Float64, blend_mode: RenderingServer.EnvironmentGlowBlendMode, hdr_bleed_threshold: Float64, hdr_bleed_scale: Float64, hdr_luminance_cap: Float64, glow_map_strength: Float64, glow_map: RID)  {
        withUnsafePointer(to: glow_map_strength) { glow_map_strength_native in
        withUnsafePointer(to: hdr_luminance_cap) { hdr_luminance_cap_native in
        withUnsafePointer(to: hdr_bleed_scale) { hdr_bleed_scale_native in
        withUnsafePointer(to: hdr_bleed_threshold) { hdr_bleed_threshold_native in
        withUnsafePointer(to: bloom_threshold) { bloom_threshold_native in
        withUnsafePointer(to: mix) { mix_native in
        withUnsafePointer(to: strength) { strength_native in
        withUnsafePointer(to: intensity) { intensity_native in
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: blend_mode.rawValue) { blend_mode_native in
        let glow_map_native = glow_map._native_ptr()
        let levels_native = levels._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 13)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(levels_native), .init(intensity_native), .init(strength_native), .init(mix_native), .init(bloom_threshold_native), .init(blend_mode_native), .init(hdr_bleed_threshold_native), .init(hdr_bleed_scale_native), .init(hdr_luminance_cap_native), .init(glow_map_strength_native), .init(glow_map_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_glow_2421724940,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
        }
        }
        }
    }
    public func environment_set_tonemap(env: RID, tone_mapper: RenderingServer.EnvironmentToneMapper, exposure: Float64, white: Float64)  {
        withUnsafePointer(to: white) { white_native in
        withUnsafePointer(to: exposure) { exposure_native in
        withUnsafePointer(to: tone_mapper.rawValue) { tone_mapper_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(tone_mapper_native), .init(exposure_native), .init(white_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_tonemap_2914312638,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func environment_set_adjustment(env: RID, enable: UInt8, brightness: Float64, contrast: Float64, saturation: Float64, use_1d_color_correction: UInt8, color_correction: RID)  {
        withUnsafePointer(to: use_1d_color_correction) { use_1d_color_correction_native in
        withUnsafePointer(to: saturation) { saturation_native in
        withUnsafePointer(to: contrast) { contrast_native in
        withUnsafePointer(to: brightness) { brightness_native in
        withUnsafePointer(to: enable) { enable_native in
        let color_correction_native = color_correction._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(brightness_native), .init(contrast_native), .init(saturation_native), .init(use_1d_color_correction_native), .init(color_correction_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_adjustment_876799838,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func environment_set_ssr(env: RID, enable: UInt8, max_steps: Int64, fade_in: Float64, fade_out: Float64, depth_tolerance: Float64)  {
        withUnsafePointer(to: depth_tolerance) { depth_tolerance_native in
        withUnsafePointer(to: fade_out) { fade_out_native in
        withUnsafePointer(to: fade_in) { fade_in_native in
        withUnsafePointer(to: max_steps) { max_steps_native in
        withUnsafePointer(to: enable) { enable_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(max_steps_native), .init(fade_in_native), .init(fade_out_native), .init(depth_tolerance_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_ssr_3607294374,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func environment_set_ssao(env: RID, enable: UInt8, radius: Float64, intensity: Float64, power: Float64, detail: Float64, horizon: Float64, sharpness: Float64, light_affect: Float64, ao_channel_affect: Float64)  {
        withUnsafePointer(to: ao_channel_affect) { ao_channel_affect_native in
        withUnsafePointer(to: light_affect) { light_affect_native in
        withUnsafePointer(to: sharpness) { sharpness_native in
        withUnsafePointer(to: horizon) { horizon_native in
        withUnsafePointer(to: detail) { detail_native in
        withUnsafePointer(to: power) { power_native in
        withUnsafePointer(to: intensity) { intensity_native in
        withUnsafePointer(to: radius) { radius_native in
        withUnsafePointer(to: enable) { enable_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(radius_native), .init(intensity_native), .init(power_native), .init(detail_native), .init(horizon_native), .init(sharpness_native), .init(light_affect_native), .init(ao_channel_affect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_ssao_3994732740,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
        }
        }
    }
    public func environment_set_fog(env: RID, enable: UInt8, light_color: Color, light_energy: Float64, sun_scatter: Float64, density: Float64, height: Float64, height_density: Float64, aerial_perspective: Float64, sky_affect: Float64)  {
        withUnsafePointer(to: sky_affect) { sky_affect_native in
        withUnsafePointer(to: aerial_perspective) { aerial_perspective_native in
        withUnsafePointer(to: height_density) { height_density_native in
        withUnsafePointer(to: height) { height_native in
        withUnsafePointer(to: density) { density_native in
        withUnsafePointer(to: sun_scatter) { sun_scatter_native in
        withUnsafePointer(to: light_energy) { light_energy_native in
        withUnsafePointer(to: enable) { enable_native in
        let light_color_native = light_color._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(light_color_native), .init(light_energy_native), .init(sun_scatter_native), .init(density_native), .init(height_native), .init(height_density_native), .init(aerial_perspective_native), .init(sky_affect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_fog_2793577733,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
        }
    }
    public func environment_set_sdfgi(env: RID, enable: UInt8, cascades: Int64, min_cell_size: Float64, y_scale: RenderingServer.EnvironmentSDFGIYScale, use_occlusion: UInt8, bounce_feedback: Float64, read_sky: UInt8, energy: Float64, normal_bias: Float64, probe_bias: Float64)  {
        withUnsafePointer(to: probe_bias) { probe_bias_native in
        withUnsafePointer(to: normal_bias) { normal_bias_native in
        withUnsafePointer(to: energy) { energy_native in
        withUnsafePointer(to: read_sky) { read_sky_native in
        withUnsafePointer(to: bounce_feedback) { bounce_feedback_native in
        withUnsafePointer(to: use_occlusion) { use_occlusion_native in
        withUnsafePointer(to: min_cell_size) { min_cell_size_native in
        withUnsafePointer(to: cascades) { cascades_native in
        withUnsafePointer(to: enable) { enable_native in
        withUnsafePointer(to: y_scale.rawValue) { y_scale_native in
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(cascades_native), .init(min_cell_size_native), .init(y_scale_native), .init(use_occlusion_native), .init(bounce_feedback_native), .init(read_sky_native), .init(energy_native), .init(normal_bias_native), .init(probe_bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sdfgi_3519144388,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
        }
        }
        }
    }
    public func environment_set_volumetric_fog(env: RID, enable: UInt8, density: Float64, albedo: Color, emission: Color, emission_energy: Float64, anisotropy: Float64, length: Float64, p_detail_spread: Float64, gi_inject: Float64, temporal_reprojection: UInt8, temporal_reprojection_amount: Float64, ambient_inject: Float64, sky_affect: Float64)  {
        withUnsafePointer(to: sky_affect) { sky_affect_native in
        withUnsafePointer(to: ambient_inject) { ambient_inject_native in
        withUnsafePointer(to: temporal_reprojection_amount) { temporal_reprojection_amount_native in
        withUnsafePointer(to: temporal_reprojection) { temporal_reprojection_native in
        withUnsafePointer(to: gi_inject) { gi_inject_native in
        withUnsafePointer(to: p_detail_spread) { p_detail_spread_native in
        withUnsafePointer(to: length) { length_native in
        withUnsafePointer(to: anisotropy) { anisotropy_native in
        withUnsafePointer(to: emission_energy) { emission_energy_native in
        withUnsafePointer(to: density) { density_native in
        withUnsafePointer(to: enable) { enable_native in
        let emission_native = emission._native_ptr()
        let albedo_native = albedo._native_ptr()
        let env_native = env._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 14)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(env_native), .init(enable_native), .init(density_native), .init(albedo_native), .init(emission_native), .init(emission_energy_native), .init(anisotropy_native), .init(length_native), .init(p_detail_spread_native), .init(gi_inject_native), .init(temporal_reprojection_native), .init(temporal_reprojection_amount_native), .init(ambient_inject_native), .init(sky_affect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_volumetric_fog_1553633833,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
        }
        }
        }
        }
    }
    public func environment_glow_set_use_bicubic_upscale(enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_glow_set_use_bicubic_upscale_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_ssr_roughness_quality(quality: RenderingServer.EnvironmentSSRRoughnessQuality)  {
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_ssr_roughness_quality_1190026788,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_ssao_quality(quality: RenderingServer.EnvironmentSSAOQuality, half_size: UInt8, adaptive_target: Float64, blur_passes: Int64, fadeout_from: Float64, fadeout_to: Float64)  {
        withUnsafePointer(to: fadeout_to) { fadeout_to_native in
        withUnsafePointer(to: fadeout_from) { fadeout_from_native in
        withUnsafePointer(to: blur_passes) { blur_passes_native in
        withUnsafePointer(to: adaptive_target) { adaptive_target_native in
        withUnsafePointer(to: half_size) { half_size_native in
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native), .init(half_size_native), .init(adaptive_target_native), .init(blur_passes_native), .init(fadeout_from_native), .init(fadeout_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_ssao_quality_189753569,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
    }
    public func environment_set_ssil_quality(quality: RenderingServer.EnvironmentSSILQuality, half_size: UInt8, adaptive_target: Float64, blur_passes: Int64, fadeout_from: Float64, fadeout_to: Float64)  {
        withUnsafePointer(to: fadeout_to) { fadeout_to_native in
        withUnsafePointer(to: fadeout_from) { fadeout_from_native in
        withUnsafePointer(to: blur_passes) { blur_passes_native in
        withUnsafePointer(to: adaptive_target) { adaptive_target_native in
        withUnsafePointer(to: half_size) { half_size_native in
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native), .init(half_size_native), .init(adaptive_target_native), .init(blur_passes_native), .init(fadeout_from_native), .init(fadeout_to_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_ssil_quality_1713836683,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
    }
    public func environment_set_sdfgi_ray_count(ray_count: RenderingServer.EnvironmentSDFGIRayCount)  {
        withUnsafePointer(to: ray_count.rawValue) { ray_count_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(ray_count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sdfgi_ray_count_340137951,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_sdfgi_frames_to_converge(frames: RenderingServer.EnvironmentSDFGIFramesToConverge)  {
        withUnsafePointer(to: frames.rawValue) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sdfgi_frames_to_converge_2182444374,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_sdfgi_frames_to_update_light(frames: RenderingServer.EnvironmentSDFGIFramesToUpdateLight)  {
        withUnsafePointer(to: frames.rawValue) { frames_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(frames_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_sdfgi_frames_to_update_light_1251144068,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_set_volumetric_fog_volume_size(size: Int64, depth: Int64)  {
        withUnsafePointer(to: depth) { depth_native in
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(depth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_volumetric_fog_volume_size_3937882851,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func environment_set_volumetric_fog_filter_active(active: UInt8)  {
        withUnsafePointer(to: active) { active_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(active_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_set_volumetric_fog_filter_active_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func environment_bake_panorama(environment: RID, bake_irradiance: UInt8, size: Vector2i) -> Image {
        withUnsafePointer(to: bake_irradiance) { bake_irradiance_native in
        let size_native = size._native_ptr()
        let environment_native = environment._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(environment_native), .init(bake_irradiance_native), .init(size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_environment_bake_panorama_2452908646,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Image(from: __resPtr.pointee)
        }
    }
    public func screen_space_roughness_limiter_set_active(enable: UInt8, amount: Float64, limit: Float64)  {
        withUnsafePointer(to: limit) { limit_native in
        withUnsafePointer(to: amount) { amount_native in
        withUnsafePointer(to: enable) { enable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enable_native), .init(amount_native), .init(limit_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_screen_space_roughness_limiter_set_active_916716790,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func sub_surface_scattering_set_quality(quality: RenderingServer.SubSurfaceScatteringQuality)  {
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sub_surface_scattering_set_quality_64571803,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func sub_surface_scattering_set_scale(scale: Float64, depth_scale: Float64)  {
        withUnsafePointer(to: depth_scale) { depth_scale_native in
        withUnsafePointer(to: scale) { scale_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scale_native), .init(depth_scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_sub_surface_scattering_set_scale_1017552074,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func camera_attributes_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_attributes_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func camera_attributes_set_dof_blur_quality(quality: RenderingServer.DOFBlurQuality, use_jitter: UInt8)  {
        withUnsafePointer(to: use_jitter) { use_jitter_native in
        withUnsafePointer(to: quality.rawValue) { quality_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(quality_native), .init(use_jitter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_attributes_set_dof_blur_quality_2220136795,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func camera_attributes_set_dof_blur_bokeh_shape(shape: RenderingServer.DOFBokehShape)  {
        withUnsafePointer(to: shape.rawValue) { shape_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shape_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_attributes_set_dof_blur_bokeh_shape_1205058394,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func camera_attributes_set_dof_blur(camera_attributes: RID, far_enable: UInt8, far_distance: Float64, far_transition: Float64, near_enable: UInt8, near_distance: Float64, near_transition: Float64, amount: Float64)  {
        withUnsafePointer(to: amount) { amount_native in
        withUnsafePointer(to: near_transition) { near_transition_native in
        withUnsafePointer(to: near_distance) { near_distance_native in
        withUnsafePointer(to: near_enable) { near_enable_native in
        withUnsafePointer(to: far_transition) { far_transition_native in
        withUnsafePointer(to: far_distance) { far_distance_native in
        withUnsafePointer(to: far_enable) { far_enable_native in
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native), .init(far_enable_native), .init(far_distance_native), .init(far_transition_native), .init(near_enable_native), .init(near_distance_native), .init(near_transition_native), .init(amount_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_attributes_set_dof_blur_316272616,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
        }
        }
    }
    public func camera_attributes_set_exposure(camera_attributes: RID, multiplier: Float64, normalization: Float64)  {
        withUnsafePointer(to: normalization) { normalization_native in
        withUnsafePointer(to: multiplier) { multiplier_native in
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native), .init(multiplier_native), .init(normalization_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_attributes_set_exposure_2513314492,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func camera_attributes_set_auto_exposure(camera_attributes: RID, enable: UInt8, min_sensitivity: Float64, max_sensitivity: Float64, speed: Float64, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        withUnsafePointer(to: speed) { speed_native in
        withUnsafePointer(to: max_sensitivity) { max_sensitivity_native in
        withUnsafePointer(to: min_sensitivity) { min_sensitivity_native in
        withUnsafePointer(to: enable) { enable_native in
        let camera_attributes_native = camera_attributes._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(camera_attributes_native), .init(enable_native), .init(min_sensitivity_native), .init(max_sensitivity_native), .init(speed_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_camera_attributes_set_auto_exposure_4266986332,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func scenario_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scenario_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func scenario_set_environment(scenario: RID, environment: RID)  {
        let environment_native = environment._native_ptr()
        let scenario_native = scenario._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scenario_native), .init(environment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scenario_set_environment_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func scenario_set_fallback_environment(scenario: RID, environment: RID)  {
        let environment_native = environment._native_ptr()
        let scenario_native = scenario._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scenario_native), .init(environment_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scenario_set_fallback_environment_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func scenario_set_camera_attributes(scenario: RID, effects: RID)  {
        let effects_native = effects._native_ptr()
        let scenario_native = scenario._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(scenario_native), .init(effects_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_scenario_set_camera_attributes_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_create2(base: RID, scenario: RID) -> RID {
        let scenario_native = scenario._native_ptr()
        let base_native = base._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_native), .init(scenario_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_create2_746547085,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func instance_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func instance_set_base(instance: RID, base: RID)  {
        let base_native = base._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(base_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_base_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_set_scenario(instance: RID, scenario: RID)  {
        let scenario_native = scenario._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(scenario_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_scenario_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_set_layer_mask(instance: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_layer_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_set_pivot_data(instance: RID, sorting_offset: Float64, use_aabb_center: UInt8)  {
        withUnsafePointer(to: use_aabb_center) { use_aabb_center_native in
        withUnsafePointer(to: sorting_offset) { sorting_offset_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(sorting_offset_native), .init(use_aabb_center_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_pivot_data_1280615259,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func instance_set_transform(instance: RID, transform: Transform3D)  {
        let transform_native = transform._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_transform_3935195649,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_attach_object_instance_id(instance: RID, id: Int64)  {
        withUnsafePointer(to: id) { id_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(id_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_attach_object_instance_id_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_set_blend_shape_weight(instance: RID, shape: Int64, weight: Float64)  {
        withUnsafePointer(to: weight) { weight_native in
        withUnsafePointer(to: shape) { shape_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(shape_native), .init(weight_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_blend_shape_weight_1892459533,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func instance_set_surface_override_material(instance: RID, surface: Int64, material: RID)  {
        withUnsafePointer(to: surface) { surface_native in
        let material_native = material._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(surface_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_surface_override_material_2310537182,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_set_visible(instance: RID, visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_visible_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_geometry_set_transparency(instance: RID, transparency: Float64)  {
        withUnsafePointer(to: transparency) { transparency_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(transparency_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_transparency_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_set_custom_aabb(instance: RID, aabb: AABB)  {
        let aabb_native = aabb._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(aabb_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_custom_aabb_3696536120,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_attach_skeleton(instance: RID, skeleton: RID)  {
        let skeleton_native = skeleton._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(skeleton_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_attach_skeleton_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_set_extra_visibility_margin(instance: RID, margin: Float64)  {
        withUnsafePointer(to: margin) { margin_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(margin_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_extra_visibility_margin_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_set_visibility_parent(instance: RID, parent: RID)  {
        let parent_native = parent._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(parent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_visibility_parent_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_set_ignore_culling(instance: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_set_ignore_culling_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_geometry_set_flag(instance: RID, flag: RenderingServer.InstanceFlags, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        withUnsafePointer(to: flag.rawValue) { flag_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(flag_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_flag_1014989537,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func instance_geometry_set_cast_shadows_setting(instance: RID, shadow_casting_setting: RenderingServer.ShadowCastingSetting)  {
        withUnsafePointer(to: shadow_casting_setting.rawValue) { shadow_casting_setting_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(shadow_casting_setting_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_cast_shadows_setting_3768836020,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_geometry_set_material_override(instance: RID, material: RID)  {
        let material_native = material._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_material_override_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_geometry_set_material_overlay(instance: RID, material: RID)  {
        let material_native = material._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_material_overlay_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_geometry_set_visibility_range(instance: RID, min: Float64, max: Float64, min_margin: Float64, max_margin: Float64, fade_mode: RenderingServer.VisibilityRangeFadeMode)  {
        withUnsafePointer(to: max_margin) { max_margin_native in
        withUnsafePointer(to: min_margin) { min_margin_native in
        withUnsafePointer(to: max) { max_native in
        withUnsafePointer(to: min) { min_native in
        withUnsafePointer(to: fade_mode.rawValue) { fade_mode_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(min_native), .init(max_native), .init(min_margin_native), .init(max_margin_native), .init(fade_mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_visibility_range_4263925858,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func instance_geometry_set_lightmap(instance: RID, lightmap: RID, lightmap_uv_scale: Rect2, lightmap_slice: Int64)  {
        withUnsafePointer(to: lightmap_slice) { lightmap_slice_native in
        let lightmap_uv_scale_native = lightmap_uv_scale._native_ptr()
        let lightmap_native = lightmap._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(lightmap_native), .init(lightmap_uv_scale_native), .init(lightmap_slice_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_lightmap_536974962,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_geometry_set_lod_bias(instance: RID, lod_bias: Float64)  {
        withUnsafePointer(to: lod_bias) { lod_bias_native in
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(lod_bias_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_lod_bias_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func instance_geometry_set_shader_parameter(instance: RID, parameter: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let parameter_native = parameter._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(parameter_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_set_shader_parameter_3477296213,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func instance_geometry_get_shader_parameter(instance: RID, parameter: StringName) -> Variant {
        let parameter_native = parameter._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(parameter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_get_shader_parameter_2621281810,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func instance_geometry_get_shader_parameter_default_value(instance: RID, parameter: StringName) -> Variant {
        let parameter_native = parameter._native_ptr()
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native), .init(parameter_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_get_shader_parameter_default_value_2621281810,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func instance_geometry_get_shader_parameter_list(instance: RID) -> [Dictionary] {
        let instance_native = instance._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(instance_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instance_geometry_get_shader_parameter_list_2684255073,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Dictionary](from: __resPtr.pointee)
    }
    public func instances_cull_aabb(aabb: AABB, scenario: RID) -> PackedInt64Array {
        let scenario_native = scenario._native_ptr()
        let aabb_native = aabb._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(aabb_native), .init(scenario_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instances_cull_aabb_2031554939,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
    }
    public func instances_cull_ray(from: Vector3, to: Vector3, scenario: RID) -> PackedInt64Array {
        let scenario_native = scenario._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native), .init(scenario_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instances_cull_ray_3388524336,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
    }
    public func instances_cull_convex(convex: [Plane], scenario: RID) -> PackedInt64Array {
        let scenario_native = scenario._native_ptr()
        let convex_native = convex._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(convex_native), .init(scenario_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_instances_cull_convex_3690700105,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(from: __resPtr.pointee)
    }
    public func bake_render_uv2(base: RID, material_overrides: [RID], image_size: Vector2i) -> [Image] {
        let image_size_native = image_size._native_ptr()
        let material_overrides_native = material_overrides._native_ptr()
        let base_native = base._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(base_native), .init(material_overrides_native), .init(image_size_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_bake_render_uv2_1904608558,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return [Image](from: __resPtr.pointee)
    }
    public func canvas_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func canvas_set_item_mirroring(canvas: RID, item: RID, mirroring: Vector2)  {
        let mirroring_native = mirroring._native_ptr()
        let item_native = item._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(item_native), .init(mirroring_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_set_item_mirroring_2343975398,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_set_modulate(canvas: RID, color: Color)  {
        let color_native = color._native_ptr()
        let canvas_native = canvas._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_set_modulate_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_set_disable_scale(disable: UInt8)  {
        withUnsafePointer(to: disable) { disable_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(disable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_set_disable_scale_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_texture_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_texture_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func canvas_texture_set_channel(canvas_texture: RID, channel: RenderingServer.CanvasTextureChannel, texture: RID)  {
        withUnsafePointer(to: channel.rawValue) { channel_native in
        let texture_native = texture._native_ptr()
        let canvas_texture_native = canvas_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_texture_native), .init(channel_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_texture_set_channel_3822119138,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_texture_set_shading_parameters(canvas_texture: RID, base_color: Color, shininess: Float64)  {
        withUnsafePointer(to: shininess) { shininess_native in
        let base_color_native = base_color._native_ptr()
        let canvas_texture_native = canvas_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_texture_native), .init(base_color_native), .init(shininess_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_texture_set_shading_parameters_2124967469,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_texture_set_texture_filter(canvas_texture: RID, filter: RenderingServer.CanvasItemTextureFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let canvas_texture_native = canvas_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_texture_native), .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_texture_set_texture_filter_1155129294,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_texture_set_texture_repeat(canvas_texture: RID, `repeat`: RenderingServer.CanvasItemTextureRepeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let canvas_texture_native = canvas_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(canvas_texture_native), .init(repeat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_texture_set_texture_repeat_1652956681,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func canvas_item_set_parent(item: RID, parent: RID)  {
        let parent_native = parent._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(parent_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_parent_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_set_default_texture_filter(item: RID, filter: RenderingServer.CanvasItemTextureFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_default_texture_filter_1155129294,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_default_texture_repeat(item: RID, `repeat`: RenderingServer.CanvasItemTextureRepeat)  {
        withUnsafePointer(to: `repeat`.rawValue) { repeat_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(repeat_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_default_texture_repeat_1652956681,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_visible(item: RID, visible: UInt8)  {
        withUnsafePointer(to: visible) { visible_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(visible_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_visible_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_light_mask(item: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_light_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_visibility_layer(item: RID, visibility_layer: Int64)  {
        withUnsafePointer(to: visibility_layer) { visibility_layer_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(visibility_layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_visibility_layer_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_transform(item: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_set_clip(item: RID, clip: UInt8)  {
        withUnsafePointer(to: clip) { clip_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(clip_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_clip_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_distance_field_mode(item: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_distance_field_mode_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_custom_rect(item: RID, use_custom_rect: UInt8, rect: Rect2)  {
        withUnsafePointer(to: use_custom_rect) { use_custom_rect_native in
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(use_custom_rect_native), .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_custom_rect_2180266943,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_modulate(item: RID, color: Color)  {
        let color_native = color._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_modulate_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_set_self_modulate(item: RID, color: Color)  {
        let color_native = color._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_self_modulate_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_set_draw_behind_parent(item: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_draw_behind_parent_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_add_line(item: RID, from: Vector2, to: Vector2, color: Color, width: Float64, antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        withUnsafePointer(to: width) { width_native in
        let color_native = color._native_ptr()
        let to_native = to._native_ptr()
        let from_native = from._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(from_native), .init(to_native), .init(color_native), .init(width_native), .init(antialiased_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_line_2843922985,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func canvas_item_add_polyline(item: RID, points: PackedVector2Array, colors: PackedColorArray, width: Float64, antialiased: UInt8)  {
        withUnsafePointer(to: antialiased) { antialiased_native in
        withUnsafePointer(to: width) { width_native in
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(points_native), .init(colors_native), .init(width_native), .init(antialiased_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_polyline_3438017257,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func canvas_item_add_rect(item: RID, rect: Rect2, color: Color)  {
        let color_native = color._native_ptr()
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(rect_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_rect_934531857,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_circle(item: RID, pos: Vector2, radius: Float64, color: Color)  {
        withUnsafePointer(to: radius) { radius_native in
        let color_native = color._native_ptr()
        let pos_native = pos._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(pos_native), .init(radius_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_circle_2439351960,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_add_texture_rect(item: RID, rect: Rect2, texture: RID, tile: UInt8, modulate: Color, transpose: UInt8)  {
        withUnsafePointer(to: transpose) { transpose_native in
        withUnsafePointer(to: tile) { tile_native in
        let modulate_native = modulate._native_ptr()
        let texture_native = texture._native_ptr()
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(rect_native), .init(texture_native), .init(tile_native), .init(modulate_native), .init(transpose_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_texture_rect_3205360868,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func canvas_item_add_msdf_texture_rect_region(item: RID, rect: Rect2, texture: RID, src_rect: Rect2, modulate: Color, outline_size: Int64, px_range: Float64, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        withUnsafePointer(to: px_range) { px_range_native in
        withUnsafePointer(to: outline_size) { outline_size_native in
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let texture_native = texture._native_ptr()
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 8)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(rect_native), .init(texture_native), .init(src_rect_native), .init(modulate_native), .init(outline_size_native), .init(px_range_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_msdf_texture_rect_region_349157222,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func canvas_item_add_lcd_texture_rect_region(item: RID, rect: Rect2, texture: RID, src_rect: Rect2, modulate: Color)  {
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let texture_native = texture._native_ptr()
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(rect_native), .init(texture_native), .init(src_rect_native), .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_lcd_texture_rect_region_359793297,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_texture_rect_region(item: RID, rect: Rect2, texture: RID, src_rect: Rect2, modulate: Color, transpose: UInt8, clip_uv: UInt8)  {
        withUnsafePointer(to: clip_uv) { clip_uv_native in
        withUnsafePointer(to: transpose) { transpose_native in
        let modulate_native = modulate._native_ptr()
        let src_rect_native = src_rect._native_ptr()
        let texture_native = texture._native_ptr()
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(rect_native), .init(texture_native), .init(src_rect_native), .init(modulate_native), .init(transpose_native), .init(clip_uv_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_texture_rect_region_2782979504,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func canvas_item_add_nine_patch(item: RID, rect: Rect2, source: Rect2, texture: RID, topleft: Vector2, bottomright: Vector2, x_axis_mode: RenderingServer.NinePatchAxisMode, y_axis_mode: RenderingServer.NinePatchAxisMode, draw_center: UInt8, modulate: Color)  {
        withUnsafePointer(to: draw_center) { draw_center_native in
        withUnsafePointer(to: y_axis_mode.rawValue) { y_axis_mode_native in
        withUnsafePointer(to: x_axis_mode.rawValue) { x_axis_mode_native in
        let modulate_native = modulate._native_ptr()
        let bottomright_native = bottomright._native_ptr()
        let topleft_native = topleft._native_ptr()
        let texture_native = texture._native_ptr()
        let source_native = source._native_ptr()
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(rect_native), .init(source_native), .init(texture_native), .init(topleft_native), .init(bottomright_native), .init(x_axis_mode_native), .init(y_axis_mode_native), .init(draw_center_native), .init(modulate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_nine_patch_904428547,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
    }
    public func canvas_item_add_primitive(item: RID, points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: RID)  {
        let texture_native = texture._native_ptr()
        let uvs_native = uvs._native_ptr()
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(points_native), .init(colors_native), .init(uvs_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_primitive_3731601077,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_polygon(item: RID, points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: RID)  {
        let texture_native = texture._native_ptr()
        let uvs_native = uvs._native_ptr()
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(points_native), .init(colors_native), .init(uvs_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_polygon_2907936855,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_triangle_array(item: RID, indices: PackedInt32Array, points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, bones: PackedInt32Array, weights: PackedFloat32Array, texture: RID, count: Int64)  {
        withUnsafePointer(to: count) { count_native in
        let texture_native = texture._native_ptr()
        let weights_native = weights._native_ptr()
        let bones_native = bones._native_ptr()
        let uvs_native = uvs._native_ptr()
        let colors_native = colors._native_ptr()
        let points_native = points._native_ptr()
        let indices_native = indices._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 9)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(indices_native), .init(points_native), .init(colors_native), .init(uvs_native), .init(bones_native), .init(weights_native), .init(texture_native), .init(count_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_triangle_array_749685193,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_add_mesh(item: RID, mesh: RID, transform: Transform2D, modulate: Color, texture: RID)  {
        let texture_native = texture._native_ptr()
        let modulate_native = modulate._native_ptr()
        let transform_native = transform._native_ptr()
        let mesh_native = mesh._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(mesh_native), .init(transform_native), .init(modulate_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_mesh_3548053052,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_multimesh(item: RID, mesh: RID, texture: RID)  {
        let texture_native = texture._native_ptr()
        let mesh_native = mesh._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(mesh_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_multimesh_1541595251,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_particles(item: RID, particles: RID, texture: RID)  {
        let texture_native = texture._native_ptr()
        let particles_native = particles._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(particles_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_particles_2575754278,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_set_transform(item: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_add_clip_ignore(item: RID, ignore: UInt8)  {
        withUnsafePointer(to: ignore) { ignore_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(ignore_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_clip_ignore_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_add_animation_slice(item: RID, animation_length: Float64, slice_begin: Float64, slice_end: Float64, offset: Float64)  {
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: slice_end) { slice_end_native in
        withUnsafePointer(to: slice_begin) { slice_begin_native in
        withUnsafePointer(to: animation_length) { animation_length_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(animation_length_native), .init(slice_begin_native), .init(slice_end_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_add_animation_slice_4107531031,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
    }
    public func canvas_item_set_sort_children_by_y(item: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_sort_children_by_y_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_z_index(item: RID, z_index: Int64)  {
        withUnsafePointer(to: z_index) { z_index_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(z_index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_z_index_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_z_as_relative_to_parent(item: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_z_as_relative_to_parent_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_copy_to_backbuffer(item: RID, enabled: UInt8, rect: Rect2)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let rect_native = rect._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enabled_native), .init(rect_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_copy_to_backbuffer_2429202503,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_clear(item: RID)  {
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_clear_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_set_draw_index(item: RID, index: Int64)  {
        withUnsafePointer(to: index) { index_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(index_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_draw_index_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_material(item: RID, material: RID)  {
        let material_native = material._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(material_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_material_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_item_set_use_parent_material(item: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_use_parent_material_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_visibility_notifier(item: RID, enable: UInt8, area: Rect2, enter_callable: Callable, exit_callable: Callable)  {
        withUnsafePointer(to: enable) { enable_native in
        let exit_callable_native = exit_callable._native_ptr()
        let enter_callable_native = enter_callable._native_ptr()
        let area_native = area._native_ptr()
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(enable_native), .init(area_native), .init(enter_callable_native), .init(exit_callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_visibility_notifier_3568945579,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_item_set_canvas_group_mode(item: RID, mode: RenderingServer.CanvasGroupMode, clear_margin: Float64, fit_empty: UInt8, fit_margin: Float64, blur_mipmaps: UInt8)  {
        withUnsafePointer(to: blur_mipmaps) { blur_mipmaps_native in
        withUnsafePointer(to: fit_margin) { fit_margin_native in
        withUnsafePointer(to: fit_empty) { fit_empty_native in
        withUnsafePointer(to: clear_margin) { clear_margin_native in
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let item_native = item._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(item_native), .init(mode_native), .init(clear_margin_native), .init(fit_empty_native), .init(fit_margin_native), .init(blur_mipmaps_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_item_set_canvas_group_mode_1568036344,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
        }
        }
        }
    }
    public func canvas_light_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func canvas_light_attach_to_canvas(light: RID, canvas: RID)  {
        let canvas_native = canvas._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(canvas_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_attach_to_canvas_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_set_enabled(light: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_enabled_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_texture_scale(light: RID, scale: Float64)  {
        withUnsafePointer(to: scale) { scale_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(scale_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_texture_scale_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_transform(light: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_set_texture(light: RID, texture: RID)  {
        let texture_native = texture._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(texture_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_texture_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_set_texture_offset(light: RID, offset: Vector2)  {
        let offset_native = offset._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(offset_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_texture_offset_3201125042,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_set_color(light: RID, color: Color)  {
        let color_native = color._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_color_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_set_height(light: RID, height: Float64)  {
        withUnsafePointer(to: height) { height_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(height_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_height_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_energy(light: RID, energy: Float64)  {
        withUnsafePointer(to: energy) { energy_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(energy_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_energy_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_z_range(light: RID, min_z: Int64, max_z: Int64)  {
        withUnsafePointer(to: max_z) { max_z_native in
        withUnsafePointer(to: min_z) { min_z_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(min_z_native), .init(max_z_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_z_range_4288446313,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func canvas_light_set_layer_range(light: RID, min_layer: Int64, max_layer: Int64)  {
        withUnsafePointer(to: max_layer) { max_layer_native in
        withUnsafePointer(to: min_layer) { min_layer_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(min_layer_native), .init(max_layer_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_layer_range_4288446313,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func canvas_light_set_item_cull_mask(light: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_item_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_item_shadow_cull_mask(light: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_item_shadow_cull_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_mode(light: RID, mode: RenderingServer.CanvasLightMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_mode_2957564891,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_shadow_enabled(light: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_shadow_enabled_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_shadow_filter(light: RID, filter: RenderingServer.CanvasLightShadowFilter)  {
        withUnsafePointer(to: filter.rawValue) { filter_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_shadow_filter_393119659,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_set_shadow_color(light: RID, color: Color)  {
        let color_native = color._native_ptr()
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_shadow_color_2948539648,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_set_shadow_smooth(light: RID, smooth: Float64)  {
        withUnsafePointer(to: smooth) { smooth_native in
        let light_native = light._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(light_native), .init(smooth_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_set_shadow_smooth_1794382983,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_occluder_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func canvas_light_occluder_attach_to_canvas(occluder: RID, canvas: RID)  {
        let canvas_native = canvas._native_ptr()
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(canvas_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_attach_to_canvas_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_occluder_set_enabled(occluder: RID, enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_set_enabled_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_occluder_set_polygon(occluder: RID, polygon: RID)  {
        let polygon_native = polygon._native_ptr()
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(polygon_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_set_polygon_395945892,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_occluder_set_as_sdf_collision(occluder: RID, enable: UInt8)  {
        withUnsafePointer(to: enable) { enable_native in
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(enable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_set_as_sdf_collision_1265174801,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_light_occluder_set_transform(occluder: RID, transform: Transform2D)  {
        let transform_native = transform._native_ptr()
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(transform_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_set_transform_1246044741,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func canvas_light_occluder_set_light_mask(occluder: RID, mask: Int64)  {
        withUnsafePointer(to: mask) { mask_native in
        let occluder_native = occluder._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_native), .init(mask_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_light_occluder_set_light_mask_3411492887,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_occluder_polygon_create() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_occluder_polygon_create_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func canvas_occluder_polygon_set_shape(occluder_polygon: RID, shape: PackedVector2Array, closed: UInt8)  {
        withUnsafePointer(to: closed) { closed_native in
        let shape_native = shape._native_ptr()
        let occluder_polygon_native = occluder_polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_polygon_native), .init(shape_native), .init(closed_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_occluder_polygon_set_shape_2103882027,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_occluder_polygon_set_cull_mode(occluder_polygon: RID, mode: RenderingServer.CanvasOccluderPolygonCullMode)  {
        withUnsafePointer(to: mode.rawValue) { mode_native in
        let occluder_polygon_native = occluder_polygon._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(occluder_polygon_native), .init(mode_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_occluder_polygon_set_cull_mode_1839404663,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func canvas_set_shadow_texture_size(size: Int64)  {
        withUnsafePointer(to: size) { size_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_canvas_set_shadow_texture_size_1286410249,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func global_shader_parameter_add(name: StringName, `type`: RenderingServer.GlobalShaderParameterType, default_value: Variant)  {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let default_value_native = default_value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(type_native), .init(default_value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_add_463390080,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func global_shader_parameter_remove(name: StringName)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_remove_3304788590,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func global_shader_parameter_get_list() -> PackedStringArray {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_get_list_1139954409,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedStringArray(from: __resPtr.pointee)
    }
    public func global_shader_parameter_set(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_set_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func global_shader_parameter_set_override(name: StringName, value: Variant)  {
        let value_native = value._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(value_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_set_override_3776071444,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func global_shader_parameter_get(name: StringName) -> Variant {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_get_2760726917,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Variant(from: __resPtr.pointee)
    }
    public func global_shader_parameter_get_type(name: StringName) -> RenderingServer.GlobalShaderParameterType {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_global_shader_parameter_get_type_1601414142,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingServer.GlobalShaderParameterType(from: __resPtr.pointee)
    }
    public func free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_free_rid_2722037293,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func request_frame_drawn_callback(callable: Callable)  {
        let callable_native = callable._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(callable_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_request_frame_drawn_callback_1611583062,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_changed() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_changed_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func get_rendering_info(info: RenderingServer.RenderingInfo) -> Int64 {
        withUnsafePointer(to: info.rawValue) { info_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(info_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rendering_info_3763192241,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(from: __resPtr.pointee)
        }
    }
    public func get_video_adapter_name() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_video_adapter_name_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_video_adapter_vendor() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_video_adapter_vendor_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func get_video_adapter_type() -> RenderingDevice.DeviceType {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_video_adapter_type_3099547011,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.DeviceType(from: __resPtr.pointee)
    }
    public func get_video_adapter_api_version() -> String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_video_adapter_api_version_201670096,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return String(from: __resPtr.pointee)
    }
    public func make_sphere_mesh(latitudes: Int64, longitudes: Int64, radius: Float64) -> RID {
        withUnsafePointer(to: radius) { radius_native in
        withUnsafePointer(to: longitudes) { longitudes_native in
        withUnsafePointer(to: latitudes) { latitudes_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(latitudes_native), .init(longitudes_native), .init(radius_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_make_sphere_mesh_2251015897,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
        }
        }
        }
    }
    public func get_test_cube() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_test_cube_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func get_test_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_test_texture_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func get_white_texture() -> RID {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_white_texture_529393457,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(from: __resPtr.pointee)
    }
    public func set_boot_image(image: Image, color: Color, scale: UInt8, use_filter: UInt8)  {
        withUnsafePointer(to: use_filter) { use_filter_native in
        withUnsafePointer(to: scale) { scale_native in
        let color_native = color._native_ptr()
        let image_native = image._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(image_native), .init(color_native), .init(scale_native), .init(use_filter_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_boot_image_2244367877,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_default_clear_color() -> Color {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_default_clear_color_3200896285,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Color(from: __resPtr.pointee)
    }
    public func set_default_clear_color(color: Color)  {
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(color_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_default_clear_color_2920490490,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func has_feature(feature: RenderingServer.Features) -> UInt8 {
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
                    Self._method_has_feature_598462696,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func has_os_feature(feature: String) -> UInt8 {
        withUnsafePointer(to: feature) { feature_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(feature_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_has_os_feature_3927539163,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
        }
    }
    public func set_debug_generate_wireframes(generate: UInt8)  {
        withUnsafePointer(to: generate) { generate_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(generate_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_debug_generate_wireframes_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func is_render_loop_enabled() -> UInt8 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_is_render_loop_enabled_36873697,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(from: __resPtr.pointee)
    }
    public func set_render_loop_enabled(enabled: UInt8)  {
        withUnsafePointer(to: enabled) { enabled_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(enabled_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_set_render_loop_enabled_2586408642,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func get_frame_setup_time_cpu() -> Float64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_frame_setup_time_cpu_1740695150,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Float64(from: __resPtr.pointee)
    }
    public func force_sync()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_sync_3218959716,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func force_draw(swap_buffers: UInt8, frame_step: Float64)  {
        withUnsafePointer(to: frame_step) { frame_step_native in
        withUnsafePointer(to: swap_buffers) { swap_buffers_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(swap_buffers_native), .init(frame_step_native)
            ])
            // call here
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_force_draw_899045543,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
        }
    }
    public func get_rendering_device() -> RenderingDevice {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_get_rendering_device_1405107940,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice(from: __resPtr.pointee)
    }
    public func create_local_rendering_device() -> RenderingDevice {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            self.interface.pointee.object_method_bind_ptrcall(
                    Self._method_create_local_rendering_device_1405107940,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice(from: __resPtr.pointee)
    }
}