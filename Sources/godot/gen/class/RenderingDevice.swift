import godot_native

fileprivate var __godot_name_RenderingDevice: StringName! = nil

/// Abstraction for working with modern low-level graphics APIs.
/// 
/// [RenderingDevice] is an abstraction for working with modern low-level graphics APIs such as Vulkan.
///  
/// On startup, Godot creates a global [RenderingDevice] which can be retrieved using [method RenderingServer.get_rendering_device]. This global RenderingDevice performs drawing to the screen.
///  
/// Internally, [RenderingDevice] is used in Godot to provide support for several modern low-level graphics APIs while reducing the amount of code duplication required.
///  
/// [b]Local RenderingDevices:[/b] Using [method RenderingServer.create_local_rendering_device], you can create "secondary" rendering devices to perform drawing and GPU compute operations on separate threads.
///  
/// [b]Note:[/b] [RenderingDevice] is not available when running in headless mode or when using the OpenGL renderer.
open class RenderingDevice : Object {

    public enum DeviceType : Int32 {
        case DEVICE_TYPE_OTHER = 0
        case DEVICE_TYPE_INTEGRATED_GPU = 1
        case DEVICE_TYPE_DISCRETE_GPU = 2
        case DEVICE_TYPE_VIRTUAL_GPU = 3
        case DEVICE_TYPE_CPU = 4
        case DEVICE_TYPE_MAX = 5
    }
    public enum DriverResource : Int32 {
        case DRIVER_RESOURCE_VULKAN_DEVICE = 0
        case DRIVER_RESOURCE_VULKAN_PHYSICAL_DEVICE = 1
        case DRIVER_RESOURCE_VULKAN_INSTANCE = 2
        case DRIVER_RESOURCE_VULKAN_QUEUE = 3
        case DRIVER_RESOURCE_VULKAN_QUEUE_FAMILY_INDEX = 4
        case DRIVER_RESOURCE_VULKAN_IMAGE = 5
        case DRIVER_RESOURCE_VULKAN_IMAGE_VIEW = 6
        case DRIVER_RESOURCE_VULKAN_IMAGE_NATIVE_TEXTURE_FORMAT = 7
        case DRIVER_RESOURCE_VULKAN_SAMPLER = 8
        case DRIVER_RESOURCE_VULKAN_DESCRIPTOR_SET = 9
        case DRIVER_RESOURCE_VULKAN_BUFFER = 10
        case DRIVER_RESOURCE_VULKAN_COMPUTE_PIPELINE = 11
        case DRIVER_RESOURCE_VULKAN_RENDER_PIPELINE = 12
    }
    public enum DataFormat : Int32 {
        case DATA_FORMAT_R4G4_UNORM_PACK8 = 0
        case DATA_FORMAT_R4G4B4A4_UNORM_PACK16 = 1
        case DATA_FORMAT_B4G4R4A4_UNORM_PACK16 = 2
        case DATA_FORMAT_R5G6B5_UNORM_PACK16 = 3
        case DATA_FORMAT_B5G6R5_UNORM_PACK16 = 4
        case DATA_FORMAT_R5G5B5A1_UNORM_PACK16 = 5
        case DATA_FORMAT_B5G5R5A1_UNORM_PACK16 = 6
        case DATA_FORMAT_A1R5G5B5_UNORM_PACK16 = 7
        case DATA_FORMAT_R8_UNORM = 8
        case DATA_FORMAT_R8_SNORM = 9
        case DATA_FORMAT_R8_USCALED = 10
        case DATA_FORMAT_R8_SSCALED = 11
        case DATA_FORMAT_R8_UINT = 12
        case DATA_FORMAT_R8_SINT = 13
        case DATA_FORMAT_R8_SRGB = 14
        case DATA_FORMAT_R8G8_UNORM = 15
        case DATA_FORMAT_R8G8_SNORM = 16
        case DATA_FORMAT_R8G8_USCALED = 17
        case DATA_FORMAT_R8G8_SSCALED = 18
        case DATA_FORMAT_R8G8_UINT = 19
        case DATA_FORMAT_R8G8_SINT = 20
        case DATA_FORMAT_R8G8_SRGB = 21
        case DATA_FORMAT_R8G8B8_UNORM = 22
        case DATA_FORMAT_R8G8B8_SNORM = 23
        case DATA_FORMAT_R8G8B8_USCALED = 24
        case DATA_FORMAT_R8G8B8_SSCALED = 25
        case DATA_FORMAT_R8G8B8_UINT = 26
        case DATA_FORMAT_R8G8B8_SINT = 27
        case DATA_FORMAT_R8G8B8_SRGB = 28
        case DATA_FORMAT_B8G8R8_UNORM = 29
        case DATA_FORMAT_B8G8R8_SNORM = 30
        case DATA_FORMAT_B8G8R8_USCALED = 31
        case DATA_FORMAT_B8G8R8_SSCALED = 32
        case DATA_FORMAT_B8G8R8_UINT = 33
        case DATA_FORMAT_B8G8R8_SINT = 34
        case DATA_FORMAT_B8G8R8_SRGB = 35
        case DATA_FORMAT_R8G8B8A8_UNORM = 36
        case DATA_FORMAT_R8G8B8A8_SNORM = 37
        case DATA_FORMAT_R8G8B8A8_USCALED = 38
        case DATA_FORMAT_R8G8B8A8_SSCALED = 39
        case DATA_FORMAT_R8G8B8A8_UINT = 40
        case DATA_FORMAT_R8G8B8A8_SINT = 41
        case DATA_FORMAT_R8G8B8A8_SRGB = 42
        case DATA_FORMAT_B8G8R8A8_UNORM = 43
        case DATA_FORMAT_B8G8R8A8_SNORM = 44
        case DATA_FORMAT_B8G8R8A8_USCALED = 45
        case DATA_FORMAT_B8G8R8A8_SSCALED = 46
        case DATA_FORMAT_B8G8R8A8_UINT = 47
        case DATA_FORMAT_B8G8R8A8_SINT = 48
        case DATA_FORMAT_B8G8R8A8_SRGB = 49
        case DATA_FORMAT_A8B8G8R8_UNORM_PACK32 = 50
        case DATA_FORMAT_A8B8G8R8_SNORM_PACK32 = 51
        case DATA_FORMAT_A8B8G8R8_USCALED_PACK32 = 52
        case DATA_FORMAT_A8B8G8R8_SSCALED_PACK32 = 53
        case DATA_FORMAT_A8B8G8R8_UINT_PACK32 = 54
        case DATA_FORMAT_A8B8G8R8_SINT_PACK32 = 55
        case DATA_FORMAT_A8B8G8R8_SRGB_PACK32 = 56
        case DATA_FORMAT_A2R10G10B10_UNORM_PACK32 = 57
        case DATA_FORMAT_A2R10G10B10_SNORM_PACK32 = 58
        case DATA_FORMAT_A2R10G10B10_USCALED_PACK32 = 59
        case DATA_FORMAT_A2R10G10B10_SSCALED_PACK32 = 60
        case DATA_FORMAT_A2R10G10B10_UINT_PACK32 = 61
        case DATA_FORMAT_A2R10G10B10_SINT_PACK32 = 62
        case DATA_FORMAT_A2B10G10R10_UNORM_PACK32 = 63
        case DATA_FORMAT_A2B10G10R10_SNORM_PACK32 = 64
        case DATA_FORMAT_A2B10G10R10_USCALED_PACK32 = 65
        case DATA_FORMAT_A2B10G10R10_SSCALED_PACK32 = 66
        case DATA_FORMAT_A2B10G10R10_UINT_PACK32 = 67
        case DATA_FORMAT_A2B10G10R10_SINT_PACK32 = 68
        case DATA_FORMAT_R16_UNORM = 69
        case DATA_FORMAT_R16_SNORM = 70
        case DATA_FORMAT_R16_USCALED = 71
        case DATA_FORMAT_R16_SSCALED = 72
        case DATA_FORMAT_R16_UINT = 73
        case DATA_FORMAT_R16_SINT = 74
        case DATA_FORMAT_R16_SFLOAT = 75
        case DATA_FORMAT_R16G16_UNORM = 76
        case DATA_FORMAT_R16G16_SNORM = 77
        case DATA_FORMAT_R16G16_USCALED = 78
        case DATA_FORMAT_R16G16_SSCALED = 79
        case DATA_FORMAT_R16G16_UINT = 80
        case DATA_FORMAT_R16G16_SINT = 81
        case DATA_FORMAT_R16G16_SFLOAT = 82
        case DATA_FORMAT_R16G16B16_UNORM = 83
        case DATA_FORMAT_R16G16B16_SNORM = 84
        case DATA_FORMAT_R16G16B16_USCALED = 85
        case DATA_FORMAT_R16G16B16_SSCALED = 86
        case DATA_FORMAT_R16G16B16_UINT = 87
        case DATA_FORMAT_R16G16B16_SINT = 88
        case DATA_FORMAT_R16G16B16_SFLOAT = 89
        case DATA_FORMAT_R16G16B16A16_UNORM = 90
        case DATA_FORMAT_R16G16B16A16_SNORM = 91
        case DATA_FORMAT_R16G16B16A16_USCALED = 92
        case DATA_FORMAT_R16G16B16A16_SSCALED = 93
        case DATA_FORMAT_R16G16B16A16_UINT = 94
        case DATA_FORMAT_R16G16B16A16_SINT = 95
        case DATA_FORMAT_R16G16B16A16_SFLOAT = 96
        case DATA_FORMAT_R32_UINT = 97
        case DATA_FORMAT_R32_SINT = 98
        case DATA_FORMAT_R32_SFLOAT = 99
        case DATA_FORMAT_R32G32_UINT = 100
        case DATA_FORMAT_R32G32_SINT = 101
        case DATA_FORMAT_R32G32_SFLOAT = 102
        case DATA_FORMAT_R32G32B32_UINT = 103
        case DATA_FORMAT_R32G32B32_SINT = 104
        case DATA_FORMAT_R32G32B32_SFLOAT = 105
        case DATA_FORMAT_R32G32B32A32_UINT = 106
        case DATA_FORMAT_R32G32B32A32_SINT = 107
        case DATA_FORMAT_R32G32B32A32_SFLOAT = 108
        case DATA_FORMAT_R64_UINT = 109
        case DATA_FORMAT_R64_SINT = 110
        case DATA_FORMAT_R64_SFLOAT = 111
        case DATA_FORMAT_R64G64_UINT = 112
        case DATA_FORMAT_R64G64_SINT = 113
        case DATA_FORMAT_R64G64_SFLOAT = 114
        case DATA_FORMAT_R64G64B64_UINT = 115
        case DATA_FORMAT_R64G64B64_SINT = 116
        case DATA_FORMAT_R64G64B64_SFLOAT = 117
        case DATA_FORMAT_R64G64B64A64_UINT = 118
        case DATA_FORMAT_R64G64B64A64_SINT = 119
        case DATA_FORMAT_R64G64B64A64_SFLOAT = 120
        case DATA_FORMAT_B10G11R11_UFLOAT_PACK32 = 121
        case DATA_FORMAT_E5B9G9R9_UFLOAT_PACK32 = 122
        case DATA_FORMAT_D16_UNORM = 123
        case DATA_FORMAT_X8_D24_UNORM_PACK32 = 124
        case DATA_FORMAT_D32_SFLOAT = 125
        case DATA_FORMAT_S8_UINT = 126
        case DATA_FORMAT_D16_UNORM_S8_UINT = 127
        case DATA_FORMAT_D24_UNORM_S8_UINT = 128
        case DATA_FORMAT_D32_SFLOAT_S8_UINT = 129
        case DATA_FORMAT_BC1_RGB_UNORM_BLOCK = 130
        case DATA_FORMAT_BC1_RGB_SRGB_BLOCK = 131
        case DATA_FORMAT_BC1_RGBA_UNORM_BLOCK = 132
        case DATA_FORMAT_BC1_RGBA_SRGB_BLOCK = 133
        case DATA_FORMAT_BC2_UNORM_BLOCK = 134
        case DATA_FORMAT_BC2_SRGB_BLOCK = 135
        case DATA_FORMAT_BC3_UNORM_BLOCK = 136
        case DATA_FORMAT_BC3_SRGB_BLOCK = 137
        case DATA_FORMAT_BC4_UNORM_BLOCK = 138
        case DATA_FORMAT_BC4_SNORM_BLOCK = 139
        case DATA_FORMAT_BC5_UNORM_BLOCK = 140
        case DATA_FORMAT_BC5_SNORM_BLOCK = 141
        case DATA_FORMAT_BC6H_UFLOAT_BLOCK = 142
        case DATA_FORMAT_BC6H_SFLOAT_BLOCK = 143
        case DATA_FORMAT_BC7_UNORM_BLOCK = 144
        case DATA_FORMAT_BC7_SRGB_BLOCK = 145
        case DATA_FORMAT_ETC2_R8G8B8_UNORM_BLOCK = 146
        case DATA_FORMAT_ETC2_R8G8B8_SRGB_BLOCK = 147
        case DATA_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK = 148
        case DATA_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK = 149
        case DATA_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK = 150
        case DATA_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK = 151
        case DATA_FORMAT_EAC_R11_UNORM_BLOCK = 152
        case DATA_FORMAT_EAC_R11_SNORM_BLOCK = 153
        case DATA_FORMAT_EAC_R11G11_UNORM_BLOCK = 154
        case DATA_FORMAT_EAC_R11G11_SNORM_BLOCK = 155
        case DATA_FORMAT_ASTC_4x4_UNORM_BLOCK = 156
        case DATA_FORMAT_ASTC_4x4_SRGB_BLOCK = 157
        case DATA_FORMAT_ASTC_5x4_UNORM_BLOCK = 158
        case DATA_FORMAT_ASTC_5x4_SRGB_BLOCK = 159
        case DATA_FORMAT_ASTC_5x5_UNORM_BLOCK = 160
        case DATA_FORMAT_ASTC_5x5_SRGB_BLOCK = 161
        case DATA_FORMAT_ASTC_6x5_UNORM_BLOCK = 162
        case DATA_FORMAT_ASTC_6x5_SRGB_BLOCK = 163
        case DATA_FORMAT_ASTC_6x6_UNORM_BLOCK = 164
        case DATA_FORMAT_ASTC_6x6_SRGB_BLOCK = 165
        case DATA_FORMAT_ASTC_8x5_UNORM_BLOCK = 166
        case DATA_FORMAT_ASTC_8x5_SRGB_BLOCK = 167
        case DATA_FORMAT_ASTC_8x6_UNORM_BLOCK = 168
        case DATA_FORMAT_ASTC_8x6_SRGB_BLOCK = 169
        case DATA_FORMAT_ASTC_8x8_UNORM_BLOCK = 170
        case DATA_FORMAT_ASTC_8x8_SRGB_BLOCK = 171
        case DATA_FORMAT_ASTC_10x5_UNORM_BLOCK = 172
        case DATA_FORMAT_ASTC_10x5_SRGB_BLOCK = 173
        case DATA_FORMAT_ASTC_10x6_UNORM_BLOCK = 174
        case DATA_FORMAT_ASTC_10x6_SRGB_BLOCK = 175
        case DATA_FORMAT_ASTC_10x8_UNORM_BLOCK = 176
        case DATA_FORMAT_ASTC_10x8_SRGB_BLOCK = 177
        case DATA_FORMAT_ASTC_10x10_UNORM_BLOCK = 178
        case DATA_FORMAT_ASTC_10x10_SRGB_BLOCK = 179
        case DATA_FORMAT_ASTC_12x10_UNORM_BLOCK = 180
        case DATA_FORMAT_ASTC_12x10_SRGB_BLOCK = 181
        case DATA_FORMAT_ASTC_12x12_UNORM_BLOCK = 182
        case DATA_FORMAT_ASTC_12x12_SRGB_BLOCK = 183
        case DATA_FORMAT_G8B8G8R8_422_UNORM = 184
        case DATA_FORMAT_B8G8R8G8_422_UNORM = 185
        case DATA_FORMAT_G8_B8_R8_3PLANE_420_UNORM = 186
        case DATA_FORMAT_G8_B8R8_2PLANE_420_UNORM = 187
        case DATA_FORMAT_G8_B8_R8_3PLANE_422_UNORM = 188
        case DATA_FORMAT_G8_B8R8_2PLANE_422_UNORM = 189
        case DATA_FORMAT_G8_B8_R8_3PLANE_444_UNORM = 190
        case DATA_FORMAT_R10X6_UNORM_PACK16 = 191
        case DATA_FORMAT_R10X6G10X6_UNORM_2PACK16 = 192
        case DATA_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16 = 193
        case DATA_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16 = 194
        case DATA_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16 = 195
        case DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16 = 196
        case DATA_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16 = 197
        case DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16 = 198
        case DATA_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16 = 199
        case DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16 = 200
        case DATA_FORMAT_R12X4_UNORM_PACK16 = 201
        case DATA_FORMAT_R12X4G12X4_UNORM_2PACK16 = 202
        case DATA_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16 = 203
        case DATA_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16 = 204
        case DATA_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16 = 205
        case DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16 = 206
        case DATA_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16 = 207
        case DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16 = 208
        case DATA_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16 = 209
        case DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16 = 210
        case DATA_FORMAT_G16B16G16R16_422_UNORM = 211
        case DATA_FORMAT_B16G16R16G16_422_UNORM = 212
        case DATA_FORMAT_G16_B16_R16_3PLANE_420_UNORM = 213
        case DATA_FORMAT_G16_B16R16_2PLANE_420_UNORM = 214
        case DATA_FORMAT_G16_B16_R16_3PLANE_422_UNORM = 215
        case DATA_FORMAT_G16_B16R16_2PLANE_422_UNORM = 216
        case DATA_FORMAT_G16_B16_R16_3PLANE_444_UNORM = 217
        case DATA_FORMAT_MAX = 218
    }
    public struct BarrierMask: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let BARRIER_MASK_RASTER = BarrierMask(rawValue: 1)
        static let BARRIER_MASK_COMPUTE = BarrierMask(rawValue: 2)
        static let BARRIER_MASK_TRANSFER = BarrierMask(rawValue: 4)
        static let BARRIER_MASK_ALL_BARRIERS = BarrierMask(rawValue: 7)
        static let BARRIER_MASK_NO_BARRIER = BarrierMask(rawValue: 8)
    }
    public enum TextureType : Int32 {
        case TEXTURE_TYPE_1D = 0
        case TEXTURE_TYPE_2D = 1
        case TEXTURE_TYPE_3D = 2
        case TEXTURE_TYPE_CUBE = 3
        case TEXTURE_TYPE_1D_ARRAY = 4
        case TEXTURE_TYPE_2D_ARRAY = 5
        case TEXTURE_TYPE_CUBE_ARRAY = 6
        case TEXTURE_TYPE_MAX = 7
    }
    public enum TextureSamples : Int32 {
        case TEXTURE_SAMPLES_1 = 0
        case TEXTURE_SAMPLES_2 = 1
        case TEXTURE_SAMPLES_4 = 2
        case TEXTURE_SAMPLES_8 = 3
        case TEXTURE_SAMPLES_16 = 4
        case TEXTURE_SAMPLES_32 = 5
        case TEXTURE_SAMPLES_64 = 6
        case TEXTURE_SAMPLES_MAX = 7
    }
    public struct TextureUsageBits: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let TEXTURE_USAGE_SAMPLING_BIT = TextureUsageBits(rawValue: 1)
        static let TEXTURE_USAGE_COLOR_ATTACHMENT_BIT = TextureUsageBits(rawValue: 2)
        static let TEXTURE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT = TextureUsageBits(rawValue: 4)
        static let TEXTURE_USAGE_STORAGE_BIT = TextureUsageBits(rawValue: 8)
        static let TEXTURE_USAGE_STORAGE_ATOMIC_BIT = TextureUsageBits(rawValue: 16)
        static let TEXTURE_USAGE_CPU_READ_BIT = TextureUsageBits(rawValue: 32)
        static let TEXTURE_USAGE_CAN_UPDATE_BIT = TextureUsageBits(rawValue: 64)
        static let TEXTURE_USAGE_CAN_COPY_FROM_BIT = TextureUsageBits(rawValue: 128)
        static let TEXTURE_USAGE_CAN_COPY_TO_BIT = TextureUsageBits(rawValue: 256)
        static let TEXTURE_USAGE_INPUT_ATTACHMENT_BIT = TextureUsageBits(rawValue: 512)
    }
    public enum TextureSwizzle : Int32 {
        case TEXTURE_SWIZZLE_IDENTITY = 0
        case TEXTURE_SWIZZLE_ZERO = 1
        case TEXTURE_SWIZZLE_ONE = 2
        case TEXTURE_SWIZZLE_R = 3
        case TEXTURE_SWIZZLE_G = 4
        case TEXTURE_SWIZZLE_B = 5
        case TEXTURE_SWIZZLE_A = 6
        case TEXTURE_SWIZZLE_MAX = 7
    }
    public enum TextureSliceType : Int32 {
        case TEXTURE_SLICE_2D = 0
        case TEXTURE_SLICE_CUBEMAP = 1
        case TEXTURE_SLICE_3D = 2
    }
    public enum SamplerFilter : Int32 {
        case SAMPLER_FILTER_NEAREST = 0
        case SAMPLER_FILTER_LINEAR = 1
    }
    public enum SamplerRepeatMode : Int32 {
        case SAMPLER_REPEAT_MODE_REPEAT = 0
        case SAMPLER_REPEAT_MODE_MIRRORED_REPEAT = 1
        case SAMPLER_REPEAT_MODE_CLAMP_TO_EDGE = 2
        case SAMPLER_REPEAT_MODE_CLAMP_TO_BORDER = 3
        case SAMPLER_REPEAT_MODE_MIRROR_CLAMP_TO_EDGE = 4
        case SAMPLER_REPEAT_MODE_MAX = 5
    }
    public enum SamplerBorderColor : Int32 {
        case SAMPLER_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0
        case SAMPLER_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1
        case SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2
        case SAMPLER_BORDER_COLOR_INT_OPAQUE_BLACK = 3
        case SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4
        case SAMPLER_BORDER_COLOR_INT_OPAQUE_WHITE = 5
        case SAMPLER_BORDER_COLOR_MAX = 6
    }
    public enum VertexFrequency : Int32 {
        case VERTEX_FREQUENCY_VERTEX = 0
        case VERTEX_FREQUENCY_INSTANCE = 1
    }
    public enum IndexBufferFormat : Int32 {
        case INDEX_BUFFER_FORMAT_UINT16 = 0
        case INDEX_BUFFER_FORMAT_UINT32 = 1
    }
    public struct StorageBufferUsage: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let STORAGE_BUFFER_USAGE_DISPATCH_INDIRECT = StorageBufferUsage(rawValue: 1)
    }
    public enum UniformType : Int32 {
        case UNIFORM_TYPE_SAMPLER = 0
        case UNIFORM_TYPE_SAMPLER_WITH_TEXTURE = 1
        case UNIFORM_TYPE_TEXTURE = 2
        case UNIFORM_TYPE_IMAGE = 3
        case UNIFORM_TYPE_TEXTURE_BUFFER = 4
        case UNIFORM_TYPE_SAMPLER_WITH_TEXTURE_BUFFER = 5
        case UNIFORM_TYPE_IMAGE_BUFFER = 6
        case UNIFORM_TYPE_UNIFORM_BUFFER = 7
        case UNIFORM_TYPE_STORAGE_BUFFER = 8
        case UNIFORM_TYPE_INPUT_ATTACHMENT = 9
        case UNIFORM_TYPE_MAX = 10
    }
    public enum RenderPrimitive : Int32 {
        case RENDER_PRIMITIVE_POINTS = 0
        case RENDER_PRIMITIVE_LINES = 1
        case RENDER_PRIMITIVE_LINES_WITH_ADJACENCY = 2
        case RENDER_PRIMITIVE_LINESTRIPS = 3
        case RENDER_PRIMITIVE_LINESTRIPS_WITH_ADJACENCY = 4
        case RENDER_PRIMITIVE_TRIANGLES = 5
        case RENDER_PRIMITIVE_TRIANGLES_WITH_ADJACENCY = 6
        case RENDER_PRIMITIVE_TRIANGLE_STRIPS = 7
        case RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_AJACENCY = 8
        case RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_RESTART_INDEX = 9
        case RENDER_PRIMITIVE_TESSELATION_PATCH = 10
        case RENDER_PRIMITIVE_MAX = 11
    }
    public enum PolygonCullMode : Int32 {
        case POLYGON_CULL_DISABLED = 0
        case POLYGON_CULL_FRONT = 1
        case POLYGON_CULL_BACK = 2
    }
    public enum PolygonFrontFace : Int32 {
        case POLYGON_FRONT_FACE_CLOCKWISE = 0
        case POLYGON_FRONT_FACE_COUNTER_CLOCKWISE = 1
    }
    public enum StencilOperation : Int32 {
        case STENCIL_OP_KEEP = 0
        case STENCIL_OP_ZERO = 1
        case STENCIL_OP_REPLACE = 2
        case STENCIL_OP_INCREMENT_AND_CLAMP = 3
        case STENCIL_OP_DECREMENT_AND_CLAMP = 4
        case STENCIL_OP_INVERT = 5
        case STENCIL_OP_INCREMENT_AND_WRAP = 6
        case STENCIL_OP_DECREMENT_AND_WRAP = 7
        case STENCIL_OP_MAX = 8
    }
    public enum CompareOperator : Int32 {
        case COMPARE_OP_NEVER = 0
        case COMPARE_OP_LESS = 1
        case COMPARE_OP_EQUAL = 2
        case COMPARE_OP_LESS_OR_EQUAL = 3
        case COMPARE_OP_GREATER = 4
        case COMPARE_OP_NOT_EQUAL = 5
        case COMPARE_OP_GREATER_OR_EQUAL = 6
        case COMPARE_OP_ALWAYS = 7
        case COMPARE_OP_MAX = 8
    }
    public enum LogicOperation : Int32 {
        case LOGIC_OP_CLEAR = 0
        case LOGIC_OP_AND = 1
        case LOGIC_OP_AND_REVERSE = 2
        case LOGIC_OP_COPY = 3
        case LOGIC_OP_AND_INVERTED = 4
        case LOGIC_OP_NO_OP = 5
        case LOGIC_OP_XOR = 6
        case LOGIC_OP_OR = 7
        case LOGIC_OP_NOR = 8
        case LOGIC_OP_EQUIVALENT = 9
        case LOGIC_OP_INVERT = 10
        case LOGIC_OP_OR_REVERSE = 11
        case LOGIC_OP_COPY_INVERTED = 12
        case LOGIC_OP_OR_INVERTED = 13
        case LOGIC_OP_NAND = 14
        case LOGIC_OP_SET = 15
        case LOGIC_OP_MAX = 16
    }
    public enum BlendFactor : Int32 {
        case BLEND_FACTOR_ZERO = 0
        case BLEND_FACTOR_ONE = 1
        case BLEND_FACTOR_SRC_COLOR = 2
        case BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3
        case BLEND_FACTOR_DST_COLOR = 4
        case BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5
        case BLEND_FACTOR_SRC_ALPHA = 6
        case BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7
        case BLEND_FACTOR_DST_ALPHA = 8
        case BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9
        case BLEND_FACTOR_CONSTANT_COLOR = 10
        case BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11
        case BLEND_FACTOR_CONSTANT_ALPHA = 12
        case BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13
        case BLEND_FACTOR_SRC_ALPHA_SATURATE = 14
        case BLEND_FACTOR_SRC1_COLOR = 15
        case BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16
        case BLEND_FACTOR_SRC1_ALPHA = 17
        case BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18
        case BLEND_FACTOR_MAX = 19
    }
    public enum BlendOperation : Int32 {
        case BLEND_OP_ADD = 0
        case BLEND_OP_SUBTRACT = 1
        case BLEND_OP_REVERSE_SUBTRACT = 2
        case BLEND_OP_MINIMUM = 3
        case BLEND_OP_MAXIMUM = 4
        case BLEND_OP_MAX = 5
    }
    public struct PipelineDynamicStateFlags: OptionSet {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let DYNAMIC_STATE_LINE_WIDTH = PipelineDynamicStateFlags(rawValue: 1)
        static let DYNAMIC_STATE_DEPTH_BIAS = PipelineDynamicStateFlags(rawValue: 2)
        static let DYNAMIC_STATE_BLEND_CONSTANTS = PipelineDynamicStateFlags(rawValue: 4)
        static let DYNAMIC_STATE_DEPTH_BOUNDS = PipelineDynamicStateFlags(rawValue: 8)
        static let DYNAMIC_STATE_STENCIL_COMPARE_MASK = PipelineDynamicStateFlags(rawValue: 16)
        static let DYNAMIC_STATE_STENCIL_WRITE_MASK = PipelineDynamicStateFlags(rawValue: 32)
        static let DYNAMIC_STATE_STENCIL_REFERENCE = PipelineDynamicStateFlags(rawValue: 64)
    }
    public enum InitialAction : Int32 {
        case INITIAL_ACTION_CLEAR = 0
        case INITIAL_ACTION_CLEAR_REGION = 1
        case INITIAL_ACTION_CLEAR_REGION_CONTINUE = 2
        case INITIAL_ACTION_KEEP = 3
        case INITIAL_ACTION_DROP = 4
        case INITIAL_ACTION_CONTINUE = 5
        case INITIAL_ACTION_MAX = 6
    }
    public enum FinalAction : Int32 {
        case FINAL_ACTION_READ = 0
        case FINAL_ACTION_DISCARD = 1
        case FINAL_ACTION_CONTINUE = 2
        case FINAL_ACTION_MAX = 3
    }
    public struct ShaderStage: RawRepresentable {
        public let rawValue: Int32
        public init(rawValue: Int32) {
            self.rawValue = rawValue
        }
        static let SHADER_STAGE_VERTEX = ShaderStage(rawValue: 0)
        static let SHADER_STAGE_FRAGMENT = ShaderStage(rawValue: 1)
        static let SHADER_STAGE_TESSELATION_CONTROL = ShaderStage(rawValue: 2)
        static let SHADER_STAGE_TESSELATION_EVALUATION = ShaderStage(rawValue: 3)
        static let SHADER_STAGE_COMPUTE = ShaderStage(rawValue: 4)
        static let SHADER_STAGE_MAX = ShaderStage(rawValue: 5)
        static let SHADER_STAGE_VERTEX_BIT = ShaderStage(rawValue: 1)
        static let SHADER_STAGE_FRAGMENT_BIT = ShaderStage(rawValue: 2)
        static let SHADER_STAGE_TESSELATION_CONTROL_BIT = ShaderStage(rawValue: 4)
        static let SHADER_STAGE_TESSELATION_EVALUATION_BIT = ShaderStage(rawValue: 8)
        static let SHADER_STAGE_COMPUTE_BIT = ShaderStage(rawValue: 16)
    }
    public enum ShaderLanguage : Int32 {
        case SHADER_LANGUAGE_GLSL = 0
        case SHADER_LANGUAGE_HLSL = 1
    }
    public enum PipelineSpecializationConstantType : Int32 {
        case PIPELINE_SPECIALIZATION_CONSTANT_TYPE_BOOL = 0
        case PIPELINE_SPECIALIZATION_CONSTANT_TYPE_INT = 1
        case PIPELINE_SPECIALIZATION_CONSTANT_TYPE_FLOAT = 2
    }
    public enum Limit : Int32 {
        case LIMIT_MAX_BOUND_UNIFORM_SETS = 0
        case LIMIT_MAX_FRAMEBUFFER_COLOR_ATTACHMENTS = 1
        case LIMIT_MAX_TEXTURES_PER_UNIFORM_SET = 2
        case LIMIT_MAX_SAMPLERS_PER_UNIFORM_SET = 3
        case LIMIT_MAX_STORAGE_BUFFERS_PER_UNIFORM_SET = 4
        case LIMIT_MAX_STORAGE_IMAGES_PER_UNIFORM_SET = 5
        case LIMIT_MAX_UNIFORM_BUFFERS_PER_UNIFORM_SET = 6
        case LIMIT_MAX_DRAW_INDEXED_INDEX = 7
        case LIMIT_MAX_FRAMEBUFFER_HEIGHT = 8
        case LIMIT_MAX_FRAMEBUFFER_WIDTH = 9
        case LIMIT_MAX_TEXTURE_ARRAY_LAYERS = 10
        case LIMIT_MAX_TEXTURE_SIZE_1D = 11
        case LIMIT_MAX_TEXTURE_SIZE_2D = 12
        case LIMIT_MAX_TEXTURE_SIZE_3D = 13
        case LIMIT_MAX_TEXTURE_SIZE_CUBE = 14
        case LIMIT_MAX_TEXTURES_PER_SHADER_STAGE = 15
        case LIMIT_MAX_SAMPLERS_PER_SHADER_STAGE = 16
        case LIMIT_MAX_STORAGE_BUFFERS_PER_SHADER_STAGE = 17
        case LIMIT_MAX_STORAGE_IMAGES_PER_SHADER_STAGE = 18
        case LIMIT_MAX_UNIFORM_BUFFERS_PER_SHADER_STAGE = 19
        case LIMIT_MAX_PUSH_CONSTANT_SIZE = 20
        case LIMIT_MAX_UNIFORM_BUFFER_SIZE = 21
        case LIMIT_MAX_VERTEX_INPUT_ATTRIBUTE_OFFSET = 22
        case LIMIT_MAX_VERTEX_INPUT_ATTRIBUTES = 23
        case LIMIT_MAX_VERTEX_INPUT_BINDINGS = 24
        case LIMIT_MAX_VERTEX_INPUT_BINDING_STRIDE = 25
        case LIMIT_MIN_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 26
        case LIMIT_MAX_COMPUTE_SHARED_MEMORY_SIZE = 27
        case LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_X = 28
        case LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_Y = 29
        case LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_Z = 30
        case LIMIT_MAX_COMPUTE_WORKGROUP_INVOCATIONS = 31
        case LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_X = 32
        case LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_Y = 33
        case LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_Z = 34
        case LIMIT_MAX_VIEWPORT_DIMENSIONS_X = 35
        case LIMIT_MAX_VIEWPORT_DIMENSIONS_Y = 36
    }
    public enum MemoryType : Int32 {
        case MEMORY_TEXTURES = 0
        case MEMORY_BUFFERS = 1
        case MEMORY_TOTAL = 2
    }

    public override class var __godot_name: StringName { __godot_name_RenderingDevice }

    static var _method_texture_create_3011278298: StringName! = nil
    static var _method_texture_create_shared_3178156134: StringName! = nil
    static var _method_texture_create_shared_from_slice_864132525: StringName! = nil
    static var _method_texture_update_2736912341: StringName! = nil
    static var _method_texture_get_data_1859412099: StringName! = nil
    static var _method_texture_is_format_supported_for_usage_2592520478: StringName! = nil
    static var _method_texture_is_shared_3521089500: StringName! = nil
    static var _method_texture_is_valid_3521089500: StringName! = nil
    static var _method_texture_copy_3741367532: StringName! = nil
    static var _method_texture_clear_3423681478: StringName! = nil
    static var _method_texture_resolve_multisample_2126834943: StringName! = nil
    static var _method_framebuffer_format_create_2635475316: StringName! = nil
    static var _method_framebuffer_format_create_multipass_1992489524: StringName! = nil
    static var _method_framebuffer_format_create_empty_555930169: StringName! = nil
    static var _method_framebuffer_format_get_texture_samples_1036806638: StringName! = nil
    static var _method_framebuffer_create_1884747791: StringName! = nil
    static var _method_framebuffer_create_multipass_452534725: StringName! = nil
    static var _method_framebuffer_create_empty_382373098: StringName! = nil
    static var _method_framebuffer_get_format_3917799429: StringName! = nil
    static var _method_framebuffer_is_valid_4155700596: StringName! = nil
    static var _method_sampler_create_2327892535: StringName! = nil
    static var _method_vertex_buffer_create_3491282828: StringName! = nil
    static var _method_vertex_format_create_1242678479: StringName! = nil
    static var _method_vertex_array_create_3137892244: StringName! = nil
    static var _method_index_buffer_create_975915977: StringName! = nil
    static var _method_index_array_create_2256026069: StringName! = nil
    static var _method_shader_compile_spirv_from_source_3459523685: StringName! = nil
    static var _method_shader_compile_binary_from_spirv_1395027180: StringName! = nil
    static var _method_shader_create_from_spirv_3297482566: StringName! = nil
    static var _method_shader_create_from_bytecode_3049171473: StringName! = nil
    static var _method_shader_get_vertex_input_attribute_mask_3917799429: StringName! = nil
    static var _method_uniform_buffer_create_1453158401: StringName! = nil
    static var _method_storage_buffer_create_1173156076: StringName! = nil
    static var _method_texture_buffer_create_2344087557: StringName! = nil
    static var _method_uniform_set_create_2280795797: StringName! = nil
    static var _method_uniform_set_is_valid_3521089500: StringName! = nil
    static var _method_buffer_update_652628289: StringName! = nil
    static var _method_buffer_clear_1645170096: StringName! = nil
    static var _method_buffer_get_data_1102329001: StringName! = nil
    static var _method_render_pipeline_create_2911419500: StringName! = nil
    static var _method_render_pipeline_is_valid_3521089500: StringName! = nil
    static var _method_compute_pipeline_create_403593840: StringName! = nil
    static var _method_compute_pipeline_is_valid_3521089500: StringName! = nil
    static var _method_screen_get_width_1591665591: StringName! = nil
    static var _method_screen_get_height_1591665591: StringName! = nil
    static var _method_screen_get_framebuffer_format_3905245786: StringName! = nil
    static var _method_draw_list_begin_for_screen_3988079995: StringName! = nil
    static var _method_draw_list_begin_4252992020: StringName! = nil
    static var _method_draw_list_begin_split_832527510: StringName! = nil
    static var _method_draw_list_set_blend_constants_2878471219: StringName! = nil
    static var _method_draw_list_bind_render_pipeline_4040184819: StringName! = nil
    static var _method_draw_list_bind_uniform_set_749655778: StringName! = nil
    static var _method_draw_list_bind_vertex_array_4040184819: StringName! = nil
    static var _method_draw_list_bind_index_array_4040184819: StringName! = nil
    static var _method_draw_list_set_push_constant_2772371345: StringName! = nil
    static var _method_draw_list_draw_3710874499: StringName! = nil
    static var _method_draw_list_enable_scissor_338791288: StringName! = nil
    static var _method_draw_list_disable_scissor_1286410249: StringName! = nil
    static var _method_draw_list_switch_to_next_pass_2455072627: StringName! = nil
    static var _method_draw_list_switch_to_next_pass_split_2865087369: StringName! = nil
    static var _method_draw_list_end_422991495: StringName! = nil
    static var _method_compute_list_begin_968564752: StringName! = nil
    static var _method_compute_list_bind_compute_pipeline_4040184819: StringName! = nil
    static var _method_compute_list_set_push_constant_2772371345: StringName! = nil
    static var _method_compute_list_bind_uniform_set_749655778: StringName! = nil
    static var _method_compute_list_dispatch_4275841770: StringName! = nil
    static var _method_compute_list_add_barrier_1286410249: StringName! = nil
    static var _method_compute_list_end_422991495: StringName! = nil
    static var _method_free_rid_2722037293: StringName! = nil
    static var _method_capture_timestamp_83702148: StringName! = nil
    static var _method_get_captured_timestamps_count_3905245786: StringName! = nil
    static var _method_get_captured_timestamps_frame_3905245786: StringName! = nil
    static var _method_get_captured_timestamp_gpu_time_923996154: StringName! = nil
    static var _method_get_captured_timestamp_cpu_time_923996154: StringName! = nil
    static var _method_get_captured_timestamp_name_844755477: StringName! = nil
    static var _method_limit_get_1559202131: StringName! = nil
    static var _method_get_frame_delay_3905245786: StringName! = nil
    static var _method_submit_3218959716: StringName! = nil
    static var _method_sync_3218959716: StringName! = nil
    static var _method_barrier_266666049: StringName! = nil
    static var _method_full_barrier_3218959716: StringName! = nil
    static var _method_create_local_device_2846302423: StringName! = nil
    static var _method_set_resource_name_2726140452: StringName! = nil
    static var _method_draw_command_begin_label_1636512886: StringName! = nil
    static var _method_draw_command_insert_label_1636512886: StringName! = nil
    static var _method_draw_command_end_label_3218959716: StringName! = nil
    static var _method_get_device_vendor_name_201670096: StringName! = nil
    static var _method_get_device_name_201670096: StringName! = nil
    static var _method_get_device_pipeline_cache_uuid_201670096: StringName! = nil
    static var _method_get_memory_usage_251690689: StringName! = nil
    static var _method_get_driver_resource_501815484: StringName! = nil
    
    public override class func initialize_class(_ ginit: GodotInitializer, _ p_level: GDExtensionInitializationLevel) {
        
        guard p_level == GDEXTENSION_INITIALIZATION_SCENE else { return }

        assert(__godot_name_RenderingDevice == nil)
        __godot_name_RenderingDevice = StringName(from: "RenderingDevice")
        Self.interface = ginit.p_interface
        Self.library = ginit.p_library

        self._method_texture_create_3011278298 = StringName(from: "texture_create")
        assert(self._method_texture_create_3011278298 != nil)
        self._method_texture_create_shared_3178156134 = StringName(from: "texture_create_shared")
        assert(self._method_texture_create_shared_3178156134 != nil)
        self._method_texture_create_shared_from_slice_864132525 = StringName(from: "texture_create_shared_from_slice")
        assert(self._method_texture_create_shared_from_slice_864132525 != nil)
        self._method_texture_update_2736912341 = StringName(from: "texture_update")
        assert(self._method_texture_update_2736912341 != nil)
        self._method_texture_get_data_1859412099 = StringName(from: "texture_get_data")
        assert(self._method_texture_get_data_1859412099 != nil)
        self._method_texture_is_format_supported_for_usage_2592520478 = StringName(from: "texture_is_format_supported_for_usage")
        assert(self._method_texture_is_format_supported_for_usage_2592520478 != nil)
        self._method_texture_is_shared_3521089500 = StringName(from: "texture_is_shared")
        assert(self._method_texture_is_shared_3521089500 != nil)
        self._method_texture_is_valid_3521089500 = StringName(from: "texture_is_valid")
        assert(self._method_texture_is_valid_3521089500 != nil)
        self._method_texture_copy_3741367532 = StringName(from: "texture_copy")
        assert(self._method_texture_copy_3741367532 != nil)
        self._method_texture_clear_3423681478 = StringName(from: "texture_clear")
        assert(self._method_texture_clear_3423681478 != nil)
        self._method_texture_resolve_multisample_2126834943 = StringName(from: "texture_resolve_multisample")
        assert(self._method_texture_resolve_multisample_2126834943 != nil)
        self._method_framebuffer_format_create_2635475316 = StringName(from: "framebuffer_format_create")
        assert(self._method_framebuffer_format_create_2635475316 != nil)
        self._method_framebuffer_format_create_multipass_1992489524 = StringName(from: "framebuffer_format_create_multipass")
        assert(self._method_framebuffer_format_create_multipass_1992489524 != nil)
        self._method_framebuffer_format_create_empty_555930169 = StringName(from: "framebuffer_format_create_empty")
        assert(self._method_framebuffer_format_create_empty_555930169 != nil)
        self._method_framebuffer_format_get_texture_samples_1036806638 = StringName(from: "framebuffer_format_get_texture_samples")
        assert(self._method_framebuffer_format_get_texture_samples_1036806638 != nil)
        self._method_framebuffer_create_1884747791 = StringName(from: "framebuffer_create")
        assert(self._method_framebuffer_create_1884747791 != nil)
        self._method_framebuffer_create_multipass_452534725 = StringName(from: "framebuffer_create_multipass")
        assert(self._method_framebuffer_create_multipass_452534725 != nil)
        self._method_framebuffer_create_empty_382373098 = StringName(from: "framebuffer_create_empty")
        assert(self._method_framebuffer_create_empty_382373098 != nil)
        self._method_framebuffer_get_format_3917799429 = StringName(from: "framebuffer_get_format")
        assert(self._method_framebuffer_get_format_3917799429 != nil)
        self._method_framebuffer_is_valid_4155700596 = StringName(from: "framebuffer_is_valid")
        assert(self._method_framebuffer_is_valid_4155700596 != nil)
        self._method_sampler_create_2327892535 = StringName(from: "sampler_create")
        assert(self._method_sampler_create_2327892535 != nil)
        self._method_vertex_buffer_create_3491282828 = StringName(from: "vertex_buffer_create")
        assert(self._method_vertex_buffer_create_3491282828 != nil)
        self._method_vertex_format_create_1242678479 = StringName(from: "vertex_format_create")
        assert(self._method_vertex_format_create_1242678479 != nil)
        self._method_vertex_array_create_3137892244 = StringName(from: "vertex_array_create")
        assert(self._method_vertex_array_create_3137892244 != nil)
        self._method_index_buffer_create_975915977 = StringName(from: "index_buffer_create")
        assert(self._method_index_buffer_create_975915977 != nil)
        self._method_index_array_create_2256026069 = StringName(from: "index_array_create")
        assert(self._method_index_array_create_2256026069 != nil)
        self._method_shader_compile_spirv_from_source_3459523685 = StringName(from: "shader_compile_spirv_from_source")
        assert(self._method_shader_compile_spirv_from_source_3459523685 != nil)
        self._method_shader_compile_binary_from_spirv_1395027180 = StringName(from: "shader_compile_binary_from_spirv")
        assert(self._method_shader_compile_binary_from_spirv_1395027180 != nil)
        self._method_shader_create_from_spirv_3297482566 = StringName(from: "shader_create_from_spirv")
        assert(self._method_shader_create_from_spirv_3297482566 != nil)
        self._method_shader_create_from_bytecode_3049171473 = StringName(from: "shader_create_from_bytecode")
        assert(self._method_shader_create_from_bytecode_3049171473 != nil)
        self._method_shader_get_vertex_input_attribute_mask_3917799429 = StringName(from: "shader_get_vertex_input_attribute_mask")
        assert(self._method_shader_get_vertex_input_attribute_mask_3917799429 != nil)
        self._method_uniform_buffer_create_1453158401 = StringName(from: "uniform_buffer_create")
        assert(self._method_uniform_buffer_create_1453158401 != nil)
        self._method_storage_buffer_create_1173156076 = StringName(from: "storage_buffer_create")
        assert(self._method_storage_buffer_create_1173156076 != nil)
        self._method_texture_buffer_create_2344087557 = StringName(from: "texture_buffer_create")
        assert(self._method_texture_buffer_create_2344087557 != nil)
        self._method_uniform_set_create_2280795797 = StringName(from: "uniform_set_create")
        assert(self._method_uniform_set_create_2280795797 != nil)
        self._method_uniform_set_is_valid_3521089500 = StringName(from: "uniform_set_is_valid")
        assert(self._method_uniform_set_is_valid_3521089500 != nil)
        self._method_buffer_update_652628289 = StringName(from: "buffer_update")
        assert(self._method_buffer_update_652628289 != nil)
        self._method_buffer_clear_1645170096 = StringName(from: "buffer_clear")
        assert(self._method_buffer_clear_1645170096 != nil)
        self._method_buffer_get_data_1102329001 = StringName(from: "buffer_get_data")
        assert(self._method_buffer_get_data_1102329001 != nil)
        self._method_render_pipeline_create_2911419500 = StringName(from: "render_pipeline_create")
        assert(self._method_render_pipeline_create_2911419500 != nil)
        self._method_render_pipeline_is_valid_3521089500 = StringName(from: "render_pipeline_is_valid")
        assert(self._method_render_pipeline_is_valid_3521089500 != nil)
        self._method_compute_pipeline_create_403593840 = StringName(from: "compute_pipeline_create")
        assert(self._method_compute_pipeline_create_403593840 != nil)
        self._method_compute_pipeline_is_valid_3521089500 = StringName(from: "compute_pipeline_is_valid")
        assert(self._method_compute_pipeline_is_valid_3521089500 != nil)
        self._method_screen_get_width_1591665591 = StringName(from: "screen_get_width")
        assert(self._method_screen_get_width_1591665591 != nil)
        self._method_screen_get_height_1591665591 = StringName(from: "screen_get_height")
        assert(self._method_screen_get_height_1591665591 != nil)
        self._method_screen_get_framebuffer_format_3905245786 = StringName(from: "screen_get_framebuffer_format")
        assert(self._method_screen_get_framebuffer_format_3905245786 != nil)
        self._method_draw_list_begin_for_screen_3988079995 = StringName(from: "draw_list_begin_for_screen")
        assert(self._method_draw_list_begin_for_screen_3988079995 != nil)
        self._method_draw_list_begin_4252992020 = StringName(from: "draw_list_begin")
        assert(self._method_draw_list_begin_4252992020 != nil)
        self._method_draw_list_begin_split_832527510 = StringName(from: "draw_list_begin_split")
        assert(self._method_draw_list_begin_split_832527510 != nil)
        self._method_draw_list_set_blend_constants_2878471219 = StringName(from: "draw_list_set_blend_constants")
        assert(self._method_draw_list_set_blend_constants_2878471219 != nil)
        self._method_draw_list_bind_render_pipeline_4040184819 = StringName(from: "draw_list_bind_render_pipeline")
        assert(self._method_draw_list_bind_render_pipeline_4040184819 != nil)
        self._method_draw_list_bind_uniform_set_749655778 = StringName(from: "draw_list_bind_uniform_set")
        assert(self._method_draw_list_bind_uniform_set_749655778 != nil)
        self._method_draw_list_bind_vertex_array_4040184819 = StringName(from: "draw_list_bind_vertex_array")
        assert(self._method_draw_list_bind_vertex_array_4040184819 != nil)
        self._method_draw_list_bind_index_array_4040184819 = StringName(from: "draw_list_bind_index_array")
        assert(self._method_draw_list_bind_index_array_4040184819 != nil)
        self._method_draw_list_set_push_constant_2772371345 = StringName(from: "draw_list_set_push_constant")
        assert(self._method_draw_list_set_push_constant_2772371345 != nil)
        self._method_draw_list_draw_3710874499 = StringName(from: "draw_list_draw")
        assert(self._method_draw_list_draw_3710874499 != nil)
        self._method_draw_list_enable_scissor_338791288 = StringName(from: "draw_list_enable_scissor")
        assert(self._method_draw_list_enable_scissor_338791288 != nil)
        self._method_draw_list_disable_scissor_1286410249 = StringName(from: "draw_list_disable_scissor")
        assert(self._method_draw_list_disable_scissor_1286410249 != nil)
        self._method_draw_list_switch_to_next_pass_2455072627 = StringName(from: "draw_list_switch_to_next_pass")
        assert(self._method_draw_list_switch_to_next_pass_2455072627 != nil)
        self._method_draw_list_switch_to_next_pass_split_2865087369 = StringName(from: "draw_list_switch_to_next_pass_split")
        assert(self._method_draw_list_switch_to_next_pass_split_2865087369 != nil)
        self._method_draw_list_end_422991495 = StringName(from: "draw_list_end")
        assert(self._method_draw_list_end_422991495 != nil)
        self._method_compute_list_begin_968564752 = StringName(from: "compute_list_begin")
        assert(self._method_compute_list_begin_968564752 != nil)
        self._method_compute_list_bind_compute_pipeline_4040184819 = StringName(from: "compute_list_bind_compute_pipeline")
        assert(self._method_compute_list_bind_compute_pipeline_4040184819 != nil)
        self._method_compute_list_set_push_constant_2772371345 = StringName(from: "compute_list_set_push_constant")
        assert(self._method_compute_list_set_push_constant_2772371345 != nil)
        self._method_compute_list_bind_uniform_set_749655778 = StringName(from: "compute_list_bind_uniform_set")
        assert(self._method_compute_list_bind_uniform_set_749655778 != nil)
        self._method_compute_list_dispatch_4275841770 = StringName(from: "compute_list_dispatch")
        assert(self._method_compute_list_dispatch_4275841770 != nil)
        self._method_compute_list_add_barrier_1286410249 = StringName(from: "compute_list_add_barrier")
        assert(self._method_compute_list_add_barrier_1286410249 != nil)
        self._method_compute_list_end_422991495 = StringName(from: "compute_list_end")
        assert(self._method_compute_list_end_422991495 != nil)
        self._method_free_rid_2722037293 = StringName(from: "free_rid")
        assert(self._method_free_rid_2722037293 != nil)
        self._method_capture_timestamp_83702148 = StringName(from: "capture_timestamp")
        assert(self._method_capture_timestamp_83702148 != nil)
        self._method_get_captured_timestamps_count_3905245786 = StringName(from: "get_captured_timestamps_count")
        assert(self._method_get_captured_timestamps_count_3905245786 != nil)
        self._method_get_captured_timestamps_frame_3905245786 = StringName(from: "get_captured_timestamps_frame")
        assert(self._method_get_captured_timestamps_frame_3905245786 != nil)
        self._method_get_captured_timestamp_gpu_time_923996154 = StringName(from: "get_captured_timestamp_gpu_time")
        assert(self._method_get_captured_timestamp_gpu_time_923996154 != nil)
        self._method_get_captured_timestamp_cpu_time_923996154 = StringName(from: "get_captured_timestamp_cpu_time")
        assert(self._method_get_captured_timestamp_cpu_time_923996154 != nil)
        self._method_get_captured_timestamp_name_844755477 = StringName(from: "get_captured_timestamp_name")
        assert(self._method_get_captured_timestamp_name_844755477 != nil)
        self._method_limit_get_1559202131 = StringName(from: "limit_get")
        assert(self._method_limit_get_1559202131 != nil)
        self._method_get_frame_delay_3905245786 = StringName(from: "get_frame_delay")
        assert(self._method_get_frame_delay_3905245786 != nil)
        self._method_submit_3218959716 = StringName(from: "submit")
        assert(self._method_submit_3218959716 != nil)
        self._method_sync_3218959716 = StringName(from: "sync")
        assert(self._method_sync_3218959716 != nil)
        self._method_barrier_266666049 = StringName(from: "barrier")
        assert(self._method_barrier_266666049 != nil)
        self._method_full_barrier_3218959716 = StringName(from: "full_barrier")
        assert(self._method_full_barrier_3218959716 != nil)
        self._method_create_local_device_2846302423 = StringName(from: "create_local_device")
        assert(self._method_create_local_device_2846302423 != nil)
        self._method_set_resource_name_2726140452 = StringName(from: "set_resource_name")
        assert(self._method_set_resource_name_2726140452 != nil)
        self._method_draw_command_begin_label_1636512886 = StringName(from: "draw_command_begin_label")
        assert(self._method_draw_command_begin_label_1636512886 != nil)
        self._method_draw_command_insert_label_1636512886 = StringName(from: "draw_command_insert_label")
        assert(self._method_draw_command_insert_label_1636512886 != nil)
        self._method_draw_command_end_label_3218959716 = StringName(from: "draw_command_end_label")
        assert(self._method_draw_command_end_label_3218959716 != nil)
        self._method_get_device_vendor_name_201670096 = StringName(from: "get_device_vendor_name")
        assert(self._method_get_device_vendor_name_201670096 != nil)
        self._method_get_device_name_201670096 = StringName(from: "get_device_name")
        assert(self._method_get_device_name_201670096 != nil)
        self._method_get_device_pipeline_cache_uuid_201670096 = StringName(from: "get_device_pipeline_cache_uuid")
        assert(self._method_get_device_pipeline_cache_uuid_201670096 != nil)
        self._method_get_memory_usage_251690689 = StringName(from: "get_memory_usage")
        assert(self._method_get_memory_usage_251690689 != nil)
        self._method_get_driver_resource_501815484 = StringName(from: "get_driver_resource")
        assert(self._method_get_driver_resource_501815484 != nil)
    }

    public func texture_create(format: RDTextureFormat, view: RDTextureView, data: [PackedByteArray]) -> RID {
        let data_native = data._native_ptr()
        let view_native = view._native_ptr()
        let format_native = format._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(view_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_create_3011278298._native_ptr(),
                    3011278298)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func texture_create_shared(view: RDTextureView, with_texture: RID) -> RID {
        let with_texture_native = with_texture._native_ptr()
        let view_native = view._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(view_native), .init(with_texture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_create_shared_3178156134._native_ptr(),
                    3178156134)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func texture_create_shared_from_slice(view: RDTextureView, with_texture: RID, layer: Int64, mipmap: Int64, mipmaps: Int64, slice_type: RenderingDevice.TextureSliceType) -> RID {
        withUnsafePointer(to: mipmaps) { mipmaps_native in
        withUnsafePointer(to: mipmap) { mipmap_native in
        withUnsafePointer(to: layer) { layer_native in
        withUnsafePointer(to: slice_type.rawValue) { slice_type_native in
        let with_texture_native = with_texture._native_ptr()
        let view_native = view._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 6)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(view_native), .init(with_texture_native), .init(layer_native), .init(mipmap_native), .init(mipmaps_native), .init(slice_type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_create_shared_from_slice_864132525._native_ptr(),
                    864132525)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
        }
        }
    }
    public func texture_update(texture: RID, layer: Int64, data: PackedByteArray, post_barrier: RenderingDevice.BarrierMask) -> Error {
        withUnsafePointer(to: layer) { layer_native in
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let data_native = data._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(layer_native), .init(data_native), .init(post_barrier_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_update_2736912341._native_ptr(),
                    2736912341)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
    }
    public func texture_get_data(texture: RID, layer: Int64) -> PackedByteArray {
        withUnsafePointer(to: layer) { layer_native in
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(layer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_get_data_1859412099._native_ptr(),
                    1859412099)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
        }
    }
    public func texture_is_format_supported_for_usage(format: RenderingDevice.DataFormat, usage_flags: RenderingDevice.TextureUsageBits) -> UInt8 {
        withUnsafePointer(to: usage_flags.rawValue) { usage_flags_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(usage_flags_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_is_format_supported_for_usage_2592520478._native_ptr(),
                    2592520478)
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
    }
    public func texture_is_shared(texture: RID) -> UInt8 {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_is_shared_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func texture_is_valid(texture: RID) -> UInt8 {
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_is_valid_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func texture_copy(from_texture: RID, to_texture: RID, from_pos: Vector3, to_pos: Vector3, size: Vector3, src_mipmap: Int64, dst_mipmap: Int64, src_layer: Int64, dst_layer: Int64, post_barrier: RenderingDevice.BarrierMask) -> Error {
        withUnsafePointer(to: dst_layer) { dst_layer_native in
        withUnsafePointer(to: src_layer) { src_layer_native in
        withUnsafePointer(to: dst_mipmap) { dst_mipmap_native in
        withUnsafePointer(to: src_mipmap) { src_mipmap_native in
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let size_native = size._native_ptr()
        let to_pos_native = to_pos._native_ptr()
        let from_pos_native = from_pos._native_ptr()
        let to_texture_native = to_texture._native_ptr()
        let from_texture_native = from_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_texture_native), .init(to_texture_native), .init(from_pos_native), .init(to_pos_native), .init(size_native), .init(src_mipmap_native), .init(dst_mipmap_native), .init(src_layer_native), .init(dst_layer_native), .init(post_barrier_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_copy_3741367532._native_ptr(),
                    3741367532)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func texture_clear(texture: RID, color: Color, base_mipmap: Int64, mipmap_count: Int64, base_layer: Int64, layer_count: Int64, post_barrier: RenderingDevice.BarrierMask) -> Error {
        withUnsafePointer(to: layer_count) { layer_count_native in
        withUnsafePointer(to: base_layer) { base_layer_native in
        withUnsafePointer(to: mipmap_count) { mipmap_count_native in
        withUnsafePointer(to: base_mipmap) { base_mipmap_native in
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let color_native = color._native_ptr()
        let texture_native = texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 7)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(texture_native), .init(color_native), .init(base_mipmap_native), .init(mipmap_count_native), .init(base_layer_native), .init(layer_count_native), .init(post_barrier_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_clear_3423681478._native_ptr(),
                    3423681478)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func texture_resolve_multisample(from_texture: RID, to_texture: RID, post_barrier: RenderingDevice.BarrierMask) -> Error {
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let to_texture_native = to_texture._native_ptr()
        let from_texture_native = from_texture._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_texture_native), .init(to_texture_native), .init(post_barrier_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_resolve_multisample_2126834943._native_ptr(),
                    2126834943)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
    }
    public func framebuffer_format_create(attachments: [RDAttachmentFormat], view_count: Int64) -> Int64 {
        withUnsafePointer(to: view_count) { view_count_native in
        let attachments_native = attachments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attachments_native), .init(view_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_format_create_2635475316._native_ptr(),
                    2635475316)
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
    public func framebuffer_format_create_multipass(attachments: [RDAttachmentFormat], passes: [RDFramebufferPass], view_count: Int64) -> Int64 {
        withUnsafePointer(to: view_count) { view_count_native in
        let passes_native = passes._native_ptr()
        let attachments_native = attachments._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(attachments_native), .init(passes_native), .init(view_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_format_create_multipass_1992489524._native_ptr(),
                    1992489524)
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
    public func framebuffer_format_create_empty(samples: RenderingDevice.TextureSamples) -> Int64 {
        withUnsafePointer(to: samples.rawValue) { samples_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(samples_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_format_create_empty_555930169._native_ptr(),
                    555930169)
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
    public func framebuffer_format_get_texture_samples(format: Int64, render_pass: Int64) -> RenderingDevice.TextureSamples {
        withUnsafePointer(to: render_pass) { render_pass_native in
        withUnsafePointer(to: format) { format_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(format_native), .init(render_pass_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_format_get_texture_samples_1036806638._native_ptr(),
                    1036806638)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice.TextureSamples(godot: __resPtr.pointee)
        }
        }
    }
    public func framebuffer_create(textures: [RID], validate_with_format: Int64, view_count: Int64) -> RID {
        withUnsafePointer(to: view_count) { view_count_native in
        withUnsafePointer(to: validate_with_format) { validate_with_format_native in
        let textures_native = textures._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(textures_native), .init(validate_with_format_native), .init(view_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_create_1884747791._native_ptr(),
                    1884747791)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func framebuffer_create_multipass(textures: [RID], passes: [RDFramebufferPass], validate_with_format: Int64, view_count: Int64) -> RID {
        withUnsafePointer(to: view_count) { view_count_native in
        withUnsafePointer(to: validate_with_format) { validate_with_format_native in
        let passes_native = passes._native_ptr()
        let textures_native = textures._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(textures_native), .init(passes_native), .init(validate_with_format_native), .init(view_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_create_multipass_452534725._native_ptr(),
                    452534725)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func framebuffer_create_empty(size: Vector2i, samples: RenderingDevice.TextureSamples, validate_with_format: Int64) -> RID {
        withUnsafePointer(to: validate_with_format) { validate_with_format_native in
        withUnsafePointer(to: samples.rawValue) { samples_native in
        let size_native = size._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_native), .init(samples_native), .init(validate_with_format_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_create_empty_382373098._native_ptr(),
                    382373098)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func framebuffer_get_format(framebuffer: RID) -> Int64 {
        let framebuffer_native = framebuffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(framebuffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_get_format_3917799429._native_ptr(),
                    3917799429)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func framebuffer_is_valid(framebuffer: RID) -> UInt8 {
        let framebuffer_native = framebuffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(framebuffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_framebuffer_is_valid_4155700596._native_ptr(),
                    4155700596)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func sampler_create(state: RDSamplerState) -> RID {
        let state_native = state._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(state_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sampler_create_2327892535._native_ptr(),
                    2327892535)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func vertex_buffer_create(size_bytes: Int64, data: PackedByteArray, use_as_storage: UInt8) -> RID {
        withUnsafePointer(to: use_as_storage) { use_as_storage_native in
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_bytes_native), .init(data_native), .init(use_as_storage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_vertex_buffer_create_3491282828._native_ptr(),
                    3491282828)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func vertex_format_create(vertex_descriptions: [RDVertexAttribute]) -> Int64 {
        let vertex_descriptions_native = vertex_descriptions._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_descriptions_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_vertex_format_create_1242678479._native_ptr(),
                    1242678479)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func vertex_array_create(vertex_count: Int64, vertex_format: Int64, src_buffers: [RID], offsets: PackedInt64Array) -> RID {
        withUnsafePointer(to: vertex_format) { vertex_format_native in
        withUnsafePointer(to: vertex_count) { vertex_count_native in
        let offsets_native = offsets._native_ptr()
        let src_buffers_native = src_buffers._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(vertex_count_native), .init(vertex_format_native), .init(src_buffers_native), .init(offsets_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_vertex_array_create_3137892244._native_ptr(),
                    3137892244)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func index_buffer_create(size_indices: Int64, format: RenderingDevice.IndexBufferFormat, data: PackedByteArray, use_restart_indices: UInt8) -> RID {
        withUnsafePointer(to: use_restart_indices) { use_restart_indices_native in
        withUnsafePointer(to: size_indices) { size_indices_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_indices_native), .init(format_native), .init(data_native), .init(use_restart_indices_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_index_buffer_create_975915977._native_ptr(),
                    975915977)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func index_array_create(index_buffer: RID, index_offset: Int64, index_count: Int64) -> RID {
        withUnsafePointer(to: index_count) { index_count_native in
        withUnsafePointer(to: index_offset) { index_offset_native in
        let index_buffer_native = index_buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_buffer_native), .init(index_offset_native), .init(index_count_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_index_array_create_2256026069._native_ptr(),
                    2256026069)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func shader_compile_spirv_from_source(shader_source: RDShaderSource, allow_cache: UInt8) -> RDShaderSPIRV {
        withUnsafePointer(to: allow_cache) { allow_cache_native in
        let shader_source_native = shader_source._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_source_native), .init(allow_cache_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shader_compile_spirv_from_source_3459523685._native_ptr(),
                    3459523685)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RDShaderSPIRV(godot: __resPtr.pointee)
        }
    }
    public func shader_compile_binary_from_spirv(spirv_data: RDShaderSPIRV, name: godot.String) -> PackedByteArray {
        let name_native = name._native_ptr()
        let spirv_data_native = spirv_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spirv_data_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shader_compile_binary_from_spirv_1395027180._native_ptr(),
                    1395027180)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func shader_create_from_spirv(spirv_data: RDShaderSPIRV, name: godot.String) -> RID {
        let name_native = name._native_ptr()
        let spirv_data_native = spirv_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(spirv_data_native), .init(name_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shader_create_from_spirv_3297482566._native_ptr(),
                    3297482566)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func shader_create_from_bytecode(binary_data: PackedByteArray) -> RID {
        let binary_data_native = binary_data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(binary_data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shader_create_from_bytecode_3049171473._native_ptr(),
                    3049171473)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func shader_get_vertex_input_attribute_mask(shader: RID) -> Int64 {
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_shader_get_vertex_input_attribute_mask_3917799429._native_ptr(),
                    3917799429)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func uniform_buffer_create(size_bytes: Int64, data: PackedByteArray) -> RID {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_bytes_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_uniform_buffer_create_1453158401._native_ptr(),
                    1453158401)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func storage_buffer_create(size_bytes: Int64, data: PackedByteArray, usage: RenderingDevice.StorageBufferUsage) -> RID {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        withUnsafePointer(to: usage.rawValue) { usage_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_bytes_native), .init(data_native), .init(usage_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_storage_buffer_create_1173156076._native_ptr(),
                    1173156076)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func texture_buffer_create(size_bytes: Int64, format: RenderingDevice.DataFormat, data: PackedByteArray) -> RID {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        withUnsafePointer(to: format.rawValue) { format_native in
        let data_native = data._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(size_bytes_native), .init(format_native), .init(data_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_texture_buffer_create_2344087557._native_ptr(),
                    2344087557)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
    }
    public func uniform_set_create(uniforms: [RDUniform], shader: RID, shader_set: Int64) -> RID {
        withUnsafePointer(to: shader_set) { shader_set_native in
        let shader_native = shader._native_ptr()
        let uniforms_native = uniforms._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uniforms_native), .init(shader_native), .init(shader_set_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_uniform_set_create_2280795797._native_ptr(),
                    2280795797)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
    }
    public func uniform_set_is_valid(uniform_set: RID) -> UInt8 {
        let uniform_set_native = uniform_set._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(uniform_set_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_uniform_set_is_valid_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func buffer_update(buffer: RID, offset: Int64, size_bytes: Int64, data: PackedByteArray, post_barrier: RenderingDevice.BarrierMask) -> Error {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let data_native = data._native_ptr()
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 5)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native), .init(offset_native), .init(size_bytes_native), .init(data_native), .init(post_barrier_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_buffer_update_652628289._native_ptr(),
                    652628289)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func buffer_clear(buffer: RID, offset: Int64, size_bytes: Int64, post_barrier: RenderingDevice.BarrierMask) -> Error {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        withUnsafePointer(to: offset) { offset_native in
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native), .init(offset_native), .init(size_bytes_native), .init(post_barrier_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_buffer_clear_1645170096._native_ptr(),
                    1645170096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Error(godot: __resPtr.pointee)
        }
        }
        }
    }
    public func buffer_get_data(buffer: RID) -> PackedByteArray {
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(buffer_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_buffer_get_data_1102329001._native_ptr(),
                    1102329001)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedByteArray(godot: __resPtr.pointee)
    }
    public func render_pipeline_create(shader: RID, framebuffer_format: Int64, vertex_format: Int64, primitive: RenderingDevice.RenderPrimitive, rasterization_state: RDPipelineRasterizationState, multisample_state: RDPipelineMultisampleState, stencil_state: RDPipelineDepthStencilState, color_blend_state: RDPipelineColorBlendState, dynamic_state_flags: RenderingDevice.PipelineDynamicStateFlags, for_render_pass: Int64, specialization_constants: [RDPipelineSpecializationConstant]) -> RID {
        withUnsafePointer(to: for_render_pass) { for_render_pass_native in
        withUnsafePointer(to: vertex_format) { vertex_format_native in
        withUnsafePointer(to: framebuffer_format) { framebuffer_format_native in
        withUnsafePointer(to: dynamic_state_flags.rawValue) { dynamic_state_flags_native in
        withUnsafePointer(to: primitive.rawValue) { primitive_native in
        let specialization_constants_native = specialization_constants._native_ptr()
        let color_blend_state_native = color_blend_state._native_ptr()
        let stencil_state_native = stencil_state._native_ptr()
        let multisample_state_native = multisample_state._native_ptr()
        let rasterization_state_native = rasterization_state._native_ptr()
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(framebuffer_format_native), .init(vertex_format_native), .init(primitive_native), .init(rasterization_state_native), .init(multisample_state_native), .init(stencil_state_native), .init(color_blend_state_native), .init(dynamic_state_flags_native), .init(for_render_pass_native), .init(specialization_constants_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_render_pipeline_create_2911419500._native_ptr(),
                    2911419500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
    }
    public func render_pipeline_is_valid(render_pipeline: RID) -> UInt8 {
        let render_pipeline_native = render_pipeline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(render_pipeline_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_render_pipeline_is_valid_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func compute_pipeline_create(shader: RID, specialization_constants: [RDPipelineSpecializationConstant]) -> RID {
        let specialization_constants_native = specialization_constants._native_ptr()
        let shader_native = shader._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(shader_native), .init(specialization_constants_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_pipeline_create_403593840._native_ptr(),
                    403593840)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RID(godot: __resPtr.pointee)
    }
    public func compute_pipeline_is_valid(compute_pieline: RID) -> UInt8 {
        let compute_pieline_native = compute_pieline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compute_pieline_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_pipeline_is_valid_3521089500._native_ptr(),
                    3521089500)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return UInt8(godot: __resPtr.pointee)
    }
    public func screen_get_width(screen: Int64) -> Int64 {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_screen_get_width_1591665591._native_ptr(),
                    1591665591)
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
    public func screen_get_height(screen: Int64) -> Int64 {
        withUnsafePointer(to: screen) { screen_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_screen_get_height_1591665591._native_ptr(),
                    1591665591)
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
    public func screen_get_framebuffer_format() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_screen_get_framebuffer_format_3905245786._native_ptr(),
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
    public func draw_list_begin_for_screen(screen: Int64, clear_color: Color) -> Int64 {
        withUnsafePointer(to: screen) { screen_native in
        let clear_color_native = clear_color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(screen_native), .init(clear_color_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_begin_for_screen_3988079995._native_ptr(),
                    3988079995)
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
    public func draw_list_begin(framebuffer: RID, initial_color_action: RenderingDevice.InitialAction, final_color_action: RenderingDevice.FinalAction, initial_depth_action: RenderingDevice.InitialAction, final_depth_action: RenderingDevice.FinalAction, clear_color_values: PackedColorArray, clear_depth: Float64, clear_stencil: Int64, region: Rect2, storage_textures: Array) -> Int64 {
        withUnsafePointer(to: clear_stencil) { clear_stencil_native in
        withUnsafePointer(to: clear_depth) { clear_depth_native in
        withUnsafePointer(to: final_depth_action.rawValue) { final_depth_action_native in
        withUnsafePointer(to: initial_depth_action.rawValue) { initial_depth_action_native in
        withUnsafePointer(to: final_color_action.rawValue) { final_color_action_native in
        withUnsafePointer(to: initial_color_action.rawValue) { initial_color_action_native in
        let storage_textures_native = storage_textures._native_ptr()
        let region_native = region._native_ptr()
        let clear_color_values_native = clear_color_values._native_ptr()
        let framebuffer_native = framebuffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 10)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(framebuffer_native), .init(initial_color_action_native), .init(final_color_action_native), .init(initial_depth_action_native), .init(final_depth_action_native), .init(clear_color_values_native), .init(clear_depth_native), .init(clear_stencil_native), .init(region_native), .init(storage_textures_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_begin_4252992020._native_ptr(),
                    4252992020)
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
        }
        }
        }
    }
    public func draw_list_begin_split(framebuffer: RID, splits: Int64, initial_color_action: RenderingDevice.InitialAction, final_color_action: RenderingDevice.FinalAction, initial_depth_action: RenderingDevice.InitialAction, final_depth_action: RenderingDevice.FinalAction, clear_color_values: PackedColorArray, clear_depth: Float64, clear_stencil: Int64, region: Rect2, storage_textures: [RID]) -> PackedInt64Array {
        withUnsafePointer(to: clear_stencil) { clear_stencil_native in
        withUnsafePointer(to: clear_depth) { clear_depth_native in
        withUnsafePointer(to: splits) { splits_native in
        withUnsafePointer(to: final_depth_action.rawValue) { final_depth_action_native in
        withUnsafePointer(to: initial_depth_action.rawValue) { initial_depth_action_native in
        withUnsafePointer(to: final_color_action.rawValue) { final_color_action_native in
        withUnsafePointer(to: initial_color_action.rawValue) { initial_color_action_native in
        let storage_textures_native = storage_textures._native_ptr()
        let region_native = region._native_ptr()
        let clear_color_values_native = clear_color_values._native_ptr()
        let framebuffer_native = framebuffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 11)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(framebuffer_native), .init(splits_native), .init(initial_color_action_native), .init(final_color_action_native), .init(initial_depth_action_native), .init(final_depth_action_native), .init(clear_color_values_native), .init(clear_depth_native), .init(clear_stencil_native), .init(region_native), .init(storage_textures_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_begin_split_832527510._native_ptr(),
                    832527510)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
        }
        }
        }
        }
        }
        }
        }
    }
    public func draw_list_set_blend_constants(draw_list: Int64, color: Color)  {
        withUnsafePointer(to: draw_list) { draw_list_native in
        let color_native = color._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_set_blend_constants_2878471219._native_ptr(),
                    2878471219)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_list_bind_render_pipeline(draw_list: Int64, render_pipeline: RID)  {
        withUnsafePointer(to: draw_list) { draw_list_native in
        let render_pipeline_native = render_pipeline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(render_pipeline_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_bind_render_pipeline_4040184819._native_ptr(),
                    4040184819)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_list_bind_uniform_set(draw_list: Int64, uniform_set: RID, set_index: Int64)  {
        withUnsafePointer(to: set_index) { set_index_native in
        withUnsafePointer(to: draw_list) { draw_list_native in
        let uniform_set_native = uniform_set._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(uniform_set_native), .init(set_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_bind_uniform_set_749655778._native_ptr(),
                    749655778)
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
    public func draw_list_bind_vertex_array(draw_list: Int64, vertex_array: RID)  {
        withUnsafePointer(to: draw_list) { draw_list_native in
        let vertex_array_native = vertex_array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(vertex_array_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_bind_vertex_array_4040184819._native_ptr(),
                    4040184819)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_list_bind_index_array(draw_list: Int64, index_array: RID)  {
        withUnsafePointer(to: draw_list) { draw_list_native in
        let index_array_native = index_array._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(index_array_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_bind_index_array_4040184819._native_ptr(),
                    4040184819)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_list_set_push_constant(draw_list: Int64, buffer: PackedByteArray, size_bytes: Int64)  {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        withUnsafePointer(to: draw_list) { draw_list_native in
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(buffer_native), .init(size_bytes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_set_push_constant_2772371345._native_ptr(),
                    2772371345)
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
    public func draw_list_draw(draw_list: Int64, use_indices: UInt8, instances: Int64, procedural_vertex_count: Int64)  {
        withUnsafePointer(to: procedural_vertex_count) { procedural_vertex_count_native in
        withUnsafePointer(to: instances) { instances_native in
        withUnsafePointer(to: use_indices) { use_indices_native in
        withUnsafePointer(to: draw_list) { draw_list_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(use_indices_native), .init(instances_native), .init(procedural_vertex_count_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_draw_3710874499._native_ptr(),
                    3710874499)
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
        }
    }
    public func draw_list_enable_scissor(draw_list: Int64, rect: Rect2)  {
        withUnsafePointer(to: draw_list) { draw_list_native in
        let rect_native = rect._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native), .init(rect_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_enable_scissor_338791288._native_ptr(),
                    338791288)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func draw_list_disable_scissor(draw_list: Int64)  {
        withUnsafePointer(to: draw_list) { draw_list_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(draw_list_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_disable_scissor_1286410249._native_ptr(),
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
    public func draw_list_switch_to_next_pass() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_switch_to_next_pass_2455072627._native_ptr(),
                    2455072627)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return Int64(godot: __resPtr.pointee)
    }
    public func draw_list_switch_to_next_pass_split(splits: Int64) -> PackedInt64Array {
        withUnsafePointer(to: splits) { splits_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(splits_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_switch_to_next_pass_split_2865087369._native_ptr(),
                    2865087369)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return PackedInt64Array(godot: __resPtr.pointee)
        }
    }
    public func draw_list_end(post_barrier: RenderingDevice.BarrierMask)  {
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(post_barrier_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_list_end_422991495._native_ptr(),
                    422991495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func compute_list_begin(allow_draw_overlap: UInt8) -> Int64 {
        withUnsafePointer(to: allow_draw_overlap) { allow_draw_overlap_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(allow_draw_overlap_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_begin_968564752._native_ptr(),
                    968564752)
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
    public func compute_list_bind_compute_pipeline(compute_list: Int64, compute_pipeline: RID)  {
        withUnsafePointer(to: compute_list) { compute_list_native in
        let compute_pipeline_native = compute_pipeline._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compute_list_native), .init(compute_pipeline_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_bind_compute_pipeline_4040184819._native_ptr(),
                    4040184819)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func compute_list_set_push_constant(compute_list: Int64, buffer: PackedByteArray, size_bytes: Int64)  {
        withUnsafePointer(to: size_bytes) { size_bytes_native in
        withUnsafePointer(to: compute_list) { compute_list_native in
        let buffer_native = buffer._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compute_list_native), .init(buffer_native), .init(size_bytes_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_set_push_constant_2772371345._native_ptr(),
                    2772371345)
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
    public func compute_list_bind_uniform_set(compute_list: Int64, uniform_set: RID, set_index: Int64)  {
        withUnsafePointer(to: set_index) { set_index_native in
        withUnsafePointer(to: compute_list) { compute_list_native in
        let uniform_set_native = uniform_set._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compute_list_native), .init(uniform_set_native), .init(set_index_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_bind_uniform_set_749655778._native_ptr(),
                    749655778)
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
    public func compute_list_dispatch(compute_list: Int64, x_groups: Int64, y_groups: Int64, z_groups: Int64)  {
        withUnsafePointer(to: z_groups) { z_groups_native in
        withUnsafePointer(to: y_groups) { y_groups_native in
        withUnsafePointer(to: x_groups) { x_groups_native in
        withUnsafePointer(to: compute_list) { compute_list_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 4)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compute_list_native), .init(x_groups_native), .init(y_groups_native), .init(z_groups_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_dispatch_4275841770._native_ptr(),
                    4275841770)
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
        }
    }
    public func compute_list_add_barrier(compute_list: Int64)  {
        withUnsafePointer(to: compute_list) { compute_list_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(compute_list_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_add_barrier_1286410249._native_ptr(),
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
    public func compute_list_end(post_barrier: RenderingDevice.BarrierMask)  {
        withUnsafePointer(to: post_barrier.rawValue) { post_barrier_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(post_barrier_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_compute_list_end_422991495._native_ptr(),
                    422991495)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
        }
    }
    public func free_rid(rid: RID)  {
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(rid_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_free_rid_2722037293._native_ptr(),
                    2722037293)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func capture_timestamp(name: godot.String)  {
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_capture_timestamp_83702148._native_ptr(),
                    83702148)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_captured_timestamps_count() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_captured_timestamps_count_3905245786._native_ptr(),
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
    public func get_captured_timestamps_frame() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_captured_timestamps_frame_3905245786._native_ptr(),
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
    public func get_captured_timestamp_gpu_time(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_captured_timestamp_gpu_time_923996154._native_ptr(),
                    923996154)
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
    public func get_captured_timestamp_cpu_time(index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_captured_timestamp_cpu_time_923996154._native_ptr(),
                    923996154)
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
    public func get_captured_timestamp_name(index: Int64) -> godot.String {
        withUnsafePointer(to: index) { index_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_captured_timestamp_name_844755477._native_ptr(),
                    844755477)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
        }
    }
    public func limit_get(limit: RenderingDevice.Limit) -> Int64 {
        withUnsafePointer(to: limit.rawValue) { limit_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(limit_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_limit_get_1559202131._native_ptr(),
                    1559202131)
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
    public func get_frame_delay() -> Int64 {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_frame_delay_3905245786._native_ptr(),
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
    public func submit()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_submit_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func sync()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_sync_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func barrier(from: RenderingDevice.BarrierMask, to: RenderingDevice.BarrierMask)  {
        withUnsafePointer(to: to.rawValue) { to_native in
        withUnsafePointer(to: from.rawValue) { from_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(from_native), .init(to_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_barrier_266666049._native_ptr(),
                    266666049)
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
    public func full_barrier()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_full_barrier_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func create_local_device() -> RenderingDevice {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_create_local_device_2846302423._native_ptr(),
                    2846302423)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return RenderingDevice(godot: __resPtr.pointee)
    }
    public func set_resource_name(id: RID, name: godot.String)  {
        let name_native = name._native_ptr()
        let id_native = id._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(id_native), .init(name_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_set_resource_name_2726140452._native_ptr(),
                    2726140452)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_command_begin_label(name: godot.String, color: Color)  {
        let color_native = color._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_command_begin_label_1636512886._native_ptr(),
                    1636512886)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_command_insert_label(name: godot.String, color: Color)  {
        let color_native = color._native_ptr()
        let name_native = name._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 2)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(name_native), .init(color_native)
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_command_insert_label_1636512886._native_ptr(),
                    1636512886)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func draw_command_end_label()  {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_draw_command_end_label_3218959716._native_ptr(),
                    3218959716)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    nil
                )
    }
    public func get_device_vendor_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_device_vendor_name_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_device_name() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_device_name_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_device_pipeline_cache_uuid() -> godot.String {
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 0)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_device_pipeline_cache_uuid_201670096._native_ptr(),
                    201670096)
                assert(_mbinding != nil)
                self.interface.pointee.object_method_bind_ptrcall(
                    _mbinding,
                    self._native_ptr(),
                    args.baseAddress!,
                    __resPtr
                )
            return godot.String(godot: __resPtr.pointee)
    }
    public func get_memory_usage(`type`: RenderingDevice.MemoryType) -> Int64 {
        withUnsafePointer(to: `type`.rawValue) { type_native in
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 1)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(type_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_memory_usage_251690689._native_ptr(),
                    251690689)
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
    public func get_driver_resource(resource: RenderingDevice.DriverResource, rid: RID, index: Int64) -> Int64 {
        withUnsafePointer(to: index) { index_native in
        withUnsafePointer(to: resource.rawValue) { resource_native in
        let rid_native = rid._native_ptr()
        let args: UnsafeMutableBufferPointer<GDExtensionConstTypePtr?> = .allocate(capacity: 3)
            defer { args.deallocate() }
            _ = args.initialize(from: [
                .init(resource_native), .init(rid_native), .init(index_native)
            ])
            // call here
            let __resPtr: UnsafeMutablePointer<UnsafeRawPointer> = .allocate(capacity: 1)
            defer { __resPtr.deallocate() }
            let _mbinding = self.interface.pointee.classdb_get_method_bind(
                    Self.__godot_name._native_ptr(),
                    Self._method_get_driver_resource_501815484._native_ptr(),
                    501815484)
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
}